// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m
// ============================================================================

MERGE (n:Copybook {name: 'DAGPOCON'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [257], ingestion: 'auto', layer: 'dependency', name: 'DAGPOCON', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DAGPOCTA'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [457], ingestion: 'auto', layer: 'dependency', name: 'DAGPOCTA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB390M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DAGPOPRO'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [187], ingestion: 'auto', layer: 'dependency', name: 'DAGPOPRO', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DCARTERA'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [251], ingestion: 'auto', layer: 'dependency', name: 'DCARTERA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DCONCEPT'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [267], ingestion: 'auto', layer: 'dependency', name: 'DCONCEPT', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DCTLPROC'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [582], ingestion: 'auto', layer: 'dependency', name: 'DCTLPROC', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB340M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DCUENTA'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [241], ingestion: 'auto', layer: 'dependency', name: 'DCUENTA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DEDCONT'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [119], ingestion: 'auto', layer: 'dependency', name: 'DEDCONT', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB400M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DEDCUENT'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [193], ingestion: 'auto', layer: 'dependency', name: 'DEDCUENT', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DEDDESOP'})
SET n += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [285], ingestion: 'auto', layer: 'dependency', name: 'DEDDESOP', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB395M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DEDMOVED'})
SET n += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [279], ingestion: 'auto', layer: 'dependency', name: 'DEDMOVED', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB395M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DEDREPER'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [308], ingestion: 'auto', layer: 'dependency', name: 'DEDREPER', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DEDVALCA'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [277], ingestion: 'auto', layer: 'dependency', name: 'DEDVALCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DGPOCONC'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [262], ingestion: 'auto', layer: 'dependency', name: 'DGPOCONC', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DOPERA'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [246], ingestion: 'auto', layer: 'dependency', name: 'DOPERA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DPARAM'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [181], ingestion: 'auto', layer: 'dependency', name: 'DPARAM', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DSEPRULT'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [272], ingestion: 'auto', layer: 'dependency', name: 'DSEPRULT', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2CE028'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [978], ingestion: 'auto', layer: 'dependency', name: 'SI2CE028', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2CM026'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [809], ingestion: 'auto', layer: 'dependency', name: 'SI2CM026', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2FH027'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [151], ingestion: 'auto', layer: 'dependency', name: 'SI2FH027', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2R1025'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [199], ingestion: 'auto', layer: 'dependency', name: 'SI2R1025', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC000'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [301], ingestion: 'auto', layer: 'dependency', name: 'SIC000', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC004'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [778], ingestion: 'auto', layer: 'dependency', name: 'SIC004', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC005'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [155], ingestion: 'auto', layer: 'dependency', name: 'SIC005', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICAM029'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [169], ingestion: 'auto', layer: 'dependency', name: 'SICAM029', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICCE028'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [1004], ingestion: 'auto', layer: 'dependency', name: 'SICCE028', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB350M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICCE029'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [819], ingestion: 'auto', layer: 'dependency', name: 'SICCE029', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICCM026'})
SET n += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [455], ingestion: 'auto', layer: 'dependency', name: 'SICCM026', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB380M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICFH027'})
SET n += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [138], ingestion: 'auto', layer: 'dependency', name: 'SICFH027', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB380M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICFP024'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [383], ingestion: 'auto', layer: 'dependency', name: 'SICFP024', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICIP023'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [367], ingestion: 'auto', layer: 'dependency', name: 'SICIP023', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICNC011'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [175], ingestion: 'auto', layer: 'dependency', name: 'SICNC011', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICR1025'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [196], ingestion: 'auto', layer: 'dependency', name: 'SICR1025', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB350M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICVS011'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [162], ingestion: 'auto', layer: 'dependency', name: 'SICVS011', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIEPAP05'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [119], ingestion: 'auto', layer: 'dependency', name: 'SIEPAP05', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIETATF6'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [144], ingestion: 'auto', layer: 'dependency', name: 'SIETATF6', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIXAB001'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [239], ingestion: 'auto', layer: 'dependency', name: 'SIXAB001', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB385M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIXAB002'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [934], ingestion: 'auto', layer: 'dependency', name: 'SIXAB002', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB385M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SQLCA'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [144], ingestion: 'auto', layer: 'dependency', name: 'SQLCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', viewTag: 'dependency'};

MERGE (n:DBTable {name: 'CARTERA'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396], ingestion: 'auto', layer: 'data-access', name: 'CARTERA', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'CTLPROC'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [928, 929, 930, 931, 932, 933, 934, 954, 955, 956, 957, 958, 959, 960, 961, 962, 963, 964, 965, 966, 967, 968, 969, 970, 971, 972, 973, 974, 975, 976, 977, 978, 979, 980], ingestion: 'auto', layer: 'data-access', name: 'CTLPROC', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB340M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'CUENTA'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 768, 769, 770, 771, 772, 773, 774, 775, 776, 777, 778, 779, 780], ingestion: 'auto', layer: 'data-access', name: 'CUENTA', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB340M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'EDCONT'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [146, 147, 148, 149, 150, 151, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184], ingestion: 'auto', layer: 'data-access', name: 'EDCONT', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB400M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'EDCUENTA'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184], ingestion: 'auto', layer: 'data-access', name: 'EDCUENTA', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB400M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'EDMOVED'})
SET n += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352], ingestion: 'auto', layer: 'data-access', name: 'EDMOVED', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB395M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'EDREPER'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 328, 329, 330, 331, 332, 334, 335, 340, 341, 342, 343, 344, 345, 346, 347, 348, 351, 353, 354, 355, 356, 357, 360, 361], ingestion: 'auto', layer: 'data-access', name: 'EDREPER', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'EDVALCA'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447], ingestion: 'auto', layer: 'data-access', name: 'EDVALCA', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'PARAM'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 328, 329, 330, 331, 332, 334, 335, 340, 341, 342, 343, 344, 345, 346, 347, 348, 351, 353, 354, 355, 356, 357, 360, 361, 566, 567, 568, 569, 570, 571], ingestion: 'auto', layer: 'data-access', name: 'PARAM', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'SEPRULT'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [861, 862, 863, 864, 865, 866, 867, 868, 869], ingestion: 'auto', layer: 'data-access', name: 'SEPRULT', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', viewTag: 'data-access'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_ECB330M'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que ejecuta procesos. Pertenece a: PROGRAM-ID. ECB330M. INSTALLATION. BBV PROBURSA, S.A. DE C.V. REPORTE DE LOS PRECIOS.', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_ECB330M', nodeType: 'business-function', objective: 'Capacidad funcional principal de ECB330M.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_ECB340M'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que ejecuta procesos. Pertenece a: BBV PROBURSA, S.A. DE C.V. 11/SEP/97. /.', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_ECB340M', nodeType: 'business-function', objective: 'Capacidad funcional principal de ECB340M.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB340M.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_ECB350M'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que generar reporte de control de estados de cuenta impresos y no impresos. Pertenece a: PROBURSA, S.A. DE C.V. 07/OCT/97. /.', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_ECB350M', nodeType: 'business-function', objective: 'GENERAR REPORTE DE CONTROL DE ESTADOS DE CUENTA IMPRESOS Y NO IMPRESOS', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB350M.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_ECB360M'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que clasificar los intereses cobrados mensuales, para efectos de conciliacion. metodo : se creo un query accesando 3 tablas de la base de datos mediante un join, mismo etc, etc. tablas accesadas : desarsvp.edmoved t1 desarsvp.eddesop t2 desarsvp.agpocta t3. Pertenece a: PROGRAM-ID. ECB360M. INSTALLATION. PROBURSA, S.A. DE C.V..', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_ECB360M', nodeType: 'business-function', objective: 'CLASIFICAR LOS INTERESES COBRADOS MENSUALES, PARA EFECTOS DE CONCILIACION. METODO : SE CREO UN QUERY ACCESANDO 3 TABLAS DE LA BASE DE DATOS MEDIANTE UN JOIN, MISMO ETC, ETC. TABLAS ACCESADAS : DESARSVP.EDMOVED T1 DESARSVP.EDDESOP T2 DESARSVP.AGPOCTA T3', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB360M.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_ECB380M'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que clasificar los intereses pagados mensuales, para efectos de conciliacion. metodo : se creo un query accesando 3 tablas de la base de datos mediante un join, mismo etc, etc. tablas accesadas : desarsvp.edmoved t1 desarsvp.eddesop t2 desarsvp.agpocta t3. Pertenece a: PROGRAM-ID. ECB380M. INSTALLATION. PROBURSA, S.A. DE C.V..', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_ECB380M', nodeType: 'business-function', objective: 'CLASIFICAR LOS INTERESES PAGADOS MENSUALES, PARA EFECTOS DE CONCILIACION. METODO : SE CREO UN QUERY ACCESANDO 3 TABLAS DE LA BASE DE DATOS MEDIANTE UN JOIN, MISMO ETC, ETC. TABLAS ACCESADAS : DESARSVP.EDMOVED T1 DESARSVP.EDDESOP T2 DESARSVP.AGPOCTA T3', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB380M.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_ECB385M'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que clasificar los intereses cobrados mensuales, para efectos de conciliacion. metodo : se creo un query accesando 3 tablas de la base de datos mediante un join, mismo etc, etc. tablas accesadas : desarsvp.edmoved t1 desarsvp.eddesop t2 desarsvp.agpocta t3. Pertenece a: PROGRAM-ID. ECB385M. INSTALLATION. PROBURSA, S.A. DE C.V..', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_ECB385M', nodeType: 'business-function', objective: 'CLASIFICAR LOS INTERESES COBRADOS MENSUALES, PARA EFECTOS DE CONCILIACION. METODO : SE CREO UN QUERY ACCESANDO 3 TABLAS DE LA BASE DE DATOS MEDIANTE UN JOIN, MISMO ETC, ETC. TABLAS ACCESADAS : DESARSVP.EDMOVED T1 DESARSVP.EDDESOP T2 DESARSVP.AGPOCTA T3', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB385M.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_ECB390M'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que clasificar los intereses pagados mensuales, para efectos de conciliacion. metodo : se creo un query accesando 3 tablas de la base de datos mediante un join, mismo etc, etc. tablas accesadas : desarsvp.edmoved t1 desarsvp.eddesop t2 desarsvp.agpocta t3 modificacion : oscar urbano f. (asateck) f:. Pertenece a: PROGRAM-ID. ECB390M. INSTALLATION. PROBURSA, S.A. DE C.V..', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_ECB390M', nodeType: 'business-function', objective: 'CLASIFICAR LOS INTERESES PAGADOS MENSUALES, PARA EFECTOS DE CONCILIACION. METODO : SE CREO UN QUERY ACCESANDO 3 TABLAS DE LA BASE DE DATOS MEDIANTE UN JOIN, MISMO ETC, ETC. TABLAS ACCESADAS : DESARSVP.EDMOVED T1 DESARSVP.EDDESOP T2 DESARSVP.AGPOCTA T3 MODIFICACION : OSCAR URBANO F. (ASATECK) F:', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB390M.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_ECB395M'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que clasificar las comisiones cobradas mensualmente para efectos de conciliacion. tablas accesadas : desarsvp.edmoved t1 desarsvp.eddesop t2. Pertenece a: PROGRAM-ID. ECB395M. INSTALLATION. BBVA BANCOMER, S.A. DE C.V..', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_ECB395M', nodeType: 'business-function', objective: 'CLASIFICAR LAS COMISIONES COBRADAS MENSUALMENTE PARA EFECTOS DE CONCILIACION. TABLAS ACCESADAS : DESARSVP.EDMOVED T1 DESARSVP.EDDESOP T2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB395M.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_ECB400M'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que actualizar en edcont con simpres = \'s\' los contratos que se encuentran en la param (tt2). Pertenece a: PROBURSA, S.A. DE C.V. 16/JULIO/1998 /.', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_ECB400M', nodeType: 'business-function', objective: 'ACTUALIZAR EN EDCONT CON SIMPRES = \'S\' LOS CONTRATOS QUE SE ENCUENTRAN EN LA PARAM (TT2)', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB400M.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_ECB405M'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que generar reporte de control de estados de cuenta impresos y no impresos ult. modificacion : monica rubio (asateck - feb01) se modifico para que los promotores 66,355 y 215 se incluyeran en el reporte de no impresos ya que no se imprimen los estados de cuenta se accesa a la tabla: edcuenta y param (t99). Pertenece a: PROBURSA, S.A. DE C.V. 07/OCT/99. /.', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_ECB405M', nodeType: 'business-function', objective: 'GENERAR REPORTE DE CONTROL DE ESTADOS DE CUENTA IMPRESOS Y NO IMPRESOS ULT. MODIFICACION : MONICA RUBIO (ASATECK - FEB01) SE MODIFICO PARA QUE LOS PROMOTORES 66,355 Y 215 SE INCLUYERAN EN EL REPORTE DE NO IMPRESOS YA QUE NO SE IMPRIMEN LOS ESTADOS DE CUENTA SE ACCESA A LA TABLA: EDCUENTA Y PARAM (T99)', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', viewTag: 'functional'};

MERGE (n:Paragraph {name: '000-0100-INICIO', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [305], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-0100-INICIO', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Inicializa el flujo operativo de ECB330M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-9900-FIN', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [316], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-9900-FIN', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Cierra la ejecucion de ECB330M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-CONTROL', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [304], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-CONTROL', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Orquesta una fase funcional de ECB330M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-0100-INICIO', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [320], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-0100-INICIO', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Inicializa el flujo operativo de ECB330M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-9900-FIN', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [332], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-9900-FIN', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Cierra la ejecucion de ECB330M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-CHECA-PROCESO', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [319], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-CHECA-PROCESO', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Orquesta una fase funcional de ECB330M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-0100-INICIO', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [353], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-0100-INICIO', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Inicializa el flujo operativo de ECB330M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-9900-FIN', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [371], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-9900-FIN', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Cierra la ejecucion de ECB330M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-INICIO', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [352], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-INICIO', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Inicializa el flujo operativo de ECB330M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-0100-INICIO', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [338], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-0100-INICIO', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Inicializa el flujo operativo de ECB330M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-9900-FIN', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [463], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-9900-FIN', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Cierra la ejecucion de ECB330M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-ABRE-CURSOR-1', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [379], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-ABRE-CURSOR-1', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Orquesta una fase funcional de ECB330M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-ABRE-CURSOR-2', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [421], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-ABRE-CURSOR-2', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Orquesta una fase funcional de ECB330M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-CHECA-FIN-MES', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [337], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-CHECA-FIN-MES', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Cierra la ejecucion de ECB330M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-INICIO', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [422], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-INICIO', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Inicializa el flujo operativo de ECB330M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-0100-INICIO', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [467], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-0100-INICIO', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Inicializa el flujo operativo de ECB330M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-9900-FIN', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [479], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-9900-FIN', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Cierra la ejecucion de ECB330M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-PRINCIPAL', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [466], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-PRINCIPAL', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Orquesta una fase funcional de ECB330M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-0100-INICIO', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [484], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-0100-INICIO', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Inicializa el flujo operativo de ECB330M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-9900-FIN', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [510], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-9900-FIN', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Cierra la ejecucion de ECB330M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-PROCESA-CURSOR', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [483], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-PROCESA-CURSOR', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Orquesta una fase funcional de ECB330M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '160-0100-INICIO', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [515], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '160-0100-INICIO', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Inicializa el flujo operativo de ECB330M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '160-9900-FIN', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [519], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '160-9900-FIN', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Cierra la ejecucion de ECB330M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '160-TERMINA', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [514], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '160-TERMINA', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Cierra la ejecucion de ECB330M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200-0100-INICIO', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [596], executionOrder: 4100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200-0100-INICIO', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Inicializa el flujo operativo de ECB330M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200-9900-FIN', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [646], executionOrder: 4200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200-9900-FIN', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Cierra la ejecucion de ECB330M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200-CONSTRUYE-DETA-1', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [523], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200-CONSTRUYE-DETA-1', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Orquesta una fase funcional de ECB330M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200-CONSTRUYE-DETA-2', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [595], executionOrder: 4000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200-CONSTRUYE-DETA-2', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Orquesta una fase funcional de ECB330M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '210-9900-FIN', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [662], executionOrder: 4500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '210-9900-FIN', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Cierra la ejecucion de ECB330M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '210-INICIO', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [650], executionOrder: 4400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '210-INICIO', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Inicializa el flujo operativo de ECB330M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '210-TOTAL-EMI', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [649], executionOrder: 4300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '210-TOTAL-EMI', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Orquesta una fase funcional de ECB330M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '220-100-INICIO', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [666], executionOrder: 4700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '220-100-INICIO', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Inicializa el flujo operativo de ECB330M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '220-9900-FIN', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [675], executionOrder: 4800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '220-9900-FIN', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Cierra la ejecucion de ECB330M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '220-CORTE-TPO', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [665], executionOrder: 4600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '220-CORTE-TPO', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Orquesta una fase funcional de ECB330M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '230-100-INICIO', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [679], executionOrder: 5000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '230-100-INICIO', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Inicializa el flujo operativo de ECB330M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '230-9900-FIN', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [687], executionOrder: 5100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '230-9900-FIN', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Cierra la ejecucion de ECB330M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '230-CORTE-GPO', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [678], executionOrder: 4900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '230-CORTE-GPO', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Orquesta una fase funcional de ECB330M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '240-100-INICIO', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [691], executionOrder: 5300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '240-100-INICIO', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Inicializa el flujo operativo de ECB330M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '240-9900-FIN', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [699], executionOrder: 5400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '240-9900-FIN', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Cierra la ejecucion de ECB330M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '240-CORTE-CVE', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [690], executionOrder: 5200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '240-CORTE-CVE', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Orquesta una fase funcional de ECB330M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-9900-FIN', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [786], executionOrder: 6000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-9900-FIN', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Cierra la ejecucion de ECB330M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-INICIO', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [746], executionOrder: 5900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-INICIO', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Inicializa el flujo operativo de ECB330M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-LEE-CUR-1', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [706], executionOrder: 5500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-LEE-CUR-1', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB330M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-LEE-CUR-2', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [745], executionOrder: 5800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-LEE-CUR-2', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB330M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '505-0100-INICIO', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [836], executionOrder: 6800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '505-0100-INICIO', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Inicializa el flujo operativo de ECB330M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '505-LEE-PARAM', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [835], executionOrder: 6700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '505-LEE-PARAM', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB330M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '505-LEE-PARAM-FIN', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [853], executionOrder: 6900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '505-LEE-PARAM-FIN', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB330M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-0100-INICIO', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [794], executionOrder: 6200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-0100-INICIO', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Inicializa el flujo operativo de ECB330M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-999-FIN', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [808], executionOrder: 6300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-999-FIN', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Cierra la ejecucion de ECB330M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-LEE-P05', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [793], executionOrder: 6100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-LEE-P05', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB330M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-0100-INICIO', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [815], executionOrder: 6500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-0100-INICIO', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Inicializa el flujo operativo de ECB330M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-999-FIN', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [829], executionOrder: 6600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-999-FIN', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Cierra la ejecucion de ECB330M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-LEE-TF6', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [814], executionOrder: 6400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-LEE-TF6', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB330M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-0100-INICIO', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [860], executionOrder: 7100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-0100-INICIO', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Inicializa el flujo operativo de ECB330M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-LEE-PARAM-FIN', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [881], executionOrder: 7200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-LEE-PARAM-FIN', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB330M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-LEE-SEPRULT', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [859], executionOrder: 7000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-LEE-SEPRULT', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB330M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-0100-INICIO', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [888], executionOrder: 7400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-0100-INICIO', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Inicializa el flujo operativo de ECB330M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-9900-FIN', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [903], executionOrder: 7500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-9900-FIN', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Cierra la ejecucion de ECB330M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-ENCA-R1', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [887], executionOrder: 7300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-ENCA-R1', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Orquesta una fase funcional de ECB330M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '800-0100-INICIO', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [907], executionOrder: 7700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '800-0100-INICIO', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Inicializa el flujo operativo de ECB330M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '800-9900-FIN', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [909], executionOrder: 7800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '800-9900-FIN', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Cierra la ejecucion de ECB330M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '800-CIERRA-ARCHIVO', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [906], executionOrder: 7600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '800-CIERRA-ARCHIVO', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Cierra la ejecucion de ECB330M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '810-9900-FIN', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [930], executionOrder: 8400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '810-9900-FIN', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Cierra la ejecucion de ECB330M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '810-CIERRA-CURSOR-1', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [914], executionOrder: 7900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '810-CIERRA-CURSOR-1', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Cierra la ejecucion de ECB330M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '810-CIERRA-CURSOR-2', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [925], executionOrder: 8200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '810-CIERRA-CURSOR-2', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Cierra la ejecucion de ECB330M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '810-INICIO', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [926], executionOrder: 8300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '810-INICIO', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Inicializa el flujo operativo de ECB330M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-0000-INICIO', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [941], executionOrder: 8600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-0000-INICIO', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Inicializa el flujo operativo de ECB330M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-9900-FIN', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [952], executionOrder: 8700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-9900-FIN', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Cierra la ejecucion de ECB330M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [940], executionOrder: 8500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Gestiona contingencias en ECB330M, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-0100-INICIO', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [956], executionOrder: 8900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-0100-INICIO', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Inicializa el flujo operativo de ECB330M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-9900-FIN', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [964], executionOrder: 9000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-9900-FIN', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Cierra la ejecucion de ECB330M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [955], executionOrder: 8800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Orquesta una fase funcional de ECB330M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [3], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Orquesta una fase funcional de ECB330M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [15], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Orquesta una fase funcional de ECB330M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [5], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Orquesta una fase funcional de ECB330M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [23], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Orquesta una fase funcional de ECB330M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [20], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Orquesta una fase funcional de ECB330M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [19], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Orquesta una fase funcional de ECB330M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [291], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Orquesta una fase funcional de ECB330M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'REMARKS', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [6], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'REMARKS', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Orquesta una fase funcional de ECB330M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [34], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', summary: 'Orquesta una fase funcional de ECB330M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-0100-FIN', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [713], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-0100-FIN', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB340M.cbl', summary: 'Cierra la ejecucion de ECB340M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-0100-INICIO', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [645], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-0100-INICIO', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB340M.cbl', summary: 'Inicializa el flujo operativo de ECB340M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-INICIO', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [644], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-INICIO', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB340M.cbl', summary: 'Inicializa el flujo operativo de ECB340M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-LEE-PARAMP04', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [717], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-LEE-PARAMP04', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB340M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB340M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-LEE-PARAMP04-FIN', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [726], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-LEE-PARAMP04-FIN', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB340M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB340M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '515-0100-INICIO', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [787], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '515-0100-INICIO', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB340M.cbl', summary: 'Inicializa el flujo operativo de ECB340M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '515-9900-FIN', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [808], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '515-9900-FIN', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB340M.cbl', summary: 'Cierra la ejecucion de ECB340M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '515-OBTEN-EVENTO-CARGA', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [786], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '515-OBTEN-EVENTO-CARGA', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB340M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB340M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-0100-INICIO', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [812], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-0100-INICIO', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB340M.cbl', summary: 'Inicializa el flujo operativo de ECB340M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-9900-FIN', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [890], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-9900-FIN', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB340M.cbl', summary: 'Cierra la ejecucion de ECB340M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-INS-SELECT', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [730], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-INS-SELECT', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB340M.cbl', summary: 'Orquesta una fase funcional de ECB340M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-INSERT-EDCUENTA', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [811], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-INSERT-EDCUENTA', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB340M.cbl', summary: 'Persiste actualizaciones de negocio en ECB340M, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '610-0100-INICIO', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [897], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '610-0100-INICIO', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB340M.cbl', summary: 'Inicializa el flujo operativo de ECB340M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '610-9900-FIN', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [921], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '610-9900-FIN', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB340M.cbl', summary: 'Cierra la ejecucion de ECB340M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '610-DEL-EDCUENTA', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [896], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '610-DEL-EDCUENTA', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB340M.cbl', summary: 'Orquesta una fase funcional de ECB340M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '635-0100-INICIO', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [927], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '635-0100-INICIO', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB340M.cbl', summary: 'Inicializa el flujo operativo de ECB340M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '635-9900-FIN', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [947], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '635-9900-FIN', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB340M.cbl', summary: 'Cierra la ejecucion de ECB340M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '635-ACT-CTLPROC', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [926], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '635-ACT-CTLPROC', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB340M.cbl', summary: 'Orquesta una fase funcional de ECB340M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '640-0100-INICIO', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [953], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '640-0100-INICIO', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB340M.cbl', summary: 'Inicializa el flujo operativo de ECB340M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '640-9900-FIN', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [991], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '640-9900-FIN', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB340M.cbl', summary: 'Cierra la ejecucion de ECB340M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '640-INS-CTLPROC', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [952], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '640-INS-CTLPROC', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB340M.cbl', summary: 'Orquesta una fase funcional de ECB340M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-0100-INICIO', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [1001], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-0100-INICIO', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB340M.cbl', summary: 'Inicializa el flujo operativo de ECB340M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-0200-SIGUE', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [1006], executionOrder: 3900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-0200-SIGUE', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB340M.cbl', summary: 'Orquesta una fase funcional de ECB340M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-9900-FIN', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [1009], executionOrder: 4000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-9900-FIN', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB340M.cbl', summary: 'Cierra la ejecucion de ECB340M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [1000], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB340M.cbl', summary: 'Gestiona contingencias en ECB340M, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-0100-INICIA', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [1016], executionOrder: 4200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-0100-INICIA', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB340M.cbl', summary: 'Orquesta una fase funcional de ECB340M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-9900-FIN', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [1028], executionOrder: 4300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-9900-FIN', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB340M.cbl', summary: 'Cierra la ejecucion de ECB340M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [1015], executionOrder: 4100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB340M.cbl', summary: 'Orquesta una fase funcional de ECB340M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-0100-INICIO', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [1044], executionOrder: 4500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-0100-INICIO', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB340M.cbl', summary: 'Inicializa el flujo operativo de ECB340M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-9900-FIN', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [1054], executionOrder: 4600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-9900-FIN', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB340M.cbl', summary: 'Cierra la ejecucion de ECB340M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-MUEVE-FECHAS', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [1043], executionOrder: 4400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-MUEVE-FECHAS', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB340M.cbl', summary: 'Orquesta una fase funcional de ECB340M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [4], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB340M.cbl', summary: 'Orquesta una fase funcional de ECB340M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [25], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB340M.cbl', summary: 'Orquesta una fase funcional de ECB340M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [8], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB340M.cbl', summary: 'Orquesta una fase funcional de ECB340M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'ECB340M', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [3], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'ECB340M', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB340M.cbl', summary: 'Orquesta una fase funcional de ECB340M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [32], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB340M.cbl', summary: 'Orquesta una fase funcional de ECB340M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-4381', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [29], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-4381', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB340M.cbl', summary: 'Orquesta una fase funcional de ECB340M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [31], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB340M.cbl', summary: 'Orquesta una fase funcional de ECB340M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [6], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB340M.cbl', summary: 'Orquesta una fase funcional de ECB340M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [28], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB340M.cbl', summary: 'Orquesta una fase funcional de ECB340M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [2], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB340M.cbl', summary: 'Orquesta una fase funcional de ECB340M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [26], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB340M.cbl', summary: 'Orquesta una fase funcional de ECB340M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [35], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB340M.cbl', summary: 'Orquesta una fase funcional de ECB340M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-0100-PROCESO-PRINCIPAL', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [432], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-0100-PROCESO-PRINCIPAL', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB350M.cbl', summary: 'Orquesta una fase funcional de ECB350M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-0100-INICIO', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [444], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-0100-INICIO', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB350M.cbl', summary: 'Inicializa el flujo operativo de ECB350M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-9999-FIN', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [496], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-9999-FIN', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB350M.cbl', summary: 'Cierra la ejecucion de ECB350M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-INICIO', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [443], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-INICIO', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB350M.cbl', summary: 'Inicializa el flujo operativo de ECB350M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-9999-FIN', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [551], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-9999-FIN', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB350M.cbl', summary: 'Cierra la ejecucion de ECB350M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-PROCESO', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [499], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-PROCESO', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB350M.cbl', summary: 'Orquesta una fase funcional de ECB350M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-0100-INICIO', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [558], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-0100-INICIO', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB350M.cbl', summary: 'Inicializa el flujo operativo de ECB350M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-9999-FIN', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [574], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-9999-FIN', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB350M.cbl', summary: 'Cierra la ejecucion de ECB350M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-PROCESA-DETALLE', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [557], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-PROCESA-DETALLE', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB350M.cbl', summary: 'Orquesta una fase funcional de ECB350M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-0100-INICIO', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [581], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-0100-INICIO', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB350M.cbl', summary: 'Inicializa el flujo operativo de ECB350M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-9999-FIN', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [601], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-9999-FIN', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB350M.cbl', summary: 'Cierra la ejecucion de ECB350M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-PROCESA-REPORTE', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [580], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-PROCESA-REPORTE', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB350M.cbl', summary: 'Orquesta una fase funcional de ECB350M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '035-9999-FIN', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [608], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '035-9999-FIN', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB350M.cbl', summary: 'Cierra la ejecucion de ECB350M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '035-FIN', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [604], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '035-FIN', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB350M.cbl', summary: 'Cierra la ejecucion de ECB350M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200-0100-INICIO', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [615], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200-0100-INICIO', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB350M.cbl', summary: 'Inicializa el flujo operativo de ECB350M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200-9999-FIN', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [619], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200-9999-FIN', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB350M.cbl', summary: 'Cierra la ejecucion de ECB350M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200-ENCABEZADO', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [614], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200-ENCABEZADO', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB350M.cbl', summary: 'Orquesta una fase funcional de ECB350M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-0100-INICIO', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [626], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-0100-INICIO', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB350M.cbl', summary: 'Inicializa el flujo operativo de ECB350M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-9999-FIN', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [812], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-9999-FIN', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB350M.cbl', summary: 'Cierra la ejecucion de ECB350M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-LEE-CURSOR', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [625], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-LEE-CURSOR', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB350M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB350M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-0100-INICIO', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [816], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-0100-INICIO', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB350M.cbl', summary: 'Inicializa el flujo operativo de ECB350M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-9900-FIN', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [859], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-9900-FIN', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB350M.cbl', summary: 'Cierra la ejecucion de ECB350M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-CIERRA-CURSOR', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [815], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-CIERRA-CURSOR', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB350M.cbl', summary: 'Cierra la ejecucion de ECB350M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-0100-INICIO', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [866], executionOrder: 3900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-0100-INICIO', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB350M.cbl', summary: 'Inicializa el flujo operativo de ECB350M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-9900-FIN', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [945], executionOrder: 4000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-9900-FIN', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB350M.cbl', summary: 'Cierra la ejecucion de ECB350M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-ABRE-CURSOR', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [865], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-ABRE-CURSOR', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB350M.cbl', summary: 'Orquesta una fase funcional de ECB350M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '800-0100-INICIO', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [952], executionOrder: 4200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '800-0100-INICIO', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB350M.cbl', summary: 'Inicializa el flujo operativo de ECB350M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '800-9900-FIN', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [963], executionOrder: 4300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '800-9900-FIN', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB350M.cbl', summary: 'Cierra la ejecucion de ECB350M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '800-ENCA', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [951], executionOrder: 4100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '800-ENCA', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB350M.cbl', summary: 'Orquesta una fase funcional de ECB350M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-0100-INICIO', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [977], executionOrder: 4500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-0100-INICIO', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB350M.cbl', summary: 'Inicializa el flujo operativo de ECB350M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-9900-FIN', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [984], executionOrder: 4600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-9900-FIN', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB350M.cbl', summary: 'Cierra la ejecucion de ECB350M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [976], executionOrder: 4400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB350M.cbl', summary: 'Gestiona contingencias en ECB350M, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-0100-INICIO', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [988], executionOrder: 4800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-0100-INICIO', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB350M.cbl', summary: 'Inicializa el flujo operativo de ECB350M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-9900-FIN', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [991], executionOrder: 4900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-9900-FIN', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB350M.cbl', summary: 'Cierra la ejecucion de ECB350M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [987], executionOrder: 4700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB350M.cbl', summary: 'Orquesta una fase funcional de ECB350M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [4], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB350M.cbl', summary: 'Orquesta una fase funcional de ECB350M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [16], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB350M.cbl', summary: 'Orquesta una fase funcional de ECB350M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [8], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB350M.cbl', summary: 'Orquesta una fase funcional de ECB350M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'ECB350M', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [3], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'ECB350M', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB350M.cbl', summary: 'Orquesta una fase funcional de ECB350M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [33], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB350M.cbl', summary: 'Orquesta una fase funcional de ECB350M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [23], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB350M.cbl', summary: 'Orquesta una fase funcional de ECB350M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-9121', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [20], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-9121', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB350M.cbl', summary: 'Orquesta una fase funcional de ECB350M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [22], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB350M.cbl', summary: 'Orquesta una fase funcional de ECB350M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [6], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB350M.cbl', summary: 'Orquesta una fase funcional de ECB350M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [19], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB350M.cbl', summary: 'Orquesta una fase funcional de ECB350M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [2], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB350M.cbl', summary: 'Orquesta una fase funcional de ECB350M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [17], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB350M.cbl', summary: 'Orquesta una fase funcional de ECB350M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [61], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB350M.cbl', summary: 'Orquesta una fase funcional de ECB350M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-RUTINA-PRINCIPAL', programName: 'ECB360M'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [186], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-RUTINA-PRINCIPAL', nodeType: 'process-step', programName: 'ECB360M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB360M.cbl', summary: 'Orquesta una fase funcional de ECB360M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-INICIO', programName: 'ECB360M'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [209], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-INICIO', nodeType: 'process-step', programName: 'ECB360M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB360M.cbl', summary: 'Inicializa el flujo operativo de ECB360M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100-ABRE-ARCHIVOS', programName: 'ECB360M'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [222], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-ABRE-ARCHIVOS', nodeType: 'process-step', programName: 'ECB360M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB360M.cbl', summary: 'Orquesta una fase funcional de ECB360M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '110-DECLARA-CURSOR-EDMOVED', programName: 'ECB360M'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [228], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '110-DECLARA-CURSOR-EDMOVED', nodeType: 'process-step', programName: 'ECB360M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB360M.cbl', summary: 'Orquesta una fase funcional de ECB360M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '120-DECLARA-CURSOR-PARAM', programName: 'ECB360M'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [261], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '120-DECLARA-CURSOR-PARAM', nodeType: 'process-step', programName: 'ECB360M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB360M.cbl', summary: 'Orquesta una fase funcional de ECB360M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '130-ABRE-CURSOR-PARAM', programName: 'ECB360M'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [283], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '130-ABRE-CURSOR-PARAM', nodeType: 'process-step', programName: 'ECB360M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB360M.cbl', summary: 'Orquesta una fase funcional de ECB360M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '140-PROCESA-REGISTROS-PARAM', programName: 'ECB360M'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [303], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '140-PROCESA-REGISTROS-PARAM', nodeType: 'process-step', programName: 'ECB360M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB360M.cbl', summary: 'Orquesta una fase funcional de ECB360M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '150-CIERRA-CURSOR-PARAM', programName: 'ECB360M'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [321], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '150-CIERRA-CURSOR-PARAM', nodeType: 'process-step', programName: 'ECB360M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB360M.cbl', summary: 'Cierra la ejecucion de ECB360M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '160-ABRE-CURSOR-EDMOVED', programName: 'ECB360M'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [339], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '160-ABRE-CURSOR-EDMOVED', nodeType: 'process-step', programName: 'ECB360M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB360M.cbl', summary: 'Orquesta una fase funcional de ECB360M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '170-PROCESA-REGISTROS-EDMOVED', programName: 'ECB360M'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [359], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '170-PROCESA-REGISTROS-EDMOVED', nodeType: 'process-step', programName: 'ECB360M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB360M.cbl', summary: 'Orquesta una fase funcional de ECB360M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '175-REGISTROS-EDMOVED', programName: 'ECB360M'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [369], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '175-REGISTROS-EDMOVED', nodeType: 'process-step', programName: 'ECB360M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB360M.cbl', summary: 'Orquesta una fase funcional de ECB360M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '180-CIERRA-CURSOR-EDMOVED', programName: 'ECB360M'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [407], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '180-CIERRA-CURSOR-EDMOVED', nodeType: 'process-step', programName: 'ECB360M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB360M.cbl', summary: 'Cierra la ejecucion de ECB360M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '190-CIERRA-ARCHIVOS', programName: 'ECB360M'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [425], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '190-CIERRA-ARCHIVOS', nodeType: 'process-step', programName: 'ECB360M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB360M.cbl', summary: 'Cierra la ejecucion de ECB360M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200-SORT-ARCHIVOS', programName: 'ECB360M'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [431], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200-SORT-ARCHIVOS', nodeType: 'process-step', programName: 'ECB360M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB360M.cbl', summary: 'Orquesta una fase funcional de ECB360M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-LEE-CURSOR-PARAM', programName: 'ECB360M'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [440], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-LEE-CURSOR-PARAM', nodeType: 'process-step', programName: 'ECB360M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB360M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB360M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-LEE-CURSOR-EDMOVED', programName: 'ECB360M'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [466], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-LEE-CURSOR-EDMOVED', nodeType: 'process-step', programName: 'ECB360M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB360M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB360M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'ECB360M'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [502], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'ECB360M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB360M.cbl', summary: 'Gestiona contingencias en ECB360M, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'ECB360M'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [508], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'ECB360M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB360M.cbl', summary: 'Orquesta una fase funcional de ECB360M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'COMP-3', programName: 'ECB360M'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [103], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'COMP-3', nodeType: 'process-step', programName: 'ECB360M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB360M.cbl', summary: 'Orquesta una fase funcional de ECB360M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ECB360M'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [30], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ECB360M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB360M.cbl', summary: 'Orquesta una fase funcional de ECB360M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'ECB360M'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [39], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'ECB360M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB360M.cbl', summary: 'Orquesta una fase funcional de ECB360M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'ECB360M'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [34], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'ECB360M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB360M.cbl', summary: 'Orquesta una fase funcional de ECB360M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB360M'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [33], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'ECB360M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB360M.cbl', summary: 'Orquesta una fase funcional de ECB360M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB360M'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [83], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ECB360M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB360M.cbl', summary: 'Orquesta una fase funcional de ECB360M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-RUTINA-PRINCIPAL', programName: 'ECB380M'})
SET n += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [176], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-RUTINA-PRINCIPAL', nodeType: 'process-step', programName: 'ECB380M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB380M.cbl', summary: 'Orquesta una fase funcional de ECB380M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-INICIO', programName: 'ECB380M'})
SET n += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [199], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-INICIO', nodeType: 'process-step', programName: 'ECB380M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB380M.cbl', summary: 'Inicializa el flujo operativo de ECB380M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100-ABRE-ARCHIVOS', programName: 'ECB380M'})
SET n += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [212], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-ABRE-ARCHIVOS', nodeType: 'process-step', programName: 'ECB380M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB380M.cbl', summary: 'Orquesta una fase funcional de ECB380M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '110-DECLARA-CURSOR-EDMOVED', programName: 'ECB380M'})
SET n += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [218], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '110-DECLARA-CURSOR-EDMOVED', nodeType: 'process-step', programName: 'ECB380M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB380M.cbl', summary: 'Orquesta una fase funcional de ECB380M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '120-DECLARA-CURSOR-PARAM', programName: 'ECB380M'})
SET n += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [247], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '120-DECLARA-CURSOR-PARAM', nodeType: 'process-step', programName: 'ECB380M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB380M.cbl', summary: 'Orquesta una fase funcional de ECB380M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '130-ABRE-CURSOR-PARAM', programName: 'ECB380M'})
SET n += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [265], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '130-ABRE-CURSOR-PARAM', nodeType: 'process-step', programName: 'ECB380M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB380M.cbl', summary: 'Orquesta una fase funcional de ECB380M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '140-PROCESA-REGISTROS-PARAM', programName: 'ECB380M'})
SET n += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [281], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '140-PROCESA-REGISTROS-PARAM', nodeType: 'process-step', programName: 'ECB380M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB380M.cbl', summary: 'Orquesta una fase funcional de ECB380M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '150-CIERRA-CURSOR-PARAM', programName: 'ECB380M'})
SET n += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [298], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '150-CIERRA-CURSOR-PARAM', nodeType: 'process-step', programName: 'ECB380M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB380M.cbl', summary: 'Cierra la ejecucion de ECB380M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '160-ABRE-CURSOR-EDMOVED', programName: 'ECB380M'})
SET n += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [312], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '160-ABRE-CURSOR-EDMOVED', nodeType: 'process-step', programName: 'ECB380M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB380M.cbl', summary: 'Orquesta una fase funcional de ECB380M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '170-PROCESA-REGISTROS-EDMOVED', programName: 'ECB380M'})
SET n += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [328], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '170-PROCESA-REGISTROS-EDMOVED', nodeType: 'process-step', programName: 'ECB380M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB380M.cbl', summary: 'Orquesta una fase funcional de ECB380M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '175-REGISTROS-EDMOVED', programName: 'ECB380M'})
SET n += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [338], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '175-REGISTROS-EDMOVED', nodeType: 'process-step', programName: 'ECB380M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB380M.cbl', summary: 'Orquesta una fase funcional de ECB380M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '180-CIERRA-CURSOR-EDMOVED', programName: 'ECB380M'})
SET n += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [369], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '180-CIERRA-CURSOR-EDMOVED', nodeType: 'process-step', programName: 'ECB380M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB380M.cbl', summary: 'Cierra la ejecucion de ECB380M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '190-CIERRA-ARCHIVOS', programName: 'ECB380M'})
SET n += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [383], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '190-CIERRA-ARCHIVOS', nodeType: 'process-step', programName: 'ECB380M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB380M.cbl', summary: 'Cierra la ejecucion de ECB380M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200-SORT-ARCHIVOS', programName: 'ECB380M'})
SET n += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [389], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200-SORT-ARCHIVOS', nodeType: 'process-step', programName: 'ECB380M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB380M.cbl', summary: 'Orquesta una fase funcional de ECB380M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-LEE-CURSOR-PARAM', programName: 'ECB380M'})
SET n += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [399], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-LEE-CURSOR-PARAM', nodeType: 'process-step', programName: 'ECB380M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB380M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB380M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-LEE-CURSOR-EDMOVED', programName: 'ECB380M'})
SET n += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [421], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-LEE-CURSOR-EDMOVED', nodeType: 'process-step', programName: 'ECB380M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB380M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB380M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'COMP-3', programName: 'ECB380M'})
SET n += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [103], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'COMP-3', nodeType: 'process-step', programName: 'ECB380M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB380M.cbl', summary: 'Orquesta una fase funcional de ECB380M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ECB380M'})
SET n += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [30], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ECB380M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB380M.cbl', summary: 'Orquesta una fase funcional de ECB380M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'ECB380M'})
SET n += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [39], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'ECB380M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB380M.cbl', summary: 'Orquesta una fase funcional de ECB380M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'ECB380M'})
SET n += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [34], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'ECB380M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB380M.cbl', summary: 'Orquesta una fase funcional de ECB380M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB380M'})
SET n += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [33], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'ECB380M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB380M.cbl', summary: 'Orquesta una fase funcional de ECB380M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB380M'})
SET n += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [83], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ECB380M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB380M.cbl', summary: 'Orquesta una fase funcional de ECB380M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [931], executionOrder: 4400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB385M.cbl', summary: 'Gestiona contingencias en ECB385M, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [937], executionOrder: 4500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB385M.cbl', summary: 'Orquesta una fase funcional de ECB385M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'ABRE-ARCHIVOS', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [479], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'ABRE-ARCHIVOS', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB385M.cbl', summary: 'Orquesta una fase funcional de ECB385M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'ARMA-E-IMPRIME-REP2', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [720], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'ARMA-E-IMPRIME-REP2', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB385M.cbl', summary: 'Orquesta una fase funcional de ECB385M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'ARMA-E-IMPRIME-TOT-MES', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [700], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'ARMA-E-IMPRIME-TOT-MES', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB385M.cbl', summary: 'Orquesta una fase funcional de ECB385M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'ARMA-REGISTRO-E-IMPRIME', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [673], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'ARMA-REGISTRO-E-IMPRIME', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB385M.cbl', summary: 'Orquesta una fase funcional de ECB385M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CIERRA-ARCHIVOS', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [488], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CIERRA-ARCHIVOS', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB385M.cbl', summary: 'Cierra la ejecucion de ECB385M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [30], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB385M.cbl', summary: 'Orquesta una fase funcional de ECB385M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DESPLIEGA-FH-DE-PROCESO', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [496], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DESPLIEGA-FH-DE-PROCESO', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB385M.cbl', summary: 'Orquesta una fase funcional de ECB385M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [40], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB385M.cbl', summary: 'Orquesta una fase funcional de ECB385M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [34], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB385M.cbl', summary: 'Orquesta una fase funcional de ECB385M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FIN-ARCHIVO-ECB385I', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [471], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FIN-ARCHIVO-ECB385I', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB385M.cbl', summary: 'Cierra la ejecucion de ECB385M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IMPRIME-ENCABEZADOS-REPORTE1', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [849], executionOrder: 4100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IMPRIME-ENCABEZADOS-REPORTE1', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB385M.cbl', summary: 'Orquesta una fase funcional de ECB385M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IMPRIME-ENCABEZADOS-REPORTE2', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [878], executionOrder: 4200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IMPRIME-ENCABEZADOS-REPORTE2', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB385M.cbl', summary: 'Orquesta una fase funcional de ECB385M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [33], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB385M.cbl', summary: 'Orquesta una fase funcional de ECB385M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LEE-REGISTRO-ECB385I', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [524], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LEE-REGISTRO-ECB385I', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB385M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB385M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'MUEVE-E-IMPRIME-TOT-GRALS', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [824], executionOrder: 4000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'MUEVE-E-IMPRIME-TOT-GRALS', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB385M.cbl', summary: 'Orquesta una fase funcional de ECB385M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESA-D1', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [660], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESA-D1', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB385M.cbl', summary: 'Orquesta una fase funcional de ECB385M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESA-REGISTRO-FECHA', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [562], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESA-REGISTRO-FECHA', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB385M.cbl', summary: 'Orquesta una fase funcional de ECB385M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESA-REGISTROS-EDMOVED', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [532], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESA-REGISTROS-EDMOVED', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB385M.cbl', summary: 'Orquesta una fase funcional de ECB385M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESA-REGISTROS-MES', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [547], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESA-REGISTROS-MES', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB385M.cbl', summary: 'Orquesta una fase funcional de ECB385M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'REPO-R2-CONSLDDO', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [491], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'REPO-R2-CONSLDDO', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB385M.cbl', summary: 'Orquesta una fase funcional de ECB385M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'RUTINA-PRINCIPAL', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [462], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'RUTINA-PRINCIPAL', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB385M.cbl', summary: 'Orquesta una fase funcional de ECB385M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SUMA-TOTALES-INSTRUMENTO', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [779], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SUMA-TOTALES-INSTRUMENTO', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB385M.cbl', summary: 'Orquesta una fase funcional de ECB385M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SUMARIZA-TOTALES-DEL-MES', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [790], executionOrder: 3900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SUMARIZA-TOTALES-DEL-MES', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB385M.cbl', summary: 'Orquesta una fase funcional de ECB385M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'TOMA-FECHA-PARAMETRO-4', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [907], executionOrder: 4300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'TOMA-FECHA-PARAMETRO-4', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB385M.cbl', summary: 'Orquesta una fase funcional de ECB385M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'TOTLS-CONSLDDO', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [745], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'TOTLS-CONSLDDO', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB385M.cbl', summary: 'Orquesta una fase funcional de ECB385M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'TOTLS-CONSLDO', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [763], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'TOTLS-CONSLDO', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB385M.cbl', summary: 'Orquesta una fase funcional de ECB385M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'TOTLS-INSTRMNTO', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [785], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'TOTLS-INSTRMNTO', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB385M.cbl', summary: 'Orquesta una fase funcional de ECB385M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [64], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB385M.cbl', summary: 'Orquesta una fase funcional de ECB385M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'ABRE-ARCHIVOS', programName: 'ECB390M'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [481], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'ABRE-ARCHIVOS', nodeType: 'process-step', programName: 'ECB390M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB390M.cbl', summary: 'Orquesta una fase funcional de ECB390M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'ARMA-E-IMPRIME-REP2', programName: 'ECB390M'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [702], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'ARMA-E-IMPRIME-REP2', nodeType: 'process-step', programName: 'ECB390M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB390M.cbl', summary: 'Orquesta una fase funcional de ECB390M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'ARMA-E-IMPRIME-TOT-MES', programName: 'ECB390M'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [682], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'ARMA-E-IMPRIME-TOT-MES', nodeType: 'process-step', programName: 'ECB390M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB390M.cbl', summary: 'Orquesta una fase funcional de ECB390M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'ARMA-REGISTRO-E-IMPRIME', programName: 'ECB390M'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [655], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'ARMA-REGISTRO-E-IMPRIME', nodeType: 'process-step', programName: 'ECB390M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB390M.cbl', summary: 'Orquesta una fase funcional de ECB390M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CIERRA-ARCHIVOS', programName: 'ECB390M'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [490], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CIERRA-ARCHIVOS', nodeType: 'process-step', programName: 'ECB390M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB390M.cbl', summary: 'Cierra la ejecucion de ECB390M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ECB390M'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [39], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ECB390M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB390M.cbl', summary: 'Orquesta una fase funcional de ECB390M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DESPLIEGA-FH-DE-PROCESO', programName: 'ECB390M'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [498], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DESPLIEGA-FH-DE-PROCESO', nodeType: 'process-step', programName: 'ECB390M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB390M.cbl', summary: 'Orquesta una fase funcional de ECB390M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'ECB390M'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [49], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'ECB390M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB390M.cbl', summary: 'Orquesta una fase funcional de ECB390M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'ECB390M'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [43], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'ECB390M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB390M.cbl', summary: 'Orquesta una fase funcional de ECB390M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FIN-ARCHIVO-ECB390I', programName: 'ECB390M'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [473], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FIN-ARCHIVO-ECB390I', nodeType: 'process-step', programName: 'ECB390M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB390M.cbl', summary: 'Cierra la ejecucion de ECB390M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IMPRIME-ENCABEZADOS-REPORTE1', programName: 'ECB390M'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [801], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IMPRIME-ENCABEZADOS-REPORTE1', nodeType: 'process-step', programName: 'ECB390M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB390M.cbl', summary: 'Orquesta una fase funcional de ECB390M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IMPRIME-ENCABEZADOS-REPORTE2', programName: 'ECB390M'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [830], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IMPRIME-ENCABEZADOS-REPORTE2', nodeType: 'process-step', programName: 'ECB390M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB390M.cbl', summary: 'Orquesta una fase funcional de ECB390M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB390M'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [42], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'ECB390M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB390M.cbl', summary: 'Orquesta una fase funcional de ECB390M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LEE-REGISTRO-ECB390I', programName: 'ECB390M'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [525], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LEE-REGISTRO-ECB390I', nodeType: 'process-step', programName: 'ECB390M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB390M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB390M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'MUEVE-E-IMPRIME-TOT-GRALS', programName: 'ECB390M'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [776], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'MUEVE-E-IMPRIME-TOT-GRALS', nodeType: 'process-step', programName: 'ECB390M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB390M.cbl', summary: 'Orquesta una fase funcional de ECB390M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESA-D1', programName: 'ECB390M'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [642], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESA-D1', nodeType: 'process-step', programName: 'ECB390M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB390M.cbl', summary: 'Orquesta una fase funcional de ECB390M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESA-REGISTRO-FECHA', programName: 'ECB390M'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [561], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESA-REGISTRO-FECHA', nodeType: 'process-step', programName: 'ECB390M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB390M.cbl', summary: 'Orquesta una fase funcional de ECB390M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESA-REGISTROS-EDMOVED', programName: 'ECB390M'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [533], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESA-REGISTROS-EDMOVED', nodeType: 'process-step', programName: 'ECB390M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB390M.cbl', summary: 'Orquesta una fase funcional de ECB390M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESA-REGISTROS-MES', programName: 'ECB390M'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [547], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESA-REGISTROS-MES', nodeType: 'process-step', programName: 'ECB390M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB390M.cbl', summary: 'Orquesta una fase funcional de ECB390M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'REPO-R2-CONSLDDO', programName: 'ECB390M'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [493], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'REPO-R2-CONSLDDO', nodeType: 'process-step', programName: 'ECB390M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB390M.cbl', summary: 'Orquesta una fase funcional de ECB390M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'RUTINA-PRINCIPAL', programName: 'ECB390M'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [464], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'RUTINA-PRINCIPAL', nodeType: 'process-step', programName: 'ECB390M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB390M.cbl', summary: 'Orquesta una fase funcional de ECB390M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SUMA-TOTALES-INSTRUMENTO', programName: 'ECB390M'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [745], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SUMA-TOTALES-INSTRUMENTO', nodeType: 'process-step', programName: 'ECB390M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB390M.cbl', summary: 'Orquesta una fase funcional de ECB390M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SUMARIZA-TOTALES-DEL-MES', programName: 'ECB390M'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [756], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SUMARIZA-TOTALES-DEL-MES', nodeType: 'process-step', programName: 'ECB390M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB390M.cbl', summary: 'Orquesta una fase funcional de ECB390M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'TOMA-FECHA-PARAMETRO-4', programName: 'ECB390M'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [859], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'TOMA-FECHA-PARAMETRO-4', nodeType: 'process-step', programName: 'ECB390M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB390M.cbl', summary: 'Orquesta una fase funcional de ECB390M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'TOTLS-CONSLDDO', programName: 'ECB390M'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [731], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'TOTLS-CONSLDDO', nodeType: 'process-step', programName: 'ECB390M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB390M.cbl', summary: 'Orquesta una fase funcional de ECB390M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'TOTLS-INSTRMNTO', programName: 'ECB390M'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [751], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'TOTLS-INSTRMNTO', nodeType: 'process-step', programName: 'ECB390M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB390M.cbl', summary: 'Orquesta una fase funcional de ECB390M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB390M'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [73], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ECB390M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB390M.cbl', summary: 'Orquesta una fase funcional de ECB390M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'ABRE-ARCHIVOS', programName: 'ECB395M'})
SET n += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [324], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'ABRE-ARCHIVOS', nodeType: 'process-step', programName: 'ECB395M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB395M.cbl', summary: 'Orquesta una fase funcional de ECB395M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'ABRE-CURSOR-EDMOVED', programName: 'ECB395M'})
SET n += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [405], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'ABRE-CURSOR-EDMOVED', nodeType: 'process-step', programName: 'ECB395M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB395M.cbl', summary: 'Orquesta una fase funcional de ECB395M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'ARMA-E-IMPRIME-TOT-GRAL', programName: 'ECB395M'})
SET n += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [489], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'ARMA-E-IMPRIME-TOT-GRAL', nodeType: 'process-step', programName: 'ECB395M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB395M.cbl', summary: 'Orquesta una fase funcional de ECB395M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'ARMA-REGISTRO-E-IMPRIME', programName: 'ECB395M'})
SET n += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [500], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'ARMA-REGISTRO-E-IMPRIME', nodeType: 'process-step', programName: 'ECB395M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB395M.cbl', summary: 'Orquesta una fase funcional de ECB395M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CIERRA-ARCHIVOS', programName: 'ECB395M'})
SET n += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [330], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CIERRA-ARCHIVOS', nodeType: 'process-step', programName: 'ECB395M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB395M.cbl', summary: 'Cierra la ejecucion de ECB395M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CIERRA-CURSOR-EDMOVED', programName: 'ECB395M'})
SET n += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [365], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CIERRA-CURSOR-EDMOVED', nodeType: 'process-step', programName: 'ECB395M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB395M.cbl', summary: 'Cierra la ejecucion de ECB395M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ECB395M'})
SET n += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [26], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ECB395M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB395M.cbl', summary: 'Orquesta una fase funcional de ECB395M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DECLARA-CURSOR-EDMOVED', programName: 'ECB395M'})
SET n += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [336], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DECLARA-CURSOR-EDMOVED', nodeType: 'process-step', programName: 'ECB395M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB395M.cbl', summary: 'Orquesta una fase funcional de ECB395M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DESPLIEGA-FH-DE-PROCESO', programName: 'ECB395M'})
SET n += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [379], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DESPLIEGA-FH-DE-PROCESO', nodeType: 'process-step', programName: 'ECB395M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB395M.cbl', summary: 'Orquesta una fase funcional de ECB395M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'ECB395M'})
SET n += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [34], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'ECB395M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB395M.cbl', summary: 'Orquesta una fase funcional de ECB395M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'ECB395M'})
SET n += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [30], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'ECB395M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB395M.cbl', summary: 'Orquesta una fase funcional de ECB395M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IMPRIME-ENCABEZADOS-REPORTE', programName: 'ECB395M'})
SET n += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [541], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IMPRIME-ENCABEZADOS-REPORTE', nodeType: 'process-step', programName: 'ECB395M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB395M.cbl', summary: 'Orquesta una fase funcional de ECB395M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB395M'})
SET n += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [29], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'ECB395M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB395M.cbl', summary: 'Orquesta una fase funcional de ECB395M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LEE-CURSOR-EDMOVED', programName: 'ECB395M'})
SET n += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [421], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LEE-CURSOR-EDMOVED', nodeType: 'process-step', programName: 'ECB395M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB395M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB395M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'MUEVE-E-IMPRIME-TOTALES', programName: 'ECB395M'})
SET n += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [530], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'MUEVE-E-IMPRIME-TOTALES', nodeType: 'process-step', programName: 'ECB395M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB395M.cbl', summary: 'Orquesta una fase funcional de ECB395M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESA-D1', programName: 'ECB395M'})
SET n += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [476], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESA-D1', nodeType: 'process-step', programName: 'ECB395M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB395M.cbl', summary: 'Orquesta una fase funcional de ECB395M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESA-REGISTROS-EDMOVED', programName: 'ECB395M'})
SET n += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [452], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESA-REGISTROS-EDMOVED', nodeType: 'process-step', programName: 'ECB395M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB395M.cbl', summary: 'Orquesta una fase funcional de ECB395M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'RUTINA-PRINCIPAL', programName: 'ECB395M'})
SET n += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [292], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'RUTINA-PRINCIPAL', nodeType: 'process-step', programName: 'ECB395M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB395M.cbl', summary: 'Orquesta una fase funcional de ECB395M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SUMA-TOTALES-MENSUALES', programName: 'ECB395M'})
SET n += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [519], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SUMA-TOTALES-MENSUALES', nodeType: 'process-step', programName: 'ECB395M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB395M.cbl', summary: 'Orquesta una fase funcional de ECB395M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'TOMA-FECHA-PARAMETRO-4', programName: 'ECB395M'})
SET n += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [561], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'TOMA-FECHA-PARAMETRO-4', nodeType: 'process-step', programName: 'ECB395M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB395M.cbl', summary: 'Orquesta una fase funcional de ECB395M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB395M'})
SET n += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [44], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ECB395M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB395M.cbl', summary: 'Orquesta una fase funcional de ECB395M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-100-PROCESO-CONTROL', programName: 'ECB400M'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [130], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-100-PROCESO-CONTROL', nodeType: 'process-step', programName: 'ECB400M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB400M.cbl', summary: 'Orquesta una fase funcional de ECB400M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '620-0100-INICIO', programName: 'ECB400M'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [145], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '620-0100-INICIO', nodeType: 'process-step', programName: 'ECB400M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB400M.cbl', summary: 'Inicializa el flujo operativo de ECB400M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '620-9900-EXIT', programName: 'ECB400M'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [159], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '620-9900-EXIT', nodeType: 'process-step', programName: 'ECB400M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB400M.cbl', summary: 'Orquesta una fase funcional de ECB400M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '620-DEL-EDCONT', programName: 'ECB400M'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [144], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '620-DEL-EDCONT', nodeType: 'process-step', programName: 'ECB400M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB400M.cbl', summary: 'Orquesta una fase funcional de ECB400M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '630-0100-INICIO', programName: 'ECB400M'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [168], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '630-0100-INICIO', nodeType: 'process-step', programName: 'ECB400M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB400M.cbl', summary: 'Inicializa el flujo operativo de ECB400M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '630-9900-EXIT', programName: 'ECB400M'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [192], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '630-9900-EXIT', nodeType: 'process-step', programName: 'ECB400M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB400M.cbl', summary: 'Orquesta una fase funcional de ECB400M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '630-UPD-EDCONT', programName: 'ECB400M'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [167], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '630-UPD-EDCONT', nodeType: 'process-step', programName: 'ECB400M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB400M.cbl', summary: 'Orquesta una fase funcional de ECB400M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-0100-INICIO', programName: 'ECB400M'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [206], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-0100-INICIO', nodeType: 'process-step', programName: 'ECB400M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB400M.cbl', summary: 'Inicializa el flujo operativo de ECB400M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-0200-SIGUE', programName: 'ECB400M'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [210], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-0200-SIGUE', nodeType: 'process-step', programName: 'ECB400M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB400M.cbl', summary: 'Orquesta una fase funcional de ECB400M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-9900-EXIT', programName: 'ECB400M'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [214], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-9900-EXIT', nodeType: 'process-step', programName: 'ECB400M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB400M.cbl', summary: 'Orquesta una fase funcional de ECB400M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'ECB400M'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [205], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'ECB400M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB400M.cbl', summary: 'Gestiona contingencias en ECB400M, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-0100-INICIA', programName: 'ECB400M'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [221], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-0100-INICIA', nodeType: 'process-step', programName: 'ECB400M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB400M.cbl', summary: 'Orquesta una fase funcional de ECB400M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-9900-EXIT', programName: 'ECB400M'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [226], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-9900-EXIT', nodeType: 'process-step', programName: 'ECB400M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB400M.cbl', summary: 'Orquesta una fase funcional de ECB400M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'ECB400M'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [220], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'ECB400M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB400M.cbl', summary: 'Orquesta una fase funcional de ECB400M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'ECB400M'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [4], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'ECB400M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB400M.cbl', summary: 'Orquesta una fase funcional de ECB400M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ECB400M'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [16], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ECB400M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB400M.cbl', summary: 'Orquesta una fase funcional de ECB400M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'ECB400M'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [8], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'ECB400M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB400M.cbl', summary: 'Orquesta una fase funcional de ECB400M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'ECB400M', programName: 'ECB400M'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [3], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'ECB400M', nodeType: 'process-step', programName: 'ECB400M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB400M.cbl', summary: 'Orquesta una fase funcional de ECB400M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'ECB400M'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [32], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'ECB400M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB400M.cbl', summary: 'Orquesta una fase funcional de ECB400M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'ECB400M'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [23], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'ECB400M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB400M.cbl', summary: 'Orquesta una fase funcional de ECB400M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-9121', programName: 'ECB400M'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [20], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-9121', nodeType: 'process-step', programName: 'ECB400M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB400M.cbl', summary: 'Orquesta una fase funcional de ECB400M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB400M'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [22], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'ECB400M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB400M.cbl', summary: 'Orquesta una fase funcional de ECB400M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'ECB400M'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [6], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'ECB400M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB400M.cbl', summary: 'Orquesta una fase funcional de ECB400M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'ECB400M'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [19], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'ECB400M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB400M.cbl', summary: 'Orquesta una fase funcional de ECB400M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'ECB400M'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [2], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'ECB400M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB400M.cbl', summary: 'Orquesta una fase funcional de ECB400M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'ECB400M'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [17], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'ECB400M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB400M.cbl', summary: 'Orquesta una fase funcional de ECB400M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB400M'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [35], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ECB400M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB400M.cbl', summary: 'Orquesta una fase funcional de ECB400M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-0100-PROCESO-PRINCIPAL', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [375], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-0100-PROCESO-PRINCIPAL', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Orquesta una fase funcional de ECB405M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-0100-INICIO', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [387], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-0100-INICIO', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Inicializa el flujo operativo de ECB405M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-9999-FIN', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [406], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-9999-FIN', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Cierra la ejecucion de ECB405M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-INICIO', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [386], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-INICIO', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Inicializa el flujo operativo de ECB405M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-9999-FIN', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [411], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-9999-FIN', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Cierra la ejecucion de ECB405M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-PROCESO', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [409], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-PROCESO', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Orquesta una fase funcional de ECB405M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-0100-INICIO', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [415], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-0100-INICIO', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Inicializa el flujo operativo de ECB405M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-9999-FIN', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [449], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-9999-FIN', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Cierra la ejecucion de ECB405M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-ARMA-REPORTE1', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [414], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-ARMA-REPORTE1', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Orquesta una fase funcional de ECB405M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '025-0100-INICIO', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [453], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '025-0100-INICIO', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Inicializa el flujo operativo de ECB405M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '025-9999-FIN', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [515], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '025-9999-FIN', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Cierra la ejecucion de ECB405M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '025-ARMA-REPORTE2', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [452], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '025-ARMA-REPORTE2', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Orquesta una fase funcional de ECB405M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-0100-INICIO', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [522], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-0100-INICIO', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Inicializa el flujo operativo de ECB405M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-9999-FIN', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [553], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-9999-FIN', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Cierra la ejecucion de ECB405M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-PROCESA-REPORTE1', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [521], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-PROCESA-REPORTE1', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Orquesta una fase funcional de ECB405M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '035-0100-INICIO', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [557], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '035-0100-INICIO', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Inicializa el flujo operativo de ECB405M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '035-9999-FIN', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [561], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '035-9999-FIN', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Cierra la ejecucion de ECB405M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '035-FIN', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [556], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '035-FIN', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Cierra la ejecucion de ECB405M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100-0100-FIN', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [573], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-0100-FIN', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Cierra la ejecucion de ECB405M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100-0100-INICIO', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [565], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-0100-INICIO', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Inicializa el flujo operativo de ECB405M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100-OBTIENE-P04', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [564], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-OBTIENE-P04', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Orquesta una fase funcional de ECB405M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200-0100-INICIO', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [580], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200-0100-INICIO', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Inicializa el flujo operativo de ECB405M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200-9999-FIN', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [584], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200-9999-FIN', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Cierra la ejecucion de ECB405M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200-ENCABEZADO', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [579], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200-ENCABEZADO', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Orquesta una fase funcional de ECB405M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '400-0100-INICIO', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [691], executionOrder: 5200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '400-0100-INICIO', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Inicializa el flujo operativo de ECB405M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '400-9900-FIN', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [702], executionOrder: 5300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '400-9900-FIN', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Cierra la ejecucion de ECB405M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '400-ABRE-CURSOR1', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [690], executionOrder: 5100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '400-ABRE-CURSOR1', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Orquesta una fase funcional de ECB405M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '450-0100-INICIO', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [706], executionOrder: 5500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '450-0100-INICIO', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Inicializa el flujo operativo de ECB405M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '450-9900-FIN', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [717], executionOrder: 5600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '450-9900-FIN', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Cierra la ejecucion de ECB405M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '450-ABRE-CURSOR2', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [705], executionOrder: 5400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '450-ABRE-CURSOR2', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Orquesta una fase funcional de ECB405M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-0100-INICIO', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [591], executionOrder: 4000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-0100-INICIO', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Inicializa el flujo operativo de ECB405M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-9999-FIN', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [622], executionOrder: 4100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-9999-FIN', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Cierra la ejecucion de ECB405M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-LEE-CURSOR1', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [590], executionOrder: 3900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-LEE-CURSOR1', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB405M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-0100-INICIO', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [629], executionOrder: 4300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-0100-INICIO', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Inicializa el flujo operativo de ECB405M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-9999-FIN', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [662], executionOrder: 4400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-9999-FIN', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Cierra la ejecucion de ECB405M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-LEE-CURSOR2', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [628], executionOrder: 4200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-LEE-CURSOR2', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB405M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-0100-INICIO', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [666], executionOrder: 4600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-0100-INICIO', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Inicializa el flujo operativo de ECB405M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-9900-FIN', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [673], executionOrder: 4700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-9900-FIN', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Cierra la ejecucion de ECB405M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-CIERRA-CURSOR1', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [665], executionOrder: 4500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-CIERRA-CURSOR1', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Cierra la ejecucion de ECB405M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '650-0100-INICIO', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [677], executionOrder: 4900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '650-0100-INICIO', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Inicializa el flujo operativo de ECB405M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '650-9900-FIN', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [684], executionOrder: 5000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '650-9900-FIN', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Cierra la ejecucion de ECB405M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '650-CIERRA-CURSOR2', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [676], executionOrder: 4800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '650-CIERRA-CURSOR2', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Cierra la ejecucion de ECB405M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-0100-INICIO', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [721], executionOrder: 5800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-0100-INICIO', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Inicializa el flujo operativo de ECB405M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-9999-FIN', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [740], executionOrder: 5900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-9999-FIN', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Cierra la ejecucion de ECB405M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-CIFRAS', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [720], executionOrder: 5700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-CIFRAS', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Orquesta una fase funcional de ECB405M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '750-0100-INICIO', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [744], executionOrder: 6100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '750-0100-INICIO', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Inicializa el flujo operativo de ECB405M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '750-9999-FIN', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [750], executionOrder: 6200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '750-9999-FIN', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Cierra la ejecucion de ECB405M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '750-CIFRAS', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [743], executionOrder: 6000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '750-CIFRAS', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Orquesta una fase funcional de ECB405M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '800-0100-INICIO', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [757], executionOrder: 6400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '800-0100-INICIO', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Inicializa el flujo operativo de ECB405M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '800-9900-FIN', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [772], executionOrder: 6500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '800-9900-FIN', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Cierra la ejecucion de ECB405M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '800-ENCA', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [756], executionOrder: 6300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '800-ENCA', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Orquesta una fase funcional de ECB405M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-0100-INICIO', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [786], executionOrder: 6700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-0100-INICIO', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Inicializa el flujo operativo de ECB405M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-9900-FIN', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [793], executionOrder: 6800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-9900-FIN', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Cierra la ejecucion de ECB405M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [785], executionOrder: 6600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Gestiona contingencias en ECB405M, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-0100-INICIO', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [797], executionOrder: 7000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-0100-INICIO', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Inicializa el flujo operativo de ECB405M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-9900-FIN', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [802], executionOrder: 7100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-9900-FIN', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Cierra la ejecucion de ECB405M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [796], executionOrder: 6900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Orquesta una fase funcional de ECB405M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [4], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Orquesta una fase funcional de ECB405M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [22], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Orquesta una fase funcional de ECB405M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [8], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Orquesta una fase funcional de ECB405M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'ECB405M', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [3], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'ECB405M', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Orquesta una fase funcional de ECB405M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [37], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Orquesta una fase funcional de ECB405M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [29], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Orquesta una fase funcional de ECB405M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-9121', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [26], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-9121', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Orquesta una fase funcional de ECB405M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [28], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Orquesta una fase funcional de ECB405M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [6], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Orquesta una fase funcional de ECB405M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [25], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Orquesta una fase funcional de ECB405M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [2], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Orquesta una fase funcional de ECB405M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [23], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Orquesta una fase funcional de ECB405M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB405M'})
SET n += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [49], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ECB405M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', summary: 'Orquesta una fase funcional de ECB405M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Program {name: 'ECB330M'})
SET n += {description: 'Programa COBOL que ejecuta procesos. Pertenece a: PROGRAM-ID. ECB330M. INSTALLATION. BBV PROBURSA, S.A. DE C.V. REPORTE DE LOS PRECIOS.', ingestion: 'auto', layer: 'program', name: 'ECB330M', nodeType: 'program', objective: null, reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', system: 'PROGRAM-ID. ECB330M. INSTALLATION. BBV PROBURSA, S.A. DE C.V. REPORTE DE LOS PRECIOS', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'ECB340M'})
SET n += {description: 'Programa COBOL que ejecuta procesos. Pertenece a: BBV PROBURSA, S.A. DE C.V. 11/SEP/97. /.', ingestion: 'auto', layer: 'program', name: 'ECB340M', nodeType: 'program', objective: null, reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB340M.cbl', system: 'BBV PROBURSA, S.A. DE C.V. 11/SEP/97. /', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'ECB350M'})
SET n += {description: 'Programa COBOL que generar reporte de control de estados de cuenta impresos y no impresos. Pertenece a: PROBURSA, S.A. DE C.V. 07/OCT/97. /.', ingestion: 'auto', layer: 'program', name: 'ECB350M', nodeType: 'program', objective: 'GENERAR REPORTE DE CONTROL DE ESTADOS DE CUENTA IMPRESOS Y NO IMPRESOS', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB350M.cbl', system: 'PROBURSA, S.A. DE C.V. 07/OCT/97. /', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'ECB360M'})
SET n += {description: 'Programa COBOL que clasificar los intereses cobrados mensuales, para efectos de conciliacion. metodo : se creo un query accesando 3 tablas de la base de datos mediante un join, mismo etc, etc. tablas accesadas : desarsvp.edmoved t1 desarsvp.eddesop t2 desarsvp.agpocta t3. Pertenece a: PROGRAM-ID. ECB360M. INSTALLATION. PROBURSA, S.A. DE C.V..', ingestion: 'auto', layer: 'program', name: 'ECB360M', nodeType: 'program', objective: 'CLASIFICAR LOS INTERESES COBRADOS MENSUALES, PARA EFECTOS DE CONCILIACION. METODO : SE CREO UN QUERY ACCESANDO 3 TABLAS DE LA BASE DE DATOS MEDIANTE UN JOIN, MISMO ETC, ETC. TABLAS ACCESADAS : DESARSVP.EDMOVED T1 DESARSVP.EDDESOP T2 DESARSVP.AGPOCTA T3', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB360M.cbl', system: 'PROGRAM-ID. ECB360M. INSTALLATION. PROBURSA, S.A. DE C.V.', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'ECB380M'})
SET n += {description: 'Programa COBOL que clasificar los intereses pagados mensuales, para efectos de conciliacion. metodo : se creo un query accesando 3 tablas de la base de datos mediante un join, mismo etc, etc. tablas accesadas : desarsvp.edmoved t1 desarsvp.eddesop t2 desarsvp.agpocta t3. Pertenece a: PROGRAM-ID. ECB380M. INSTALLATION. PROBURSA, S.A. DE C.V..', ingestion: 'auto', layer: 'program', name: 'ECB380M', nodeType: 'program', objective: 'CLASIFICAR LOS INTERESES PAGADOS MENSUALES, PARA EFECTOS DE CONCILIACION. METODO : SE CREO UN QUERY ACCESANDO 3 TABLAS DE LA BASE DE DATOS MEDIANTE UN JOIN, MISMO ETC, ETC. TABLAS ACCESADAS : DESARSVP.EDMOVED T1 DESARSVP.EDDESOP T2 DESARSVP.AGPOCTA T3', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB380M.cbl', system: 'PROGRAM-ID. ECB380M. INSTALLATION. PROBURSA, S.A. DE C.V.', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'ECB385M'})
SET n += {description: 'Programa COBOL que clasificar los intereses cobrados mensuales, para efectos de conciliacion. metodo : se creo un query accesando 3 tablas de la base de datos mediante un join, mismo etc, etc. tablas accesadas : desarsvp.edmoved t1 desarsvp.eddesop t2 desarsvp.agpocta t3. Pertenece a: PROGRAM-ID. ECB385M. INSTALLATION. PROBURSA, S.A. DE C.V..', ingestion: 'auto', layer: 'program', name: 'ECB385M', nodeType: 'program', objective: 'CLASIFICAR LOS INTERESES COBRADOS MENSUALES, PARA EFECTOS DE CONCILIACION. METODO : SE CREO UN QUERY ACCESANDO 3 TABLAS DE LA BASE DE DATOS MEDIANTE UN JOIN, MISMO ETC, ETC. TABLAS ACCESADAS : DESARSVP.EDMOVED T1 DESARSVP.EDDESOP T2 DESARSVP.AGPOCTA T3', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB385M.cbl', system: 'PROGRAM-ID. ECB385M. INSTALLATION. PROBURSA, S.A. DE C.V.', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'ECB390M'})
SET n += {description: 'Programa COBOL que clasificar los intereses pagados mensuales, para efectos de conciliacion. metodo : se creo un query accesando 3 tablas de la base de datos mediante un join, mismo etc, etc. tablas accesadas : desarsvp.edmoved t1 desarsvp.eddesop t2 desarsvp.agpocta t3 modificacion : oscar urbano f. (asateck) f:. Pertenece a: PROGRAM-ID. ECB390M. INSTALLATION. PROBURSA, S.A. DE C.V..', ingestion: 'auto', layer: 'program', name: 'ECB390M', nodeType: 'program', objective: 'CLASIFICAR LOS INTERESES PAGADOS MENSUALES, PARA EFECTOS DE CONCILIACION. METODO : SE CREO UN QUERY ACCESANDO 3 TABLAS DE LA BASE DE DATOS MEDIANTE UN JOIN, MISMO ETC, ETC. TABLAS ACCESADAS : DESARSVP.EDMOVED T1 DESARSVP.EDDESOP T2 DESARSVP.AGPOCTA T3 MODIFICACION : OSCAR URBANO F. (ASATECK) F:', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB390M.cbl', system: 'PROGRAM-ID. ECB390M. INSTALLATION. PROBURSA, S.A. DE C.V.', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'ECB395M'})
SET n += {description: 'Programa COBOL que clasificar las comisiones cobradas mensualmente para efectos de conciliacion. tablas accesadas : desarsvp.edmoved t1 desarsvp.eddesop t2. Pertenece a: PROGRAM-ID. ECB395M. INSTALLATION. BBVA BANCOMER, S.A. DE C.V..', ingestion: 'auto', layer: 'program', name: 'ECB395M', nodeType: 'program', objective: 'CLASIFICAR LAS COMISIONES COBRADAS MENSUALMENTE PARA EFECTOS DE CONCILIACION. TABLAS ACCESADAS : DESARSVP.EDMOVED T1 DESARSVP.EDDESOP T2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB395M.cbl', system: 'PROGRAM-ID. ECB395M. INSTALLATION. BBVA BANCOMER, S.A. DE C.V.', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'ECB400M'})
SET n += {description: 'Programa COBOL que actualizar en edcont con simpres = \'s\' los contratos que se encuentran en la param (tt2). Pertenece a: PROBURSA, S.A. DE C.V. 16/JULIO/1998 /.', ingestion: 'auto', layer: 'program', name: 'ECB400M', nodeType: 'program', objective: 'ACTUALIZAR EN EDCONT CON SIMPRES = \'S\' LOS CONTRATOS QUE SE ENCUENTRAN EN LA PARAM (TT2)', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB400M.cbl', system: 'PROBURSA, S.A. DE C.V. 16/JULIO/1998 /', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'ECB405M'})
SET n += {description: 'Programa COBOL que generar reporte de control de estados de cuenta impresos y no impresos ult. modificacion : monica rubio (asateck - feb01) se modifico para que los promotores 66,355 y 215 se incluyeran en el reporte de no impresos ya que no se imprimen los estados de cuenta se accesa a la tabla: edcuenta y param (t99). Pertenece a: PROBURSA, S.A. DE C.V. 07/OCT/99. /.', ingestion: 'auto', layer: 'program', name: 'ECB405M', nodeType: 'program', objective: 'GENERAR REPORTE DE CONTROL DE ESTADOS DE CUENTA IMPRESOS Y NO IMPRESOS ULT. MODIFICACION : MONICA RUBIO (ASATECK - FEB01) SE MODIFICO PARA QUE LOS PROMOTORES 66,355 Y 215 SE INCLUYERAN EN EL REPORTE DE NO IMPRESOS YA QUE NO SE IMPRIMEN LOS ESTADOS DE CUENTA SE ACCESA A LA TABLA: EDCUENTA Y PARAM (T99)', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', system: 'PROBURSA, S.A. DE C.V. 07/OCT/99. /', viewTag: 'cobol-program'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_ECB330M', name: 'ECB330M_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de ECB330M para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_ECB330M', ingestion: 'auto', layer: 'functional', name: 'ECB330M_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB330M.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_ECB340M', name: 'ECB340M_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de ECB340M para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_ECB340M', ingestion: 'auto', layer: 'functional', name: 'ECB340M_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB340M.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_ECB350M', name: 'ECB350M_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de ECB350M para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_ECB350M', ingestion: 'auto', layer: 'functional', name: 'ECB350M_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB350M.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_ECB360M', name: 'ECB360M_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de ECB360M para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_ECB360M', ingestion: 'auto', layer: 'functional', name: 'ECB360M_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB360M.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_ECB380M', name: 'ECB380M_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de ECB380M para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_ECB380M', ingestion: 'auto', layer: 'functional', name: 'ECB380M_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB380M.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_ECB385M', name: 'ECB385M_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de ECB385M para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_ECB385M', ingestion: 'auto', layer: 'functional', name: 'ECB385M_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB385M.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_ECB390M', name: 'ECB390M_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de ECB390M para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_ECB390M', ingestion: 'auto', layer: 'functional', name: 'ECB390M_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB390M.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_ECB395M', name: 'ECB395M_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de ECB395M para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_ECB395M', ingestion: 'auto', layer: 'functional', name: 'ECB395M_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB395M.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_ECB400M', name: 'ECB400M_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de ECB400M para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_ECB400M', ingestion: 'auto', layer: 'functional', name: 'ECB400M_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB400M.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_ECB405M', name: 'ECB405M_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de ECB405M para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_ECB405M', ingestion: 'auto', layer: 'functional', name: 'ECB405M_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m', sourceFile: 'src/ECB405M.cbl', viewTag: 'functional'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '000-0100-INICIO', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [305], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '000-9900-FIN', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [316], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '000-CONTROL', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [304], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '005-0100-INICIO', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [320], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '005-9900-FIN', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [332], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '005-CHECA-PROCESO', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [319], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '010-0100-INICIO', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [353], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '010-9900-FIN', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [371], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '010-INICIO', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [352], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '015-0100-INICIO', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [338], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '015-9900-FIN', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [463], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '015-ABRE-CURSOR-1', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [379], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '015-ABRE-CURSOR-2', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [421], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '015-CHECA-FIN-MES', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [337], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '015-INICIO', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [422], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '050-0100-INICIO', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [467], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '050-9900-FIN', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [479], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '050-PRINCIPAL', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [466], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '060-0100-INICIO', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [484], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '060-9900-FIN', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [510], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '060-PROCESA-CURSOR', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [483], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '160-0100-INICIO', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [515], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '160-9900-FIN', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [519], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '160-TERMINA', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [514], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '200-0100-INICIO', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [596], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '200-9900-FIN', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [646], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '200-CONSTRUYE-DETA-1', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [523], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '200-CONSTRUYE-DETA-2', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [595], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '210-9900-FIN', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [662], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '210-INICIO', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [650], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '210-TOTAL-EMI', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [649], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '220-100-INICIO', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [666], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '220-9900-FIN', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [675], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '220-CORTE-TPO', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [665], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '230-100-INICIO', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [679], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '230-9900-FIN', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [687], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '230-CORTE-GPO', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [678], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '240-100-INICIO', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [691], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '240-9900-FIN', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [699], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '240-CORTE-CVE', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [690], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '500-9900-FIN', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [786], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '500-INICIO', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [746], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '500-LEE-CUR-1', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [706], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '500-LEE-CUR-2', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [745], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '505-0100-INICIO', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [836], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '505-LEE-PARAM', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [835], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '505-LEE-PARAM-FIN', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [853], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '510-0100-INICIO', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [794], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '510-999-FIN', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [808], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '510-LEE-P05', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [793], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '520-0100-INICIO', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [815], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '520-999-FIN', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [829], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '520-LEE-TF6', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [814], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '550-0100-INICIO', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [860], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '550-LEE-PARAM-FIN', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [881], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '550-LEE-SEPRULT', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [859], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '600-0100-INICIO', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [888], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '600-9900-FIN', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [903], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '600-ENCA-R1', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [887], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '800-0100-INICIO', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [907], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '800-9900-FIN', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [909], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '800-CIERRA-ARCHIVO', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [906], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '810-9900-FIN', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [930], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '810-CIERRA-CURSOR-1', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [914], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '810-CIERRA-CURSOR-2', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [925], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '810-INICIO', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [926], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '980-0000-INICIO', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [941], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '980-9900-FIN', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [952], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '980-ABORTA', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [940], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '990-0100-INICIO', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [956], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '990-9900-FIN', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [964], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [955], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: 'AUTHOR', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [15], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [5], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: 'FILE', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [23], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [20], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [19], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: 'LINKAGE', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [291], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: 'REMARKS', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [6], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [34], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '005-0100-FIN', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [713], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '005-0100-INICIO', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [645], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '005-INICIO', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [644], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '010-LEE-PARAMP04', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [717], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '010-LEE-PARAMP04-FIN', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [726], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '515-0100-INICIO', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [787], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '515-9900-FIN', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [808], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '515-OBTEN-EVENTO-CARGA', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [786], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '600-0100-INICIO', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [812], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '600-9900-FIN', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [890], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '600-INS-SELECT', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [730], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '600-INSERT-EDCUENTA', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [811], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '610-0100-INICIO', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [897], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '610-9900-FIN', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [921], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '610-DEL-EDCUENTA', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [896], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '635-0100-INICIO', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [927], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '635-9900-FIN', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [947], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '635-ACT-CTLPROC', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [926], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '640-0100-INICIO', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [953], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '640-9900-FIN', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [991], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '640-INS-CTLPROC', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [952], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '980-0100-INICIO', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [1001], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '980-0200-SIGUE', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [1006], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '980-9900-FIN', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [1009], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '980-ABORTA', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [1000], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '990-0100-INICIA', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [1016], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '990-9900-FIN', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [1028], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [1015], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '999-0100-INICIO', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [1044], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '999-9900-FIN', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [1054], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '999-MUEVE-FECHAS', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [1043], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: 'AUTHOR', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [25], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [8], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: 'ECB340M', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [32], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: 'IBM-4381', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [29], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [31], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: 'INSTALLATION', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [6], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [28], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [2], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [26], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [35], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '000-0100-PROCESO-PRINCIPAL', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [432], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '010-0100-INICIO', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [444], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '010-9999-FIN', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [496], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '010-INICIO', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [443], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '015-9999-FIN', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [551], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '015-PROCESO', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [499], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '020-0100-INICIO', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [558], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '020-9999-FIN', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [574], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '020-PROCESA-DETALLE', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [557], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '030-0100-INICIO', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [581], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '030-9999-FIN', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [601], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '030-PROCESA-REPORTE', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [580], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '035-9999-FIN', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [608], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '035-FIN', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [604], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '200-0100-INICIO', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [615], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '200-9999-FIN', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [619], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '200-ENCABEZADO', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [614], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '500-0100-INICIO', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [626], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '500-9999-FIN', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [812], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '500-LEE-CURSOR', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [625], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '520-0100-INICIO', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [816], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '520-9900-FIN', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [859], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '520-CIERRA-CURSOR', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [815], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '700-0100-INICIO', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [866], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '700-9900-FIN', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [945], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '700-ABRE-CURSOR', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [865], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '800-0100-INICIO', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [952], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '800-9900-FIN', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [963], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '800-ENCA', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [951], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '980-0100-INICIO', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [977], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '980-9900-FIN', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [984], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '980-ABORTA', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [976], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '990-0100-INICIO', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [988], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '990-9900-FIN', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [991], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [987], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: 'AUTHOR', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [16], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [8], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: 'ECB350M', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: 'FILE', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [33], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [23], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: 'IBM-9121', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [20], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [22], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: 'INSTALLATION', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [6], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [19], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [2], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [17], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [61], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Paragraph {name: '000-RUTINA-PRINCIPAL', programName: 'ECB360M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [186], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Paragraph {name: '010-INICIO', programName: 'ECB360M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [209], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Paragraph {name: '100-ABRE-ARCHIVOS', programName: 'ECB360M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [222], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Paragraph {name: '110-DECLARA-CURSOR-EDMOVED', programName: 'ECB360M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [228], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Paragraph {name: '120-DECLARA-CURSOR-PARAM', programName: 'ECB360M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [261], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Paragraph {name: '130-ABRE-CURSOR-PARAM', programName: 'ECB360M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [283], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Paragraph {name: '140-PROCESA-REGISTROS-PARAM', programName: 'ECB360M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [303], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Paragraph {name: '150-CIERRA-CURSOR-PARAM', programName: 'ECB360M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [321], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Paragraph {name: '160-ABRE-CURSOR-EDMOVED', programName: 'ECB360M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [339], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Paragraph {name: '170-PROCESA-REGISTROS-EDMOVED', programName: 'ECB360M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [359], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Paragraph {name: '175-REGISTROS-EDMOVED', programName: 'ECB360M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [369], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Paragraph {name: '180-CIERRA-CURSOR-EDMOVED', programName: 'ECB360M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [407], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Paragraph {name: '190-CIERRA-ARCHIVOS', programName: 'ECB360M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [425], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Paragraph {name: '200-SORT-ARCHIVOS', programName: 'ECB360M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [431], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Paragraph {name: '500-LEE-CURSOR-PARAM', programName: 'ECB360M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [440], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Paragraph {name: '510-LEE-CURSOR-EDMOVED', programName: 'ECB360M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [466], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Paragraph {name: '980-ABORTA', programName: 'ECB360M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [502], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'ECB360M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [508], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Paragraph {name: 'COMP-3', programName: 'ECB360M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [103], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ECB360M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [30], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Paragraph {name: 'FILE', programName: 'ECB360M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [39], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'ECB360M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [34], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB360M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [33], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB360M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [83], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Paragraph {name: '000-RUTINA-PRINCIPAL', programName: 'ECB380M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [176], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Paragraph {name: '010-INICIO', programName: 'ECB380M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [199], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Paragraph {name: '100-ABRE-ARCHIVOS', programName: 'ECB380M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [212], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Paragraph {name: '110-DECLARA-CURSOR-EDMOVED', programName: 'ECB380M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [218], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Paragraph {name: '120-DECLARA-CURSOR-PARAM', programName: 'ECB380M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [247], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Paragraph {name: '130-ABRE-CURSOR-PARAM', programName: 'ECB380M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [265], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Paragraph {name: '140-PROCESA-REGISTROS-PARAM', programName: 'ECB380M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [281], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Paragraph {name: '150-CIERRA-CURSOR-PARAM', programName: 'ECB380M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [298], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Paragraph {name: '160-ABRE-CURSOR-EDMOVED', programName: 'ECB380M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [312], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Paragraph {name: '170-PROCESA-REGISTROS-EDMOVED', programName: 'ECB380M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [328], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Paragraph {name: '175-REGISTROS-EDMOVED', programName: 'ECB380M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [338], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Paragraph {name: '180-CIERRA-CURSOR-EDMOVED', programName: 'ECB380M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [369], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Paragraph {name: '190-CIERRA-ARCHIVOS', programName: 'ECB380M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [383], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Paragraph {name: '200-SORT-ARCHIVOS', programName: 'ECB380M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [389], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Paragraph {name: '500-LEE-CURSOR-PARAM', programName: 'ECB380M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [399], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Paragraph {name: '510-LEE-CURSOR-EDMOVED', programName: 'ECB380M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [421], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Paragraph {name: 'COMP-3', programName: 'ECB380M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [103], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ECB380M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [30], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Paragraph {name: 'FILE', programName: 'ECB380M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [39], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'ECB380M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [34], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB380M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [33], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB380M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [83], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: '980-ABORTA', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [931], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [937], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: 'ABRE-ARCHIVOS', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [479], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: 'ARMA-E-IMPRIME-REP2', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [720], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: 'ARMA-E-IMPRIME-TOT-MES', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [700], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: 'ARMA-REGISTRO-E-IMPRIME', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [673], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: 'CIERRA-ARCHIVOS', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [488], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [30], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: 'DESPLIEGA-FH-DE-PROCESO', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [496], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: 'FILE', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [40], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [34], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: 'FIN-ARCHIVO-ECB385I', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [471], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: 'IMPRIME-ENCABEZADOS-REPORTE1', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [849], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: 'IMPRIME-ENCABEZADOS-REPORTE2', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [878], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [33], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: 'LEE-REGISTRO-ECB385I', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [524], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: 'MUEVE-E-IMPRIME-TOT-GRALS', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [824], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: 'PROCESA-D1', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [660], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: 'PROCESA-REGISTRO-FECHA', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [562], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: 'PROCESA-REGISTROS-EDMOVED', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [532], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: 'PROCESA-REGISTROS-MES', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [547], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: 'REPO-R2-CONSLDDO', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [491], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: 'RUTINA-PRINCIPAL', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [462], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: 'SUMA-TOTALES-INSTRUMENTO', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [779], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: 'SUMARIZA-TOTALES-DEL-MES', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [790], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: 'TOMA-FECHA-PARAMETRO-4', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [907], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: 'TOTLS-CONSLDDO', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [745], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: 'TOTLS-CONSLDO', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [763], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: 'TOTLS-INSTRMNTO', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [785], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [64], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Paragraph {name: 'ABRE-ARCHIVOS', programName: 'ECB390M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [481], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Paragraph {name: 'ARMA-E-IMPRIME-REP2', programName: 'ECB390M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [702], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Paragraph {name: 'ARMA-E-IMPRIME-TOT-MES', programName: 'ECB390M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [682], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Paragraph {name: 'ARMA-REGISTRO-E-IMPRIME', programName: 'ECB390M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [655], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Paragraph {name: 'CIERRA-ARCHIVOS', programName: 'ECB390M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [490], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ECB390M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [39], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Paragraph {name: 'DESPLIEGA-FH-DE-PROCESO', programName: 'ECB390M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [498], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Paragraph {name: 'FILE', programName: 'ECB390M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [49], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'ECB390M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [43], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Paragraph {name: 'FIN-ARCHIVO-ECB390I', programName: 'ECB390M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [473], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Paragraph {name: 'IMPRIME-ENCABEZADOS-REPORTE1', programName: 'ECB390M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [801], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Paragraph {name: 'IMPRIME-ENCABEZADOS-REPORTE2', programName: 'ECB390M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [830], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB390M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [42], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Paragraph {name: 'LEE-REGISTRO-ECB390I', programName: 'ECB390M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [525], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Paragraph {name: 'MUEVE-E-IMPRIME-TOT-GRALS', programName: 'ECB390M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [776], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Paragraph {name: 'PROCESA-D1', programName: 'ECB390M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [642], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Paragraph {name: 'PROCESA-REGISTRO-FECHA', programName: 'ECB390M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [561], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Paragraph {name: 'PROCESA-REGISTROS-EDMOVED', programName: 'ECB390M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [533], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Paragraph {name: 'PROCESA-REGISTROS-MES', programName: 'ECB390M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [547], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Paragraph {name: 'REPO-R2-CONSLDDO', programName: 'ECB390M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [493], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Paragraph {name: 'RUTINA-PRINCIPAL', programName: 'ECB390M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [464], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Paragraph {name: 'SUMA-TOTALES-INSTRUMENTO', programName: 'ECB390M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [745], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Paragraph {name: 'SUMARIZA-TOTALES-DEL-MES', programName: 'ECB390M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [756], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Paragraph {name: 'TOMA-FECHA-PARAMETRO-4', programName: 'ECB390M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [859], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Paragraph {name: 'TOTLS-CONSLDDO', programName: 'ECB390M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [731], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Paragraph {name: 'TOTLS-INSTRMNTO', programName: 'ECB390M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [751], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB390M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [73], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB395M'}), (b:Paragraph {name: 'ABRE-ARCHIVOS', programName: 'ECB395M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [324], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB395M'}), (b:Paragraph {name: 'ABRE-CURSOR-EDMOVED', programName: 'ECB395M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [405], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB395M'}), (b:Paragraph {name: 'ARMA-E-IMPRIME-TOT-GRAL', programName: 'ECB395M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [489], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB395M'}), (b:Paragraph {name: 'ARMA-REGISTRO-E-IMPRIME', programName: 'ECB395M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [500], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB395M'}), (b:Paragraph {name: 'CIERRA-ARCHIVOS', programName: 'ECB395M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [330], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB395M'}), (b:Paragraph {name: 'CIERRA-CURSOR-EDMOVED', programName: 'ECB395M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [365], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB395M'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ECB395M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [26], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB395M'}), (b:Paragraph {name: 'DECLARA-CURSOR-EDMOVED', programName: 'ECB395M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [336], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB395M'}), (b:Paragraph {name: 'DESPLIEGA-FH-DE-PROCESO', programName: 'ECB395M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [379], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB395M'}), (b:Paragraph {name: 'FILE', programName: 'ECB395M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [34], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB395M'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'ECB395M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [30], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB395M'}), (b:Paragraph {name: 'IMPRIME-ENCABEZADOS-REPORTE', programName: 'ECB395M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [541], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB395M'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB395M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [29], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB395M'}), (b:Paragraph {name: 'LEE-CURSOR-EDMOVED', programName: 'ECB395M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [421], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB395M'}), (b:Paragraph {name: 'MUEVE-E-IMPRIME-TOTALES', programName: 'ECB395M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [530], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB395M'}), (b:Paragraph {name: 'PROCESA-D1', programName: 'ECB395M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [476], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB395M'}), (b:Paragraph {name: 'PROCESA-REGISTROS-EDMOVED', programName: 'ECB395M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [452], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB395M'}), (b:Paragraph {name: 'RUTINA-PRINCIPAL', programName: 'ECB395M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [292], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB395M'}), (b:Paragraph {name: 'SUMA-TOTALES-MENSUALES', programName: 'ECB395M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [519], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB395M'}), (b:Paragraph {name: 'TOMA-FECHA-PARAMETRO-4', programName: 'ECB395M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [561], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB395M'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB395M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [44], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Paragraph {name: '000-100-PROCESO-CONTROL', programName: 'ECB400M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [130], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Paragraph {name: '620-0100-INICIO', programName: 'ECB400M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [145], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Paragraph {name: '620-9900-EXIT', programName: 'ECB400M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [159], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Paragraph {name: '620-DEL-EDCONT', programName: 'ECB400M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [144], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Paragraph {name: '630-0100-INICIO', programName: 'ECB400M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [168], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Paragraph {name: '630-9900-EXIT', programName: 'ECB400M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [192], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Paragraph {name: '630-UPD-EDCONT', programName: 'ECB400M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [167], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Paragraph {name: '980-0100-INICIO', programName: 'ECB400M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [206], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Paragraph {name: '980-0200-SIGUE', programName: 'ECB400M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [210], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Paragraph {name: '980-9900-EXIT', programName: 'ECB400M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [214], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Paragraph {name: '980-ABORTA', programName: 'ECB400M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [205], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Paragraph {name: '990-0100-INICIA', programName: 'ECB400M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [221], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Paragraph {name: '990-9900-EXIT', programName: 'ECB400M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [226], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'ECB400M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [220], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Paragraph {name: 'AUTHOR', programName: 'ECB400M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ECB400M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [16], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'ECB400M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [8], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Paragraph {name: 'ECB400M', programName: 'ECB400M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Paragraph {name: 'FILE', programName: 'ECB400M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [32], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'ECB400M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [23], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Paragraph {name: 'IBM-9121', programName: 'ECB400M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [20], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB400M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [22], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Paragraph {name: 'INSTALLATION', programName: 'ECB400M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [6], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'ECB400M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [19], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'ECB400M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [2], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'ECB400M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [17], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB400M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [35], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '000-0100-PROCESO-PRINCIPAL', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [375], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '010-0100-INICIO', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [387], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '010-9999-FIN', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [406], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '010-INICIO', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [386], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '015-9999-FIN', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [411], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '015-PROCESO', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [409], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '020-0100-INICIO', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [415], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '020-9999-FIN', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [449], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '020-ARMA-REPORTE1', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [414], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '025-0100-INICIO', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [453], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '025-9999-FIN', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [515], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '025-ARMA-REPORTE2', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [452], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '030-0100-INICIO', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [522], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '030-9999-FIN', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [553], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '030-PROCESA-REPORTE1', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [521], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '035-0100-INICIO', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [557], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '035-9999-FIN', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [561], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '035-FIN', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [556], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '100-0100-FIN', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [573], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '100-0100-INICIO', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [565], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '100-OBTIENE-P04', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [564], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '200-0100-INICIO', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [580], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '200-9999-FIN', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [584], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '200-ENCABEZADO', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [579], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '400-0100-INICIO', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [691], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '400-9900-FIN', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [702], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '400-ABRE-CURSOR1', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [690], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '450-0100-INICIO', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [706], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '450-9900-FIN', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [717], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '450-ABRE-CURSOR2', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [705], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '500-0100-INICIO', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [591], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '500-9999-FIN', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [622], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '500-LEE-CURSOR1', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [590], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '510-0100-INICIO', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [629], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '510-9999-FIN', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [662], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '510-LEE-CURSOR2', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [628], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '600-0100-INICIO', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [666], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '600-9900-FIN', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [673], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '600-CIERRA-CURSOR1', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [665], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '650-0100-INICIO', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [677], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '650-9900-FIN', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [684], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '650-CIERRA-CURSOR2', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [676], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '700-0100-INICIO', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [721], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '700-9999-FIN', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [740], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '700-CIFRAS', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [720], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '750-0100-INICIO', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [744], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '750-9999-FIN', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [750], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '750-CIFRAS', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [743], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '800-0100-INICIO', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [757], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '800-9900-FIN', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [772], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '800-ENCA', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [756], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '980-0100-INICIO', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [786], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '980-9900-FIN', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [793], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '980-ABORTA', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [785], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '990-0100-INICIO', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [797], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '990-9900-FIN', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [802], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [796], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: 'AUTHOR', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [22], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [8], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: 'ECB405M', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: 'FILE', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [37], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [29], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: 'IBM-9121', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [26], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [28], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: 'INSTALLATION', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [6], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [25], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [2], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [23], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB405M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [49], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_ECB330M'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_ECB330M', name: 'ECB330M_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_ECB340M'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_ECB340M', name: 'ECB340M_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_ECB350M'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_ECB350M', name: 'ECB350M_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_ECB360M'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_ECB360M', name: 'ECB360M_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_ECB380M'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_ECB380M', name: 'ECB380M_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_ECB385M'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_ECB385M', name: 'ECB385M_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_ECB390M'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_ECB390M', name: 'ECB390M_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_ECB395M'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_ECB395M', name: 'ECB395M_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_ECB400M'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_ECB400M', name: 'ECB400M_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_ECB405M'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_ECB405M', name: 'ECB405M_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '000-0100-INICIO', programName: 'ECB330M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [306], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '010-0100-INICIO', programName: 'ECB330M'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [370], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '015-INICIO', programName: 'ECB330M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [402, 407, 453, 458], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '505-0100-INICIO', programName: 'ECB330M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [851], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '510-0100-INICIO', programName: 'ECB330M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [804], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '520-0100-INICIO', programName: 'ECB330M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [825], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '550-0100-INICIO', programName: 'ECB330M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [875], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '810-9900-FIN', programName: 'ECB330M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [937], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'ECB330M'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [978], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'ECB330M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [971], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'DAGPOCON'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [257], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'DCARTERA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [251], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'DCONCEPT'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [267], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [282], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'DCUENTA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [241], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'DEDVALCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [277], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'DGPOCONC'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [262], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'DOPERA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [246], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [287], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'DSEPRULT'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [272], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [112], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [132], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [138], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [122], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [230], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'SIEPAP05'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [119], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'SIETATF6'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [144], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [125], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '515-0100-INICIO', programName: 'ECB340M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [805], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '600-0100-INICIO', programName: 'ECB340M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [886], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '610-0100-INICIO', programName: 'ECB340M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [905, 915], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '635-0100-INICIO', programName: 'ECB340M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [942], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '640-0100-INICIO', programName: 'ECB340M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [988], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '640-9900-FIN', programName: 'ECB340M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [998], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB340M'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [582], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB340M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [589], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB340M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [174], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB340M'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [640], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB340M'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [599], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB340M'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [122], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB340M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [178], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '000-0100-PROCESO-PRINCIPAL', programName: 'ECB350M'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [440], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '010-0100-INICIO', programName: 'ECB350M'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [493], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '500-0100-INICIO', programName: 'ECB350M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [803], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '520-0100-INICIO', programName: 'ECB350M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [858], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '700-0100-INICIO', programName: 'ECB350M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [942], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '800-9900-FIN', programName: 'ECB350M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [969], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'ECB350M'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [1004], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'ECB350M'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [998], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB350M'}), (b:Copybook {name: 'DAGPOPRO'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [190], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB350M'}), (b:Copybook {name: 'DEDREPER'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [272], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB350M'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [265], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB350M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [164], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB350M'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [178], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB350M'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [160], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB350M'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [427], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB350M'}), (b:Copybook {name: 'SICNC011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [184], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB350M'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [196], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB350M'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [171], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB350M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [153], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '010-INICIO', programName: 'ECB360M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [210], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '110-DECLARA-CURSOR-EDMOVED', programName: 'ECB360M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [255], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '120-DECLARA-CURSOR-PARAM', programName: 'ECB360M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [277], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '130-ABRE-CURSOR-PARAM', programName: 'ECB360M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [297], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '150-CIERRA-CURSOR-PARAM', programName: 'ECB360M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [333], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '160-ABRE-CURSOR-EDMOVED', programName: 'ECB360M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [353], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '180-CIERRA-CURSOR-EDMOVED', programName: 'ECB360M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [419], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '500-LEE-CURSOR-PARAM', programName: 'ECB360M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [457], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '510-LEE-CURSOR-EDMOVED', programName: 'ECB360M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [494], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'ECB360M'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [505], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'ECB360M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [519], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'ECB360M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [514], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'COMP-3', programName: 'ECB360M'}), (b:Copybook {name: 'DAGPOCTA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [179], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'COMP-3', programName: 'ECB360M'}), (b:Copybook {name: 'DEDDESOP'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [173], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'COMP-3', programName: 'ECB360M'}), (b:Copybook {name: 'DEDMOVED'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [167], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'COMP-3', programName: 'ECB360M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [161], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'COMP-3', programName: 'ECB360M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [142], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'COMP-3', programName: 'ECB360M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [149], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'COMP-3', programName: 'ECB360M'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [146], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'COMP-3', programName: 'ECB360M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [155], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '010-INICIO', programName: 'ECB380M'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [200], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '510-LEE-CURSOR-EDMOVED', programName: 'ECB380M'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [455], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'COMP-3', programName: 'ECB380M'}), (b:Copybook {name: 'DAGPOCTA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [169], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'COMP-3', programName: 'ECB380M'}), (b:Copybook {name: 'DEDDESOP'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [163], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'COMP-3', programName: 'ECB380M'}), (b:Copybook {name: 'DEDMOVED'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [157], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'COMP-3', programName: 'ECB380M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [151], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'COMP-3', programName: 'ECB380M'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [138], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'COMP-3', programName: 'ECB380M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [145], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'ECB385M'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [934], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'ECB385M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [953], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'ECB385M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [948], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'DESPLIEGA-FH-DE-PROCESO', programName: 'ECB385M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [497], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'TOMA-FECHA-PARAMETRO-4', programName: 'ECB385M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [924], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB385M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [455], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB385M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [235], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB385M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [242], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB385M'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [229], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB385M'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [239], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB385M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [449], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'DESPLIEGA-FH-DE-PROCESO', programName: 'ECB390M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [499], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'TOMA-FECHA-PARAMETRO-4', programName: 'ECB390M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [883], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB390M'}), (b:Copybook {name: 'DAGPOCTA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [457], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB390M'}), (b:Copybook {name: 'DEDDESOP'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [451], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB390M'}), (b:Copybook {name: 'DEDMOVED'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [445], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB390M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [439], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB390M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [234], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB390M'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [228], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB390M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [433], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'DESPLIEGA-FH-DE-PROCESO', programName: 'ECB395M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [382], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'TOMA-FECHA-PARAMETRO-4', programName: 'ECB395M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [585], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB395M'}), (b:Copybook {name: 'DEDDESOP'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [285], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB395M'}), (b:Copybook {name: 'DEDMOVED'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [279], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB395M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [273], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB395M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [158], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB395M'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [152], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB395M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [267], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '000-100-PROCESO-CONTROL', programName: 'ECB400M'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [137], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '620-0100-INICIO', programName: 'ECB400M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [156], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '630-0100-INICIO', programName: 'ECB400M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [189], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '630-9900-EXIT', programName: 'ECB400M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [199], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '990-9900-EXIT', programName: 'ECB400M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [234], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB400M'}), (b:Copybook {name: 'DEDCONT'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [119], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB400M'}), (b:Copybook {name: 'DEDCUENT'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [112], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB400M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [105], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB400M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [97], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB400M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [78], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB400M'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [71], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB400M'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [127], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB400M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [85], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '000-0100-PROCESO-PRINCIPAL', programName: 'ECB405M'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [383], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '010-0100-INICIO', programName: 'ECB405M'}), (b:Copybook {name: 'SICCE029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [395], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '400-0100-INICIO', programName: 'ECB405M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [699], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '450-0100-INICIO', programName: 'ECB405M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [714], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '500-0100-INICIO', programName: 'ECB405M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [607], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '510-0100-INICIO', programName: 'ECB405M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [645], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '600-0100-INICIO', programName: 'ECB405M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [672], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '650-0100-INICIO', programName: 'ECB405M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [683], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '800-9900-FIN', programName: 'ECB405M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [778], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'ECB405M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [809], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'ECB405M'}), (b:Copybook {name: 'SICCE029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [819], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB405M'}), (b:Copybook {name: 'DAGPOPRO'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [187], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB405M'}), (b:Copybook {name: 'DEDCUENT'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [193], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB405M'}), (b:Copybook {name: 'DEDREPER'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [308], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB405M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [181], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB405M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [151], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB405M'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [199], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB405M'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [301], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB405M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [155], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB405M'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [169], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB405M'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [367], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB405M'}), (b:Copybook {name: 'SICNC011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [175], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB405M'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [162], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB405M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [144], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Functionality {name: 'FUNCTIONALITY_ECB330M'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Functionality {name: 'FUNCTIONALITY_ECB340M'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Functionality {name: 'FUNCTIONALITY_ECB350M'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Functionality {name: 'FUNCTIONALITY_ECB360M'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Functionality {name: 'FUNCTIONALITY_ECB380M'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Functionality {name: 'FUNCTIONALITY_ECB385M'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Functionality {name: 'FUNCTIONALITY_ECB390M'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB395M'}), (b:Functionality {name: 'FUNCTIONALITY_ECB395M'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Functionality {name: 'FUNCTIONALITY_ECB400M'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Functionality {name: 'FUNCTIONALITY_ECB405M'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Copybook {name: 'DAGPOCON'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [257], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Copybook {name: 'DCARTERA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [251], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Copybook {name: 'DCONCEPT'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [267], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [282], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Copybook {name: 'DCUENTA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [241], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Copybook {name: 'DEDVALCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [277], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Copybook {name: 'DGPOCONC'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [262], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Copybook {name: 'DOPERA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [246], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [287], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Copybook {name: 'DSEPRULT'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [272], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [978], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [971], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [112], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [132], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [138], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [937], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [122], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [230], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Copybook {name: 'SIEPAP05'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [119], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Copybook {name: 'SIETATF6'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [144], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [125], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [582], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [589], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [998], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [174], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [640], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [599], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [122], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [178], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Copybook {name: 'DAGPOPRO'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [190], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Copybook {name: 'DEDREPER'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [272], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [265], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [969], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [164], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [178], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [1004], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [998], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [160], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [440], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [427], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Copybook {name: 'SICNC011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [184], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [196], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [171], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [153], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Copybook {name: 'DAGPOCTA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [179], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Copybook {name: 'DEDDESOP'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [173], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Copybook {name: 'DEDMOVED'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [167], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [161], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [519], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [142], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [514], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [149], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [146], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [505], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [155], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Copybook {name: 'DAGPOCTA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [169], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Copybook {name: 'DEDDESOP'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [163], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Copybook {name: 'DEDMOVED'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [157], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [151], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [455], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [138], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [145], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [455], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [953], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [235], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [948], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [242], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [229], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [239], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [934], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [449], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Copybook {name: 'DAGPOCTA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [457], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Copybook {name: 'DEDDESOP'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [451], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Copybook {name: 'DEDMOVED'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [445], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [439], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [883], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [234], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [228], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [433], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB395M'}), (b:Copybook {name: 'DEDDESOP'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [285], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB395M'}), (b:Copybook {name: 'DEDMOVED'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [279], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB395M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [273], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB395M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [585], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB395M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [158], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB395M'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [152], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB395M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [267], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Copybook {name: 'DEDCONT'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [119], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Copybook {name: 'DEDCUENT'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [112], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [105], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [234], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [97], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [199], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [78], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [71], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [137], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [127], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [85], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Copybook {name: 'DAGPOPRO'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [187], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Copybook {name: 'DEDCUENT'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [193], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Copybook {name: 'DEDREPER'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [308], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [181], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [809], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [151], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [199], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [301], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [778], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [155], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [169], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Copybook {name: 'SICCE029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [819], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [383], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [367], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Copybook {name: 'SICNC011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [175], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [162], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [144], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:DBTable {name: 'CARTERA'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:DBTable {name: 'EDVALCA'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [796, 797, 798, 799, 800, 801, 816, 817, 818, 819, 820, 821, 822, 837, 838, 839, 840, 841, 842, 843, 844], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB330M'}), (b:DBTable {name: 'SEPRULT'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [861, 862, 863, 864, 865, 866, 867, 868, 869], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:DBTable {name: 'CTLPROC'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [658, 659, 660, 661, 662, 663, 664, 665, 678, 679, 680, 681, 682, 683, 684, 685, 686, 788, 789, 790, 791, 792, 793, 794, 795], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:DBTable {name: 'CUENTA'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 768, 769, 770, 771, 772, 773, 774, 775, 776, 777, 778, 779, 780], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:DBTable {name: 'EDCUENTA'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [908, 909, 910], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [690, 691, 692, 693, 694, 695, 696, 718, 719, 720, 721, 722, 723, 724], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB350M'}), (b:DBTable {name: 'EDREPER'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB360M'}), (b:DBTable {name: 'EDMOVED'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB360M'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [262, 263, 264, 265, 266, 267], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB380M'}), (b:DBTable {name: 'EDMOVED'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB380M'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [248, 249, 250, 251, 252, 253], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB385M'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [908, 909, 910, 911, 912, 913], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB390M'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [860, 861, 862, 863, 864, 865], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB395M'}), (b:DBTable {name: 'EDMOVED'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB395M'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 562, 563, 564, 565, 566, 567], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB400M'}), (b:DBTable {name: 'EDCONT'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [146, 147, 148, 149, 150, 151], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB400M'}), (b:DBTable {name: 'EDCUENTA'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB400M'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:DBTable {name: 'EDREPER'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 328, 329, 330, 331, 332, 334, 335, 340, 341, 342, 343, 344, 345, 346, 347, 348, 351, 353, 354, 355, 356, 357, 360, 361], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB405M'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 328, 329, 330, 331, 332, 334, 335, 340, 341, 342, 343, 344, 345, 346, 347, 348, 351, 353, 354, 355, 356, 357, 360, 361, 566, 567, 568, 569, 570, 571], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_ECB330M', name: 'ECB330M_PROCESSING'}), (b:Paragraph {name: '990-9900-FIN', programName: 'ECB330M'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [964], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_ECB340M', name: 'ECB340M_PROCESSING'}), (b:Paragraph {name: '999-9900-FIN', programName: 'ECB340M'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [1054], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_ECB350M', name: 'ECB350M_PROCESSING'}), (b:Paragraph {name: '990-9900-FIN', programName: 'ECB350M'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [991], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_ECB360M', name: 'ECB360M_PROCESSING'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'ECB360M'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [508], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_ECB380M', name: 'ECB380M_PROCESSING'}), (b:Paragraph {name: '510-LEE-CURSOR-EDMOVED', programName: 'ECB380M'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [421], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_ECB385M', name: 'ECB385M_PROCESSING'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'ECB385M'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [937], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_ECB390M', name: 'ECB390M_PROCESSING'}), (b:Paragraph {name: 'TOMA-FECHA-PARAMETRO-4', programName: 'ECB390M'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [859], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_ECB395M', name: 'ECB395M_PROCESSING'}), (b:Paragraph {name: 'TOMA-FECHA-PARAMETRO-4', programName: 'ECB395M'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [561], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_ECB400M', name: 'ECB400M_PROCESSING'}), (b:Paragraph {name: '990-9900-EXIT', programName: 'ECB400M'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [226], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_ECB405M', name: 'ECB405M_PROCESSING'}), (b:Paragraph {name: '990-9900-FIN', programName: 'ECB405M'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [802], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:DBTable {name: 'CTLPROC'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [928, 929, 930, 931, 932, 933, 934, 954, 955, 956, 957, 958, 959, 960, 961, 962, 963, 964, 965, 966, 967, 968, 969, 970, 971, 972, 973, 974, 975, 976, 977, 978, 979, 980], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:DBTable {name: 'EDCUENTA'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 768, 769, 770, 771, 772, 773, 774, 775, 776, 777, 778, 779, 780, 813, 814, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 908, 909, 910], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB340M'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [707, 708, 709, 710, 711, 712], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Program {name: 'ECB400M'}), (b:DBTable {name: 'EDCONT'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [146, 147, 148, 149, 150, 151, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '000-0100-INICIO', programName: 'ECB330M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [306], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '010-0100-INICIO', programName: 'ECB330M'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [370], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '015-INICIO', programName: 'ECB330M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [402, 407, 453, 458], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '505-0100-INICIO', programName: 'ECB330M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [851], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '510-0100-INICIO', programName: 'ECB330M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [804], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '520-0100-INICIO', programName: 'ECB330M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [825], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '550-0100-INICIO', programName: 'ECB330M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [875], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '810-9900-FIN', programName: 'ECB330M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [937], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'ECB330M'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [978], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'ECB330M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [971], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'DAGPOCON'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [257], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'DCARTERA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [251], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'DCONCEPT'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [267], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [282], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'DCUENTA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [241], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'DEDVALCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [277], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'DGPOCONC'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [262], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'DOPERA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [246], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [287], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'DSEPRULT'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [272], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [112], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [132], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [138], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [122], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [230], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'SIEPAP05'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [119], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'SIETATF6'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [144], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [125], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '515-0100-INICIO', programName: 'ECB340M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [805], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '600-0100-INICIO', programName: 'ECB340M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [886], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '610-0100-INICIO', programName: 'ECB340M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [905, 915], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '635-0100-INICIO', programName: 'ECB340M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [942], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '640-0100-INICIO', programName: 'ECB340M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [988], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '640-9900-FIN', programName: 'ECB340M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [998], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB340M'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [582], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB340M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [589], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB340M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [174], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB340M'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [640], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB340M'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [599], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB340M'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [122], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB340M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [178], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '000-0100-PROCESO-PRINCIPAL', programName: 'ECB350M'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [440], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '010-0100-INICIO', programName: 'ECB350M'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [493], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '500-0100-INICIO', programName: 'ECB350M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [803], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '520-0100-INICIO', programName: 'ECB350M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [858], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '700-0100-INICIO', programName: 'ECB350M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [942], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '800-9900-FIN', programName: 'ECB350M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [969], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'ECB350M'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [1004], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'ECB350M'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [998], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB350M'}), (b:Copybook {name: 'DAGPOPRO'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [190], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB350M'}), (b:Copybook {name: 'DEDREPER'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [272], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB350M'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [265], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB350M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [164], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB350M'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [178], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB350M'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [160], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB350M'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [427], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB350M'}), (b:Copybook {name: 'SICNC011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [184], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB350M'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [196], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB350M'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [171], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB350M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [153], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '010-INICIO', programName: 'ECB360M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [210], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '110-DECLARA-CURSOR-EDMOVED', programName: 'ECB360M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [255], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '120-DECLARA-CURSOR-PARAM', programName: 'ECB360M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [277], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '130-ABRE-CURSOR-PARAM', programName: 'ECB360M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [297], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '150-CIERRA-CURSOR-PARAM', programName: 'ECB360M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [333], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '160-ABRE-CURSOR-EDMOVED', programName: 'ECB360M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [353], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '180-CIERRA-CURSOR-EDMOVED', programName: 'ECB360M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [419], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '500-LEE-CURSOR-PARAM', programName: 'ECB360M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [457], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '510-LEE-CURSOR-EDMOVED', programName: 'ECB360M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [494], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'ECB360M'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [505], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'ECB360M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [519], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'ECB360M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [514], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'COMP-3', programName: 'ECB360M'}), (b:Copybook {name: 'DAGPOCTA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [179], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'COMP-3', programName: 'ECB360M'}), (b:Copybook {name: 'DEDDESOP'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [173], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'COMP-3', programName: 'ECB360M'}), (b:Copybook {name: 'DEDMOVED'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [167], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'COMP-3', programName: 'ECB360M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [161], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'COMP-3', programName: 'ECB360M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [142], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'COMP-3', programName: 'ECB360M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [149], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'COMP-3', programName: 'ECB360M'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [146], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'COMP-3', programName: 'ECB360M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [155], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '010-INICIO', programName: 'ECB380M'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [200], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '510-LEE-CURSOR-EDMOVED', programName: 'ECB380M'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [455], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'COMP-3', programName: 'ECB380M'}), (b:Copybook {name: 'DAGPOCTA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [169], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'COMP-3', programName: 'ECB380M'}), (b:Copybook {name: 'DEDDESOP'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [163], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'COMP-3', programName: 'ECB380M'}), (b:Copybook {name: 'DEDMOVED'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [157], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'COMP-3', programName: 'ECB380M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [151], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'COMP-3', programName: 'ECB380M'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [138], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'COMP-3', programName: 'ECB380M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [145], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'ECB385M'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [934], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'ECB385M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [953], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'ECB385M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [948], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'DESPLIEGA-FH-DE-PROCESO', programName: 'ECB385M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [497], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'TOMA-FECHA-PARAMETRO-4', programName: 'ECB385M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [924], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB385M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [455], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB385M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [235], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB385M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [242], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB385M'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [229], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB385M'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [239], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB385M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [449], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'DESPLIEGA-FH-DE-PROCESO', programName: 'ECB390M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [499], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'TOMA-FECHA-PARAMETRO-4', programName: 'ECB390M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [883], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB390M'}), (b:Copybook {name: 'DAGPOCTA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [457], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB390M'}), (b:Copybook {name: 'DEDDESOP'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [451], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB390M'}), (b:Copybook {name: 'DEDMOVED'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [445], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB390M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [439], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB390M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [234], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB390M'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [228], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB390M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [433], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'DESPLIEGA-FH-DE-PROCESO', programName: 'ECB395M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [382], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'TOMA-FECHA-PARAMETRO-4', programName: 'ECB395M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [585], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB395M'}), (b:Copybook {name: 'DEDDESOP'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [285], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB395M'}), (b:Copybook {name: 'DEDMOVED'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [279], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB395M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [273], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB395M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [158], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB395M'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [152], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB395M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [267], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '000-100-PROCESO-CONTROL', programName: 'ECB400M'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [137], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '620-0100-INICIO', programName: 'ECB400M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [156], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '630-0100-INICIO', programName: 'ECB400M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [189], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '630-9900-EXIT', programName: 'ECB400M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [199], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '990-9900-EXIT', programName: 'ECB400M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [234], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB400M'}), (b:Copybook {name: 'DEDCONT'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [119], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB400M'}), (b:Copybook {name: 'DEDCUENT'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [112], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB400M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [105], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB400M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [97], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB400M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [78], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB400M'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [71], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB400M'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [127], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB400M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [85], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '000-0100-PROCESO-PRINCIPAL', programName: 'ECB405M'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [383], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '010-0100-INICIO', programName: 'ECB405M'}), (b:Copybook {name: 'SICCE029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [395], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '400-0100-INICIO', programName: 'ECB405M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [699], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '450-0100-INICIO', programName: 'ECB405M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [714], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '500-0100-INICIO', programName: 'ECB405M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [607], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '510-0100-INICIO', programName: 'ECB405M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [645], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '600-0100-INICIO', programName: 'ECB405M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [672], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '650-0100-INICIO', programName: 'ECB405M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [683], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '800-9900-FIN', programName: 'ECB405M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [778], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'ECB405M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [809], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'ECB405M'}), (b:Copybook {name: 'SICCE029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [819], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB405M'}), (b:Copybook {name: 'DAGPOPRO'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [187], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB405M'}), (b:Copybook {name: 'DEDCUENT'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [193], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB405M'}), (b:Copybook {name: 'DEDREPER'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [308], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB405M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [181], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB405M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [151], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB405M'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [199], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB405M'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [301], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB405M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [155], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB405M'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [169], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB405M'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [367], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB405M'}), (b:Copybook {name: 'SICNC011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [175], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB405M'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [162], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB405M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB405M.cbl', evidenceLines: [144], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205736Z-ecb330m-ecb340m-ecb350m-ecb360m-ecb380m-ecb385m-ecb390m-ecb395m-ecb400m-ecb405m'};

