// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26
// ============================================================================

MERGE (n:Copybook {name: 'DFHAID'})
SET n += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [65], ingestion: 'auto', layer: 'dependency', name: 'DFHAID', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGM26.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DFHBMSCA'})
SET n += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [69], ingestion: 'auto', layer: 'dependency', name: 'DFHBMSCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGM26.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SQLCA'})
SET n += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [116], ingestion: 'auto', layer: 'dependency', name: 'SQLCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGM26.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMG5601'})
SET n += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [54], ingestion: 'auto', layer: 'dependency', name: 'ZMG5601', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MG560.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMG5631'})
SET n += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [100], ingestion: 'auto', layer: 'dependency', name: 'ZMG5631', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MG563.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMG5681'})
SET n += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [65], ingestion: 'auto', layer: 'dependency', name: 'ZMG5681', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MG568.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMG6781'})
SET n += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [59], ingestion: 'auto', layer: 'dependency', name: 'ZMG6781', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MG678.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMGB421'})
SET n += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [79], ingestion: 'auto', layer: 'dependency', name: 'ZMGB421', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGB42.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMGF241'})
SET n += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [98], ingestion: 'auto', layer: 'dependency', name: 'ZMGF241', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGF24.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMGJ281'})
SET n += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [68], ingestion: 'auto', layer: 'dependency', name: 'ZMGJ281', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGJ28.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMGJ591'})
SET n += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [56], ingestion: 'auto', layer: 'dependency', name: 'ZMGJ591', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGJ59.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMGK021'})
SET n += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [52], ingestion: 'auto', layer: 'dependency', name: 'ZMGK021', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGK02.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMGM261'})
SET n += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [73], ingestion: 'auto', layer: 'dependency', name: 'ZMGM261', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGM26.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWCOM11'})
SET n += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [122], ingestion: 'auto', layer: 'dependency', name: 'ZMWCOM11', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGM26.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC002'})
SET n += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [253], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC002', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGM26.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC003'})
SET n += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [259], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC003', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGM26.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC004'})
SET n += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [265], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC004', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGM26.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC005'})
SET n += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [271], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC005', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGM26.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC008'})
SET n += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [277], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC008', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGM26.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC009'})
SET n += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [291], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC009', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGM26.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC010'})
SET n += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [77], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC010', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGM26.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC011'})
SET n += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [81], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC011', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGM26.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC012'})
SET n += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [85], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC012', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGM26.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC013'})
SET n += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [89], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC013', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGM26.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC014'})
SET n += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [93], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC014', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGM26.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC015'})
SET n += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [285], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC015', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGM26.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC016'})
SET n += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [450], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC016', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGF24.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC017'})
SET n += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [131], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC017', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGF24.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSCOM0'})
SET n += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [241], ingestion: 'auto', layer: 'dependency', name: 'ZMWSCOM0', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGM26.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSCOM1'})
SET n += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [247], ingestion: 'auto', layer: 'dependency', name: 'ZMWSCOM1', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGM26.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSG532'})
SET n += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [113], ingestion: 'auto', layer: 'dependency', name: 'ZMWSG532', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGM26.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSR009'})
SET n += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [98], ingestion: 'auto', layer: 'dependency', name: 'ZMWSR009', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGM26.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSR432'})
SET n += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [108], ingestion: 'auto', layer: 'dependency', name: 'ZMWSR432', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGM26.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSX090'})
SET n += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [157], ingestion: 'auto', layer: 'dependency', name: 'ZMWSX090', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGF24.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSZ403'})
SET n += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [103], ingestion: 'auto', layer: 'dependency', name: 'ZMWSZ403', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGM26.cbl', viewTag: 'dependency'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_ZM1MG560'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que ejecuta procesos.', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_ZM1MG560', nodeType: 'business-function', objective: 'Capacidad funcional principal de ZM1MG560.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MG560.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_ZM1MG563'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que ejecuta procesos. Pertenece a: PROGRAM-ID. ZM1MG563. INSTALLATION. BBVA-BANCOMER, S.A. DE C.V. ENVIRONMENT DIVISION. DATA DIVISION. WORKING-STORAGE SECTION. 01 W000-VARS. 03 W000-PROG PIC X(08) VALUE \'ZM1MG563\'. 03 W000-OPC PIC X(03) VALUE \'460\'. 03 W000-RESP PIC S9(08) COMP VALUE 0. 03 W000-CURSOR PIC S9(04) COMP VALUE -1. 03 W000-TIME PIC X(08) VALUE SPACES. 01 WS-TIMESTAMP PIC X(26) VALUE SPACES. 01 W000-OPCION PIC X(03) VALUE SPACES. 88 W000-OPCION-VALIDA VALUE \'461\', \'463\', \'465\', \'467\', \'469\', \'478\', \'479\', \'490\', \'P01\', \'F14\', \'PL1\', \'PL2\', \'471\', \'485\', \'486\', \'487\', \'488\', \'L04\', \'L59\', \'492\', \'F15\', \'475\', \'491\', \'5 \', \'210\', \'480\', \'999\'. EXEC SQL INCLUDE SQLCA COPY DFHAID. COPY DFHBMSCA. COPY ZMG5631. COPY ZMWSC014. COPY ZMWSC010. COPY ZMWSC011. COPY ZMWSC012. COPY ZMWSC013. 01 CE-CENTRADO. COPY ZMWSR009. 01 EM-EMPRESA. COPY ZMWSZ403. 01 TR-TRANSFERENCIA. COPY ZMWSR432. 01 AB-ABORTA. COPY ZMWSG532. 01 WM-MENSAJES. 03 WM-TECLA-INVALIDA PIC 9(04) VALUE 109. 03 WM-OPCION-INCORRECTA PIC 9(04) VALUE 110. 03 WM-SELECCIONE-OPCION PIC 9(04) VALUE 1095. COPY ZMWCOM11. 05 WC-CODIGO PIC 9(04) VALUE 0. 05 WC-COMANDO PIC X(10) VALUE SPACES. LINKAGE SECTION. 01 DFHCOMMAREA. 05 L000-COMMAREA PIC X(700). PROCEDURE DIVISION. 0000-INICIO. PERFORM 9000-INICIO EVALUATE WC-ESTADO WHEN 0 EXEC SQL SET :WS-TIMESTAMP = CURRENT TIMESTAMP END-EXEC MOVE 1 TO WC-ESTADO MOVE WM-SELECCIONE-OPCION TO WC-CODIGO WHEN 1 PERFORM 8120-RECIBE-PANTALLA EVALUATE EIBAID WHEN DFHENTER MOVE COMANDOI TO W000-OPCION IF W000-OPCION-VALIDA MOVE WC-WAPLIC TO MM-WAPLIC MOVE WC-COMANDO TO MM-COMANDO PERFORM 9900-TRANSFIERE MOVE MM-CODIGO TO WC-CODIGO ELSE MOVE WM-OPCION-INCORRECTA TO WC-CODIGO END-IF WHEN DFHPF2 IF COMANDOI NOT = \' \' MOVE WC-WAPLIC TO MM-WAPLIC MOVE COMANDOO TO MM-COMANDO PERFORM 9900-TRANSFIERE MOVE MM-CODIGO TO WC-CODIGO ELSE MOVE WM-TECLA-INVALIDA TO WC-CODIGO END-IF WHEN DFHPF3 IF COMANDOI = \' \' MOVE COMANDOO TO MM-COMANDO MOVE WC-WAPLIC TO MM-WAPLIC PERFORM 9900-TRANSFIERE MOVE MM-CODIGO TO WC-CODIGO ELSE MOVE WM-TECLA-INVALIDA TO WC-CODIGO END-IF WHEN OTHER MOVE WM-TECLA-INVALIDA TO WC-CODIGO END-EVALUATE END-EVALUATE PERFORM 8110-ENVIA-PANTALLA PERFORM 9400-RETURN. 8100-INFORMACION-ENCABEZADOS. MOVE WC-PGMID TO WPGMIDO MOVE WC-EMPRESA TO WCIA1O PERFORM 9300-USER-FECHA-HORA MOVE FH-FECHA-10 TO WFECHAO MOVE EIBTRMID TO WTERMO MOVE FH-HORA TO WHORAO MOVE FH-USUARIO TO WUSUAO. 8110-ENVIA-PANTALLA. PERFORM 8100-INFORMACION-ENCABEZADOS MOVE WC-COMANDO TO COMANDOO MOVE W000-CURSOR TO COMANDOL IF WC-CODIGO > 0 MOVE WC-CODIGO TO WM-CODIGO PERFORM 9200-MENSAJE-ERROR MOVE WM-MENSAJE TO EZEMSGO ELSE MOVE \' \' TO EZEMSGO END-IF EXEC CICS SEND MAP (\'ZMG5631\') MAPSET (\'ZMG5631\') FREEKB ERASE RESP (W000-RESP) END-EXEC PERFORM 9000-REINICIO. 8120-RECIBE-PANTALLA. EXEC CICS RECEIVE MAP (\'ZMG5631\') MAPSET (\'ZMG5631\') RESP (W000-RESP) IF W000-RESP = DFHRESP(MAPFAIL) PERFORM 8110-ENVIA-PANTALLA MOVE COMANDOO TO WS-STRING-ENTRADA MOVE 10 TO WS-LONG-STRING PERFORM 9886-ALINEA-STRING-IZQ MOVE WS-STRING-SALIDA TO WC-COMANDO EXEC SQL INCLUDE ZMWSCOM0 EXEC SQL INCLUDE ZMWSCOM1 EXEC SQL INCLUDE ZMWSC002 EXEC SQL INCLUDE ZMWSC003 EXEC SQL INCLUDE ZMWSC004 EXEC SQL INCLUDE ZMWSC005 EXEC SQL INCLUDE ZMWSC008 EXEC SQL INCLUDE ZMWSC015 EXEC SQL INCLUDE ZMWSC009.', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_ZM1MG563', nodeType: 'business-function', objective: 'Capacidad funcional principal de ZM1MG563.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MG563.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_ZM1MG568'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que ejecuta procesos. Pertenece a: PROGRAM-ID. ZM1MG568. INSTALLATION. BBVA-BANCOMER, S.A. DE C.V..', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_ZM1MG568', nodeType: 'business-function', objective: 'Capacidad funcional principal de ZM1MG568.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MG568.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_ZM1MG678'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que ejecuta procesos.', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_ZM1MG678', nodeType: 'business-function', objective: 'Capacidad funcional principal de ZM1MG678.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MG678.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_ZM1MGB42'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que menu de promocion: opciones de administracion de valores rutinas: zm8cr009 (centra textos) ahr009 zm9cr403 (obtener nombre de compa#ia) vrb403o zm9cr432 (transferencia-navegacion-) vrb432o modifico: adriana vargas cardenas (avc) / extec fecha: sept. 24, 2002. asunto: se modifica "w000-opcion-valida" de nivel 88 para que acepte las opciones nuevas del menu. fecha: marzo 2013 asunto: se modifica "w000-opcion-valida" de nivel 88 para que no acepte como valida la opcion 230 mantenimiento a contratos silox. marca: siva-2012 fs-2.0.0-01 xmcb150 09abr13 - adecuacion solicitada por dyd fs-2.0.0-01-ini \'980\', \'999\',\'230\'. fs-2.0.0-01-fin constantes de teclado (sqlca ) constantes de teclado (dfhaid) constantes de atributos variables del mapa variables comunes reinicio, mensaje y rutinas variables para obtener fechas vxt (wx-reg) variables para obtener mensajes de error (wm-reg) variables para obtener userid, fecha y hora (fh-reg) variables para eliminar espacios a la izquierda o derecha variables para rutina de centrado de texto variables para rutina de nombre de la empresa variables para rutina de transferencia (mm-llama-menu) variables para rutina de aborta (ab-reg) variables de comunicacion (wc-commarea). Pertenece a: PROGRAM-ID. ZM1MGB42. INSTALLATION. BBVA-BANCOMER. ENVIRONMENT DIVISION. DATA DIVISION. WORKING-STORAGE SECTION. 01 W000-VARS. 03 W000-PROG PIC X(08) VALUE \'ZM1MGB42\'. 03 W000-OPC PIC X(03) VALUE \'6\'. 03 W000-RESP PIC S9(08) COMP VALUE 0. 03 W000-CURSOR PIC S9(04) COMP VALUE -1. 01 WS-TIMESTAMP PIC X(26) VALUE SPACES. 01 W000-OPCION PIC X(03) VALUE SPACES. 88 W000-OPCION-VALIDA VALUE \'1\', \'2\', \'3\', \'4\', \'5\', \'61\', \'67\', \'706\', \'708\', \'709\', \'710\', \'711\', \'980\', \'999\'. EXEC SQL INCLUDE SQLCA COPY DFHAID. COPY DFHBMSCA. COPY ZMGB421. COPY ZMWSC010. COPY ZMWSC011. COPY ZMWSC012. COPY ZMWSC013. COPY ZMWSC014. 01 CE-CENTRADO. COPY ZMWSR009. 01 EM-EMPRESA. COPY ZMWSZ403. 01 TR-TRANSFERENCIA. COPY ZMWSR432. 01 AB-ABORTA. COPY ZMWSG532. 01 WM-MENSAJES. 03 WM-TECLA-INVALIDA PIC 9(04) VALUE 109. 03 WM-OPCION-INCORRECTA PIC 9(04) VALUE 110. 03 WM-INVALIDA-TRANSFER PIC 9(04) VALUE 584. 03 WM-SELECCIONE-OPCION PIC 9(04) VALUE 1095. COPY ZMWCOM11. 05 WC-CODIGO PIC 9(04) VALUE 0. 05 WC-COMANDO PIC X(10) VALUE SPACES. LINKAGE SECTION. 01 DFHCOMMAREA. 05 L000-COMMAREA PIC X(700)..', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_ZM1MGB42', nodeType: 'business-function', objective: 'MENU DE PROMOCION: OPCIONES DE ADMINISTRACION DE VALORES RUTINAS: ZM8CR009 (CENTRA TEXTOS) AHR009 ZM9CR403 (OBTENER NOMBRE DE COMPA#IA) VRB403O ZM9CR432 (TRANSFERENCIA-NAVEGACION-) VRB432O MODIFICO: ADRIANA VARGAS CARDENAS (AVC) / EXTEC FECHA: SEPT. 24, 2002. ASUNTO: SE MODIFICA "W000-OPCION-VALIDA" DE NIVEL 88 PARA QUE ACEPTE LAS OPCIONES NUEVAS DEL MENU. FECHA: MARZO 2013 ASUNTO: SE MODIFICA "W000-OPCION-VALIDA" DE NIVEL 88 PARA QUE NO ACEPTE COMO VALIDA LA OPCION 230 MANTENIMIENTO A CONTRATOS SILOX. MARCA: SIVA-2012 FS-2.0.0-01 XMCB150 09ABR13 - ADECUACION SOLICITADA POR DYD FS-2.0.0-01-INI \'980\', \'999\',\'230\'. FS-2.0.0-01-FIN CONSTANTES DE TECLADO (SQLCA ) CONSTANTES DE TECLADO (DFHAID) CONSTANTES DE ATRIBUTOS VARIABLES DEL MAPA VARIABLES COMUNES REINICIO, MENSAJE Y RUTINAS VARIABLES PARA OBTENER FECHAS VXT (WX-REG) VARIABLES PARA OBTENER MENSAJES DE ERROR (WM-REG) VARIABLES PARA OBTENER USERID, FECHA Y HORA (FH-REG) VARIABLES PARA ELIMINAR ESPACIOS A LA IZQUIERDA O DERECHA VARIABLES PARA RUTINA DE CENTRADO DE TEXTO VARIABLES PARA RUTINA DE NOMBRE DE LA EMPRESA VARIABLES PARA RUTINA DE TRANSFERENCIA (MM-LLAMA-MENU) VARIABLES PARA RUTINA DE ABORTA (AB-REG) VARIABLES DE COMUNICACION (WC-COMMAREA)', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGB42.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_ZM1MGF24'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que menu de cargos varios opcion: "700" transaccion: zf24 rutinas: zm8cr009 (centra textos) zmwsc008 (rutina de aborta) zm9cr403 (obtener nombre de compania) zm9cr432 (transferencia-navegacion-). Pertenece a: PROGRAM-ID. ZM1MGF24..', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_ZM1MGF24', nodeType: 'business-function', objective: 'MENU DE CARGOS VARIOS OPCION: "700" TRANSACCION: ZF24 RUTINAS: ZM8CR009 (CENTRA TEXTOS) ZMWSC008 (RUTINA DE ABORTA) ZM9CR403 (OBTENER NOMBRE DE COMPANIA) ZM9CR432 (TRANSFERENCIA-NAVEGACION-)', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGF24.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_ZM1MGJ28'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que ejecuta procesos.', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_ZM1MGJ28', nodeType: 'business-function', objective: 'Capacidad funcional principal de ZM1MGJ28.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGJ28.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_ZM1MGJ59'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que presentar menu de arbitraje internacional rutinas: programa: zm1mgj59 version x.xx - dd/mmm/aaaa modific.: xxx constantes de teclado (dfhaid) constantes de atributos variables del mapa variables de rutinas generales variables para obtener fechas vxt variables para obtener mensajes de error (wm-reg) variables para obtener userid, fecha y hora (fh-reg) variables para alinear un string a la izquierda variables para rutina de centrado de texto variables para rutina de nombre de la empresa variables para rutina de transferencia (mm-llama-menu) variables para rutina de aborta (ab-reg) variables de comunicacion (wc-commarea). Pertenece a: BBVA-BANCOMER, S.A. DE C.V. ENVIRONMENT DIVISION. DATA DIVISION. WORKING-STORAGE SECTION. 01 W000-VARS. 03 W000-PROG PIC X(08) VALUE \'ZM1MGJ59\'. 03 W000-OPC PIC X(03) VALUE \'107\'. 03 W000-RESP PIC S9(08) COMP VALUE 0. 03 W000-CURSOR PIC S9(04) COMP VALUE -1. 03 W000-TIME PIC X(08) VALUE SPACES. 01 W000-OPCION PIC X(03) VALUE SPACES. 88 W000-OPCION-VALIDA VALUE \'0\', \'107\', \'108\', \'920\', \'999\'. COPY DFHAID. COPY DFHBMSCA. COPY ZMGJ591. COPY ZMWSC010. COPY ZMWSC011. COPY ZMWSC012. COPY ZMWSC013. COPY ZMWSC014. 01 CE-CENTRADO. COPY ZMWSR009. 01 EM-EMPRESA. COPY ZMWSZ403. 01 TR-TRANSFERENCIA. COPY ZMWSR432. 01 AB-ABORTA. COPY ZMWSG532. 01 WM-MENSAJES. 03 WM-TECLA-INVALIDA PIC 9(04) VALUE 109. 03 WM-OPCION-INCORRECTA PIC 9(04) VALUE 110. 03 WM-INVALIDA-TRANSFER PIC 9(04) VALUE 584. 03 WM-SELECCIONE-OPCION PIC 9(04) VALUE 1095. COPY ZMWCOM11. 05 WC-CODIGO PIC 9(04) VALUE 0. 05 WC-COMANDO PIC X(10) VALUE SPACES. LINKAGE SECTION. 01 DFHCOMMAREA. 05 L000-COMMAREA PIC X(700)..', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_ZM1MGJ59', nodeType: 'business-function', objective: 'PRESENTAR MENU DE ARBITRAJE INTERNACIONAL RUTINAS: PROGRAMA: ZM1MGJ59 VERSION X.XX - DD/MMM/AAAA MODIFIC.: XXX CONSTANTES DE TECLADO (DFHAID) CONSTANTES DE ATRIBUTOS VARIABLES DEL MAPA VARIABLES DE RUTINAS GENERALES VARIABLES PARA OBTENER FECHAS VXT VARIABLES PARA OBTENER MENSAJES DE ERROR (WM-REG) VARIABLES PARA OBTENER USERID, FECHA Y HORA (FH-REG) VARIABLES PARA ALINEAR UN STRING A LA IZQUIERDA VARIABLES PARA RUTINA DE CENTRADO DE TEXTO VARIABLES PARA RUTINA DE NOMBRE DE LA EMPRESA VARIABLES PARA RUTINA DE TRANSFERENCIA (MM-LLAMA-MENU) VARIABLES PARA RUTINA DE ABORTA (AB-REG) VARIABLES DE COMUNICACION (WC-COMMAREA)', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGJ59.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_ZM1MGK02'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que ejecuta procesos.', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_ZM1MGK02', nodeType: 'business-function', objective: 'Capacidad funcional principal de ZM1MGK02.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGK02.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_ZM1MGM26'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que presentar menu para el area de amdinistración fiduciaria opcion: "xxx" transaccion: z552 (m552) rutinas: zm8cr009 (centra textos) zm9cr403 (obtener nombre de empresa) zm9cr432 (transferencia-navegacion-) aplic. llamada: zm2og532 (funcion de aborta). Pertenece a: PROGRAM-ID. ZM1MGM26..', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_ZM1MGM26', nodeType: 'business-function', objective: 'PRESENTAR MENU PARA EL AREA DE AMDINISTRACIóN FIDUCIARIA OPCION: "XXX" TRANSACCION: Z552 (M552) RUTINAS: ZM8CR009 (CENTRA TEXTOS) ZM9CR403 (OBTENER NOMBRE DE EMPRESA) ZM9CR432 (TRANSFERENCIA-NAVEGACION-) APLIC. LLAMADA: ZM2OG532 (FUNCION DE ABORTA)', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGM26.cbl', viewTag: 'functional'};

MERGE (n:Paragraph {name: '0000-INICIO', programName: 'ZM1MG560'})
SET n += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [115], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0000-INICIO', nodeType: 'process-step', programName: 'ZM1MG560', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MG560.cbl', summary: 'Inicializa el flujo operativo de ZM1MG560, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0010-INICIO-APLICACION', programName: 'ZM1MG560'})
SET n += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [129], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0010-INICIO-APLICACION', nodeType: 'process-step', programName: 'ZM1MG560', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MG560.cbl', summary: 'Inicializa el flujo operativo de ZM1MG560, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0100-REINICIO-APLICACION', programName: 'ZM1MG560'})
SET n += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [133], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0100-REINICIO-APLICACION', nodeType: 'process-step', programName: 'ZM1MG560', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MG560.cbl', summary: 'Inicializa el flujo operativo de ZM1MG560, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MG560'})
SET n += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [146], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8000-TRANSFIERE', nodeType: 'process-step', programName: 'ZM1MG560', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MG560.cbl', summary: 'Orquesta una fase funcional de ZM1MG560, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8010-PF2-PF3', programName: 'ZM1MG560'})
SET n += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [152], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8010-PF2-PF3', nodeType: 'process-step', programName: 'ZM1MG560', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MG560.cbl', summary: 'Orquesta una fase funcional de ZM1MG560, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MG560'})
SET n += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [168], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8100-RECIBE-PANTALLA', nodeType: 'process-step', programName: 'ZM1MG560', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MG560.cbl', summary: 'Orquesta una fase funcional de ZM1MG560, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG560'})
SET n += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [184], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8110-ENVIA-PANTALLA', nodeType: 'process-step', programName: 'ZM1MG560', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MG560.cbl', summary: 'Orquesta una fase funcional de ZM1MG560, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG560'})
SET n += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [205], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8120-ENCABEZADO', nodeType: 'process-step', programName: 'ZM1MG560', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MG560.cbl', summary: 'Orquesta una fase funcional de ZM1MG560, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'ZM1MG560'})
SET n += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [5], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'ZM1MG560', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MG560.cbl', summary: 'Orquesta una fase funcional de ZM1MG560, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'ZM1MG560'})
SET n += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [7], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'ZM1MG560', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MG560.cbl', summary: 'Orquesta una fase funcional de ZM1MG560, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ZM1MG560'})
SET n += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [108], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ZM1MG560', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MG560.cbl', summary: 'Orquesta una fase funcional de ZM1MG560, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG560'})
SET n += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [30], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ZM1MG560', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MG560.cbl', summary: 'Orquesta una fase funcional de ZM1MG560, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0000-INICIO', programName: 'ZM1MG563'})
SET n += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [160], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0000-INICIO', nodeType: 'process-step', programName: 'ZM1MG563', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MG563.cbl', summary: 'Inicializa el flujo operativo de ZM1MG563, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8100-INFORMACION-ENCABEZADOS', programName: 'ZM1MG563'})
SET n += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [207], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8100-INFORMACION-ENCABEZADOS', nodeType: 'process-step', programName: 'ZM1MG563', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MG563.cbl', summary: 'Orquesta una fase funcional de ZM1MG563, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG563'})
SET n += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [216], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8110-ENVIA-PANTALLA', nodeType: 'process-step', programName: 'ZM1MG563', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MG563.cbl', summary: 'Orquesta una fase funcional de ZM1MG563, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MG563'})
SET n += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [239], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8120-RECIBE-PANTALLA', nodeType: 'process-step', programName: 'ZM1MG563', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MG563.cbl', summary: 'Orquesta una fase funcional de ZM1MG563, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'COMANDOI', programName: 'ZM1MG563'})
SET n += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [254], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'COMANDOI', nodeType: 'process-step', programName: 'ZM1MG563', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MG563.cbl', summary: 'Orquesta una fase funcional de ZM1MG563, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ZM1MG563'})
SET n += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [153], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ZM1MG563', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MG563.cbl', summary: 'Orquesta una fase funcional de ZM1MG563, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG563'})
SET n += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [40], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ZM1MG563', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MG563.cbl', summary: 'Orquesta una fase funcional de ZM1MG563, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0000-INICIO', programName: 'ZM1MG568'})
SET n += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [127], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0000-INICIO', nodeType: 'process-step', programName: 'ZM1MG568', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MG568.cbl', summary: 'Inicializa el flujo operativo de ZM1MG568, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8100-INFORMACION-ENCABEZADOS', programName: 'ZM1MG568'})
SET n += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [175], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8100-INFORMACION-ENCABEZADOS', nodeType: 'process-step', programName: 'ZM1MG568', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MG568.cbl', summary: 'Orquesta una fase funcional de ZM1MG568, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG568'})
SET n += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [187], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8110-ENVIA-PANTALLA', nodeType: 'process-step', programName: 'ZM1MG568', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MG568.cbl', summary: 'Orquesta una fase funcional de ZM1MG568, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MG568'})
SET n += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [211], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8120-RECIBE-PANTALLA', nodeType: 'process-step', programName: 'ZM1MG568', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MG568.cbl', summary: 'Orquesta una fase funcional de ZM1MG568, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'COMANDOI', programName: 'ZM1MG568'})
SET n += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [229], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'COMANDOI', nodeType: 'process-step', programName: 'ZM1MG568', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MG568.cbl', summary: 'Orquesta una fase funcional de ZM1MG568, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ZM1MG568'})
SET n += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [119], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ZM1MG568', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MG568.cbl', summary: 'Orquesta una fase funcional de ZM1MG568, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG568'})
SET n += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [30], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ZM1MG568', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MG568.cbl', summary: 'Orquesta una fase funcional de ZM1MG568, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0000-INICIO', programName: 'ZM1MG678'})
SET n += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [120], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0000-INICIO', nodeType: 'process-step', programName: 'ZM1MG678', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MG678.cbl', summary: 'Inicializa el flujo operativo de ZM1MG678, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8100-INFORMACION-ENCABEZADOS', programName: 'ZM1MG678'})
SET n += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [165], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8100-INFORMACION-ENCABEZADOS', nodeType: 'process-step', programName: 'ZM1MG678', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MG678.cbl', summary: 'Orquesta una fase funcional de ZM1MG678, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG678'})
SET n += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [174], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8110-ENVIA-PANTALLA', nodeType: 'process-step', programName: 'ZM1MG678', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MG678.cbl', summary: 'Orquesta una fase funcional de ZM1MG678, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MG678'})
SET n += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [194], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8120-RECIBE-PANTALLA', nodeType: 'process-step', programName: 'ZM1MG678', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MG678.cbl', summary: 'Orquesta una fase funcional de ZM1MG678, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'ZM1MG678'})
SET n += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [5], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'ZM1MG678', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MG678.cbl', summary: 'Orquesta una fase funcional de ZM1MG678, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'ZM1MG678'})
SET n += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [7], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'ZM1MG678', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MG678.cbl', summary: 'Orquesta una fase funcional de ZM1MG678, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ZM1MG678'})
SET n += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [113], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ZM1MG678', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MG678.cbl', summary: 'Orquesta una fase funcional de ZM1MG678, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG678'})
SET n += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [33], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ZM1MG678', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MG678.cbl', summary: 'Orquesta una fase funcional de ZM1MG678, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0000-INICIO', programName: 'ZM1MGB42'})
SET n += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [142], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0000-INICIO', nodeType: 'process-step', programName: 'ZM1MGB42', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGB42.cbl', summary: 'Inicializa el flujo operativo de ZM1MGB42, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MGB42'})
SET n += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [184], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8000-TRANSFIERE', nodeType: 'process-step', programName: 'ZM1MGB42', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGB42.cbl', summary: 'Orquesta una fase funcional de ZM1MGB42, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MGB42'})
SET n += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [195], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8100-RECIBE-PANTALLA', nodeType: 'process-step', programName: 'ZM1MGB42', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGB42.cbl', summary: 'Orquesta una fase funcional de ZM1MGB42, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MGB42'})
SET n += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [213], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8110-ENVIA-PANTALLA', nodeType: 'process-step', programName: 'ZM1MGB42', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGB42.cbl', summary: 'Orquesta una fase funcional de ZM1MGB42, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGB42'})
SET n += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [241], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8120-ENCABEZADO', nodeType: 'process-step', programName: 'ZM1MGB42', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGB42.cbl', summary: 'Orquesta una fase funcional de ZM1MGB42, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ZM1MGB42'})
SET n += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [133], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ZM1MGB42', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGB42.cbl', summary: 'Orquesta una fase funcional de ZM1MGB42, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGB42'})
SET n += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [43], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ZM1MGB42', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGB42.cbl', summary: 'Orquesta una fase funcional de ZM1MGB42, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1000-INICIO', programName: 'ZM1MGF24'})
SET n += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [181], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1000-INICIO', nodeType: 'process-step', programName: 'ZM1MGF24', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGF24.cbl', summary: 'Inicializa el flujo operativo de ZM1MGF24, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1100-ESTADO-INICIO', programName: 'ZM1MGF24'})
SET n += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [200], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1100-ESTADO-INICIO', nodeType: 'process-step', programName: 'ZM1MGF24', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGF24.cbl', summary: 'Inicializa el flujo operativo de ZM1MGF24, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1300-ESTADO-CONTINUACION', programName: 'ZM1MGF24'})
SET n += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [223], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1300-ESTADO-CONTINUACION', nodeType: 'process-step', programName: 'ZM1MGF24', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGF24.cbl', summary: 'Orquesta una fase funcional de ZM1MGF24, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1400-DECIDE-CONTINUACION', programName: 'ZM1MGF24'})
SET n += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [232], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1400-DECIDE-CONTINUACION', nodeType: 'process-step', programName: 'ZM1MGF24', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGF24.cbl', summary: 'Orquesta una fase funcional de ZM1MGF24, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1410-REALIZA-ENTER', programName: 'ZM1MGF24'})
SET n += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [260], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1410-REALIZA-ENTER', nodeType: 'process-step', programName: 'ZM1MGF24', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGF24.cbl', summary: 'Orquesta una fase funcional de ZM1MGF24, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1420-REALIZA-PF2', programName: 'ZM1MGF24'})
SET n += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [271], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1420-REALIZA-PF2', nodeType: 'process-step', programName: 'ZM1MGF24', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGF24.cbl', summary: 'Orquesta una fase funcional de ZM1MGF24, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1430-REALIZA-PF3', programName: 'ZM1MGF24'})
SET n += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [289], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1430-REALIZA-PF3', nodeType: 'process-step', programName: 'ZM1MGF24', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGF24.cbl', summary: 'Orquesta una fase funcional de ZM1MGF24, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2000-VALIDA-OPCION', programName: 'ZM1MGF24'})
SET n += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [298], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2000-VALIDA-OPCION', nodeType: 'process-step', programName: 'ZM1MGF24', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGF24.cbl', summary: 'Orquesta una fase funcional de ZM1MGF24, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '3200-VALIDA-COMANDO', programName: 'ZM1MGF24'})
SET n += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [315], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '3200-VALIDA-COMANDO', nodeType: 'process-step', programName: 'ZM1MGF24', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGF24.cbl', summary: 'Orquesta una fase funcional de ZM1MGF24, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '7000-REALIZA-TRANS', programName: 'ZM1MGF24'})
SET n += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [332], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '7000-REALIZA-TRANS', nodeType: 'process-step', programName: 'ZM1MGF24', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGF24.cbl', summary: 'Orquesta una fase funcional de ZM1MGF24, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8000-RECIBE-PANTALLA', programName: 'ZM1MGF24'})
SET n += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [343], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8000-RECIBE-PANTALLA', nodeType: 'process-step', programName: 'ZM1MGF24', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGF24.cbl', summary: 'Orquesta una fase funcional de ZM1MGF24, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8200-TERMINA-PROCESO', programName: 'ZM1MGF24'})
SET n += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [371], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8200-TERMINA-PROCESO', nodeType: 'process-step', programName: 'ZM1MGF24', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGF24.cbl', summary: 'Cierra la ejecucion de ZM1MGF24, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8400-PREPARA-DATOS-ENCA', programName: 'ZM1MGF24'})
SET n += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [380], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8400-PREPARA-DATOS-ENCA', nodeType: 'process-step', programName: 'ZM1MGF24', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGF24.cbl', summary: 'Inicializa el flujo operativo de ZM1MGF24, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8500-ENVIA-PANTALLA', programName: 'ZM1MGF24'})
SET n += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [398], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8500-ENVIA-PANTALLA', nodeType: 'process-step', programName: 'ZM1MGF24', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGF24.cbl', summary: 'Orquesta una fase funcional de ZM1MGF24, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ZM1MGF24'})
SET n += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [29], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ZM1MGF24', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGF24.cbl', summary: 'Orquesta una fase funcional de ZM1MGF24, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ZM1MGF24'})
SET n += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [169], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ZM1MGF24', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGF24.cbl', summary: 'Orquesta una fase funcional de ZM1MGF24, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGF24'})
SET n += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [38], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ZM1MGF24', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGF24.cbl', summary: 'Orquesta una fase funcional de ZM1MGF24, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0000-INICIO', programName: 'ZM1MGJ28'})
SET n += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [125], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0000-INICIO', nodeType: 'process-step', programName: 'ZM1MGJ28', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGJ28.cbl', summary: 'Inicializa el flujo operativo de ZM1MGJ28, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MGJ28'})
SET n += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [152], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8000-TRANSFIERE', nodeType: 'process-step', programName: 'ZM1MGJ28', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGJ28.cbl', summary: 'Orquesta una fase funcional de ZM1MGJ28, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8010-PF2-PF3', programName: 'ZM1MGJ28'})
SET n += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [158], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8010-PF2-PF3', nodeType: 'process-step', programName: 'ZM1MGJ28', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGJ28.cbl', summary: 'Orquesta una fase funcional de ZM1MGJ28, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MGJ28'})
SET n += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [177], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8100-RECIBE-PANTALLA', nodeType: 'process-step', programName: 'ZM1MGJ28', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGJ28.cbl', summary: 'Orquesta una fase funcional de ZM1MGJ28, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MGJ28'})
SET n += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [195], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8110-ENVIA-PANTALLA', nodeType: 'process-step', programName: 'ZM1MGJ28', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGJ28.cbl', summary: 'Orquesta una fase funcional de ZM1MGJ28, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGJ28'})
SET n += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [219], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8120-ENCABEZADO', nodeType: 'process-step', programName: 'ZM1MGJ28', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGJ28.cbl', summary: 'Orquesta una fase funcional de ZM1MGJ28, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'ZM1MGJ28'})
SET n += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [5], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'ZM1MGJ28', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGJ28.cbl', summary: 'Orquesta una fase funcional de ZM1MGJ28, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'ZM1MGJ28'})
SET n += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [7], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'ZM1MGJ28', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGJ28.cbl', summary: 'Orquesta una fase funcional de ZM1MGJ28, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ZM1MGJ28'})
SET n += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [118], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ZM1MGJ28', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGJ28.cbl', summary: 'Orquesta una fase funcional de ZM1MGJ28, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ28'})
SET n += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [35], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ZM1MGJ28', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGJ28.cbl', summary: 'Orquesta una fase funcional de ZM1MGJ28, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0000-INICIO', programName: 'ZM1MGJ59'})
SET n += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [117], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0000-INICIO', nodeType: 'process-step', programName: 'ZM1MGJ59', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGJ59.cbl', summary: 'Inicializa el flujo operativo de ZM1MGJ59, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8100-INFORMACION-ENCABEZADOS', programName: 'ZM1MGJ59'})
SET n += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [161], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8100-INFORMACION-ENCABEZADOS', nodeType: 'process-step', programName: 'ZM1MGJ59', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGJ59.cbl', summary: 'Orquesta una fase funcional de ZM1MGJ59, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MGJ59'})
SET n += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [170], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8110-ENVIA-PANTALLA', nodeType: 'process-step', programName: 'ZM1MGJ59', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGJ59.cbl', summary: 'Orquesta una fase funcional de ZM1MGJ59, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MGJ59'})
SET n += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [193], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8120-RECIBE-PANTALLA', nodeType: 'process-step', programName: 'ZM1MGJ59', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGJ59.cbl', summary: 'Orquesta una fase funcional de ZM1MGJ59, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'ZM1MGJ59'})
SET n += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [5], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'ZM1MGJ59', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGJ59.cbl', summary: 'Orquesta una fase funcional de ZM1MGJ59, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'ZM1MGJ59'})
SET n += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [7], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'ZM1MGJ59', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGJ59.cbl', summary: 'Orquesta una fase funcional de ZM1MGJ59, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ZM1MGJ59'})
SET n += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [110], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ZM1MGJ59', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGJ59.cbl', summary: 'Orquesta una fase funcional de ZM1MGJ59, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ59'})
SET n += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [33], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ZM1MGJ59', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGJ59.cbl', summary: 'Orquesta una fase funcional de ZM1MGJ59, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0000-INICIO', programName: 'ZM1MGK02'})
SET n += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [113], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0000-INICIO', nodeType: 'process-step', programName: 'ZM1MGK02', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGK02.cbl', summary: 'Inicializa el flujo operativo de ZM1MGK02, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MGK02'})
SET n += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [148], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8000-TRANSFIERE', nodeType: 'process-step', programName: 'ZM1MGK02', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGK02.cbl', summary: 'Orquesta una fase funcional de ZM1MGK02, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MGK02'})
SET n += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [154], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8100-RECIBE-PANTALLA', nodeType: 'process-step', programName: 'ZM1MGK02', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGK02.cbl', summary: 'Orquesta una fase funcional de ZM1MGK02, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MGK02'})
SET n += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [168], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8110-ENVIA-PANTALLA', nodeType: 'process-step', programName: 'ZM1MGK02', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGK02.cbl', summary: 'Orquesta una fase funcional de ZM1MGK02, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGK02'})
SET n += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [189], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8120-ENCABEZADO', nodeType: 'process-step', programName: 'ZM1MGK02', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGK02.cbl', summary: 'Orquesta una fase funcional de ZM1MGK02, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'ZM1MGK02'})
SET n += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [5], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'ZM1MGK02', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGK02.cbl', summary: 'Orquesta una fase funcional de ZM1MGK02, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'ZM1MGK02'})
SET n += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [7], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'ZM1MGK02', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGK02.cbl', summary: 'Orquesta una fase funcional de ZM1MGK02, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ZM1MGK02'})
SET n += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [106], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ZM1MGK02', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGK02.cbl', summary: 'Orquesta una fase funcional de ZM1MGK02, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGK02'})
SET n += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [30], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ZM1MGK02', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGK02.cbl', summary: 'Orquesta una fase funcional de ZM1MGK02, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0000-INICIO', programName: 'ZM1MGM26'})
SET n += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [139], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0000-INICIO', nodeType: 'process-step', programName: 'ZM1MGM26', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGM26.cbl', summary: 'Inicializa el flujo operativo de ZM1MGM26, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0010-INICIO-APLICACION', programName: 'ZM1MGM26'})
SET n += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [150], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0010-INICIO-APLICACION', nodeType: 'process-step', programName: 'ZM1MGM26', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGM26.cbl', summary: 'Inicializa el flujo operativo de ZM1MGM26, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0100-REINICIO-APLICACION', programName: 'ZM1MGM26'})
SET n += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [156], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0100-REINICIO-APLICACION', nodeType: 'process-step', programName: 'ZM1MGM26', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGM26.cbl', summary: 'Inicializa el flujo operativo de ZM1MGM26, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MGM26'})
SET n += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [181], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8000-TRANSFIERE', nodeType: 'process-step', programName: 'ZM1MGM26', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGM26.cbl', summary: 'Orquesta una fase funcional de ZM1MGM26, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MGM26'})
SET n += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [187], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8100-RECIBE-PANTALLA', nodeType: 'process-step', programName: 'ZM1MGM26', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGM26.cbl', summary: 'Orquesta una fase funcional de ZM1MGM26, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MGM26'})
SET n += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [201], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8110-ENVIA-PANTALLA', nodeType: 'process-step', programName: 'ZM1MGM26', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGM26.cbl', summary: 'Orquesta una fase funcional de ZM1MGM26, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGM26'})
SET n += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [222], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8120-ENCABEZADO', nodeType: 'process-step', programName: 'ZM1MGM26', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGM26.cbl', summary: 'Orquesta una fase funcional de ZM1MGM26, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ZM1MGM26'})
SET n += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [31], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ZM1MGM26', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGM26.cbl', summary: 'Orquesta una fase funcional de ZM1MGM26, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ZM1MGM26'})
SET n += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [132], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ZM1MGM26', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGM26.cbl', summary: 'Orquesta una fase funcional de ZM1MGM26, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGM26'})
SET n += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [38], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ZM1MGM26', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGM26.cbl', summary: 'Orquesta una fase funcional de ZM1MGM26, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Program {name: 'ZM1MG560'})
SET n += {description: 'Programa COBOL que ejecuta procesos.', ingestion: 'auto', layer: 'program', name: 'ZM1MG560', nodeType: 'program', objective: null, reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MG560.cbl', system: null, viewTag: 'cobol-program'};

MERGE (n:Program {name: 'ZM1MG563'})
SET n += {description: 'Programa COBOL que ejecuta procesos. Pertenece a: PROGRAM-ID. ZM1MG563. INSTALLATION. BBVA-BANCOMER, S.A. DE C.V. ENVIRONMENT DIVISION. DATA DIVISION. WORKING-STORAGE SECTION. 01 W000-VARS. 03 W000-PROG PIC X(08) VALUE \'ZM1MG563\'. 03 W000-OPC PIC X(03) VALUE \'460\'. 03 W000-RESP PIC S9(08) COMP VALUE 0. 03 W000-CURSOR PIC S9(04) COMP VALUE -1. 03 W000-TIME PIC X(08) VALUE SPACES. 01 WS-TIMESTAMP PIC X(26) VALUE SPACES. 01 W000-OPCION PIC X(03) VALUE SPACES. 88 W000-OPCION-VALIDA VALUE \'461\', \'463\', \'465\', \'467\', \'469\', \'478\', \'479\', \'490\', \'P01\', \'F14\', \'PL1\', \'PL2\', \'471\', \'485\', \'486\', \'487\', \'488\', \'L04\', \'L59\', \'492\', \'F15\', \'475\', \'491\', \'5 \', \'210\', \'480\', \'999\'. EXEC SQL INCLUDE SQLCA COPY DFHAID. COPY DFHBMSCA. COPY ZMG5631. COPY ZMWSC014. COPY ZMWSC010. COPY ZMWSC011. COPY ZMWSC012. COPY ZMWSC013. 01 CE-CENTRADO. COPY ZMWSR009. 01 EM-EMPRESA. COPY ZMWSZ403. 01 TR-TRANSFERENCIA. COPY ZMWSR432. 01 AB-ABORTA. COPY ZMWSG532. 01 WM-MENSAJES. 03 WM-TECLA-INVALIDA PIC 9(04) VALUE 109. 03 WM-OPCION-INCORRECTA PIC 9(04) VALUE 110. 03 WM-SELECCIONE-OPCION PIC 9(04) VALUE 1095. COPY ZMWCOM11. 05 WC-CODIGO PIC 9(04) VALUE 0. 05 WC-COMANDO PIC X(10) VALUE SPACES. LINKAGE SECTION. 01 DFHCOMMAREA. 05 L000-COMMAREA PIC X(700). PROCEDURE DIVISION. 0000-INICIO. PERFORM 9000-INICIO EVALUATE WC-ESTADO WHEN 0 EXEC SQL SET :WS-TIMESTAMP = CURRENT TIMESTAMP END-EXEC MOVE 1 TO WC-ESTADO MOVE WM-SELECCIONE-OPCION TO WC-CODIGO WHEN 1 PERFORM 8120-RECIBE-PANTALLA EVALUATE EIBAID WHEN DFHENTER MOVE COMANDOI TO W000-OPCION IF W000-OPCION-VALIDA MOVE WC-WAPLIC TO MM-WAPLIC MOVE WC-COMANDO TO MM-COMANDO PERFORM 9900-TRANSFIERE MOVE MM-CODIGO TO WC-CODIGO ELSE MOVE WM-OPCION-INCORRECTA TO WC-CODIGO END-IF WHEN DFHPF2 IF COMANDOI NOT = \' \' MOVE WC-WAPLIC TO MM-WAPLIC MOVE COMANDOO TO MM-COMANDO PERFORM 9900-TRANSFIERE MOVE MM-CODIGO TO WC-CODIGO ELSE MOVE WM-TECLA-INVALIDA TO WC-CODIGO END-IF WHEN DFHPF3 IF COMANDOI = \' \' MOVE COMANDOO TO MM-COMANDO MOVE WC-WAPLIC TO MM-WAPLIC PERFORM 9900-TRANSFIERE MOVE MM-CODIGO TO WC-CODIGO ELSE MOVE WM-TECLA-INVALIDA TO WC-CODIGO END-IF WHEN OTHER MOVE WM-TECLA-INVALIDA TO WC-CODIGO END-EVALUATE END-EVALUATE PERFORM 8110-ENVIA-PANTALLA PERFORM 9400-RETURN. 8100-INFORMACION-ENCABEZADOS. MOVE WC-PGMID TO WPGMIDO MOVE WC-EMPRESA TO WCIA1O PERFORM 9300-USER-FECHA-HORA MOVE FH-FECHA-10 TO WFECHAO MOVE EIBTRMID TO WTERMO MOVE FH-HORA TO WHORAO MOVE FH-USUARIO TO WUSUAO. 8110-ENVIA-PANTALLA. PERFORM 8100-INFORMACION-ENCABEZADOS MOVE WC-COMANDO TO COMANDOO MOVE W000-CURSOR TO COMANDOL IF WC-CODIGO > 0 MOVE WC-CODIGO TO WM-CODIGO PERFORM 9200-MENSAJE-ERROR MOVE WM-MENSAJE TO EZEMSGO ELSE MOVE \' \' TO EZEMSGO END-IF EXEC CICS SEND MAP (\'ZMG5631\') MAPSET (\'ZMG5631\') FREEKB ERASE RESP (W000-RESP) END-EXEC PERFORM 9000-REINICIO. 8120-RECIBE-PANTALLA. EXEC CICS RECEIVE MAP (\'ZMG5631\') MAPSET (\'ZMG5631\') RESP (W000-RESP) IF W000-RESP = DFHRESP(MAPFAIL) PERFORM 8110-ENVIA-PANTALLA MOVE COMANDOO TO WS-STRING-ENTRADA MOVE 10 TO WS-LONG-STRING PERFORM 9886-ALINEA-STRING-IZQ MOVE WS-STRING-SALIDA TO WC-COMANDO EXEC SQL INCLUDE ZMWSCOM0 EXEC SQL INCLUDE ZMWSCOM1 EXEC SQL INCLUDE ZMWSC002 EXEC SQL INCLUDE ZMWSC003 EXEC SQL INCLUDE ZMWSC004 EXEC SQL INCLUDE ZMWSC005 EXEC SQL INCLUDE ZMWSC008 EXEC SQL INCLUDE ZMWSC015 EXEC SQL INCLUDE ZMWSC009.', ingestion: 'auto', layer: 'program', name: 'ZM1MG563', nodeType: 'program', objective: null, reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MG563.cbl', system: 'PROGRAM-ID. ZM1MG563. INSTALLATION. BBVA-BANCOMER, S.A. DE C.V. ENVIRONMENT DIVISION. DATA DIVISION. WORKING-STORAGE SECTION. 01 W000-VARS. 03 W000-PROG PIC X(08) VALUE \'ZM1MG563\'. 03 W000-OPC PIC X(03) VALUE \'460\'. 03 W000-RESP PIC S9(08) COMP VALUE 0. 03 W000-CURSOR PIC S9(04) COMP VALUE -1. 03 W000-TIME PIC X(08) VALUE SPACES. 01 WS-TIMESTAMP PIC X(26) VALUE SPACES. 01 W000-OPCION PIC X(03) VALUE SPACES. 88 W000-OPCION-VALIDA VALUE \'461\', \'463\', \'465\', \'467\', \'469\', \'478\', \'479\', \'490\', \'P01\', \'F14\', \'PL1\', \'PL2\', \'471\', \'485\', \'486\', \'487\', \'488\', \'L04\', \'L59\', \'492\', \'F15\', \'475\', \'491\', \'5 \', \'210\', \'480\', \'999\'. EXEC SQL INCLUDE SQLCA COPY DFHAID. COPY DFHBMSCA. COPY ZMG5631. COPY ZMWSC014. COPY ZMWSC010. COPY ZMWSC011. COPY ZMWSC012. COPY ZMWSC013. 01 CE-CENTRADO. COPY ZMWSR009. 01 EM-EMPRESA. COPY ZMWSZ403. 01 TR-TRANSFERENCIA. COPY ZMWSR432. 01 AB-ABORTA. COPY ZMWSG532. 01 WM-MENSAJES. 03 WM-TECLA-INVALIDA PIC 9(04) VALUE 109. 03 WM-OPCION-INCORRECTA PIC 9(04) VALUE 110. 03 WM-SELECCIONE-OPCION PIC 9(04) VALUE 1095. COPY ZMWCOM11. 05 WC-CODIGO PIC 9(04) VALUE 0. 05 WC-COMANDO PIC X(10) VALUE SPACES. LINKAGE SECTION. 01 DFHCOMMAREA. 05 L000-COMMAREA PIC X(700). PROCEDURE DIVISION. 0000-INICIO. PERFORM 9000-INICIO EVALUATE WC-ESTADO WHEN 0 EXEC SQL SET :WS-TIMESTAMP = CURRENT TIMESTAMP END-EXEC MOVE 1 TO WC-ESTADO MOVE WM-SELECCIONE-OPCION TO WC-CODIGO WHEN 1 PERFORM 8120-RECIBE-PANTALLA EVALUATE EIBAID WHEN DFHENTER MOVE COMANDOI TO W000-OPCION IF W000-OPCION-VALIDA MOVE WC-WAPLIC TO MM-WAPLIC MOVE WC-COMANDO TO MM-COMANDO PERFORM 9900-TRANSFIERE MOVE MM-CODIGO TO WC-CODIGO ELSE MOVE WM-OPCION-INCORRECTA TO WC-CODIGO END-IF WHEN DFHPF2 IF COMANDOI NOT = \' \' MOVE WC-WAPLIC TO MM-WAPLIC MOVE COMANDOO TO MM-COMANDO PERFORM 9900-TRANSFIERE MOVE MM-CODIGO TO WC-CODIGO ELSE MOVE WM-TECLA-INVALIDA TO WC-CODIGO END-IF WHEN DFHPF3 IF COMANDOI = \' \' MOVE COMANDOO TO MM-COMANDO MOVE WC-WAPLIC TO MM-WAPLIC PERFORM 9900-TRANSFIERE MOVE MM-CODIGO TO WC-CODIGO ELSE MOVE WM-TECLA-INVALIDA TO WC-CODIGO END-IF WHEN OTHER MOVE WM-TECLA-INVALIDA TO WC-CODIGO END-EVALUATE END-EVALUATE PERFORM 8110-ENVIA-PANTALLA PERFORM 9400-RETURN. 8100-INFORMACION-ENCABEZADOS. MOVE WC-PGMID TO WPGMIDO MOVE WC-EMPRESA TO WCIA1O PERFORM 9300-USER-FECHA-HORA MOVE FH-FECHA-10 TO WFECHAO MOVE EIBTRMID TO WTERMO MOVE FH-HORA TO WHORAO MOVE FH-USUARIO TO WUSUAO. 8110-ENVIA-PANTALLA. PERFORM 8100-INFORMACION-ENCABEZADOS MOVE WC-COMANDO TO COMANDOO MOVE W000-CURSOR TO COMANDOL IF WC-CODIGO > 0 MOVE WC-CODIGO TO WM-CODIGO PERFORM 9200-MENSAJE-ERROR MOVE WM-MENSAJE TO EZEMSGO ELSE MOVE \' \' TO EZEMSGO END-IF EXEC CICS SEND MAP (\'ZMG5631\') MAPSET (\'ZMG5631\') FREEKB ERASE RESP (W000-RESP) END-EXEC PERFORM 9000-REINICIO. 8120-RECIBE-PANTALLA. EXEC CICS RECEIVE MAP (\'ZMG5631\') MAPSET (\'ZMG5631\') RESP (W000-RESP) IF W000-RESP = DFHRESP(MAPFAIL) PERFORM 8110-ENVIA-PANTALLA MOVE COMANDOO TO WS-STRING-ENTRADA MOVE 10 TO WS-LONG-STRING PERFORM 9886-ALINEA-STRING-IZQ MOVE WS-STRING-SALIDA TO WC-COMANDO EXEC SQL INCLUDE ZMWSCOM0 EXEC SQL INCLUDE ZMWSCOM1 EXEC SQL INCLUDE ZMWSC002 EXEC SQL INCLUDE ZMWSC003 EXEC SQL INCLUDE ZMWSC004 EXEC SQL INCLUDE ZMWSC005 EXEC SQL INCLUDE ZMWSC008 EXEC SQL INCLUDE ZMWSC015 EXEC SQL INCLUDE ZMWSC009', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'ZM1MG568'})
SET n += {description: 'Programa COBOL que ejecuta procesos. Pertenece a: PROGRAM-ID. ZM1MG568. INSTALLATION. BBVA-BANCOMER, S.A. DE C.V..', ingestion: 'auto', layer: 'program', name: 'ZM1MG568', nodeType: 'program', objective: null, reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MG568.cbl', system: 'PROGRAM-ID. ZM1MG568. INSTALLATION. BBVA-BANCOMER, S.A. DE C.V.', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'ZM1MG678'})
SET n += {description: 'Programa COBOL que ejecuta procesos.', ingestion: 'auto', layer: 'program', name: 'ZM1MG678', nodeType: 'program', objective: null, reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MG678.cbl', system: null, viewTag: 'cobol-program'};

MERGE (n:Program {name: 'ZM1MGB42'})
SET n += {description: 'Programa COBOL que menu de promocion: opciones de administracion de valores rutinas: zm8cr009 (centra textos) ahr009 zm9cr403 (obtener nombre de compa#ia) vrb403o zm9cr432 (transferencia-navegacion-) vrb432o modifico: adriana vargas cardenas (avc) / extec fecha: sept. 24, 2002. asunto: se modifica "w000-opcion-valida" de nivel 88 para que acepte las opciones nuevas del menu. fecha: marzo 2013 asunto: se modifica "w000-opcion-valida" de nivel 88 para que no acepte como valida la opcion 230 mantenimiento a contratos silox. marca: siva-2012 fs-2.0.0-01 xmcb150 09abr13 - adecuacion solicitada por dyd fs-2.0.0-01-ini \'980\', \'999\',\'230\'. fs-2.0.0-01-fin constantes de teclado (sqlca ) constantes de teclado (dfhaid) constantes de atributos variables del mapa variables comunes reinicio, mensaje y rutinas variables para obtener fechas vxt (wx-reg) variables para obtener mensajes de error (wm-reg) variables para obtener userid, fecha y hora (fh-reg) variables para eliminar espacios a la izquierda o derecha variables para rutina de centrado de texto variables para rutina de nombre de la empresa variables para rutina de transferencia (mm-llama-menu) variables para rutina de aborta (ab-reg) variables de comunicacion (wc-commarea). Pertenece a: PROGRAM-ID. ZM1MGB42. INSTALLATION. BBVA-BANCOMER. ENVIRONMENT DIVISION. DATA DIVISION. WORKING-STORAGE SECTION. 01 W000-VARS. 03 W000-PROG PIC X(08) VALUE \'ZM1MGB42\'. 03 W000-OPC PIC X(03) VALUE \'6\'. 03 W000-RESP PIC S9(08) COMP VALUE 0. 03 W000-CURSOR PIC S9(04) COMP VALUE -1. 01 WS-TIMESTAMP PIC X(26) VALUE SPACES. 01 W000-OPCION PIC X(03) VALUE SPACES. 88 W000-OPCION-VALIDA VALUE \'1\', \'2\', \'3\', \'4\', \'5\', \'61\', \'67\', \'706\', \'708\', \'709\', \'710\', \'711\', \'980\', \'999\'. EXEC SQL INCLUDE SQLCA COPY DFHAID. COPY DFHBMSCA. COPY ZMGB421. COPY ZMWSC010. COPY ZMWSC011. COPY ZMWSC012. COPY ZMWSC013. COPY ZMWSC014. 01 CE-CENTRADO. COPY ZMWSR009. 01 EM-EMPRESA. COPY ZMWSZ403. 01 TR-TRANSFERENCIA. COPY ZMWSR432. 01 AB-ABORTA. COPY ZMWSG532. 01 WM-MENSAJES. 03 WM-TECLA-INVALIDA PIC 9(04) VALUE 109. 03 WM-OPCION-INCORRECTA PIC 9(04) VALUE 110. 03 WM-INVALIDA-TRANSFER PIC 9(04) VALUE 584. 03 WM-SELECCIONE-OPCION PIC 9(04) VALUE 1095. COPY ZMWCOM11. 05 WC-CODIGO PIC 9(04) VALUE 0. 05 WC-COMANDO PIC X(10) VALUE SPACES. LINKAGE SECTION. 01 DFHCOMMAREA. 05 L000-COMMAREA PIC X(700)..', ingestion: 'auto', layer: 'program', name: 'ZM1MGB42', nodeType: 'program', objective: 'MENU DE PROMOCION: OPCIONES DE ADMINISTRACION DE VALORES RUTINAS: ZM8CR009 (CENTRA TEXTOS) AHR009 ZM9CR403 (OBTENER NOMBRE DE COMPA#IA) VRB403O ZM9CR432 (TRANSFERENCIA-NAVEGACION-) VRB432O MODIFICO: ADRIANA VARGAS CARDENAS (AVC) / EXTEC FECHA: SEPT. 24, 2002. ASUNTO: SE MODIFICA "W000-OPCION-VALIDA" DE NIVEL 88 PARA QUE ACEPTE LAS OPCIONES NUEVAS DEL MENU. FECHA: MARZO 2013 ASUNTO: SE MODIFICA "W000-OPCION-VALIDA" DE NIVEL 88 PARA QUE NO ACEPTE COMO VALIDA LA OPCION 230 MANTENIMIENTO A CONTRATOS SILOX. MARCA: SIVA-2012 FS-2.0.0-01 XMCB150 09ABR13 - ADECUACION SOLICITADA POR DYD FS-2.0.0-01-INI \'980\', \'999\',\'230\'. FS-2.0.0-01-FIN CONSTANTES DE TECLADO (SQLCA ) CONSTANTES DE TECLADO (DFHAID) CONSTANTES DE ATRIBUTOS VARIABLES DEL MAPA VARIABLES COMUNES REINICIO, MENSAJE Y RUTINAS VARIABLES PARA OBTENER FECHAS VXT (WX-REG) VARIABLES PARA OBTENER MENSAJES DE ERROR (WM-REG) VARIABLES PARA OBTENER USERID, FECHA Y HORA (FH-REG) VARIABLES PARA ELIMINAR ESPACIOS A LA IZQUIERDA O DERECHA VARIABLES PARA RUTINA DE CENTRADO DE TEXTO VARIABLES PARA RUTINA DE NOMBRE DE LA EMPRESA VARIABLES PARA RUTINA DE TRANSFERENCIA (MM-LLAMA-MENU) VARIABLES PARA RUTINA DE ABORTA (AB-REG) VARIABLES DE COMUNICACION (WC-COMMAREA)', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGB42.cbl', system: 'PROGRAM-ID. ZM1MGB42. INSTALLATION. BBVA-BANCOMER. ENVIRONMENT DIVISION. DATA DIVISION. WORKING-STORAGE SECTION. 01 W000-VARS. 03 W000-PROG PIC X(08) VALUE \'ZM1MGB42\'. 03 W000-OPC PIC X(03) VALUE \'6\'. 03 W000-RESP PIC S9(08) COMP VALUE 0. 03 W000-CURSOR PIC S9(04) COMP VALUE -1. 01 WS-TIMESTAMP PIC X(26) VALUE SPACES. 01 W000-OPCION PIC X(03) VALUE SPACES. 88 W000-OPCION-VALIDA VALUE \'1\', \'2\', \'3\', \'4\', \'5\', \'61\', \'67\', \'706\', \'708\', \'709\', \'710\', \'711\', \'980\', \'999\'. EXEC SQL INCLUDE SQLCA COPY DFHAID. COPY DFHBMSCA. COPY ZMGB421. COPY ZMWSC010. COPY ZMWSC011. COPY ZMWSC012. COPY ZMWSC013. COPY ZMWSC014. 01 CE-CENTRADO. COPY ZMWSR009. 01 EM-EMPRESA. COPY ZMWSZ403. 01 TR-TRANSFERENCIA. COPY ZMWSR432. 01 AB-ABORTA. COPY ZMWSG532. 01 WM-MENSAJES. 03 WM-TECLA-INVALIDA PIC 9(04) VALUE 109. 03 WM-OPCION-INCORRECTA PIC 9(04) VALUE 110. 03 WM-INVALIDA-TRANSFER PIC 9(04) VALUE 584. 03 WM-SELECCIONE-OPCION PIC 9(04) VALUE 1095. COPY ZMWCOM11. 05 WC-CODIGO PIC 9(04) VALUE 0. 05 WC-COMANDO PIC X(10) VALUE SPACES. LINKAGE SECTION. 01 DFHCOMMAREA. 05 L000-COMMAREA PIC X(700).', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'ZM1MGF24'})
SET n += {description: 'Programa COBOL que menu de cargos varios opcion: "700" transaccion: zf24 rutinas: zm8cr009 (centra textos) zmwsc008 (rutina de aborta) zm9cr403 (obtener nombre de compania) zm9cr432 (transferencia-navegacion-). Pertenece a: PROGRAM-ID. ZM1MGF24..', ingestion: 'auto', layer: 'program', name: 'ZM1MGF24', nodeType: 'program', objective: 'MENU DE CARGOS VARIOS OPCION: "700" TRANSACCION: ZF24 RUTINAS: ZM8CR009 (CENTRA TEXTOS) ZMWSC008 (RUTINA DE ABORTA) ZM9CR403 (OBTENER NOMBRE DE COMPANIA) ZM9CR432 (TRANSFERENCIA-NAVEGACION-)', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGF24.cbl', system: 'PROGRAM-ID. ZM1MGF24.', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'ZM1MGJ28'})
SET n += {description: 'Programa COBOL que ejecuta procesos.', ingestion: 'auto', layer: 'program', name: 'ZM1MGJ28', nodeType: 'program', objective: null, reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGJ28.cbl', system: null, viewTag: 'cobol-program'};

MERGE (n:Program {name: 'ZM1MGJ59'})
SET n += {description: 'Programa COBOL que presentar menu de arbitraje internacional rutinas: programa: zm1mgj59 version x.xx - dd/mmm/aaaa modific.: xxx constantes de teclado (dfhaid) constantes de atributos variables del mapa variables de rutinas generales variables para obtener fechas vxt variables para obtener mensajes de error (wm-reg) variables para obtener userid, fecha y hora (fh-reg) variables para alinear un string a la izquierda variables para rutina de centrado de texto variables para rutina de nombre de la empresa variables para rutina de transferencia (mm-llama-menu) variables para rutina de aborta (ab-reg) variables de comunicacion (wc-commarea). Pertenece a: BBVA-BANCOMER, S.A. DE C.V. ENVIRONMENT DIVISION. DATA DIVISION. WORKING-STORAGE SECTION. 01 W000-VARS. 03 W000-PROG PIC X(08) VALUE \'ZM1MGJ59\'. 03 W000-OPC PIC X(03) VALUE \'107\'. 03 W000-RESP PIC S9(08) COMP VALUE 0. 03 W000-CURSOR PIC S9(04) COMP VALUE -1. 03 W000-TIME PIC X(08) VALUE SPACES. 01 W000-OPCION PIC X(03) VALUE SPACES. 88 W000-OPCION-VALIDA VALUE \'0\', \'107\', \'108\', \'920\', \'999\'. COPY DFHAID. COPY DFHBMSCA. COPY ZMGJ591. COPY ZMWSC010. COPY ZMWSC011. COPY ZMWSC012. COPY ZMWSC013. COPY ZMWSC014. 01 CE-CENTRADO. COPY ZMWSR009. 01 EM-EMPRESA. COPY ZMWSZ403. 01 TR-TRANSFERENCIA. COPY ZMWSR432. 01 AB-ABORTA. COPY ZMWSG532. 01 WM-MENSAJES. 03 WM-TECLA-INVALIDA PIC 9(04) VALUE 109. 03 WM-OPCION-INCORRECTA PIC 9(04) VALUE 110. 03 WM-INVALIDA-TRANSFER PIC 9(04) VALUE 584. 03 WM-SELECCIONE-OPCION PIC 9(04) VALUE 1095. COPY ZMWCOM11. 05 WC-CODIGO PIC 9(04) VALUE 0. 05 WC-COMANDO PIC X(10) VALUE SPACES. LINKAGE SECTION. 01 DFHCOMMAREA. 05 L000-COMMAREA PIC X(700)..', ingestion: 'auto', layer: 'program', name: 'ZM1MGJ59', nodeType: 'program', objective: 'PRESENTAR MENU DE ARBITRAJE INTERNACIONAL RUTINAS: PROGRAMA: ZM1MGJ59 VERSION X.XX - DD/MMM/AAAA MODIFIC.: XXX CONSTANTES DE TECLADO (DFHAID) CONSTANTES DE ATRIBUTOS VARIABLES DEL MAPA VARIABLES DE RUTINAS GENERALES VARIABLES PARA OBTENER FECHAS VXT VARIABLES PARA OBTENER MENSAJES DE ERROR (WM-REG) VARIABLES PARA OBTENER USERID, FECHA Y HORA (FH-REG) VARIABLES PARA ALINEAR UN STRING A LA IZQUIERDA VARIABLES PARA RUTINA DE CENTRADO DE TEXTO VARIABLES PARA RUTINA DE NOMBRE DE LA EMPRESA VARIABLES PARA RUTINA DE TRANSFERENCIA (MM-LLAMA-MENU) VARIABLES PARA RUTINA DE ABORTA (AB-REG) VARIABLES DE COMUNICACION (WC-COMMAREA)', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGJ59.cbl', system: 'BBVA-BANCOMER, S.A. DE C.V. ENVIRONMENT DIVISION. DATA DIVISION. WORKING-STORAGE SECTION. 01 W000-VARS. 03 W000-PROG PIC X(08) VALUE \'ZM1MGJ59\'. 03 W000-OPC PIC X(03) VALUE \'107\'. 03 W000-RESP PIC S9(08) COMP VALUE 0. 03 W000-CURSOR PIC S9(04) COMP VALUE -1. 03 W000-TIME PIC X(08) VALUE SPACES. 01 W000-OPCION PIC X(03) VALUE SPACES. 88 W000-OPCION-VALIDA VALUE \'0\', \'107\', \'108\', \'920\', \'999\'. COPY DFHAID. COPY DFHBMSCA. COPY ZMGJ591. COPY ZMWSC010. COPY ZMWSC011. COPY ZMWSC012. COPY ZMWSC013. COPY ZMWSC014. 01 CE-CENTRADO. COPY ZMWSR009. 01 EM-EMPRESA. COPY ZMWSZ403. 01 TR-TRANSFERENCIA. COPY ZMWSR432. 01 AB-ABORTA. COPY ZMWSG532. 01 WM-MENSAJES. 03 WM-TECLA-INVALIDA PIC 9(04) VALUE 109. 03 WM-OPCION-INCORRECTA PIC 9(04) VALUE 110. 03 WM-INVALIDA-TRANSFER PIC 9(04) VALUE 584. 03 WM-SELECCIONE-OPCION PIC 9(04) VALUE 1095. COPY ZMWCOM11. 05 WC-CODIGO PIC 9(04) VALUE 0. 05 WC-COMANDO PIC X(10) VALUE SPACES. LINKAGE SECTION. 01 DFHCOMMAREA. 05 L000-COMMAREA PIC X(700).', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'ZM1MGK02'})
SET n += {description: 'Programa COBOL que ejecuta procesos.', ingestion: 'auto', layer: 'program', name: 'ZM1MGK02', nodeType: 'program', objective: null, reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGK02.cbl', system: null, viewTag: 'cobol-program'};

MERGE (n:Program {name: 'ZM1MGM26'})
SET n += {description: 'Programa COBOL que presentar menu para el area de amdinistración fiduciaria opcion: "xxx" transaccion: z552 (m552) rutinas: zm8cr009 (centra textos) zm9cr403 (obtener nombre de empresa) zm9cr432 (transferencia-navegacion-) aplic. llamada: zm2og532 (funcion de aborta). Pertenece a: PROGRAM-ID. ZM1MGM26..', ingestion: 'auto', layer: 'program', name: 'ZM1MGM26', nodeType: 'program', objective: 'PRESENTAR MENU PARA EL AREA DE AMDINISTRACIóN FIDUCIARIA OPCION: "XXX" TRANSACCION: Z552 (M552) RUTINAS: ZM8CR009 (CENTRA TEXTOS) ZM9CR403 (OBTENER NOMBRE DE EMPRESA) ZM9CR432 (TRANSFERENCIA-NAVEGACION-) APLIC. LLAMADA: ZM2OG532 (FUNCION DE ABORTA)', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGM26.cbl', system: 'PROGRAM-ID. ZM1MGM26.', viewTag: 'cobol-program'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MG560', name: 'ZM1MG560_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de ZM1MG560 para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_ZM1MG560', ingestion: 'auto', layer: 'functional', name: 'ZM1MG560_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MG560.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MG563', name: 'ZM1MG563_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de ZM1MG563 para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_ZM1MG563', ingestion: 'auto', layer: 'functional', name: 'ZM1MG563_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MG563.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MG568', name: 'ZM1MG568_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de ZM1MG568 para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_ZM1MG568', ingestion: 'auto', layer: 'functional', name: 'ZM1MG568_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MG568.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MG678', name: 'ZM1MG678_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de ZM1MG678 para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_ZM1MG678', ingestion: 'auto', layer: 'functional', name: 'ZM1MG678_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MG678.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MGB42', name: 'ZM1MGB42_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de ZM1MGB42 para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_ZM1MGB42', ingestion: 'auto', layer: 'functional', name: 'ZM1MGB42_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGB42.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MGF24', name: 'ZM1MGF24_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de ZM1MGF24 para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_ZM1MGF24', ingestion: 'auto', layer: 'functional', name: 'ZM1MGF24_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGF24.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MGJ28', name: 'ZM1MGJ28_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de ZM1MGJ28 para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_ZM1MGJ28', ingestion: 'auto', layer: 'functional', name: 'ZM1MGJ28_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGJ28.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MGJ59', name: 'ZM1MGJ59_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de ZM1MGJ59 para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_ZM1MGJ59', ingestion: 'auto', layer: 'functional', name: 'ZM1MGJ59_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGJ59.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MGK02', name: 'ZM1MGK02_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de ZM1MGK02 para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_ZM1MGK02', ingestion: 'auto', layer: 'functional', name: 'ZM1MGK02_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGK02.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MGM26', name: 'ZM1MGM26_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de ZM1MGM26 para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_ZM1MGM26', ingestion: 'auto', layer: 'functional', name: 'ZM1MGM26_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26', sourceFile: 'src/ZM1MGM26.cbl', viewTag: 'functional'};

MATCH (a:Program {name: 'ZM1MG560'}), (b:Paragraph {name: '0000-INICIO', programName: 'ZM1MG560'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [115], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG560'}), (b:Paragraph {name: '0010-INICIO-APLICACION', programName: 'ZM1MG560'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [129], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG560'}), (b:Paragraph {name: '0100-REINICIO-APLICACION', programName: 'ZM1MG560'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [133], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG560'}), (b:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MG560'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [146], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG560'}), (b:Paragraph {name: '8010-PF2-PF3', programName: 'ZM1MG560'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [152], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG560'}), (b:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MG560'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [168], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG560'}), (b:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG560'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [184], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG560'}), (b:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG560'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [205], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG560'}), (b:Paragraph {name: 'AUTHOR', programName: 'ZM1MG560'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [5], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG560'}), (b:Paragraph {name: 'INSTALLATION', programName: 'ZM1MG560'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG560'}), (b:Paragraph {name: 'LINKAGE', programName: 'ZM1MG560'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [108], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG560'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG560'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [30], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG563'}), (b:Paragraph {name: '0000-INICIO', programName: 'ZM1MG563'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [160], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG563'}), (b:Paragraph {name: '8100-INFORMACION-ENCABEZADOS', programName: 'ZM1MG563'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [207], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG563'}), (b:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG563'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [216], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG563'}), (b:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MG563'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [239], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG563'}), (b:Paragraph {name: 'COMANDOI', programName: 'ZM1MG563'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [254], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG563'}), (b:Paragraph {name: 'LINKAGE', programName: 'ZM1MG563'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [153], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG563'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG563'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [40], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG568'}), (b:Paragraph {name: '0000-INICIO', programName: 'ZM1MG568'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [127], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG568'}), (b:Paragraph {name: '8100-INFORMACION-ENCABEZADOS', programName: 'ZM1MG568'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [175], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG568'}), (b:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG568'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [187], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG568'}), (b:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MG568'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [211], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG568'}), (b:Paragraph {name: 'COMANDOI', programName: 'ZM1MG568'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [229], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG568'}), (b:Paragraph {name: 'LINKAGE', programName: 'ZM1MG568'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [119], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG568'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG568'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [30], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG678'}), (b:Paragraph {name: '0000-INICIO', programName: 'ZM1MG678'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [120], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG678'}), (b:Paragraph {name: '8100-INFORMACION-ENCABEZADOS', programName: 'ZM1MG678'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [165], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG678'}), (b:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG678'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [174], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG678'}), (b:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MG678'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [194], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG678'}), (b:Paragraph {name: 'AUTHOR', programName: 'ZM1MG678'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [5], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG678'}), (b:Paragraph {name: 'INSTALLATION', programName: 'ZM1MG678'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG678'}), (b:Paragraph {name: 'LINKAGE', programName: 'ZM1MG678'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [113], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG678'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG678'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [33], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGB42'}), (b:Paragraph {name: '0000-INICIO', programName: 'ZM1MGB42'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [142], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGB42'}), (b:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MGB42'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [184], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGB42'}), (b:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MGB42'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [195], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGB42'}), (b:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MGB42'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [213], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGB42'}), (b:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGB42'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [241], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGB42'}), (b:Paragraph {name: 'LINKAGE', programName: 'ZM1MGB42'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [133], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGB42'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGB42'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [43], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGF24'}), (b:Paragraph {name: '1000-INICIO', programName: 'ZM1MGF24'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [181], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGF24'}), (b:Paragraph {name: '1100-ESTADO-INICIO', programName: 'ZM1MGF24'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [200], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGF24'}), (b:Paragraph {name: '1300-ESTADO-CONTINUACION', programName: 'ZM1MGF24'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [223], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGF24'}), (b:Paragraph {name: '1400-DECIDE-CONTINUACION', programName: 'ZM1MGF24'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [232], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGF24'}), (b:Paragraph {name: '1410-REALIZA-ENTER', programName: 'ZM1MGF24'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [260], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGF24'}), (b:Paragraph {name: '1420-REALIZA-PF2', programName: 'ZM1MGF24'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [271], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGF24'}), (b:Paragraph {name: '1430-REALIZA-PF3', programName: 'ZM1MGF24'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [289], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGF24'}), (b:Paragraph {name: '2000-VALIDA-OPCION', programName: 'ZM1MGF24'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [298], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGF24'}), (b:Paragraph {name: '3200-VALIDA-COMANDO', programName: 'ZM1MGF24'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [315], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGF24'}), (b:Paragraph {name: '7000-REALIZA-TRANS', programName: 'ZM1MGF24'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [332], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGF24'}), (b:Paragraph {name: '8000-RECIBE-PANTALLA', programName: 'ZM1MGF24'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [343], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGF24'}), (b:Paragraph {name: '8200-TERMINA-PROCESO', programName: 'ZM1MGF24'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [371], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGF24'}), (b:Paragraph {name: '8400-PREPARA-DATOS-ENCA', programName: 'ZM1MGF24'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [380], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGF24'}), (b:Paragraph {name: '8500-ENVIA-PANTALLA', programName: 'ZM1MGF24'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [398], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGF24'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ZM1MGF24'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [29], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGF24'}), (b:Paragraph {name: 'LINKAGE', programName: 'ZM1MGF24'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [169], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGF24'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGF24'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [38], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ28'}), (b:Paragraph {name: '0000-INICIO', programName: 'ZM1MGJ28'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [125], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ28'}), (b:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MGJ28'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [152], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ28'}), (b:Paragraph {name: '8010-PF2-PF3', programName: 'ZM1MGJ28'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [158], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ28'}), (b:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MGJ28'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [177], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ28'}), (b:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MGJ28'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [195], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ28'}), (b:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGJ28'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [219], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ28'}), (b:Paragraph {name: 'AUTHOR', programName: 'ZM1MGJ28'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [5], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ28'}), (b:Paragraph {name: 'INSTALLATION', programName: 'ZM1MGJ28'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ28'}), (b:Paragraph {name: 'LINKAGE', programName: 'ZM1MGJ28'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [118], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ28'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ28'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [35], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ59'}), (b:Paragraph {name: '0000-INICIO', programName: 'ZM1MGJ59'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [117], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ59'}), (b:Paragraph {name: '8100-INFORMACION-ENCABEZADOS', programName: 'ZM1MGJ59'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [161], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ59'}), (b:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MGJ59'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [170], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ59'}), (b:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MGJ59'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [193], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ59'}), (b:Paragraph {name: 'AUTHOR', programName: 'ZM1MGJ59'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [5], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ59'}), (b:Paragraph {name: 'INSTALLATION', programName: 'ZM1MGJ59'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ59'}), (b:Paragraph {name: 'LINKAGE', programName: 'ZM1MGJ59'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [110], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ59'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ59'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [33], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGK02'}), (b:Paragraph {name: '0000-INICIO', programName: 'ZM1MGK02'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [113], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGK02'}), (b:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MGK02'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [148], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGK02'}), (b:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MGK02'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [154], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGK02'}), (b:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MGK02'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [168], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGK02'}), (b:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGK02'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [189], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGK02'}), (b:Paragraph {name: 'AUTHOR', programName: 'ZM1MGK02'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [5], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGK02'}), (b:Paragraph {name: 'INSTALLATION', programName: 'ZM1MGK02'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGK02'}), (b:Paragraph {name: 'LINKAGE', programName: 'ZM1MGK02'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [106], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGK02'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGK02'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [30], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGM26'}), (b:Paragraph {name: '0000-INICIO', programName: 'ZM1MGM26'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [139], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGM26'}), (b:Paragraph {name: '0010-INICIO-APLICACION', programName: 'ZM1MGM26'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [150], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGM26'}), (b:Paragraph {name: '0100-REINICIO-APLICACION', programName: 'ZM1MGM26'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [156], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGM26'}), (b:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MGM26'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [181], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGM26'}), (b:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MGM26'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [187], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGM26'}), (b:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MGM26'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [201], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGM26'}), (b:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGM26'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [222], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGM26'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ZM1MGM26'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [31], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGM26'}), (b:Paragraph {name: 'LINKAGE', programName: 'ZM1MGM26'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [132], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGM26'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGM26'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [38], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_ZM1MG560'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MG560', name: 'ZM1MG560_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_ZM1MG563'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MG563', name: 'ZM1MG563_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_ZM1MG568'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MG568', name: 'ZM1MG568_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_ZM1MG678'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MG678', name: 'ZM1MG678_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_ZM1MGB42'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MGB42', name: 'ZM1MGB42_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_ZM1MGF24'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MGF24', name: 'ZM1MGF24_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_ZM1MGJ28'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MGJ28', name: 'ZM1MGJ28_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_ZM1MGJ59'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MGJ59', name: 'ZM1MGJ59_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_ZM1MGK02'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MGK02', name: 'ZM1MGK02_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_ZM1MGM26'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MGM26', name: 'ZM1MGM26_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [127], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [116], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [149], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [179], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [190], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [203], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [236], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [208, 242], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [248], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [254], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [260], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [274], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [268], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [224], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [230], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG560'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [46], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG560'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [50], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG560'}), (b:Copybook {name: 'ZMG5601'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [54], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG560'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [104], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [58], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [62], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [66], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [70], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [74], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [94], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [79], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [89], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [84], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [205], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [177, 186, 195], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [161], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8100-INFORMACION-ENCABEZADOS', programName: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [210], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [222], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [237], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [252], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'COMANDOI', programName: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [276], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'COMANDOI', programName: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [282], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'COMANDOI', programName: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [288], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'COMANDOI', programName: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [294], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'COMANDOI', programName: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [300], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'COMANDOI', programName: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [314], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'COMANDOI', programName: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [308], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'COMANDOI', programName: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [264], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'COMANDOI', programName: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [270], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG563'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [92], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG563'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [96], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG563'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [87], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG563'}), (b:Copybook {name: 'ZMG5631'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [100], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG563'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [149], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [108], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [112], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [116], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [120], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [104], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [140], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [125], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [135], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [130], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [172], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [144, 153, 162], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [128], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8100-INFORMACION-ENCABEZADOS', programName: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [180], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [195], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [208], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [227], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'COMANDOI', programName: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [255], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'COMANDOI', programName: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [263], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'COMANDOI', programName: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [271], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'COMANDOI', programName: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [279], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'COMANDOI', programName: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [287], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'COMANDOI', programName: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [305], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'COMANDOI', programName: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [297], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'COMANDOI', programName: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [239], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'COMANDOI', programName: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [247], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG568'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [57], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG568'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [61], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG568'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [52], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG568'}), (b:Copybook {name: 'ZMG5681'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [65], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG568'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [114], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [73], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [77], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [81], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [85], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [69], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [105], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [90], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [100], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [95], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [163], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [134, 143, 152], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [121], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8100-INFORMACION-ENCABEZADOS', programName: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [168], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [179], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [192], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [228], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [235], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [241], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [247], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [253], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [265], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [204, 259], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [216], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [222], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG678'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [51], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG678'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [55], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG678'}), (b:Copybook {name: 'ZMG6781'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [59], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG678'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [109], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [99], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [63], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [67], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [71], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [75], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [95], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [80], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [90], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [85], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [181], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [144], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [190], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [208], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [223], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [238], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [274], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [246, 280], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [286], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [292], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [298], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [312], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [306], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [262], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [268], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGB42'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [71], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGB42'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [75], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGB42'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [66], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGB42'}), (b:Copybook {name: 'ZMGB421'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [79], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [129], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [83], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [87], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [91], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [95], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [99], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [119], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [104], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [114], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [109], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '1000-INICIO', programName: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [183], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '7000-REALIZA-TRANS', programName: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [336], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8000-RECIBE-PANTALLA', programName: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [356], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8000-RECIBE-PANTALLA', programName: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [363], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8400-PREPARA-DATOS-ENCA', programName: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [382], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8500-ENVIA-PANTALLA', programName: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [401, 432], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8500-ENVIA-PANTALLA', programName: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [438], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8500-ENVIA-PANTALLA', programName: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [456], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8500-ENVIA-PANTALLA', programName: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [462], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8500-ENVIA-PANTALLA', programName: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [468], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8500-ENVIA-PANTALLA', programName: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [474], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8500-ENVIA-PANTALLA', programName: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [444], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8500-ENVIA-PANTALLA', programName: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSC016'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [450], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8500-ENVIA-PANTALLA', programName: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [414, 420], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8500-ENVIA-PANTALLA', programName: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [426], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGF24'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [88], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGF24'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [93], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGF24'}), (b:Copybook {name: 'ZMGF241'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [98], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [59], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [141], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [136], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [146], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [151], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [162], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSC017'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [131], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [126], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [114], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [108], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSX090'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [157], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [120], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [150], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [126], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [155], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [191], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [201], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [217], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [250], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [222, 256], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [262], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [268], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [274], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [288], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [282], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [238], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [244], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [60], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [64], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [55], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMGJ281'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [68], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [114], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [72], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [76], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [80], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [84], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [52], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [104], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [89], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [99], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [94], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [159], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [131, 140, 149], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [118], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8100-INFORMACION-ENCABEZADOS', programName: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [164], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [178], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [191], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [224], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [228], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [232], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [236], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [240], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [250], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [203, 246], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [216], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [220], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ59'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [48], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ59'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [52], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMGJ591'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [56], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [106], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [60], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [64], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [68], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [72], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [76], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [96], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [81], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [91], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [86], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [146], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [114], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [151], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [164], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [174], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [187], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [215], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [192, 219], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [223], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [227], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [231], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [241], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [237], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [207], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [211], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGK02'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [44], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGK02'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [48], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGK02'}), (b:Copybook {name: 'ZMGK021'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [52], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [102], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [56], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [60], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [64], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [68], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [72], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [92], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [77], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [87], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [82], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [148], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [140], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [184], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [197], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [207], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [220], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [253], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [225, 259], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [265], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [271], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [277], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [291], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [285], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [241], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [247], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGM26'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [65], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGM26'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [69], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGM26'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [116], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGM26'}), (b:Copybook {name: 'ZMGM261'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [73], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [122], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [77], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [81], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [85], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [89], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [93], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [113], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [98], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [108], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [103], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG560'}), (b:Functionality {name: 'FUNCTIONALITY_ZM1MG560'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG563'}), (b:Functionality {name: 'FUNCTIONALITY_ZM1MG563'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG568'}), (b:Functionality {name: 'FUNCTIONALITY_ZM1MG568'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG678'}), (b:Functionality {name: 'FUNCTIONALITY_ZM1MG678'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGB42'}), (b:Functionality {name: 'FUNCTIONALITY_ZM1MGB42'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGF24'}), (b:Functionality {name: 'FUNCTIONALITY_ZM1MGF24'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ28'}), (b:Functionality {name: 'FUNCTIONALITY_ZM1MGJ28'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ59'}), (b:Functionality {name: 'FUNCTIONALITY_ZM1MGJ59'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGK02'}), (b:Functionality {name: 'FUNCTIONALITY_ZM1MGK02'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGM26'}), (b:Functionality {name: 'FUNCTIONALITY_ZM1MGM26'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG560'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [46], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG560'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [50], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG560'}), (b:Copybook {name: 'ZMG5601'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [54], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG560'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [104], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [236], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [242], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [248], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [254], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [260], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [274], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [58], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [62], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [66], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [70], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [74], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [268], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [224], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [230], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [94], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [79], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [89], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [84], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG563'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [92], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG563'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [96], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG563'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [87], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG563'}), (b:Copybook {name: 'ZMG5631'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [100], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG563'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [149], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [276], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [282], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [288], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [294], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [300], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [314], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [108], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [112], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [116], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [120], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [104], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [308], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [264], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [270], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [140], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [125], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [135], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [130], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG568'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [57], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG568'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [61], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG568'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [52], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG568'}), (b:Copybook {name: 'ZMG5681'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [65], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG568'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [114], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [255], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [263], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [271], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [279], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [287], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [305], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [73], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [77], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [81], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [85], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [69], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [297], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [239], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [247], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [105], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [90], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [100], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [95], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG678'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [51], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG678'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [55], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG678'}), (b:Copybook {name: 'ZMG6781'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [59], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG678'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [109], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [228], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [235], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [241], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [247], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [253], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [265], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [99], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [63], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [67], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [71], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [75], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [259], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [216], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [222], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [95], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [80], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [90], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [85], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGB42'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [71], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGB42'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [75], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGB42'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [66], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGB42'}), (b:Copybook {name: 'ZMGB421'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [79], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [129], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [274], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [280], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [286], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [292], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [298], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [312], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [83], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [87], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [91], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [95], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [99], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [306], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [262], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [268], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [119], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [104], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [114], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [109], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGF24'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [88], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGF24'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [93], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGF24'}), (b:Copybook {name: 'ZMGF241'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [98], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [59], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [432], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [438], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [456], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [462], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [468], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [474], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [141], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [136], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [146], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [151], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [162], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [444], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSC016'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [450], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSC017'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [131], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [420], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [426], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [126], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [114], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [108], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSX090'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [157], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [120], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ28'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [60], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ28'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [64], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ28'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [55], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMGJ281'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [68], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [114], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [250], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [256], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [262], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [268], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [274], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [288], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [72], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [76], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [80], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [84], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [52], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [282], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [238], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [244], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [104], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [89], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [99], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [94], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ59'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [48], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ59'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [52], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMGJ591'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [56], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [106], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [224], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [228], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [232], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [236], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [240], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [250], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [60], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [64], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [68], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [72], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [76], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [246], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [216], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [220], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [96], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [81], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [91], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [86], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGK02'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [44], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGK02'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [48], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGK02'}), (b:Copybook {name: 'ZMGK021'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [52], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [102], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [215], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [219], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [223], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [227], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [231], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [241], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [56], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [60], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [64], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [68], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [72], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [237], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [207], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [211], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [92], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [77], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [87], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [82], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGM26'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [65], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGM26'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [69], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGM26'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [116], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGM26'}), (b:Copybook {name: 'ZMGM261'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [73], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [122], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [253], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [259], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [265], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [271], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [277], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [291], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [77], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [81], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [85], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [89], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [93], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [285], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [241], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [247], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [113], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [98], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [108], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Program {name: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [103], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MG560', name: 'ZM1MG560_PROCESSING'}), (b:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG560'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [205], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MG563', name: 'ZM1MG563_PROCESSING'}), (b:Paragraph {name: 'COMANDOI', programName: 'ZM1MG563'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [254], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MG568', name: 'ZM1MG568_PROCESSING'}), (b:Paragraph {name: 'COMANDOI', programName: 'ZM1MG568'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [229], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MG678', name: 'ZM1MG678_PROCESSING'}), (b:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MG678'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [194], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MGB42', name: 'ZM1MGB42_PROCESSING'}), (b:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGB42'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [241], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MGF24', name: 'ZM1MGF24_PROCESSING'}), (b:Paragraph {name: '8500-ENVIA-PANTALLA', programName: 'ZM1MGF24'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [398], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MGJ28', name: 'ZM1MGJ28_PROCESSING'}), (b:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGJ28'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [219], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MGJ59', name: 'ZM1MGJ59_PROCESSING'}), (b:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MGJ59'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [193], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MGK02', name: 'ZM1MGK02_PROCESSING'}), (b:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGK02'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [189], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MGM26', name: 'ZM1MGM26_PROCESSING'}), (b:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGM26'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [222], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [127], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [116], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [149], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [179], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [190], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [203], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [236], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [208, 242], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [248], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [254], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [260], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [274], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [268], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [224], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [230], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG560'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [46], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG560'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [50], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG560'}), (b:Copybook {name: 'ZMG5601'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [54], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG560'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [104], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [58], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [62], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [66], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [70], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [74], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [94], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [79], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [89], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG560'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG560.cbl', evidenceLines: [84], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [205], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [177, 186, 195], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [161], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8100-INFORMACION-ENCABEZADOS', programName: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [210], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [222], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [237], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [252], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'COMANDOI', programName: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [276], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'COMANDOI', programName: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [282], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'COMANDOI', programName: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [288], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'COMANDOI', programName: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [294], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'COMANDOI', programName: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [300], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'COMANDOI', programName: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [314], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'COMANDOI', programName: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [308], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'COMANDOI', programName: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [264], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'COMANDOI', programName: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [270], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG563'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [92], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG563'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [96], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG563'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [87], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG563'}), (b:Copybook {name: 'ZMG5631'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [100], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG563'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [149], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [108], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [112], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [116], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [120], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [104], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [140], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [125], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [135], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG563'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG563.cbl', evidenceLines: [130], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [172], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [144, 153, 162], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [128], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8100-INFORMACION-ENCABEZADOS', programName: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [180], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [195], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [208], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [227], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'COMANDOI', programName: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [255], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'COMANDOI', programName: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [263], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'COMANDOI', programName: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [271], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'COMANDOI', programName: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [279], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'COMANDOI', programName: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [287], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'COMANDOI', programName: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [305], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'COMANDOI', programName: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [297], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'COMANDOI', programName: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [239], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'COMANDOI', programName: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [247], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG568'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [57], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG568'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [61], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG568'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [52], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG568'}), (b:Copybook {name: 'ZMG5681'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [65], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG568'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [114], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [73], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [77], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [81], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [85], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [69], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [105], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [90], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [100], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG568'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG568.cbl', evidenceLines: [95], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [163], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [134, 143, 152], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [121], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8100-INFORMACION-ENCABEZADOS', programName: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [168], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [179], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [192], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [228], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [235], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [241], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [247], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [253], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [265], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [204, 259], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [216], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [222], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG678'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [51], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG678'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [55], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG678'}), (b:Copybook {name: 'ZMG6781'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [59], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG678'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [109], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [99], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [63], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [67], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [71], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [75], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [95], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [80], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [90], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG678'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG678.cbl', evidenceLines: [85], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [181], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [144], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [190], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [208], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [223], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [238], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [274], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [246, 280], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [286], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [292], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [298], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [312], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [306], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [262], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [268], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGB42'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [71], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGB42'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [75], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGB42'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [66], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGB42'}), (b:Copybook {name: 'ZMGB421'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [79], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [129], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [83], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [87], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [91], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [95], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [99], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [119], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [104], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [114], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGB42'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGB42.cbl', evidenceLines: [109], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '1000-INICIO', programName: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [183], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '7000-REALIZA-TRANS', programName: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [336], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8000-RECIBE-PANTALLA', programName: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [356], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8000-RECIBE-PANTALLA', programName: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [363], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8400-PREPARA-DATOS-ENCA', programName: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [382], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8500-ENVIA-PANTALLA', programName: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [401, 432], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8500-ENVIA-PANTALLA', programName: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [438], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8500-ENVIA-PANTALLA', programName: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [456], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8500-ENVIA-PANTALLA', programName: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [462], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8500-ENVIA-PANTALLA', programName: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [468], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8500-ENVIA-PANTALLA', programName: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [474], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8500-ENVIA-PANTALLA', programName: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [444], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8500-ENVIA-PANTALLA', programName: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSC016'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [450], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8500-ENVIA-PANTALLA', programName: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [414, 420], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8500-ENVIA-PANTALLA', programName: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [426], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGF24'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [88], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGF24'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [93], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGF24'}), (b:Copybook {name: 'ZMGF241'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [98], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [59], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [141], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [136], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [146], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [151], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [162], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSC017'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [131], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [126], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [114], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [108], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSX090'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [157], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGF24'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGF24.cbl', evidenceLines: [120], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [150], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [126], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [155], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [191], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [201], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [217], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [250], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [222, 256], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [262], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [268], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [274], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [288], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [282], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [238], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [244], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [60], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [64], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [55], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMGJ281'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [68], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [114], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [72], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [76], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [80], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [84], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [52], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [104], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [89], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [99], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ28'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ28.cbl', evidenceLines: [94], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [159], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [131, 140, 149], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [118], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8100-INFORMACION-ENCABEZADOS', programName: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [164], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [178], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [191], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [224], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [228], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [232], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [236], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [240], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [250], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [203, 246], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [216], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [220], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ59'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [48], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ59'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [52], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMGJ591'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [56], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [106], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [60], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [64], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [68], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [72], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [76], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [96], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [81], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [91], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGJ59'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGJ59.cbl', evidenceLines: [86], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [146], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [114], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [151], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [164], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [174], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [187], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [215], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [192, 219], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [223], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [227], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [231], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [241], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [237], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [207], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [211], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGK02'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [44], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGK02'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [48], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGK02'}), (b:Copybook {name: 'ZMGK021'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [52], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [102], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [56], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [60], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [64], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [68], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [72], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [92], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [77], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [87], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGK02'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGK02.cbl', evidenceLines: [82], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [148], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [140], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [184], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [197], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [207], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [220], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [253], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [225, 259], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [265], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [271], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [277], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [291], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [285], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [241], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [247], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGM26'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [65], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGM26'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [69], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGM26'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [116], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGM26'}), (b:Copybook {name: 'ZMGM261'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [73], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [122], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [77], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [81], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [85], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [89], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [93], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [113], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [98], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [108], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGM26'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGM26.cbl', evidenceLines: [103], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205913Z-zm1mg560-zm1mg563-zm1mg568-zm1mg678-zm1mgb42-zm1mgf24-zm1mgj28-zm1mgj59-zm1mgk02-zm1mgm26'};

