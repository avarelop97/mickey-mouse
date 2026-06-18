// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260618T205847Z-zm2cfi01
// ============================================================================

MERGE (n:Copybook {name: 'DFHAID'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [318], ingestion: 'auto', layer: 'dependency', name: 'DFHAID', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DFHBMSCA'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [322], ingestion: 'auto', layer: 'dependency', name: 'DFHBMSCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SQLCA'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [285], ingestion: 'auto', layer: 'dependency', name: 'SQLCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZCTLPROC'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [301], ingestion: 'auto', layer: 'dependency', name: 'ZCTLPROC', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZCUENTA'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [293], ingestion: 'auto', layer: 'dependency', name: 'ZCUENTA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMGII11'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [326], ingestion: 'auto', layer: 'dependency', name: 'ZMGII11', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMGII12'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [538], ingestion: 'auto', layer: 'dependency', name: 'ZMGII12', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMGII13'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [589], ingestion: 'auto', layer: 'dependency', name: 'ZMGII13', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMGII14'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [630], ingestion: 'auto', layer: 'dependency', name: 'ZMGII14', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMGII15'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [681], ingestion: 'auto', layer: 'dependency', name: 'ZMGII15', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMGII16'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [753], ingestion: 'auto', layer: 'dependency', name: 'ZMGII16', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMGII17'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [795], ingestion: 'auto', layer: 'dependency', name: 'ZMGII17', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWBV492'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [893], ingestion: 'auto', layer: 'dependency', name: 'ZMWBV492', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWCOM11'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [993], ingestion: 'auto', layer: 'dependency', name: 'ZMWCOM11', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC002'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4339], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC002', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC003'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4345], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC003', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC004'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4351], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC004', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC005'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4357], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC005', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC006'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4363], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC006', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC008'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4369], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC008', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC009'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4382], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC009', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC010'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [897], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC010', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC011'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [847], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC011', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC012'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [851], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC012', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC013'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [855], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC013', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC014'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [859], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC014', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC015'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4376], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC015', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC016'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4318], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC016', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC017'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [861], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC017', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSCOM0'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4326], ingestion: 'auto', layer: 'dependency', name: 'ZMWSCOM0', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSCOM1'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4333], ingestion: 'auto', layer: 'dependency', name: 'ZMWSCOM1', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSG532'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [889], ingestion: 'auto', layer: 'dependency', name: 'ZMWSG532', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSR009'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [874], ingestion: 'auto', layer: 'dependency', name: 'ZMWSR009', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSR055'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [866], ingestion: 'auto', layer: 'dependency', name: 'ZMWSR055', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSR415'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [900], ingestion: 'auto', layer: 'dependency', name: 'ZMWSR415', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSR432'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [884], ingestion: 'auto', layer: 'dependency', name: 'ZMWSR432', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSRARM'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [910], ingestion: 'auto', layer: 'dependency', name: 'ZMWSRARM', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSRPRC'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [905], ingestion: 'auto', layer: 'dependency', name: 'ZMWSRPRC', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSX090'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [869], ingestion: 'auto', layer: 'dependency', name: 'ZMWSX090', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSZ403'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [879], ingestion: 'auto', layer: 'dependency', name: 'ZMWSZ403', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZPARAM'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [297], ingestion: 'auto', layer: 'dependency', name: 'ZPARAM', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZZMDT609'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [309], ingestion: 'auto', layer: 'dependency', name: 'ZZMDT609', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZZMDT800'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [305], ingestion: 'auto', layer: 'dependency', name: 'ZZMDT800', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZZMDTCFI'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [289], ingestion: 'auto', layer: 'dependency', name: 'ZZMDTCFI', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZZMDTLOG'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [313], ingestion: 'auto', layer: 'dependency', name: 'ZZMDTLOG', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', viewTag: 'dependency'};

MERGE (n:DBTable {name: 'CTLPROC'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [2776, 2777, 2778, 2779, 2780, 2781, 2782, 2783, 2784, 2785, 2786, 3283, 3284, 3285, 3286, 3287, 3288, 3289], ingestion: 'auto', layer: 'data-access', name: 'CTLPROC', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'CUENTA'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [1719, 1720, 1721, 1722, 1723, 1724, 1725], ingestion: 'auto', layer: 'data-access', name: 'CUENTA', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'PARAM'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [2423, 2424, 2425, 2426, 2427, 2428, 2434, 2435, 2436, 2437, 2438, 2439, 2440, 2441, 2477, 2478, 2479, 2480, 2481], ingestion: 'auto', layer: 'data-access', name: 'PARAM', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'ZMDT609'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [1926, 1927, 1928, 1929, 1930, 1931], ingestion: 'auto', layer: 'data-access', name: 'ZMDT609', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'ZMDT800'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [1952, 1953, 1954, 1955, 1956, 1957, 1958, 1959], ingestion: 'auto', layer: 'data-access', name: 'ZMDT800', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'ZMDTCFI'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934, 3156, 3157, 3158, 3159, 3160, 3161, 3162, 3163, 3164, 3165, 3166, 3167, 3168, 3169, 3170, 3171], ingestion: 'auto', layer: 'data-access', name: 'ZMDTCFI', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'ZMDTLOG'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [2698, 2699, 2700, 2701, 2702, 2703, 2704, 2705, 2706, 2707, 2708, 2709, 2710, 2711, 2712, 2713, 2714, 2715, 2716, 2717, 2718, 2719, 2720, 2721, 2722, 2723, 2724, 2725, 2726, 2727, 2728, 2746, 2747, 2748, 2749, 2750, 2751, 2752], ingestion: 'auto', layer: 'data-access', name: 'ZMDTLOG', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', viewTag: 'data-access'};

MERGE (n:Paragraph {name: '0000-INICIO', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [1044], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0000-INICIO', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Inicializa el flujo operativo de ZM2CFI01, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1050-OBTENER-FECHA', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [1103], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1050-OBTENER-FECHA', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM2CFI01 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1100-VALIDA-EVENTO', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [1124], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1100-VALIDA-EVENTO', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Orquesta una fase funcional de ZM2CFI01, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1200-DETECTA-ERROR', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [1143], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1200-DETECTA-ERROR', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Gestiona contingencias en ZM2CFI01, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1400-VALIDA-ESTADO1', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [1176], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1400-VALIDA-ESTADO1', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Orquesta una fase funcional de ZM2CFI01, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1405-VALIDA-SELECCION', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [1454], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1405-VALIDA-SELECCION', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Orquesta una fase funcional de ZM2CFI01, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1406-GUARDA-SELECCION', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [1489], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1406-GUARDA-SELECCION', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Orquesta una fase funcional de ZM2CFI01, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1407-VALIDA-MOTIVO', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [1571], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1407-VALIDA-MOTIVO', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Orquesta una fase funcional de ZM2CFI01, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1410-VALIDA-DATOS', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [1619], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1410-VALIDA-DATOS', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Orquesta una fase funcional de ZM2CFI01, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1450-GENERAR-ARREGLO', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [1731], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1450-GENERAR-ARREGLO', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Orquesta una fase funcional de ZM2CFI01, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1455-FETCH-CURCFI', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [1767], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1455-FETCH-CURCFI', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Orquesta una fase funcional de ZM2CFI01, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1456-GUARDA-REGISTRO', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [1799], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1456-GUARDA-REGISTRO', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Orquesta una fase funcional de ZM2CFI01, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1456-OBTENER-DESCRIPCION', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [1896], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1456-OBTENER-DESCRIPCION', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM2CFI01 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1458-OBTIENE-CONTRATO', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [1915], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1458-OBTIENE-CONTRATO', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Orquesta una fase funcional de ZM2CFI01, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1460-VALIDA-COMBINADO', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [2040], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1460-VALIDA-COMBINADO', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Orquesta una fase funcional de ZM2CFI01, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1470-MUESTRA-REGISTROS', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [2251], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1470-MUESTRA-REGISTROS', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Orquesta una fase funcional de ZM2CFI01, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1480-LEER-SELECCION', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [2271], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1480-LEER-SELECCION', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM2CFI01 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1500-VALIDA-ESTADO2', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [2322], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1500-VALIDA-ESTADO2', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Orquesta una fase funcional de ZM2CFI01, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1520-GENERA-PARAM', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [2349], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1520-GENERA-PARAM', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Orquesta una fase funcional de ZM2CFI01, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1525-GENERA-LOG', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [2500], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1525-GENERA-LOG', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Orquesta una fase funcional de ZM2CFI01, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1526-SELECT-LOG', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [2649], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1526-SELECT-LOG', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Orquesta una fase funcional de ZM2CFI01, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1526-VALIDA-COMBINADO', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [2587], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1526-VALIDA-COMBINADO', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Orquesta una fase funcional de ZM2CFI01, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1527-INSERT-LOG', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [2674], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1527-INSERT-LOG', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Persiste actualizaciones de negocio en ZM2CFI01, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1528-DELETE-ZMDTLOG', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [2735], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1528-DELETE-ZMDTLOG', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Orquesta una fase funcional de ZM2CFI01, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1530-GENERA-EVENTO', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [2757], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1530-GENERA-EVENTO', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Orquesta una fase funcional de ZM2CFI01, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1540-SUBMITE-PROCESO', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [2791], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1540-SUBMITE-PROCESO', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Orquesta una fase funcional de ZM2CFI01, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1550-GUARDAR-REGISTROS', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [2862], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1550-GUARDAR-REGISTROS', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Orquesta una fase funcional de ZM2CFI01, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1600-VALIDA-ESTADO3', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [2986], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1600-VALIDA-ESTADO3', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Orquesta una fase funcional de ZM2CFI01, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1610-GENERAR-ARREGLO', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3068], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1610-GENERAR-ARREGLO', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Orquesta una fase funcional de ZM2CFI01, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1620-FETCH-CANCELA', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3103], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1620-FETCH-CANCELA', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Orquesta una fase funcional de ZM2CFI01, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1621-CONSULTA-ZMDTCFI', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3149], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1621-CONSULTA-ZMDTCFI', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM2CFI01 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1622-GUARDA-REGISTRO', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3176], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1622-GUARDA-REGISTRO', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Orquesta una fase funcional de ZM2CFI01, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1623-OBTIENE-MOTIVO', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3200], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1623-OBTIENE-MOTIVO', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Orquesta una fase funcional de ZM2CFI01, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1700-VALIDA-ESTADO4', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3250], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1700-VALIDA-ESTADO4', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Orquesta una fase funcional de ZM2CFI01, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1710-ACTUALIZA-EVENTO', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3271], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1710-ACTUALIZA-EVENTO', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Persiste actualizaciones de negocio en ZM2CFI01, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '4300-PAGINA-ESTADO', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3294], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '4300-PAGINA-ESTADO', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Orquesta una fase funcional de ZM2CFI01, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '4310-LIMPIA-PANTALLA', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3409], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '4310-LIMPIA-PANTALLA', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Orquesta una fase funcional de ZM2CFI01, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8000-GRABA-REG-QUEUE', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4218], executionOrder: 5100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8000-GRABA-REG-QUEUE', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Persiste actualizaciones de negocio en ZM2CFI01, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8010-GRABA-REG-QUEUE2', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4231], executionOrder: 5200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8010-GRABA-REG-QUEUE2', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Persiste actualizaciones de negocio en ZM2CFI01, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8020-BORRA-QUEUE', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4245], executionOrder: 5300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8020-BORRA-QUEUE', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Orquesta una fase funcional de ZM2CFI01, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8021-BORRA-QUEUE2', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4256], executionOrder: 5400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8021-BORRA-QUEUE2', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Orquesta una fase funcional de ZM2CFI01, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8040-ACT-QUEUE', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4267], executionOrder: 5500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8040-ACT-QUEUE', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Orquesta una fase funcional de ZM2CFI01, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8041-ACT-QUEUE2', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4279], executionOrder: 5600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8041-ACT-QUEUE2', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Orquesta una fase funcional de ZM2CFI01, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8050-LEE-QUEUE', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4291], executionOrder: 5700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8050-LEE-QUEUE', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM2CFI01 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8051-LEE-QUEUE2', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4301], executionOrder: 5800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8051-LEE-QUEUE2', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM2CFI01 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8100-ENVIA-PANTALLA', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3453], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8100-ENVIA-PANTALLA', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Orquesta una fase funcional de ZM2CFI01, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8110-RECIBE-PANTALLA', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3706], executionOrder: 3900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8110-RECIBE-PANTALLA', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Orquesta una fase funcional de ZM2CFI01, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8111-RECIBE-MAPA1', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3726], executionOrder: 4000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8111-RECIBE-MAPA1', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Orquesta una fase funcional de ZM2CFI01, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8112-RECIBE-MAPA2', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3842], executionOrder: 4100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8112-RECIBE-MAPA2', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Orquesta una fase funcional de ZM2CFI01, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8113-RECIBE-MAPA3', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3859], executionOrder: 4200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8113-RECIBE-MAPA3', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Orquesta una fase funcional de ZM2CFI01, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8114-RECIBE-MAPA4', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3876], executionOrder: 4300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8114-RECIBE-MAPA4', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Orquesta una fase funcional de ZM2CFI01, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8115-RECIBE-MAPA5', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3893], executionOrder: 4400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8115-RECIBE-MAPA5', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Orquesta una fase funcional de ZM2CFI01, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8116-RECIBE-MAPA6', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3923], executionOrder: 4500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8116-RECIBE-MAPA6', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Orquesta una fase funcional de ZM2CFI01, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8117-RECIBE-MAPA7', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3940], executionOrder: 4600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8117-RECIBE-MAPA7', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Orquesta una fase funcional de ZM2CFI01, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8120-INFORMACION-ENCABEZADOS', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3995], executionOrder: 4800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8120-INFORMACION-ENCABEZADOS', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Orquesta una fase funcional de ZM2CFI01, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8200-GENERA-ESTADO', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3984], executionOrder: 4700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8200-GENERA-ESTADO', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Orquesta una fase funcional de ZM2CFI01, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8210-ARMA-PAGINA', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4042], executionOrder: 4900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8210-ARMA-PAGINA', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Orquesta una fase funcional de ZM2CFI01, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8211-VALIDA-GRABADOS', programName: 'ZM2CFI01'})
SET n += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4191], executionOrder: 5000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8211-VALIDA-GRABADOS', nodeType: 'process-step', programName: 'ZM2CFI01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', summary: 'Persiste actualizaciones de negocio en ZM2CFI01, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Program {name: 'ZM2CFI01'})
SET n += {ingestion: 'auto', layer: 'program', name: 'ZM2CFI01', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01', sourceFile: 'src/ZM2CFI01.cbl', viewTag: 'program'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '0000-INICIO', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [1044], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '1050-OBTENER-FECHA', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [1103], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '1100-VALIDA-EVENTO', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [1124], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '1200-DETECTA-ERROR', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [1143], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '1400-VALIDA-ESTADO1', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [1176], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '1405-VALIDA-SELECCION', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [1454], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '1406-GUARDA-SELECCION', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [1489], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '1407-VALIDA-MOTIVO', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [1571], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '1410-VALIDA-DATOS', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [1619], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '1450-GENERAR-ARREGLO', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [1731], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '1455-FETCH-CURCFI', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [1767], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '1456-GUARDA-REGISTRO', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [1799], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '1456-OBTENER-DESCRIPCION', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [1896], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '1458-OBTIENE-CONTRATO', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [1915], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '1460-VALIDA-COMBINADO', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [2040], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '1470-MUESTRA-REGISTROS', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [2251], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '1480-LEER-SELECCION', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [2271], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '1500-VALIDA-ESTADO2', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [2322], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '1520-GENERA-PARAM', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [2349], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '1525-GENERA-LOG', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [2500], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '1526-SELECT-LOG', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [2649], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '1526-VALIDA-COMBINADO', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [2587], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '1527-INSERT-LOG', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [2674], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '1528-DELETE-ZMDTLOG', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [2735], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '1530-GENERA-EVENTO', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [2757], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '1540-SUBMITE-PROCESO', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [2791], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '1550-GUARDAR-REGISTROS', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [2862], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '1600-VALIDA-ESTADO3', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [2986], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '1610-GENERAR-ARREGLO', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3068], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '1620-FETCH-CANCELA', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3103], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '1621-CONSULTA-ZMDTCFI', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3149], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '1622-GUARDA-REGISTRO', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3176], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '1623-OBTIENE-MOTIVO', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3200], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '1700-VALIDA-ESTADO4', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3250], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '1710-ACTUALIZA-EVENTO', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3271], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '4300-PAGINA-ESTADO', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3294], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '4310-LIMPIA-PANTALLA', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3409], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '8000-GRABA-REG-QUEUE', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4218], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '8010-GRABA-REG-QUEUE2', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4231], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '8020-BORRA-QUEUE', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4245], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '8021-BORRA-QUEUE2', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4256], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '8040-ACT-QUEUE', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4267], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '8041-ACT-QUEUE2', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4279], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '8050-LEE-QUEUE', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4291], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '8051-LEE-QUEUE2', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4301], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '8100-ENVIA-PANTALLA', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3453], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '8110-RECIBE-PANTALLA', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3706], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '8111-RECIBE-MAPA1', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3726], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '8112-RECIBE-MAPA2', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3842], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '8113-RECIBE-MAPA3', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3859], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '8114-RECIBE-MAPA4', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3876], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '8115-RECIBE-MAPA5', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3893], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '8116-RECIBE-MAPA6', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3923], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '8117-RECIBE-MAPA7', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3940], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '8120-INFORMACION-ENCABEZADOS', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3995], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '8200-GENERA-ESTADO', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3984], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '8210-ARMA-PAGINA', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4042], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Paragraph {name: '8211-VALIDA-GRABADOS', programName: 'ZM2CFI01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4191], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [1045], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '1050-OBTENER-FECHA', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [1116], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '1100-VALIDA-EVENTO', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [1140], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '1400-VALIDA-ESTADO1', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [1279, 1287, 1295, 1303, 1311, 1319, 1327, 1338, 1346, 1354, 1362, 1370, 1378, 1386], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '1410-VALIDA-DATOS', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [1727], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '1450-GENERAR-ARREGLO', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [1748, 1764], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '1455-FETCH-CURCFI', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [1795], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '1456-OBTENER-DESCRIPCION', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [1911], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '1458-OBTIENE-CONTRATO', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [1989], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '1458-OBTIENE-CONTRATO', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [1933, 1961], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '1520-GENERA-PARAM', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [2430, 2443, 2472], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '1526-SELECT-LOG', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [2670], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '1527-INSERT-LOG', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [2731], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '1528-DELETE-ZMDTLOG', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [2754], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '1530-GENERA-EVENTO', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [2788], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '1540-SUBMITE-PROCESO', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [2822, 2851], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '1540-SUBMITE-PROCESO', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [2826, 2853], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '1600-VALIDA-ESTADO3', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3035, 3046], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '1610-GENERAR-ARREGLO', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3088, 3100], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '1620-FETCH-CANCELA', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3145], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '1621-CONSULTA-ZMDTCFI', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3173], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '1623-OBTIENE-MOTIVO', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3232], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '1710-ACTUALIZA-EVENTO', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3291], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '8040-ACT-QUEUE', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4277], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '8041-ACT-QUEUE2', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4289], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '8051-LEE-QUEUE2', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4339], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '8051-LEE-QUEUE2', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4345], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '8051-LEE-QUEUE2', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4351], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '8051-LEE-QUEUE2', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4357], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '8051-LEE-QUEUE2', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4363], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '8051-LEE-QUEUE2', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4369], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '8051-LEE-QUEUE2', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4382], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '8051-LEE-QUEUE2', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4376], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '8051-LEE-QUEUE2', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC016'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4318], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '8051-LEE-QUEUE2', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4326], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '8051-LEE-QUEUE2', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4333], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '8100-ENVIA-PANTALLA', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3508], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '8100-ENVIA-PANTALLA', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3704], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '8111-RECIBE-MAPA1', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3738, 3812, 3818], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '8111-RECIBE-MAPA1', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC016'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3746, 3767, 3787], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '8112-RECIBE-MAPA2', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3854], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '8113-RECIBE-MAPA3', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3871], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '8114-RECIBE-MAPA4', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3888], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '8115-RECIBE-MAPA5', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3905], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '8116-RECIBE-MAPA6', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3935], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '8117-RECIBE-MAPA7', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3952], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '8120-INFORMACION-ENCABEZADOS', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3996], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [318], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [322], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [285], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Copybook {name: 'ZCTLPROC'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [301], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Copybook {name: 'ZCUENTA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [293], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Copybook {name: 'ZMGII11'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [326], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Copybook {name: 'ZMGII12'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [538], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Copybook {name: 'ZMGII13'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [589], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Copybook {name: 'ZMGII14'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [630], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Copybook {name: 'ZMGII15'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [681], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Copybook {name: 'ZMGII16'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [753], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Copybook {name: 'ZMGII17'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [795], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWBV492'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [893], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [993], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4339], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4345], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4351], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4357], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4363], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4369], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4382], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [897], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [847], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [851], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [855], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [859], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4376], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC016'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4318], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC017'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [861], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4326], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4333], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [889], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [874], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSR055'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [866], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSR415'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [900], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [884], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSRARM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [910], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSRPRC'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [905], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSX090'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [869], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [879], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [297], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Copybook {name: 'ZZMDT609'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [309], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Copybook {name: 'ZZMDT800'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [305], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Copybook {name: 'ZZMDTCFI'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [289], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:Copybook {name: 'ZZMDTLOG'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [313], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:DBTable {name: 'CTLPROC'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [1132, 1133, 1134, 1135, 1136, 1137, 1138], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:DBTable {name: 'CUENTA'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [1719, 1720, 1721, 1722, 1723, 1724, 1725], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [936, 937, 938, 939, 940, 941, 942, 943, 944, 1109, 1110, 1111, 1112, 1113, 1114, 1903, 1904, 1905, 1906, 1907, 1908, 1909, 2393, 2394, 2395, 2396, 2397, 2398, 2399, 2400, 2401, 2462, 2463, 2464, 2465, 2466, 2467, 2468, 2469, 2470, 2477, 2478, 2479, 2480, 2481], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:DBTable {name: 'ZMDT609'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [1926, 1927, 1928, 1929, 1930, 1931], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:DBTable {name: 'ZMDT800'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [1952, 1953, 1954, 1955, 1956, 1957, 1958, 1959], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:DBTable {name: 'ZMDTCFI'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934, 3156, 3157, 3158, 3159, 3160, 3161, 3162, 3163, 3164, 3165, 3166, 3167, 3168, 3169, 3170, 3171], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:DBTable {name: 'ZMDTLOG'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [2659, 2660, 2661, 2662, 2663, 2664, 2665, 2666, 2667, 2746, 2747, 2748, 2749, 2750, 2751, 2752, 3216, 3217, 3218, 3219, 3220, 3221, 3222, 3223, 3224, 3225, 3226, 3227, 3228, 3229, 3230], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:DBTable {name: 'CTLPROC'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [2776, 2777, 2778, 2779, 2780, 2781, 2782, 2783, 2784, 2785, 2786, 3283, 3284, 3285, 3286, 3287, 3288, 3289], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [2423, 2424, 2425, 2426, 2427, 2428, 2434, 2435, 2436, 2437, 2438, 2439, 2440, 2441, 2477, 2478, 2479, 2480, 2481], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Program {name: 'ZM2CFI01'}), (b:DBTable {name: 'ZMDTLOG'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [2698, 2699, 2700, 2701, 2702, 2703, 2704, 2705, 2706, 2707, 2708, 2709, 2710, 2711, 2712, 2713, 2714, 2715, 2716, 2717, 2718, 2719, 2720, 2721, 2722, 2723, 2724, 2725, 2726, 2727, 2728, 2746, 2747, 2748, 2749, 2750, 2751, 2752], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [1045], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '1050-OBTENER-FECHA', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [1116], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '1100-VALIDA-EVENTO', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [1140], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '1400-VALIDA-ESTADO1', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [1279, 1287, 1295, 1303, 1311, 1319, 1327, 1338, 1346, 1354, 1362, 1370, 1378, 1386], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '1410-VALIDA-DATOS', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [1727], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '1450-GENERAR-ARREGLO', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [1748, 1764], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '1455-FETCH-CURCFI', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [1795], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '1456-OBTENER-DESCRIPCION', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [1911], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '1458-OBTIENE-CONTRATO', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [1989], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '1458-OBTIENE-CONTRATO', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [1933, 1961], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '1520-GENERA-PARAM', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [2430, 2443, 2472], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '1526-SELECT-LOG', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [2670], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '1527-INSERT-LOG', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [2731], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '1528-DELETE-ZMDTLOG', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [2754], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '1530-GENERA-EVENTO', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [2788], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '1540-SUBMITE-PROCESO', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [2822, 2851], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '1540-SUBMITE-PROCESO', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [2826, 2853], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '1600-VALIDA-ESTADO3', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3035, 3046], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '1610-GENERAR-ARREGLO', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3088, 3100], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '1620-FETCH-CANCELA', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3145], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '1621-CONSULTA-ZMDTCFI', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3173], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '1623-OBTIENE-MOTIVO', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3232], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '1710-ACTUALIZA-EVENTO', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3291], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '8040-ACT-QUEUE', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4277], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '8041-ACT-QUEUE2', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4289], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '8051-LEE-QUEUE2', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4339], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '8051-LEE-QUEUE2', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4345], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '8051-LEE-QUEUE2', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4351], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '8051-LEE-QUEUE2', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4357], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '8051-LEE-QUEUE2', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4363], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '8051-LEE-QUEUE2', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4369], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '8051-LEE-QUEUE2', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4382], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '8051-LEE-QUEUE2', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4376], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '8051-LEE-QUEUE2', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC016'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4318], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '8051-LEE-QUEUE2', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4326], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '8051-LEE-QUEUE2', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [4333], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '8100-ENVIA-PANTALLA', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3508], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '8100-ENVIA-PANTALLA', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3704], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '8111-RECIBE-MAPA1', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3738, 3812, 3818], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '8111-RECIBE-MAPA1', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC016'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3746, 3767, 3787], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '8112-RECIBE-MAPA2', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3854], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '8113-RECIBE-MAPA3', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3871], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '8114-RECIBE-MAPA4', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3888], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '8115-RECIBE-MAPA5', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3905], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '8116-RECIBE-MAPA6', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3935], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '8117-RECIBE-MAPA7', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3952], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

MATCH (a:Paragraph {name: '8120-INFORMACION-ENCABEZADOS', programName: 'ZM2CFI01'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CFI01.cbl', evidenceLines: [3996], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205847Z-zm2cfi01'};

