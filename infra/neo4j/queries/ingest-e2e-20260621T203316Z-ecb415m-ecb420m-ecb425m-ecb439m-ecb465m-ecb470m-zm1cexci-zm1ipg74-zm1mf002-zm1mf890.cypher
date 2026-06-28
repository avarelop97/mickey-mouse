// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890
// ============================================================================

MERGE (n:Copybook {name: 'DACLICTA'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [346], ingestion: 'auto', layer: 'dependency', name: 'DACLICTA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DAGPOPRO'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [359], ingestion: 'auto', layer: 'dependency', name: 'DAGPOPRO', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DCLIENTE'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [339], ingestion: 'auto', layer: 'dependency', name: 'DCLIENTE', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DCTLPROC'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [121], ingestion: 'auto', layer: 'dependency', name: 'DCTLPROC', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB470M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DEDCUENT'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [325], ingestion: 'auto', layer: 'dependency', name: 'DEDCUENT', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DEDOPERT'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [114], ingestion: 'auto', layer: 'dependency', name: 'DEDOPERT', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB470M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DEDREPER'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [352], ingestion: 'auto', layer: 'dependency', name: 'DEDREPER', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DESTZONE'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [314], ingestion: 'auto', layer: 'dependency', name: 'DESTZONE', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DFHAID'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [69], ingestion: 'auto', layer: 'dependency', name: 'DFHAID', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DFHBMSCA'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [73], ingestion: 'auto', layer: 'dependency', name: 'DFHBMSCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DOPERATE'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [107], ingestion: 'auto', layer: 'dependency', name: 'DOPERATE', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB470M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DPARAM'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [128], ingestion: 'auto', layer: 'dependency', name: 'DPARAM', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB470M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DPERJUR'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [332], ingestion: 'auto', layer: 'dependency', name: 'DPERJUR', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DPROMOT'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [366], ingestion: 'auto', layer: 'dependency', name: 'DPROMOT', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DSUCURSA'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [373], ingestion: 'auto', layer: 'dependency', name: 'DSUCURSA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DSVCTOCB'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [138], ingestion: 'auto', layer: 'dependency', name: 'DSVCTOCB', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB439M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2CE028'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1663], ingestion: 'auto', layer: 'dependency', name: 'SI2CE028', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2CM026'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [454], ingestion: 'auto', layer: 'dependency', name: 'SI2CM026', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB470M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2FH027'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [89], ingestion: 'auto', layer: 'dependency', name: 'SI2FH027', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB470M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2R1025'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [384], ingestion: 'auto', layer: 'dependency', name: 'SI2R1025', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC001'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [289], ingestion: 'auto', layer: 'dependency', name: 'SIC001', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC004'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [417], ingestion: 'auto', layer: 'dependency', name: 'SIC004', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB470M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC005'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [95], ingestion: 'auto', layer: 'dependency', name: 'SIC005', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB470M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICAM029'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [278], ingestion: 'auto', layer: 'dependency', name: 'SICAM029', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICFP024'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [179], ingestion: 'auto', layer: 'dependency', name: 'SICFP024', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB470M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICIP023'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [138], ingestion: 'auto', layer: 'dependency', name: 'SICIP023', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB470M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICVS011'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [82], ingestion: 'auto', layer: 'dependency', name: 'SICVS011', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB470M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIEPAP04'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [257], ingestion: 'auto', layer: 'dependency', name: 'SIEPAP04', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIETATF6'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [264], ingestion: 'auto', layer: 'dependency', name: 'SIETATF6', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SQLCA'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [124], ingestion: 'auto', layer: 'dependency', name: 'SQLCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMF0021'})
SET n += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [86], ingestion: 'auto', layer: 'dependency', name: 'ZMF0021', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1MF002.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMF8901'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [77], ingestion: 'auto', layer: 'dependency', name: 'ZMF8901', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMPG013'})
SET n += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [61], ingestion: 'auto', layer: 'dependency', name: 'ZMPG013', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1IPG74.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWCOM11'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [117], ingestion: 'auto', layer: 'dependency', name: 'ZMWCOM11', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC002'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [265], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC002', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC003'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [272], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC003', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC004'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [279], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC004', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC005'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [286], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC005', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC006'})
SET n += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [354], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC006', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1MF002.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC008'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [293], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC008', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC009'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [309], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC009', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC010'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [81], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC010', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC011'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [85], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC011', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC012'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [89], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC012', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC013'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [93], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC013', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC014'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [65], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC014', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC015'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [302], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC015', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSCOM0'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [251], ingestion: 'auto', layer: 'dependency', name: 'ZMWSCOM0', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSCOM1'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [258], ingestion: 'auto', layer: 'dependency', name: 'ZMWSCOM1', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSG532'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [113], ingestion: 'auto', layer: 'dependency', name: 'ZMWSG532', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSR009'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [98], ingestion: 'auto', layer: 'dependency', name: 'ZMWSR009', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSR432'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [108], ingestion: 'auto', layer: 'dependency', name: 'ZMWSR432', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSZ403'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [103], ingestion: 'auto', layer: 'dependency', name: 'ZMWSZ403', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZPARAM'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [130], ingestion: 'auto', layer: 'dependency', name: 'ZPARAM', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', viewTag: 'dependency'};

MERGE (n:DBTable {name: 'ACLICTA'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1451, 1452, 1453, 1454, 1455, 1456, 1457, 1458], ingestion: 'auto', layer: 'data-access', name: 'ACLICTA', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'CLIENTE'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1480, 1481, 1482, 1483, 1484, 1485, 1486, 1487], ingestion: 'auto', layer: 'data-access', name: 'CLIENTE', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'CTLPROC'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [347, 348, 349, 350, 351, 352, 353, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399], ingestion: 'auto', layer: 'data-access', name: 'CTLPROC', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB470M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'EDCUENTA'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1395, 1396, 1397, 1398, 1399, 1400], ingestion: 'auto', layer: 'data-access', name: 'EDCUENTA', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'EDOPERT1'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 327, 328, 329], ingestion: 'auto', layer: 'data-access', name: 'EDOPERT1', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB470M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'OPERATE'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236], ingestion: 'auto', layer: 'data-access', name: 'OPERATE', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB470M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'PARAM'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [198, 199, 200, 201, 202, 203, 204], ingestion: 'auto', layer: 'data-access', name: 'PARAM', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB470M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'PERJUR'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1422, 1423, 1424, 1425, 1426, 1427, 1428], ingestion: 'auto', layer: 'data-access', name: 'PERJUR', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'SUCURSA'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610], ingestion: 'auto', layer: 'data-access', name: 'SUCURSA', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'SVCTOCB'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [204, 205, 206, 207, 208, 209], ingestion: 'auto', layer: 'data-access', name: 'SVCTOCB', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB439M.cbl', viewTag: 'data-access'};

MERGE (n:Paragraph {name: '000-0000-INICIO', programName: 'ECB415M'})
SET n += {evidenceFile: 'src/ECB415M.cbl', evidenceLines: [143], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-0000-INICIO', nodeType: 'process-step', programName: 'ECB415M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB415M.cbl', summary: 'Inicializa el flujo operativo de ECB415M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100-INICIO', programName: 'ECB415M'})
SET n += {evidenceFile: 'src/ECB415M.cbl', evidenceLines: [149], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-INICIO', nodeType: 'process-step', programName: 'ECB415M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB415M.cbl', summary: 'Inicializa el flujo operativo de ECB415M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '110-ABRE-ARCHIVOS', programName: 'ECB415M'})
SET n += {evidenceFile: 'src/ECB415M.cbl', evidenceLines: [154], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '110-ABRE-ARCHIVOS', nodeType: 'process-step', programName: 'ECB415M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB415M.cbl', summary: 'Orquesta una fase funcional de ECB415M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200-PROCESO', programName: 'ECB415M'})
SET n += {evidenceFile: 'src/ECB415M.cbl', evidenceLines: [162], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200-PROCESO', nodeType: 'process-step', programName: 'ECB415M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB415M.cbl', summary: 'Orquesta una fase funcional de ECB415M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '250-LEE-ARCHIVO-FISICAS', programName: 'ECB415M'})
SET n += {evidenceFile: 'src/ECB415M.cbl', evidenceLines: [207], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '250-LEE-ARCHIVO-FISICAS', nodeType: 'process-step', programName: 'ECB415M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB415M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB415M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '255-LEE-REPORTE-ECBANCF', programName: 'ECB415M'})
SET n += {evidenceFile: 'src/ECB415M.cbl', evidenceLines: [215], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '255-LEE-REPORTE-ECBANCF', nodeType: 'process-step', programName: 'ECB415M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB415M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB415M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '300-TERMINA', programName: 'ECB415M'})
SET n += {evidenceFile: 'src/ECB415M.cbl', evidenceLines: [222], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '300-TERMINA', nodeType: 'process-step', programName: 'ECB415M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB415M.cbl', summary: 'Cierra la ejecucion de ECB415M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'ECB415M'})
SET n += {evidenceFile: 'src/ECB415M.cbl', evidenceLines: [230], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'ECB415M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB415M.cbl', summary: 'Orquesta una fase funcional de ECB415M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ECB415M'})
SET n += {evidenceFile: 'src/ECB415M.cbl', evidenceLines: [22], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ECB415M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB415M.cbl', summary: 'Orquesta una fase funcional de ECB415M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'ECB415M'})
SET n += {evidenceFile: 'src/ECB415M.cbl', evidenceLines: [43], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'ECB415M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB415M.cbl', summary: 'Orquesta una fase funcional de ECB415M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'ECB415M'})
SET n += {evidenceFile: 'src/ECB415M.cbl', evidenceLines: [27], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'ECB415M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB415M.cbl', summary: 'Orquesta una fase funcional de ECB415M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB415M'})
SET n += {evidenceFile: 'src/ECB415M.cbl', evidenceLines: [26], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'ECB415M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB415M.cbl', summary: 'Orquesta una fase funcional de ECB415M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB415M'})
SET n += {evidenceFile: 'src/ECB415M.cbl', evidenceLines: [102], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ECB415M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB415M.cbl', summary: 'Orquesta una fase funcional de ECB415M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-0000-INICIO', programName: 'ECB420M'})
SET n += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [159], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-0000-INICIO', nodeType: 'process-step', programName: 'ECB420M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB420M.cbl', summary: 'Inicializa el flujo operativo de ECB420M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100-INICIO', programName: 'ECB420M'})
SET n += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [170], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-INICIO', nodeType: 'process-step', programName: 'ECB420M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB420M.cbl', summary: 'Inicializa el flujo operativo de ECB420M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '110-ABRE-ARCHIVOS', programName: 'ECB420M'})
SET n += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [176], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '110-ABRE-ARCHIVOS', nodeType: 'process-step', programName: 'ECB420M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB420M.cbl', summary: 'Orquesta una fase funcional de ECB420M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '120-ENCABEZADO', programName: 'ECB420M'})
SET n += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [185], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '120-ENCABEZADO', nodeType: 'process-step', programName: 'ECB420M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB420M.cbl', summary: 'Orquesta una fase funcional de ECB420M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200-PROCESO-LISTA', programName: 'ECB420M'})
SET n += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [203], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200-PROCESO-LISTA', nodeType: 'process-step', programName: 'ECB420M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB420M.cbl', summary: 'Orquesta una fase funcional de ECB420M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '250-CARGA-ARREGLO', programName: 'ECB420M'})
SET n += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [226], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '250-CARGA-ARREGLO', nodeType: 'process-step', programName: 'ECB420M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB420M.cbl', summary: 'Orquesta una fase funcional de ECB420M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '250-LEE-ARCHIVO-CTAHOJA', programName: 'ECB420M'})
SET n += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [218], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '250-LEE-ARCHIVO-CTAHOJA', nodeType: 'process-step', programName: 'ECB420M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB420M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB420M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '255-LEE-REPO-R1-LISTA', programName: 'ECB420M'})
SET n += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [232], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '255-LEE-REPO-R1-LISTA', nodeType: 'process-step', programName: 'ECB420M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB420M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB420M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '300-TERMINA', programName: 'ECB420M'})
SET n += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [239], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '300-TERMINA', nodeType: 'process-step', programName: 'ECB420M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB420M.cbl', summary: 'Cierra la ejecucion de ECB420M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '750-0100-INICIO', programName: 'ECB420M'})
SET n += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [248], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '750-0100-INICIO', nodeType: 'process-step', programName: 'ECB420M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB420M.cbl', summary: 'Inicializa el flujo operativo de ECB420M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '750-9999-FIN', programName: 'ECB420M'})
SET n += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [255], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '750-9999-FIN', nodeType: 'process-step', programName: 'ECB420M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB420M.cbl', summary: 'Cierra la ejecucion de ECB420M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '750-CIFRAS', programName: 'ECB420M'})
SET n += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [247], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '750-CIFRAS', nodeType: 'process-step', programName: 'ECB420M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB420M.cbl', summary: 'Orquesta una fase funcional de ECB420M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'ECB420M'})
SET n += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [258], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'ECB420M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB420M.cbl', summary: 'Orquesta una fase funcional de ECB420M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ECB420M'})
SET n += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [22], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ECB420M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB420M.cbl', summary: 'Orquesta una fase funcional de ECB420M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'ECB420M'})
SET n += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [43], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'ECB420M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB420M.cbl', summary: 'Orquesta una fase funcional de ECB420M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'ECB420M'})
SET n += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [27], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'ECB420M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB420M.cbl', summary: 'Orquesta una fase funcional de ECB420M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB420M'})
SET n += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [26], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'ECB420M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB420M.cbl', summary: 'Orquesta una fase funcional de ECB420M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB420M'})
SET n += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [96], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ECB420M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB420M.cbl', summary: 'Orquesta una fase funcional de ECB420M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-0000-INICIO', programName: 'ECB425M'})
SET n += {evidenceFile: 'src/ECB425M.cbl', evidenceLines: [140], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-0000-INICIO', nodeType: 'process-step', programName: 'ECB425M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB425M.cbl', summary: 'Inicializa el flujo operativo de ECB425M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100-INICIO', programName: 'ECB425M'})
SET n += {evidenceFile: 'src/ECB425M.cbl', evidenceLines: [147], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-INICIO', nodeType: 'process-step', programName: 'ECB425M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB425M.cbl', summary: 'Inicializa el flujo operativo de ECB425M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '110-ABRE-ARCHIVOS', programName: 'ECB425M'})
SET n += {evidenceFile: 'src/ECB425M.cbl', evidenceLines: [153], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '110-ABRE-ARCHIVOS', nodeType: 'process-step', programName: 'ECB425M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB425M.cbl', summary: 'Orquesta una fase funcional de ECB425M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200-PROCESO-ACUSE', programName: 'ECB425M'})
SET n += {evidenceFile: 'src/ECB425M.cbl', evidenceLines: [161], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200-PROCESO-ACUSE', nodeType: 'process-step', programName: 'ECB425M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB425M.cbl', summary: 'Orquesta una fase funcional de ECB425M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '250-CARGA-ARREGLO', programName: 'ECB425M'})
SET n += {evidenceFile: 'src/ECB425M.cbl', evidenceLines: [184], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '250-CARGA-ARREGLO', nodeType: 'process-step', programName: 'ECB425M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB425M.cbl', summary: 'Orquesta una fase funcional de ECB425M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '250-LEE-ARCHIVO-CTAHOJA', programName: 'ECB425M'})
SET n += {evidenceFile: 'src/ECB425M.cbl', evidenceLines: [176], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '250-LEE-ARCHIVO-CTAHOJA', nodeType: 'process-step', programName: 'ECB425M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB425M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB425M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '255-LEE-REPO-R3-ACUSE', programName: 'ECB425M'})
SET n += {evidenceFile: 'src/ECB425M.cbl', evidenceLines: [190], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '255-LEE-REPO-R3-ACUSE', nodeType: 'process-step', programName: 'ECB425M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB425M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB425M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '260-ESCRIBE-ACUSE6', programName: 'ECB425M'})
SET n += {evidenceFile: 'src/ECB425M.cbl', evidenceLines: [197], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '260-ESCRIBE-ACUSE6', nodeType: 'process-step', programName: 'ECB425M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB425M.cbl', summary: 'Orquesta una fase funcional de ECB425M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '265-ESCRIBE-ACUSE7', programName: 'ECB425M'})
SET n += {evidenceFile: 'src/ECB425M.cbl', evidenceLines: [201], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '265-ESCRIBE-ACUSE7', nodeType: 'process-step', programName: 'ECB425M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB425M.cbl', summary: 'Orquesta una fase funcional de ECB425M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '300-TERMINA', programName: 'ECB425M'})
SET n += {evidenceFile: 'src/ECB425M.cbl', evidenceLines: [205], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '300-TERMINA', nodeType: 'process-step', programName: 'ECB425M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB425M.cbl', summary: 'Cierra la ejecucion de ECB425M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'ECB425M'})
SET n += {evidenceFile: 'src/ECB425M.cbl', evidenceLines: [213], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'ECB425M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB425M.cbl', summary: 'Orquesta una fase funcional de ECB425M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ECB425M'})
SET n += {evidenceFile: 'src/ECB425M.cbl', evidenceLines: [22], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ECB425M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB425M.cbl', summary: 'Orquesta una fase funcional de ECB425M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'ECB425M'})
SET n += {evidenceFile: 'src/ECB425M.cbl', evidenceLines: [43], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'ECB425M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB425M.cbl', summary: 'Orquesta una fase funcional de ECB425M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'ECB425M'})
SET n += {evidenceFile: 'src/ECB425M.cbl', evidenceLines: [27], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'ECB425M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB425M.cbl', summary: 'Orquesta una fase funcional de ECB425M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB425M'})
SET n += {evidenceFile: 'src/ECB425M.cbl', evidenceLines: [26], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'ECB425M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB425M.cbl', summary: 'Orquesta una fase funcional de ECB425M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB425M'})
SET n += {evidenceFile: 'src/ECB425M.cbl', evidenceLines: [97], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ECB425M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB425M.cbl', summary: 'Orquesta una fase funcional de ECB425M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-0100-INICIO', programName: 'ECB439M'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [145], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-0100-INICIO', nodeType: 'process-step', programName: 'ECB439M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB439M.cbl', summary: 'Inicializa el flujo operativo de ECB439M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-0200-PROCESO', programName: 'ECB439M'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [155], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-0200-PROCESO', nodeType: 'process-step', programName: 'ECB439M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB439M.cbl', summary: 'Orquesta una fase funcional de ECB439M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-0300-TERMINA', programName: 'ECB439M'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [159], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-0300-TERMINA', nodeType: 'process-step', programName: 'ECB439M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB439M.cbl', summary: 'Cierra la ejecucion de ECB439M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-9900-FIN', programName: 'ECB439M'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [166], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-9900-FIN', nodeType: 'process-step', programName: 'ECB439M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB439M.cbl', summary: 'Cierra la ejecucion de ECB439M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-CONTROL', programName: 'ECB439M'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [144], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-CONTROL', nodeType: 'process-step', programName: 'ECB439M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB439M.cbl', summary: 'Orquesta una fase funcional de ECB439M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '035-LEE-CUENTAS', programName: 'ECB439M'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [172], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '035-LEE-CUENTAS', nodeType: 'process-step', programName: 'ECB439M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB439M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB439M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '035-LEE-CUENTAS-FIN', programName: 'ECB439M'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [197], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '035-LEE-CUENTAS-FIN', nodeType: 'process-step', programName: 'ECB439M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB439M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB439M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-LEE-SVCTOCB-IPOSP', programName: 'ECB439M'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [203], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-LEE-SVCTOCB-IPOSP', nodeType: 'process-step', programName: 'ECB439M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB439M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB439M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-LEE-SVCTOCB-IPOSP-FIN', programName: 'ECB439M'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [220], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-LEE-SVCTOCB-IPOSP-FIN', nodeType: 'process-step', programName: 'ECB439M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB439M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB439M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-0100-INICIO', programName: 'ECB439M'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [228], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-0100-INICIO', nodeType: 'process-step', programName: 'ECB439M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB439M.cbl', summary: 'Inicializa el flujo operativo de ECB439M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-9900-FIN', programName: 'ECB439M'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [232], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-9900-FIN', nodeType: 'process-step', programName: 'ECB439M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB439M.cbl', summary: 'Cierra la ejecucion de ECB439M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'ECB439M'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [227], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'ECB439M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB439M.cbl', summary: 'Gestiona contingencias en ECB439M, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-0100-INICIO', programName: 'ECB439M'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [236], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-0100-INICIO', nodeType: 'process-step', programName: 'ECB439M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB439M.cbl', summary: 'Inicializa el flujo operativo de ECB439M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-9900-FIN', programName: 'ECB439M'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [244], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-9900-FIN', nodeType: 'process-step', programName: 'ECB439M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB439M.cbl', summary: 'Cierra la ejecucion de ECB439M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'ECB439M'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [235], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'ECB439M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB439M.cbl', summary: 'Orquesta una fase funcional de ECB439M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'ECB439M'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [4], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'ECB439M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB439M.cbl', summary: 'Orquesta una fase funcional de ECB439M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ECB439M'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [16], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ECB439M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB439M.cbl', summary: 'Orquesta una fase funcional de ECB439M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'ECB439M'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [8], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'ECB439M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB439M.cbl', summary: 'Orquesta una fase funcional de ECB439M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'ECB439M', programName: 'ECB439M'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [3], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'ECB439M', nodeType: 'process-step', programName: 'ECB439M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB439M.cbl', summary: 'Orquesta una fase funcional de ECB439M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'ECB439M'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [35], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'ECB439M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB439M.cbl', summary: 'Orquesta una fase funcional de ECB439M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'ECB439M'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [23], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'ECB439M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB439M.cbl', summary: 'Orquesta una fase funcional de ECB439M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-9121', programName: 'ECB439M'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [20], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-9121', nodeType: 'process-step', programName: 'ECB439M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB439M.cbl', summary: 'Orquesta una fase funcional de ECB439M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB439M'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [22], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'ECB439M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB439M.cbl', summary: 'Orquesta una fase funcional de ECB439M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'ECB439M'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [6], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'ECB439M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB439M.cbl', summary: 'Orquesta una fase funcional de ECB439M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'ECB439M'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [19], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'ECB439M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB439M.cbl', summary: 'Orquesta una fase funcional de ECB439M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'ECB439M'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [2], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'ECB439M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB439M.cbl', summary: 'Orquesta una fase funcional de ECB439M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'ECB439M'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [17], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'ECB439M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB439M.cbl', summary: 'Orquesta una fase funcional de ECB439M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB439M'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [90], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ECB439M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB439M.cbl', summary: 'Orquesta una fase funcional de ECB439M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-0100-INICIO', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [647], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-0100-INICIO', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Inicializa el flujo operativo de ECB465M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-CONTROL', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [637], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-CONTROL', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Orquesta una fase funcional de ECB465M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-0100-INICIO', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [663], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-0100-INICIO', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Inicializa el flujo operativo de ECB465M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-9900-EXIT', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [723], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-9900-EXIT', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Orquesta una fase funcional de ECB465M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-INICIO', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [662], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-INICIO', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Inicializa el flujo operativo de ECB465M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-0100-INICIO', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [730], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-0100-INICIO', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Inicializa el flujo operativo de ECB465M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-9900-FIN', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [734], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-9900-FIN', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Cierra la ejecucion de ECB465M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-LEYENDA', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [729], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-LEYENDA', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Orquesta una fase funcional de ECB465M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-0100-INICIO', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [741], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-0100-INICIO', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Inicializa el flujo operativo de ECB465M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-9900-EXIT', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [797], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-9900-EXIT', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Orquesta una fase funcional de ECB465M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-LLENA-SEC', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [740], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-LLENA-SEC', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Orquesta una fase funcional de ECB465M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-0100-INICIO', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [804], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-0100-INICIO', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Inicializa el flujo operativo de ECB465M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-9900-EXIT', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [846], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-9900-EXIT', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Orquesta una fase funcional de ECB465M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-PROCESA-SEC', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [803], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-PROCESA-SEC', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Orquesta una fase funcional de ECB465M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-0100-INICIO', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [853], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-0100-INICIO', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Inicializa el flujo operativo de ECB465M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-9900-EXIT', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [869], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-9900-EXIT', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Orquesta una fase funcional de ECB465M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-PROC-SUC', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [852], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-PROC-SUC', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Orquesta una fase funcional de ECB465M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-0100-INICIO', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [876], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-0100-INICIO', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Inicializa el flujo operativo de ECB465M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-9900-EXIT', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [893], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-9900-EXIT', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Orquesta una fase funcional de ECB465M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-PROC-EST', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [875], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-PROC-EST', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Orquesta una fase funcional de ECB465M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-0100-INICIO', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [900], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-0100-INICIO', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Inicializa el flujo operativo de ECB465M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-9900-EXIT', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1012], executionOrder: 3900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-9900-EXIT', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Orquesta una fase funcional de ECB465M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-PROC-DET', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [899], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-PROC-DET', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Orquesta una fase funcional de ECB465M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '070-0100-INICIO', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1019], executionOrder: 4100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '070-0100-INICIO', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Inicializa el flujo operativo de ECB465M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '070-9900-FIN', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1037], executionOrder: 4200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '070-9900-FIN', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Cierra la ejecucion de ECB465M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '070-IMPRIME-ETIQ', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1018], executionOrder: 4000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '070-IMPRIME-ETIQ', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Orquesta una fase funcional de ECB465M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '080-0100-INICIO', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1044], executionOrder: 4400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '080-0100-INICIO', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Inicializa el flujo operativo de ECB465M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '080-9900-FIN', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1082], executionOrder: 4500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '080-9900-FIN', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Cierra la ejecucion de ECB465M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '080-IMPRIME-ACUSE', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1043], executionOrder: 4300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '080-IMPRIME-ACUSE', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Orquesta una fase funcional de ECB465M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '090-9900-FIN', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1092], executionOrder: 4700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '090-9900-FIN', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Cierra la ejecucion de ECB465M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '090-FEC-INICIO-PROC', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1085], executionOrder: 4600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '090-FEC-INICIO-PROC', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Inicializa el flujo operativo de ECB465M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '095-9900-FIN', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1140], executionOrder: 4900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '095-9900-FIN', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Cierra la ejecucion de ECB465M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '095-DETERMINA-MES', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1096], executionOrder: 4800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '095-DETERMINA-MES', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Cierra la ejecucion de ECB465M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100-0100-INICIO', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1146], executionOrder: 5100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-0100-INICIO', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Inicializa el flujo operativo de ECB465M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100-9900-FIN', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1194], executionOrder: 5200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-9900-FIN', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Cierra la ejecucion de ECB465M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100-OBTEN-DEST', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1145], executionOrder: 5000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-OBTEN-DEST', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB465M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-0100-INICIO', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1200], executionOrder: 5400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-0100-INICIO', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Inicializa el flujo operativo de ECB465M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-9900-FIN', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1278], executionOrder: 5500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-9900-FIN', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Cierra la ejecucion de ECB465M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-LEE-CURSOR', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1199], executionOrder: 5300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-LEE-CURSOR', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB465M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-0100-INICIO', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1285], executionOrder: 5700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-0100-INICIO', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Inicializa el flujo operativo de ECB465M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-9900-EXIT', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1301], executionOrder: 5800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-9900-EXIT', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Orquesta una fase funcional de ECB465M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-LEE-PARAM', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1284], executionOrder: 5600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-LEE-PARAM', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB465M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '515-0100-INICIO', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1305], executionOrder: 6000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '515-0100-INICIO', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Inicializa el flujo operativo de ECB465M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '515-9900-EXIT', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1323], executionOrder: 6100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '515-9900-EXIT', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Orquesta una fase funcional de ECB465M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '515-OBTEN-FECHA', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1304], executionOrder: 5900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '515-OBTEN-FECHA', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB465M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-0100-INICIO', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1330], executionOrder: 6300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-0100-INICIO', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Inicializa el flujo operativo de ECB465M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-9900-EXIT', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1342], executionOrder: 6400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-9900-EXIT', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Orquesta una fase funcional de ECB465M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-LEE-SEC', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1329], executionOrder: 6200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-LEE-SEC', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB465M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '530-0100-INICIO', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1349], executionOrder: 6600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '530-0100-INICIO', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Inicializa el flujo operativo de ECB465M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '530-9900-EXIT', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1366], executionOrder: 6700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '530-9900-EXIT', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Orquesta una fase funcional de ECB465M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '530-LEE-PARAM', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1348], executionOrder: 6500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '530-LEE-PARAM', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB465M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '540-0100-INICIO', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1373], executionOrder: 6900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '540-0100-INICIO', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Inicializa el flujo operativo de ECB465M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '540-9900-EXIT', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1387], executionOrder: 7000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '540-9900-EXIT', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Orquesta una fase funcional de ECB465M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '540-LEE-TF6', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1372], executionOrder: 6800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '540-LEE-TF6', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB465M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-0100-INICIO', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1394], executionOrder: 7200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-0100-INICIO', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Inicializa el flujo operativo de ECB465M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-9900-EXIT', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1414], executionOrder: 7300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-9900-EXIT', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Orquesta una fase funcional de ECB465M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-LEE-CUENTA', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1393], executionOrder: 7100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-LEE-CUENTA', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB465M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '560-0100-INICIO', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1421], executionOrder: 7500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '560-0100-INICIO', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Inicializa el flujo operativo de ECB465M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '560-9900-EXIT', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1443], executionOrder: 7600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '560-9900-EXIT', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Orquesta una fase funcional de ECB465M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '560-LEE-PERJUR', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1420], executionOrder: 7400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '560-LEE-PERJUR', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB465M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '570-0100-INICIO', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1450], executionOrder: 7800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '570-0100-INICIO', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Inicializa el flujo operativo de ECB465M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '570-9900-EXIT', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1472], executionOrder: 7900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '570-9900-EXIT', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Orquesta una fase funcional de ECB465M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '570-LEE-ACLICTA', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1449], executionOrder: 7700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '570-LEE-ACLICTA', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB465M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '580-0100-INICIO', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1479], executionOrder: 8100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '580-0100-INICIO', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Inicializa el flujo operativo de ECB465M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '580-9900-EXIT', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1501], executionOrder: 8200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '580-9900-EXIT', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Orquesta una fase funcional de ECB465M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '580-LEE-CLIENTE', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1478], executionOrder: 8000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '580-LEE-CLIENTE', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB465M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-0100-INICIO', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1508], executionOrder: 8400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-0100-INICIO', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Inicializa el flujo operativo de ECB465M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-9900-EXIT', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1518], executionOrder: 8500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-9900-EXIT', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Orquesta una fase funcional de ECB465M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-ABRE-CURSOR', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1507], executionOrder: 8300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-ABRE-CURSOR', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Orquesta una fase funcional de ECB465M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '610-0100-INICIO', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1525], executionOrder: 8700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '610-0100-INICIO', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Inicializa el flujo operativo de ECB465M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '610-9900-EXIT', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1535], executionOrder: 8800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '610-9900-EXIT', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Orquesta una fase funcional de ECB465M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '610-CIERRA-CURSOR', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1524], executionOrder: 8600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '610-CIERRA-CURSOR', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Cierra la ejecucion de ECB465M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '630-0100-INICIO', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1542], executionOrder: 9000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '630-0100-INICIO', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Inicializa el flujo operativo de ECB465M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '630-9900-EXIT', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1552], executionOrder: 9100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '630-9900-EXIT', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Orquesta una fase funcional de ECB465M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '630-ABRE-CURSOR', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1541], executionOrder: 8900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '630-ABRE-CURSOR', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Orquesta una fase funcional de ECB465M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '640-0100-INICIO', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1559], executionOrder: 9300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '640-0100-INICIO', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Inicializa el flujo operativo de ECB465M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '640-9900-EXIT', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1569], executionOrder: 9400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '640-9900-EXIT', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Orquesta una fase funcional de ECB465M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '640-CIERRA-CURSOR', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1558], executionOrder: 9200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '640-CIERRA-CURSOR', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Cierra la ejecucion de ECB465M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-0100-INICIO', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1576], executionOrder: 9600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-0100-INICIO', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Inicializa el flujo operativo de ECB465M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-9900-FIN', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1586], executionOrder: 9700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-9900-FIN', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Cierra la ejecucion de ECB465M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-ENCA', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1575], executionOrder: 9500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-ENCA', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Orquesta una fase funcional de ECB465M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '710-9900-FIN', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1604], executionOrder: 9900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '710-9900-FIN', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Cierra la ejecucion de ECB465M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '710-DEL-PARAM', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1592], executionOrder: 9800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '710-DEL-PARAM', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Orquesta una fase funcional de ECB465M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '720-9900-FIN', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1621], executionOrder: 10100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '720-9900-FIN', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Cierra la ejecucion de ECB465M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '720-INS-PARAM', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1610], executionOrder: 10000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '720-INS-PARAM', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Orquesta una fase funcional de ECB465M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-0100-INICIO', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1635], executionOrder: 10300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-0100-INICIO', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Inicializa el flujo operativo de ECB465M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-9900-FIN', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1644], executionOrder: 10400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-9900-FIN', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Cierra la ejecucion de ECB465M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1634], executionOrder: 10200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Gestiona contingencias en ECB465M, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-0100-INICIO', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1651], executionOrder: 10600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-0100-INICIO', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Inicializa el flujo operativo de ECB465M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-099-FIN', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1656], executionOrder: 10700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-099-FIN', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Cierra la ejecucion de ECB465M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1650], executionOrder: 10500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Orquesta una fase funcional de ECB465M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [4], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Orquesta una fase funcional de ECB465M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'BBV-PROBURSA', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [7], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'BBV-PROBURSA', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Orquesta una fase funcional de ECB465M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [21], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Orquesta una fase funcional de ECB465M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [8], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Orquesta una fase funcional de ECB465M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'ECB465M', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [3], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'ECB465M', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Orquesta una fase funcional de ECB465M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [36], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Orquesta una fase funcional de ECB465M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [28], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Orquesta una fase funcional de ECB465M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-9121', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [25], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-9121', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Orquesta una fase funcional de ECB465M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [27], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Orquesta una fase funcional de ECB465M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [6], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Orquesta una fase funcional de ECB465M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [624], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Orquesta una fase funcional de ECB465M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [24], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Orquesta una fase funcional de ECB465M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [2], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Orquesta una fase funcional de ECB465M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [22], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Orquesta una fase funcional de ECB465M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB465M'})
SET n += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [103], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ECB465M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', summary: 'Orquesta una fase funcional de ECB465M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-0100-FIN', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [194], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-0100-FIN', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB470M.cbl', summary: 'Cierra la ejecucion de ECB470M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-0100-INICIO', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [184], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-0100-INICIO', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB470M.cbl', summary: 'Inicializa el flujo operativo de ECB470M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-INICIO', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [183], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-INICIO', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB470M.cbl', summary: 'Inicializa el flujo operativo de ECB470M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-LEE-PARAMP04', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [197], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-LEE-PARAMP04', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB470M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB470M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-LEE-PARAMP04-FIN', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [206], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-LEE-PARAMP04-FIN', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB470M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB470M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '515-0100-INICIO', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [243], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '515-0100-INICIO', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB470M.cbl', summary: 'Inicializa el flujo operativo de ECB470M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '515-9900-FIN', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [264], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '515-9900-FIN', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB470M.cbl', summary: 'Cierra la ejecucion de ECB470M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '515-OBTEN-EVENTO-CARGA', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [242], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '515-OBTEN-EVENTO-CARGA', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB470M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB470M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-0100-INICIO', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [268], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-0100-INICIO', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB470M.cbl', summary: 'Inicializa el flujo operativo de ECB470M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-9900-FIN', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [309], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-9900-FIN', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB470M.cbl', summary: 'Cierra la ejecucion de ECB470M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-INS-SELECT', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [210], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-INS-SELECT', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB470M.cbl', summary: 'Orquesta una fase funcional de ECB470M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-INSERT-EDOPERT1', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [267], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-INSERT-EDOPERT1', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB470M.cbl', summary: 'Persiste actualizaciones de negocio en ECB470M, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '610-0100-INICIO', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [316], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '610-0100-INICIO', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB470M.cbl', summary: 'Inicializa el flujo operativo de ECB470M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '610-9900-FIN', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [340], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '610-9900-FIN', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB470M.cbl', summary: 'Cierra la ejecucion de ECB470M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '610-DEL-EDOPERT1', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [315], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '610-DEL-EDOPERT1', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB470M.cbl', summary: 'Orquesta una fase funcional de ECB470M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '635-0100-INICIO', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [346], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '635-0100-INICIO', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB470M.cbl', summary: 'Inicializa el flujo operativo de ECB470M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '635-9900-FIN', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [366], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '635-9900-FIN', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB470M.cbl', summary: 'Cierra la ejecucion de ECB470M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '635-ACT-CTLPROC', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [345], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '635-ACT-CTLPROC', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB470M.cbl', summary: 'Orquesta una fase funcional de ECB470M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '640-0100-INICIO', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [372], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '640-0100-INICIO', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB470M.cbl', summary: 'Inicializa el flujo operativo de ECB470M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '640-9900-FIN', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [410], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '640-9900-FIN', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB470M.cbl', summary: 'Cierra la ejecucion de ECB470M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '640-INS-CTLPROC', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [371], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '640-INS-CTLPROC', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB470M.cbl', summary: 'Orquesta una fase funcional de ECB470M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-0100-INICIO', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [420], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-0100-INICIO', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB470M.cbl', summary: 'Inicializa el flujo operativo de ECB470M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-0200-SIGUE', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [425], executionOrder: 3900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-0200-SIGUE', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB470M.cbl', summary: 'Orquesta una fase funcional de ECB470M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-9900-FIN', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [428], executionOrder: 4000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-9900-FIN', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB470M.cbl', summary: 'Cierra la ejecucion de ECB470M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [419], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB470M.cbl', summary: 'Gestiona contingencias en ECB470M, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-0100-INICIA', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [435], executionOrder: 4200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-0100-INICIA', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB470M.cbl', summary: 'Orquesta una fase funcional de ECB470M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-9900-FIN', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [447], executionOrder: 4300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-9900-FIN', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB470M.cbl', summary: 'Cierra la ejecucion de ECB470M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [434], executionOrder: 4100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB470M.cbl', summary: 'Orquesta una fase funcional de ECB470M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [4], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB470M.cbl', summary: 'Orquesta una fase funcional de ECB470M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [22], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB470M.cbl', summary: 'Orquesta una fase funcional de ECB470M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [8], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB470M.cbl', summary: 'Orquesta una fase funcional de ECB470M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'ECB470M', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [3], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'ECB470M', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB470M.cbl', summary: 'Orquesta una fase funcional de ECB470M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [29], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB470M.cbl', summary: 'Orquesta una fase funcional de ECB470M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-4381', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [26], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-4381', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB470M.cbl', summary: 'Orquesta una fase funcional de ECB470M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [28], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB470M.cbl', summary: 'Orquesta una fase funcional de ECB470M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [6], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB470M.cbl', summary: 'Orquesta una fase funcional de ECB470M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [25], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB470M.cbl', summary: 'Orquesta una fase funcional de ECB470M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [2], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB470M.cbl', summary: 'Orquesta una fase funcional de ECB470M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [23], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB470M.cbl', summary: 'Orquesta una fase funcional de ECB470M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [32], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB470M.cbl', summary: 'Orquesta una fase funcional de ECB470M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'ACTUALIZA-HORA', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [1101], executionOrder: 5000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'ACTUALIZA-HORA', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Persiste actualizaciones de negocio en ZM1CEXCI, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [92], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FIN-SERVIDOR', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [1016], executionOrder: 4600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FIN-SERVIDOR', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Cierra la ejecucion de ZM1CEXCI, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FUNFILE-INVREQ', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [992], executionOrder: 4300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FUNFILE-INVREQ', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FUNFILE-IOERR', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [1000], executionOrder: 4400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FUNFILE-IOERR', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FUNFILE-NOTAUTH', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [1008], executionOrder: 4500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FUNFILE-NOTAUTH', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FUNFILE-NOTFOUND', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [984], executionOrder: 4200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FUNFILE-NOTFOUND', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FUNTRAN-END', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [941], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FUNTRAN-END', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FUNTRAN-INVREQ', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [935], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FUNTRAN-INVREQ', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FUNTRAN-IOERR', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [945], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FUNTRAN-IOERR', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FUNTRAN-ISCINVREQ', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [967], executionOrder: 4000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FUNTRAN-ISCINVREQ', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FUNTRAN-NOTAUTH', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [930], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FUNTRAN-NOTAUTH', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FUNTRAN-SYSIDERR', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [959], executionOrder: 3900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FUNTRAN-SYSIDERR', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FUNTRAN-TRANIDERR', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [951], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FUNTRAN-TRANIDERR', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FUNTRAN-USERIDERR', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [975], executionOrder: 4100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FUNTRAN-USERIDERR', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INICIA-SERVIDOR', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [361], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INICIA-SERVIDOR', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [251], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LOG-ERRORES', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [1082], executionOrder: 4900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LOG-ERRORES', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Gestiona contingencias en ZM1CEXCI, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LOG-INFORMES', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [1067], executionOrder: 4800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LOG-INFORMES', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESO-ADDFILE', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [588], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESO-ADDFILE', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESO-ADDFILE-FIN', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [611], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESO-ADDFILE-FIN', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Cierra la ejecucion de ZM1CEXCI, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESO-CLOSFILE', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [461], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESO-CLOSFILE', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESO-CLOSFILE-FIN', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [503], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESO-CLOSFILE-FIN', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Cierra la ejecucion de ZM1CEXCI, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESO-DELETEQ', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [1173], executionOrder: 5200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESO-DELETEQ', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESO-DELFILE', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [615], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESO-DELFILE', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESO-DELFILE-FIN', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [638], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESO-DELFILE-FIN', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Cierra la ejecucion de ZM1CEXCI, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESO-DISABLE', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [890], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESO-DISABLE', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESO-DISABLE-FIN', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [916], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESO-DISABLE-FIN', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Cierra la ejecucion de ZM1CEXCI, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESO-DISAFILE', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [534], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESO-DISAFILE', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESO-DISAFILE-FIN', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [557], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESO-DISAFILE-FIN', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Cierra la ejecucion de ZM1CEXCI, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESO-ENABFILE', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [507], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESO-ENABFILE', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESO-ENABFILE-FIN', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [530], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESO-ENABFILE-FIN', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Cierra la ejecucion de ZM1CEXCI, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESO-ENABLE', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [737], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESO-ENABLE', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESO-ENABLE-FIN', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [768], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESO-ENABLE-FIN', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Cierra la ejecucion de ZM1CEXCI, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESO-NADDFILE', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [669], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESO-NADDFILE', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESO-NADDFILE-FIN', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [692], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESO-NADDFILE-FIN', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Cierra la ejecucion de ZM1CEXCI, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESO-NDELFILE', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [696], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESO-NDELFILE', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESO-NDELFILE-FIN', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [719], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESO-NDELFILE-FIN', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Cierra la ejecucion de ZM1CEXCI, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESO-NUPDFILE', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [642], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESO-NUPDFILE', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESO-NUPDFILE-FIN', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [665], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESO-NUPDFILE-FIN', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Cierra la ejecucion de ZM1CEXCI, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESO-OPENFILE', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [415], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESO-OPENFILE', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESO-OPENFILE-FIN', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [457], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESO-OPENFILE-FIN', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Cierra la ejecucion de ZM1CEXCI, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESO-STARTAUT', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [863], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESO-STARTAUT', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESO-STARTPRM', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [842], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESO-STARTPRM', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESO-STARTTRN', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [775], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESO-STARTTRN', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESO-UPDFILE', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [561], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESO-UPDFILE', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESO-UPDFILE-FIN', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [584], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESO-UPDFILE-FIN', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Cierra la ejecucion de ZM1CEXCI, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'REALIZA-LINK', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [1037], executionOrder: 4700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'REALIZA-LINK', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'REALIZA-LINK-PRGM', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [1146], executionOrder: 5100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'REALIZA-LINK-PRGM', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'TRANSA-INICIAL', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [724], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'TRANSA-INICIAL', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Inicializa el flujo operativo de ZM1CEXCI, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'TRANSA-INICIAL-FIN', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [733], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'TRANSA-INICIAL-FIN', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Inicializa el flujo operativo de ZM1CEXCI, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [96], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0000-INICIO', programName: 'ZM1IPG74'})
SET n += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [118], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0000-INICIO', nodeType: 'process-step', programName: 'ZM1IPG74', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1IPG74.cbl', summary: 'Inicializa el flujo operativo de ZM1IPG74, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1IPG74'})
SET n += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [145], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8000-TRANSFIERE', nodeType: 'process-step', programName: 'ZM1IPG74', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1IPG74.cbl', summary: 'Orquesta una fase funcional de ZM1IPG74, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8010-PF2-PF3', programName: 'ZM1IPG74'})
SET n += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [151], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8010-PF2-PF3', nodeType: 'process-step', programName: 'ZM1IPG74', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1IPG74.cbl', summary: 'Orquesta una fase funcional de ZM1IPG74, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1IPG74'})
SET n += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [170], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8100-RECIBE-PANTALLA', nodeType: 'process-step', programName: 'ZM1IPG74', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1IPG74.cbl', summary: 'Orquesta una fase funcional de ZM1IPG74, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1IPG74'})
SET n += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [185], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8110-ENVIA-PANTALLA', nodeType: 'process-step', programName: 'ZM1IPG74', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1IPG74.cbl', summary: 'Orquesta una fase funcional de ZM1IPG74, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1IPG74'})
SET n += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [206], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8120-ENCABEZADO', nodeType: 'process-step', programName: 'ZM1IPG74', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1IPG74.cbl', summary: 'Orquesta una fase funcional de ZM1IPG74, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ZM1IPG74'})
SET n += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [111], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ZM1IPG74', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1IPG74.cbl', summary: 'Orquesta una fase funcional de ZM1IPG74, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1IPG74'})
SET n += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [30], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ZM1IPG74', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1IPG74.cbl', summary: 'Orquesta una fase funcional de ZM1IPG74, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0000-INICIO', programName: 'ZM1MF002'})
SET n += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [149], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0000-INICIO', nodeType: 'process-step', programName: 'ZM1MF002', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1MF002.cbl', summary: 'Inicializa el flujo operativo de ZM1MF002, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0000-PRINCIPAL', programName: 'ZM1MF002'})
SET n += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [138], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0000-PRINCIPAL', nodeType: 'process-step', programName: 'ZM1MF002', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1MF002.cbl', summary: 'Orquesta una fase funcional de ZM1MF002, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0000-PROCESO', programName: 'ZM1MF002'})
SET n += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [159], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0000-PROCESO', nodeType: 'process-step', programName: 'ZM1MF002', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1MF002.cbl', summary: 'Orquesta una fase funcional de ZM1MF002, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MF002'})
SET n += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [181], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8000-TRANSFIERE', nodeType: 'process-step', programName: 'ZM1MF002', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1MF002.cbl', summary: 'Orquesta una fase funcional de ZM1MF002, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8010-PF2-PF3', programName: 'ZM1MF002'})
SET n += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [206], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8010-PF2-PF3', nodeType: 'process-step', programName: 'ZM1MF002', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1MF002.cbl', summary: 'Orquesta una fase funcional de ZM1MF002, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MF002'})
SET n += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [236], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8100-RECIBE-PANTALLA', nodeType: 'process-step', programName: 'ZM1MF002', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1MF002.cbl', summary: 'Orquesta una fase funcional de ZM1MF002, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MF002'})
SET n += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [258], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8110-ENVIA-PANTALLA', nodeType: 'process-step', programName: 'ZM1MF002', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1MF002.cbl', summary: 'Orquesta una fase funcional de ZM1MF002, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF002'})
SET n += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [288], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8120-ENCABEZADO', nodeType: 'process-step', programName: 'ZM1MF002', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1MF002.cbl', summary: 'Orquesta una fase funcional de ZM1MF002, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ZM1MF002'})
SET n += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [128], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ZM1MF002', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1MF002.cbl', summary: 'Orquesta una fase funcional de ZM1MF002, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF002'})
SET n += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [62], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ZM1MF002', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1MF002.cbl', summary: 'Orquesta una fase funcional de ZM1MF002, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0000-INICIO', programName: 'ZM1MF890'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [152], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0000-INICIO', nodeType: 'process-step', programName: 'ZM1MF890', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', summary: 'Inicializa el flujo operativo de ZM1MF890, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MF890'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [188], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8000-TRANSFIERE', nodeType: 'process-step', programName: 'ZM1MF890', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', summary: 'Orquesta una fase funcional de ZM1MF890, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MF890'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [195], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8100-RECIBE-PANTALLA', nodeType: 'process-step', programName: 'ZM1MF890', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', summary: 'Orquesta una fase funcional de ZM1MF890, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MF890'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [210], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8110-ENVIA-PANTALLA', nodeType: 'process-step', programName: 'ZM1MF890', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', summary: 'Orquesta una fase funcional de ZM1MF890, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF890'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [232], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8120-ENCABEZADO', nodeType: 'process-step', programName: 'ZM1MF890', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', summary: 'Orquesta una fase funcional de ZM1MF890, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'ZM1MF890'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [8], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'ZM1MF890', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', summary: 'Orquesta una fase funcional de ZM1MF890, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'ZM1MF890'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [10], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'ZM1MF890', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', summary: 'Orquesta una fase funcional de ZM1MF890, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ZM1MF890'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [141], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ZM1MF890', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', summary: 'Orquesta una fase funcional de ZM1MF890, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [39], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ZM1MF890', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', summary: 'Orquesta una fase funcional de ZM1MF890, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Program {name: 'ECB415M'})
SET n += {description: 'Programa COBOL que ejecuta procesos.', ingestion: 'auto', layer: 'program', name: 'ECB415M', nodeType: 'program', objective: null, reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB415M.cbl', system: null, viewTag: 'cobol-program'};

MERGE (n:Program {name: 'ECB420M'})
SET n += {description: 'Programa COBOL que ejecuta procesos.', ingestion: 'auto', layer: 'program', name: 'ECB420M', nodeType: 'program', objective: null, reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB420M.cbl', system: null, viewTag: 'cobol-program'};

MERGE (n:Program {name: 'ECB425M'})
SET n += {description: 'Programa COBOL que ejecuta procesos.', ingestion: 'auto', layer: 'program', name: 'ECB425M', nodeType: 'program', objective: null, reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB425M.cbl', system: null, viewTag: 'cobol-program'};

MERGE (n:Program {name: 'ECB439M'})
SET n += {description: 'Programa COBOL que genera archivo de codigo postal para s.i.. Pertenece a: PROBURSA, S.A. DE C.V. 25/SEP/00..', ingestion: 'auto', layer: 'program', name: 'ECB439M', nodeType: 'program', objective: 'GENERA ARCHIVO DE CODIGO POSTAL PARA S.I.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB439M.cbl', system: 'PROBURSA, S.A. DE C.V. 25/SEP/00.', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'ECB465M'})
SET n += {description: 'Programa COBOL que generar acuses de recibo, etiquetas y listado de clientes de la sucursal zpr con c.c. 3160. observaciones: parametros de entrada: f persona fisica o m persona moral, si se requiere impresion de etiquetas(0), si no se requiere (1). Pertenece a: ABR/01. /.', ingestion: 'auto', layer: 'program', name: 'ECB465M', nodeType: 'program', objective: 'GENERAR ACUSES DE RECIBO, ETIQUETAS Y LISTADO DE CLIENTES DE LA SUCURSAL ZPR CON C.C. 3160. OBSERVACIONES: PARAMETROS DE ENTRADA: F PERSONA FISICA O M PERSONA MORAL, SI SE REQUIERE IMPRESION DE ETIQUETAS(0), SI NO SE REQUIERE (1)', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB465M.cbl', system: 'ABR/01. /', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'ECB470M'})
SET n += {description: 'Programa COBOL que ejecuta procesos. Pertenece a: BBV PROBURSA, S.A. DE C.V. 09/FEB/02. /.', ingestion: 'auto', layer: 'program', name: 'ECB470M', nodeType: 'program', objective: null, reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ECB470M.cbl', system: 'BBV PROBURSA, S.A. DE C.V. 09/FEB/02. /', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'ZM1CEXCI'})
SET n += {description: 'Programa COBOL que abre/cierra archivos dentro de cics parametros: file name (8 posiciones alfanumericas) operacion ( 8 bytes) codigo retorno (8 bytes) retorno: blancos - ok funcion: enabfile/disafile habilita/deshabilita archivos cics parametros: file name (8 posiciones alfanumericas) operacion ( 8 bytes) codigo retorno (8 bytes) retorno: blancos - ok funcion: disable/enable/starttrn deshabilita/habilita transacciones cics parametros: tran name (8 posiciones alfanumericas) operacion ( 8 bytes) codigo retorno (8 bytes) retorno: blancos - ok sor 1-04-03 se abilitan funciones para manejo de archivos. update-file noupdate-file add-file noadd-file delete-file nodelete-file importante: estas funciones requieren archivo cerrado sor 24-09-03 se valida terminacion de starttrn se implementa open-close de archs rls idaxwrp 14-06-07 se agregan nuevas funciones con el fin de que se active o desactive. 1-la aplicacion 2-la transaccion 3-y una funcion que realize una busqueda de la transaccione en todos los aores que se encuentren en la tabla qgdtpao. -funcion: activatx/desacttx habilita/deshabilita transacciones a nivel arqui. -funcion: activaap/desactap habilita/deshabilita aplicaciones a nivel arqui. -funcion: enatxaor/distxaor habilitar/deshabilitar transacciones en los aores parametros: tran name (8 posiciones alfanumericas) operacion ( 8 bytes) codigo retorno (8 bytes) retorno: blancos - ok idaxwrp 14-08-07 se mandan a grabar errores y avisos en el log cics idaxima 1-dic-2008 se agrega la funcion de link a programa y query security a la funcion de starttrn xmch019 26-mar-2010 se agrega la funcion de deleteq para ts compartida. ---- @01-i @01-f ----. Pertenece a: PROGRAM-ID. ZM1CEXCI..', ingestion: 'auto', layer: 'program', name: 'ZM1CEXCI', nodeType: 'program', objective: 'ABRE/CIERRA ARCHIVOS DENTRO DE CICS PARAMETROS: FILE NAME (8 POSICIONES ALFANUMERICAS) OPERACION ( 8 BYTES) CODIGO RETORNO (8 BYTES) RETORNO: BLANCOS - OK FUNCION: ENABFILE/DISAFILE HABILITA/DESHABILITA ARCHIVOS CICS PARAMETROS: FILE NAME (8 POSICIONES ALFANUMERICAS) OPERACION ( 8 BYTES) CODIGO RETORNO (8 BYTES) RETORNO: BLANCOS - OK FUNCION: DISABLE/ENABLE/STARTTRN DESHABILITA/HABILITA TRANSACCIONES CICS PARAMETROS: TRAN NAME (8 POSICIONES ALFANUMERICAS) OPERACION ( 8 BYTES) CODIGO RETORNO (8 BYTES) RETORNO: BLANCOS - OK SOR 1-04-03 SE ABILITAN FUNCIONES PARA MANEJO DE ARCHIVOS. UPDATE-FILE NOUPDATE-FILE ADD-FILE NOADD-FILE DELETE-FILE NODELETE-FILE IMPORTANTE: ESTAS FUNCIONES REQUIEREN ARCHIVO CERRADO SOR 24-09-03 SE VALIDA TERMINACION DE STARTTRN SE IMPLEMENTA OPEN-CLOSE DE ARCHS RLS IDAXWRP 14-06-07 SE AGREGAN NUEVAS FUNCIONES CON EL FIN DE QUE SE ACTIVE O DESACTIVE. 1-LA APLICACION 2-LA TRANSACCION 3-Y UNA FUNCION QUE REALIZE UNA BUSQUEDA DE LA TRANSACCIONE EN TODOS LOS AORES QUE SE ENCUENTREN EN LA TABLA QGDTPAO. -FUNCION: ACTIVATX/DESACTTX HABILITA/DESHABILITA TRANSACCIONES A NIVEL ARQUI. -FUNCION: ACTIVAAP/DESACTAP HABILITA/DESHABILITA APLICACIONES A NIVEL ARQUI. -FUNCION: ENATXAOR/DISTXAOR HABILITAR/DESHABILITAR TRANSACCIONES EN LOS AORES PARAMETROS: TRAN NAME (8 POSICIONES ALFANUMERICAS) OPERACION ( 8 BYTES) CODIGO RETORNO (8 BYTES) RETORNO: BLANCOS - OK IDAXWRP 14-08-07 SE MANDAN A GRABAR ERRORES Y AVISOS EN EL LOG CICS IDAXIMA 1-DIC-2008 SE AGREGA LA FUNCION DE LINK A PROGRAMA Y QUERY SECURITY A LA FUNCION DE STARTTRN XMCH019 26-MAR-2010 SE AGREGA LA FUNCION DE DELETEQ PARA TS COMPARTIDA. ---- @01-I @01-F ----', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1CEXCI.cbl', system: 'PROGRAM-ID. ZM1CEXCI.', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'ZM1IPG74'})
SET n += {description: 'Programa COBOL que presentar el menu de parametria de reportes famoffice opcion: o74 transaccion: zo74 fecha modificacion : marca : ú. Pertenece a: PROGRAM-ID. ZM1IPG74..', ingestion: 'auto', layer: 'program', name: 'ZM1IPG74', nodeType: 'program', objective: 'PRESENTAR EL MENU DE PARAMETRIA DE REPORTES FAMOFFICE OPCION: O74 TRANSACCION: ZO74 FECHA MODIFICACION : MARCA : ú', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1IPG74.cbl', system: 'PROGRAM-ID. ZM1IPG74.', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'ZM1MF002'})
SET n += {description: 'Programa COBOL que ejecuta procesos. Pertenece a: PROGRAM-ID. ZM1MF002. INSTALLATION. BBVA BANCOMER..', ingestion: 'auto', layer: 'program', name: 'ZM1MF002', nodeType: 'program', objective: null, reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1MF002.cbl', system: 'PROGRAM-ID. ZM1MF002. INSTALLATION. BBVA BANCOMER.', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'ZM1MF890'})
SET n += {description: 'Programa COBOL que menu de consultas fideicomisos modifico: nnnnnnnnn pppppppppppp mmmmmmmmm (xxxxxxx) fecha: mmmmmmmmmmmm dd, ssaa. asunto: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.. Pertenece a: BBVA-BANCOMER, S.A. DE C.V..', ingestion: 'auto', layer: 'program', name: 'ZM1MF890', nodeType: 'program', objective: 'MENU DE CONSULTAS FIDEICOMISOS MODIFICO: NNNNNNNNN PPPPPPPPPPPP MMMMMMMMM (XXXXXXX) FECHA: MMMMMMMMMMMM DD, SSAA. ASUNTO: XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', system: 'BBVA-BANCOMER, S.A. DE C.V.', viewTag: 'cobol-program'};

MATCH (a:Program {name: 'ECB415M'}), (b:Paragraph {name: '000-0000-INICIO', programName: 'ECB415M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB415M.cbl', evidenceLines: [143], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB415M'}), (b:Paragraph {name: '100-INICIO', programName: 'ECB415M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB415M.cbl', evidenceLines: [149], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB415M'}), (b:Paragraph {name: '110-ABRE-ARCHIVOS', programName: 'ECB415M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB415M.cbl', evidenceLines: [154], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB415M'}), (b:Paragraph {name: '200-PROCESO', programName: 'ECB415M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB415M.cbl', evidenceLines: [162], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB415M'}), (b:Paragraph {name: '250-LEE-ARCHIVO-FISICAS', programName: 'ECB415M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB415M.cbl', evidenceLines: [207], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB415M'}), (b:Paragraph {name: '255-LEE-REPORTE-ECBANCF', programName: 'ECB415M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB415M.cbl', evidenceLines: [215], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB415M'}), (b:Paragraph {name: '300-TERMINA', programName: 'ECB415M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB415M.cbl', evidenceLines: [222], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB415M'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'ECB415M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB415M.cbl', evidenceLines: [230], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB415M'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ECB415M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB415M.cbl', evidenceLines: [22], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB415M'}), (b:Paragraph {name: 'FILE', programName: 'ECB415M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB415M.cbl', evidenceLines: [43], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB415M'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'ECB415M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB415M.cbl', evidenceLines: [27], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB415M'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB415M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB415M.cbl', evidenceLines: [26], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB415M'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB415M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB415M.cbl', evidenceLines: [102], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB420M'}), (b:Paragraph {name: '000-0000-INICIO', programName: 'ECB420M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [159], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB420M'}), (b:Paragraph {name: '100-INICIO', programName: 'ECB420M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [170], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB420M'}), (b:Paragraph {name: '110-ABRE-ARCHIVOS', programName: 'ECB420M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [176], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB420M'}), (b:Paragraph {name: '120-ENCABEZADO', programName: 'ECB420M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [185], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB420M'}), (b:Paragraph {name: '200-PROCESO-LISTA', programName: 'ECB420M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [203], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB420M'}), (b:Paragraph {name: '250-CARGA-ARREGLO', programName: 'ECB420M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [226], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB420M'}), (b:Paragraph {name: '250-LEE-ARCHIVO-CTAHOJA', programName: 'ECB420M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [218], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB420M'}), (b:Paragraph {name: '255-LEE-REPO-R1-LISTA', programName: 'ECB420M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [232], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB420M'}), (b:Paragraph {name: '300-TERMINA', programName: 'ECB420M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [239], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB420M'}), (b:Paragraph {name: '750-0100-INICIO', programName: 'ECB420M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [248], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB420M'}), (b:Paragraph {name: '750-9999-FIN', programName: 'ECB420M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [255], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB420M'}), (b:Paragraph {name: '750-CIFRAS', programName: 'ECB420M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [247], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB420M'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'ECB420M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [258], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB420M'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ECB420M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [22], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB420M'}), (b:Paragraph {name: 'FILE', programName: 'ECB420M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [43], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB420M'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'ECB420M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [27], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB420M'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB420M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [26], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB420M'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB420M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [96], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB425M'}), (b:Paragraph {name: '000-0000-INICIO', programName: 'ECB425M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB425M.cbl', evidenceLines: [140], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB425M'}), (b:Paragraph {name: '100-INICIO', programName: 'ECB425M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB425M.cbl', evidenceLines: [147], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB425M'}), (b:Paragraph {name: '110-ABRE-ARCHIVOS', programName: 'ECB425M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB425M.cbl', evidenceLines: [153], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB425M'}), (b:Paragraph {name: '200-PROCESO-ACUSE', programName: 'ECB425M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB425M.cbl', evidenceLines: [161], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB425M'}), (b:Paragraph {name: '250-CARGA-ARREGLO', programName: 'ECB425M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB425M.cbl', evidenceLines: [184], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB425M'}), (b:Paragraph {name: '250-LEE-ARCHIVO-CTAHOJA', programName: 'ECB425M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB425M.cbl', evidenceLines: [176], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB425M'}), (b:Paragraph {name: '255-LEE-REPO-R3-ACUSE', programName: 'ECB425M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB425M.cbl', evidenceLines: [190], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB425M'}), (b:Paragraph {name: '260-ESCRIBE-ACUSE6', programName: 'ECB425M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB425M.cbl', evidenceLines: [197], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB425M'}), (b:Paragraph {name: '265-ESCRIBE-ACUSE7', programName: 'ECB425M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB425M.cbl', evidenceLines: [201], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB425M'}), (b:Paragraph {name: '300-TERMINA', programName: 'ECB425M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB425M.cbl', evidenceLines: [205], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB425M'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'ECB425M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB425M.cbl', evidenceLines: [213], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB425M'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ECB425M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB425M.cbl', evidenceLines: [22], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB425M'}), (b:Paragraph {name: 'FILE', programName: 'ECB425M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB425M.cbl', evidenceLines: [43], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB425M'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'ECB425M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB425M.cbl', evidenceLines: [27], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB425M'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB425M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB425M.cbl', evidenceLines: [26], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB425M'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB425M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB425M.cbl', evidenceLines: [97], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB439M'}), (b:Paragraph {name: '000-0100-INICIO', programName: 'ECB439M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [145], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB439M'}), (b:Paragraph {name: '000-0200-PROCESO', programName: 'ECB439M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [155], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB439M'}), (b:Paragraph {name: '000-0300-TERMINA', programName: 'ECB439M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [159], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB439M'}), (b:Paragraph {name: '000-9900-FIN', programName: 'ECB439M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [166], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB439M'}), (b:Paragraph {name: '000-CONTROL', programName: 'ECB439M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [144], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB439M'}), (b:Paragraph {name: '035-LEE-CUENTAS', programName: 'ECB439M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [172], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB439M'}), (b:Paragraph {name: '035-LEE-CUENTAS-FIN', programName: 'ECB439M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [197], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB439M'}), (b:Paragraph {name: '040-LEE-SVCTOCB-IPOSP', programName: 'ECB439M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [203], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB439M'}), (b:Paragraph {name: '040-LEE-SVCTOCB-IPOSP-FIN', programName: 'ECB439M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [220], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB439M'}), (b:Paragraph {name: '980-0100-INICIO', programName: 'ECB439M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [228], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB439M'}), (b:Paragraph {name: '980-9900-FIN', programName: 'ECB439M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [232], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB439M'}), (b:Paragraph {name: '980-ABORTA', programName: 'ECB439M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [227], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB439M'}), (b:Paragraph {name: '990-0100-INICIO', programName: 'ECB439M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [236], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB439M'}), (b:Paragraph {name: '990-9900-FIN', programName: 'ECB439M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [244], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB439M'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'ECB439M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [235], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB439M'}), (b:Paragraph {name: 'AUTHOR', programName: 'ECB439M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB439M'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ECB439M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [16], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB439M'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'ECB439M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [8], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB439M'}), (b:Paragraph {name: 'ECB439M', programName: 'ECB439M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB439M'}), (b:Paragraph {name: 'FILE', programName: 'ECB439M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [35], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB439M'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'ECB439M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [23], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB439M'}), (b:Paragraph {name: 'IBM-9121', programName: 'ECB439M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [20], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB439M'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB439M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [22], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB439M'}), (b:Paragraph {name: 'INSTALLATION', programName: 'ECB439M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [6], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB439M'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'ECB439M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [19], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB439M'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'ECB439M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [2], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB439M'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'ECB439M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [17], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB439M'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB439M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [90], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '000-0100-INICIO', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [647], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '000-CONTROL', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [637], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '010-0100-INICIO', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [663], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '010-9900-EXIT', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [723], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '010-INICIO', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [662], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '015-0100-INICIO', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [730], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '015-9900-FIN', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [734], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '015-LEYENDA', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [729], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '020-0100-INICIO', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [741], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '020-9900-EXIT', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [797], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '020-LLENA-SEC', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [740], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '030-0100-INICIO', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [804], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '030-9900-EXIT', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [846], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '030-PROCESA-SEC', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [803], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '040-0100-INICIO', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [853], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '040-9900-EXIT', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [869], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '040-PROC-SUC', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [852], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '050-0100-INICIO', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [876], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '050-9900-EXIT', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [893], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '050-PROC-EST', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [875], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '060-0100-INICIO', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [900], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '060-9900-EXIT', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1012], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '060-PROC-DET', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [899], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '070-0100-INICIO', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1019], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '070-9900-FIN', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1037], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '070-IMPRIME-ETIQ', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1018], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '080-0100-INICIO', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1044], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '080-9900-FIN', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1082], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '080-IMPRIME-ACUSE', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1043], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '090-9900-FIN', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1092], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '090-FEC-INICIO-PROC', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1085], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '095-9900-FIN', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1140], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '095-DETERMINA-MES', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1096], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '100-0100-INICIO', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1146], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '100-9900-FIN', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1194], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '100-OBTEN-DEST', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1145], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '500-0100-INICIO', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1200], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '500-9900-FIN', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1278], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '500-LEE-CURSOR', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1199], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '510-0100-INICIO', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1285], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '510-9900-EXIT', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1301], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '510-LEE-PARAM', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1284], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '515-0100-INICIO', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1305], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '515-9900-EXIT', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1323], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '515-OBTEN-FECHA', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1304], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '520-0100-INICIO', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1330], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '520-9900-EXIT', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1342], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '520-LEE-SEC', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1329], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '530-0100-INICIO', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1349], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '530-9900-EXIT', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1366], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '530-LEE-PARAM', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1348], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '540-0100-INICIO', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1373], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '540-9900-EXIT', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1387], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '540-LEE-TF6', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1372], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '550-0100-INICIO', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1394], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '550-9900-EXIT', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1414], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '550-LEE-CUENTA', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1393], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '560-0100-INICIO', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1421], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '560-9900-EXIT', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1443], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '560-LEE-PERJUR', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1420], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '570-0100-INICIO', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1450], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '570-9900-EXIT', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1472], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '570-LEE-ACLICTA', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1449], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '580-0100-INICIO', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1479], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '580-9900-EXIT', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1501], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '580-LEE-CLIENTE', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1478], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '600-0100-INICIO', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1508], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '600-9900-EXIT', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1518], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '600-ABRE-CURSOR', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1507], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '610-0100-INICIO', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1525], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '610-9900-EXIT', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1535], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '610-CIERRA-CURSOR', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1524], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '630-0100-INICIO', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1542], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '630-9900-EXIT', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1552], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '630-ABRE-CURSOR', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1541], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '640-0100-INICIO', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1559], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '640-9900-EXIT', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1569], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '640-CIERRA-CURSOR', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1558], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '700-0100-INICIO', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1576], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '700-9900-FIN', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1586], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '700-ENCA', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1575], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '710-9900-FIN', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1604], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '710-DEL-PARAM', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1592], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '720-9900-FIN', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1621], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '720-INS-PARAM', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1610], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '980-0100-INICIO', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1635], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '980-9900-FIN', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1644], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '980-ABORTA', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1634], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '990-0100-INICIO', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1651], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '990-099-FIN', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1656], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1650], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: 'AUTHOR', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: 'BBV-PROBURSA', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [21], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [8], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: 'ECB465M', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: 'FILE', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [36], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [28], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: 'IBM-9121', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [25], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [27], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: 'INSTALLATION', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [6], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: 'LINKAGE', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [624], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [24], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [2], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [22], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB465M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [103], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: '005-0100-FIN', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [194], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: '005-0100-INICIO', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [184], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: '005-INICIO', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [183], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: '010-LEE-PARAMP04', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [197], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: '010-LEE-PARAMP04-FIN', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [206], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: '515-0100-INICIO', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [243], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: '515-9900-FIN', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [264], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: '515-OBTEN-EVENTO-CARGA', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [242], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: '600-0100-INICIO', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [268], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: '600-9900-FIN', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [309], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: '600-INS-SELECT', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [210], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: '600-INSERT-EDOPERT1', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [267], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: '610-0100-INICIO', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [316], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: '610-9900-FIN', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [340], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: '610-DEL-EDOPERT1', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [315], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: '635-0100-INICIO', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [346], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: '635-9900-FIN', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [366], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: '635-ACT-CTLPROC', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [345], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: '640-0100-INICIO', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [372], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: '640-9900-FIN', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [410], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: '640-INS-CTLPROC', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [371], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: '980-0100-INICIO', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [420], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: '980-0200-SIGUE', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [425], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: '980-9900-FIN', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [428], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: '980-ABORTA', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [419], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: '990-0100-INICIA', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [435], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: '990-9900-FIN', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [447], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [434], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: 'AUTHOR', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [22], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [8], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: 'ECB470M', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [29], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: 'IBM-4381', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [26], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [28], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: 'INSTALLATION', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [6], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [25], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [2], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [23], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [32], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'ACTUALIZA-HORA', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [1101], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [92], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'FIN-SERVIDOR', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [1016], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'FUNFILE-INVREQ', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [992], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'FUNFILE-IOERR', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [1000], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'FUNFILE-NOTAUTH', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [1008], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'FUNFILE-NOTFOUND', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [984], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'FUNTRAN-END', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [941], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'FUNTRAN-INVREQ', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [935], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'FUNTRAN-IOERR', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [945], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'FUNTRAN-ISCINVREQ', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [967], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'FUNTRAN-NOTAUTH', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [930], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'FUNTRAN-SYSIDERR', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [959], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'FUNTRAN-TRANIDERR', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [951], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'FUNTRAN-USERIDERR', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [975], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'INICIA-SERVIDOR', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [361], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'LINKAGE', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [251], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'LOG-ERRORES', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [1082], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'LOG-INFORMES', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [1067], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'PROCESO-ADDFILE', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [588], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'PROCESO-ADDFILE-FIN', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [611], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'PROCESO-CLOSFILE', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [461], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'PROCESO-CLOSFILE-FIN', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [503], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'PROCESO-DELETEQ', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [1173], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'PROCESO-DELFILE', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [615], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'PROCESO-DELFILE-FIN', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [638], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'PROCESO-DISABLE', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [890], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'PROCESO-DISABLE-FIN', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [916], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'PROCESO-DISAFILE', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [534], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'PROCESO-DISAFILE-FIN', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [557], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'PROCESO-ENABFILE', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [507], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'PROCESO-ENABFILE-FIN', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [530], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'PROCESO-ENABLE', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [737], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'PROCESO-ENABLE-FIN', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [768], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'PROCESO-NADDFILE', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [669], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'PROCESO-NADDFILE-FIN', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [692], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'PROCESO-NDELFILE', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [696], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'PROCESO-NDELFILE-FIN', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [719], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'PROCESO-NUPDFILE', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [642], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'PROCESO-NUPDFILE-FIN', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [665], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'PROCESO-OPENFILE', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [415], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'PROCESO-OPENFILE-FIN', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [457], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'PROCESO-STARTAUT', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [863], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'PROCESO-STARTPRM', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [842], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'PROCESO-STARTTRN', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [775], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'PROCESO-UPDFILE', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [561], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'PROCESO-UPDFILE-FIN', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [584], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'REALIZA-LINK', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [1037], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'REALIZA-LINK-PRGM', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [1146], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'TRANSA-INICIAL', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [724], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'TRANSA-INICIAL-FIN', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [733], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [96], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1IPG74'}), (b:Paragraph {name: '0000-INICIO', programName: 'ZM1IPG74'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [118], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1IPG74'}), (b:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1IPG74'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [145], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1IPG74'}), (b:Paragraph {name: '8010-PF2-PF3', programName: 'ZM1IPG74'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [151], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1IPG74'}), (b:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1IPG74'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [170], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1IPG74'}), (b:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1IPG74'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [185], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1IPG74'}), (b:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1IPG74'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [206], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1IPG74'}), (b:Paragraph {name: 'LINKAGE', programName: 'ZM1IPG74'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [111], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1IPG74'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1IPG74'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [30], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF002'}), (b:Paragraph {name: '0000-INICIO', programName: 'ZM1MF002'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [149], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF002'}), (b:Paragraph {name: '0000-PRINCIPAL', programName: 'ZM1MF002'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [138], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF002'}), (b:Paragraph {name: '0000-PROCESO', programName: 'ZM1MF002'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [159], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF002'}), (b:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MF002'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [181], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF002'}), (b:Paragraph {name: '8010-PF2-PF3', programName: 'ZM1MF002'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [206], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF002'}), (b:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MF002'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [236], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF002'}), (b:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MF002'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [258], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF002'}), (b:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF002'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [288], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF002'}), (b:Paragraph {name: 'LINKAGE', programName: 'ZM1MF002'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [128], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF002'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF002'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [62], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Paragraph {name: '0000-INICIO', programName: 'ZM1MF890'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [152], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MF890'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [188], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MF890'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [195], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MF890'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [210], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF890'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [232], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Paragraph {name: 'AUTHOR', programName: 'ZM1MF890'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [8], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Paragraph {name: 'INSTALLATION', programName: 'ZM1MF890'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [10], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Paragraph {name: 'LINKAGE', programName: 'ZM1MF890'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [141], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [39], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'ECB439M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [250], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB439M'}), (b:Copybook {name: 'DSVCTOCB'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [138], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB439M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [131], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB439M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [121], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB439M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [125], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '000-0100-INICIO', programName: 'ECB465M'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [656], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'ECB465M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [638], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '030-0100-INICIO', programName: 'ECB465M'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [822], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '500-0100-INICIO', programName: 'ECB465M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1228], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '510-0100-INICIO', programName: 'ECB465M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1299], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '515-0100-INICIO', programName: 'ECB465M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1318], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '530-0100-INICIO', programName: 'ECB465M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1359], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '540-0100-INICIO', programName: 'ECB465M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1385], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '550-0100-INICIO', programName: 'ECB465M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1406], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '560-0100-INICIO', programName: 'ECB465M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1435], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '570-0100-INICIO', programName: 'ECB465M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1464], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '580-0100-INICIO', programName: 'ECB465M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1493], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '600-0100-INICIO', programName: 'ECB465M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1516], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '610-0100-INICIO', programName: 'ECB465M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1533], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '630-0100-INICIO', programName: 'ECB465M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1550], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '640-0100-INICIO', programName: 'ECB465M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1567], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '710-DEL-PARAM', programName: 'ECB465M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1602], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '720-9900-FIN', programName: 'ECB465M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1628], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '720-INS-PARAM', programName: 'ECB465M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1619], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '990-099-FIN', programName: 'ECB465M'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1663], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '990-099-FIN', programName: 'ECB465M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1670], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB465M'}), (b:Copybook {name: 'DACLICTA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [346], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB465M'}), (b:Copybook {name: 'DAGPOPRO'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [359], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB465M'}), (b:Copybook {name: 'DCLIENTE'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [339], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB465M'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [307], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB465M'}), (b:Copybook {name: 'DEDCUENT'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [325], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB465M'}), (b:Copybook {name: 'DEDREPER'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [352], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB465M'}), (b:Copybook {name: 'DESTZONE'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [314], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB465M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [300], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB465M'}), (b:Copybook {name: 'DPERJUR'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [332], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB465M'}), (b:Copybook {name: 'DPROMOT'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [366], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB465M'}), (b:Copybook {name: 'DSUCURSA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [373], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB465M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [271], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB465M'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [384], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB465M'}), (b:Copybook {name: 'SIC001'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [289], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB465M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [285], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB465M'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [278], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB465M'}), (b:Copybook {name: 'SIEPAP04'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [257], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB465M'}), (b:Copybook {name: 'SIETATF6'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [264], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB465M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [293], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '515-0100-INICIO', programName: 'ECB470M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [261], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '600-0100-INICIO', programName: 'ECB470M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [305], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '610-0100-INICIO', programName: 'ECB470M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [324, 334], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '635-0100-INICIO', programName: 'ECB470M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [361], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '640-0100-INICIO', programName: 'ECB470M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [407], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '640-9900-FIN', programName: 'ECB470M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [417], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'ECB470M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [454], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB470M'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [121], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB470M'}), (b:Copybook {name: 'DEDOPERT'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [114], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB470M'}), (b:Copybook {name: 'DOPERATE'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [107], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB470M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [128], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB470M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [89], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB470M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [95], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB470M'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [179], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB470M'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [138], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB470M'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [82], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB470M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [99], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [143], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [119], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [148], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [181], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [191], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [204], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [233], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [209, 239], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [245], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [251], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [257], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [269], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [263], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [221], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [227], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1IPG74'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [53], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1IPG74'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [57], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1IPG74'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [44], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1IPG74'}), (b:Copybook {name: 'ZMPG013'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [61], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [107], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [65], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [69], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [73], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [77], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [49], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [97], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [82], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [92], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [87], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [151], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '0000-PROCESO', programName: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [174], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [197], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [249], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [267], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [281], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [326], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [293, 333], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [340], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [347], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [354], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [361], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [368], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [376], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [312], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [319], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF002'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [82], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF002'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [84], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF002'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [114], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF002'}), (b:Copybook {name: 'ZMF0021'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [86], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF002'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [121], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [88], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [90], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [92], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [94], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [80], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [106], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [97], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [103], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [100], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF002'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [117], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [186], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [153], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [192], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [206], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [217], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [230], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [265], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [236, 272], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [279], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [286], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [293], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [309], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [302], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [251], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [258], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [69], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [73], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [124], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMF8901'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [77], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [117], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [81], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [85], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [89], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [93], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [65], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [113], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [98], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [108], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [103], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [130], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB439M'}), (b:Copybook {name: 'DSVCTOCB'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [138], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB439M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [250], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB439M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [131], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB439M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [121], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB439M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [125], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Copybook {name: 'DACLICTA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [346], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Copybook {name: 'DAGPOPRO'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [359], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Copybook {name: 'DCLIENTE'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [339], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [307], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Copybook {name: 'DEDCUENT'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [325], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Copybook {name: 'DEDREPER'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [352], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Copybook {name: 'DESTZONE'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [314], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [300], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Copybook {name: 'DPERJUR'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [332], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Copybook {name: 'DPROMOT'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [366], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Copybook {name: 'DSUCURSA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [373], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1663], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1670], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [271], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [384], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Copybook {name: 'SIC001'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [289], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1628], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [285], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [278], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [656], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Copybook {name: 'SIEPAP04'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [257], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Copybook {name: 'SIETATF6'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [264], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [293], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [121], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:Copybook {name: 'DEDOPERT'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [114], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:Copybook {name: 'DOPERATE'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [107], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [128], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [454], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [89], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [417], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [95], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [179], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [138], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [82], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [99], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1IPG74'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [53], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1IPG74'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [57], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1IPG74'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [44], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1IPG74'}), (b:Copybook {name: 'ZMPG013'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [61], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [107], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [233], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [239], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [245], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [251], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [257], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [269], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [65], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [69], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [73], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [77], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [49], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [263], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [221], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [227], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [97], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [82], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [92], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [87], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF002'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [82], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF002'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [84], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF002'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [114], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF002'}), (b:Copybook {name: 'ZMF0021'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [86], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF002'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [121], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [326], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [333], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [340], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [347], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [354], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [361], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [368], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [88], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [90], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [92], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [94], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [80], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [376], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [312], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [319], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [106], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [97], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [103], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [100], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF002'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [117], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [69], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [73], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [124], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Copybook {name: 'ZMF8901'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [77], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [117], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [265], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [272], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [279], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [286], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [293], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [309], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [81], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [85], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [89], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [93], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [65], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [302], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [251], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [258], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [113], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [98], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [108], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [103], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [130], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB439M'}), (b:DBTable {name: 'SVCTOCB'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [204, 205, 206, 207, 208, 209], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:DBTable {name: 'ACLICTA'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1451, 1452, 1453, 1454, 1455, 1456, 1457, 1458], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:DBTable {name: 'CLIENTE'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1480, 1481, 1482, 1483, 1484, 1485, 1486, 1487], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:DBTable {name: 'CTLPROC'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1306, 1307, 1308, 1309, 1310, 1311, 1312, 1313], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:DBTable {name: 'EDCUENTA'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1395, 1396, 1397, 1398, 1399, 1400], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 615, 616, 617, 618, 619, 620, 621, 622, 1286, 1287, 1288, 1289, 1290, 1291, 1292, 1374, 1375, 1376, 1377, 1378, 1379, 1380, 1593, 1594, 1595, 1596, 1597], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:DBTable {name: 'PERJUR'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1422, 1423, 1424, 1425, 1426, 1427, 1428], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:DBTable {name: 'SUCURSA'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:DBTable {name: 'CTLPROC'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [244, 245, 246, 247, 248, 249, 250, 251], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:DBTable {name: 'EDOPERT1'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [327, 328, 329], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:DBTable {name: 'OPERATE'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [198, 199, 200, 201, 202, 203, 204], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB465M'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1593, 1594, 1595, 1596, 1597, 1611, 1612, 1613, 1614], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:DBTable {name: 'CTLPROC'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [347, 348, 349, 350, 351, 352, 353, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Program {name: 'ECB470M'}), (b:DBTable {name: 'EDOPERT1'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 327, 328, 329], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'ECB439M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [250], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB439M'}), (b:Copybook {name: 'DSVCTOCB'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [138], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB439M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [131], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB439M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [121], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB439M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [125], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '000-0100-INICIO', programName: 'ECB465M'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [656], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'ECB465M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [638], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '030-0100-INICIO', programName: 'ECB465M'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [822], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '500-0100-INICIO', programName: 'ECB465M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1228], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '510-0100-INICIO', programName: 'ECB465M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1299], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '515-0100-INICIO', programName: 'ECB465M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1318], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '530-0100-INICIO', programName: 'ECB465M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1359], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '540-0100-INICIO', programName: 'ECB465M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1385], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '550-0100-INICIO', programName: 'ECB465M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1406], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '560-0100-INICIO', programName: 'ECB465M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1435], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '570-0100-INICIO', programName: 'ECB465M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1464], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '580-0100-INICIO', programName: 'ECB465M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1493], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '600-0100-INICIO', programName: 'ECB465M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1516], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '610-0100-INICIO', programName: 'ECB465M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1533], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '630-0100-INICIO', programName: 'ECB465M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1550], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '640-0100-INICIO', programName: 'ECB465M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1567], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '710-DEL-PARAM', programName: 'ECB465M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1602], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '720-9900-FIN', programName: 'ECB465M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1628], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '720-INS-PARAM', programName: 'ECB465M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1619], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '990-099-FIN', programName: 'ECB465M'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1663], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '990-099-FIN', programName: 'ECB465M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [1670], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB465M'}), (b:Copybook {name: 'DACLICTA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [346], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB465M'}), (b:Copybook {name: 'DAGPOPRO'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [359], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB465M'}), (b:Copybook {name: 'DCLIENTE'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [339], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB465M'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [307], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB465M'}), (b:Copybook {name: 'DEDCUENT'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [325], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB465M'}), (b:Copybook {name: 'DEDREPER'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [352], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB465M'}), (b:Copybook {name: 'DESTZONE'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [314], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB465M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [300], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB465M'}), (b:Copybook {name: 'DPERJUR'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [332], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB465M'}), (b:Copybook {name: 'DPROMOT'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [366], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB465M'}), (b:Copybook {name: 'DSUCURSA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [373], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB465M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [271], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB465M'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [384], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB465M'}), (b:Copybook {name: 'SIC001'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [289], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB465M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [285], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB465M'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [278], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB465M'}), (b:Copybook {name: 'SIEPAP04'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [257], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB465M'}), (b:Copybook {name: 'SIETATF6'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [264], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB465M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB465M.cbl', evidenceLines: [293], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '515-0100-INICIO', programName: 'ECB470M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [261], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '600-0100-INICIO', programName: 'ECB470M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [305], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '610-0100-INICIO', programName: 'ECB470M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [324, 334], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '635-0100-INICIO', programName: 'ECB470M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [361], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '640-0100-INICIO', programName: 'ECB470M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [407], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '640-9900-FIN', programName: 'ECB470M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [417], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'ECB470M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [454], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB470M'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [121], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB470M'}), (b:Copybook {name: 'DEDOPERT'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [114], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB470M'}), (b:Copybook {name: 'DOPERATE'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [107], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB470M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [128], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB470M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [89], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB470M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [95], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB470M'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [179], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB470M'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [138], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB470M'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [82], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB470M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [99], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [143], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [119], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [148], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [181], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [191], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [204], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [233], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [209, 239], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [245], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [251], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [257], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [269], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [263], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [221], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [227], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1IPG74'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [53], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1IPG74'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [57], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1IPG74'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [44], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1IPG74'}), (b:Copybook {name: 'ZMPG013'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [61], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [107], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [65], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [69], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [73], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [77], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [49], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [97], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [82], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [92], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1IPG74'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1IPG74.cbl', evidenceLines: [87], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [151], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '0000-PROCESO', programName: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [174], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [197], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [249], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [267], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [281], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [326], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [293, 333], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [340], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [347], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [354], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [361], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [368], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [376], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [312], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [319], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF002'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [82], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF002'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [84], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF002'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [114], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF002'}), (b:Copybook {name: 'ZMF0021'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [86], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF002'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [121], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [88], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [90], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [92], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [94], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [80], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [106], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [97], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [103], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF002'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [100], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF002'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF002.cbl', evidenceLines: [117], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [186], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [153], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [192], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [206], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [217], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [230], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [265], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [236, 272], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [279], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [286], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [293], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [309], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [302], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [251], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [258], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [69], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [73], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [124], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMF8901'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [77], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [117], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [81], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [85], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [89], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [93], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [65], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [113], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [98], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [108], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [103], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [130], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203316Z-ecb415m-ecb420m-ecb425m-ecb439m-ecb465m-ecb470m-zm1cexci-zm1ipg74-zm1mf002-zm1mf890'};

