// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557
// ============================================================================

MERGE (n:Copybook {name: 'DFHAID'})
SET n += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [66], ingestion: 'auto', layer: 'dependency', name: 'DFHAID', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG557.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DFHBMSCA'})
SET n += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [70], ingestion: 'auto', layer: 'dependency', name: 'DFHBMSCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG557.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SQLCA'})
SET n += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [61], ingestion: 'auto', layer: 'dependency', name: 'SQLCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG557.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZAPERAPL'})
SET n += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [82], ingestion: 'auto', layer: 'dependency', name: 'ZAPERAPL', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG551.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMG4061'})
SET n += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [91], ingestion: 'auto', layer: 'dependency', name: 'ZMG4061', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG406.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMG5471'})
SET n += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [79], ingestion: 'auto', layer: 'dependency', name: 'ZMG5471', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG547.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMG5482'})
SET n += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [144], ingestion: 'auto', layer: 'dependency', name: 'ZMG5482', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG548.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMG5491'})
SET n += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [75], ingestion: 'auto', layer: 'dependency', name: 'ZMG5491', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG549.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMG5501'})
SET n += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [52], ingestion: 'auto', layer: 'dependency', name: 'ZMG5501', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG550.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMG5511'})
SET n += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [52], ingestion: 'auto', layer: 'dependency', name: 'ZMG5511', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG551.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMG5521'})
SET n += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [116], ingestion: 'auto', layer: 'dependency', name: 'ZMG5521', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG552.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMG5531'})
SET n += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [131], ingestion: 'auto', layer: 'dependency', name: 'ZMG5531', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG553.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMG5551'})
SET n += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [65], ingestion: 'auto', layer: 'dependency', name: 'ZMG5551', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG555.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMG5571'})
SET n += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [74], ingestion: 'auto', layer: 'dependency', name: 'ZMG5571', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG557.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWCOM11'})
SET n += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [128], ingestion: 'auto', layer: 'dependency', name: 'ZMWCOM11', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG557.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC002'})
SET n += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [266], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC002', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG557.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC003'})
SET n += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [272], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC003', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG557.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC004'})
SET n += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [278], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC004', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG557.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC005'})
SET n += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [284], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC005', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG557.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC006'})
SET n += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [524], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC006', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG551.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC008'})
SET n += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [290], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC008', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG557.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC009'})
SET n += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [304], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC009', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG557.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC010'})
SET n += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [78], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC010', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG557.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC011'})
SET n += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [82], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC011', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG557.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC012'})
SET n += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [86], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC012', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG557.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC013'})
SET n += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [90], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC013', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG557.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC014'})
SET n += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [94], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC014', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG557.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC015'})
SET n += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [298], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC015', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG557.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSCOM0'})
SET n += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [254], ingestion: 'auto', layer: 'dependency', name: 'ZMWSCOM0', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG557.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSCOM1'})
SET n += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [260], ingestion: 'auto', layer: 'dependency', name: 'ZMWSCOM1', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG557.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSG532'})
SET n += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [114], ingestion: 'auto', layer: 'dependency', name: 'ZMWSG532', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG557.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSR009'})
SET n += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [99], ingestion: 'auto', layer: 'dependency', name: 'ZMWSR009', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG557.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSR432'})
SET n += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [109], ingestion: 'auto', layer: 'dependency', name: 'ZMWSR432', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG557.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSRCTL'})
SET n += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [124], ingestion: 'auto', layer: 'dependency', name: 'ZMWSRCTL', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG547.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSZ403'})
SET n += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [104], ingestion: 'auto', layer: 'dependency', name: 'ZMWSZ403', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG557.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZPARAM'})
SET n += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [117], ingestion: 'auto', layer: 'dependency', name: 'ZPARAM', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG557.cbl', viewTag: 'dependency'};

MERGE (n:DBTable {name: 'PARAM'})
SET n += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [156, 157, 158, 159, 160, 161, 162], ingestion: 'auto', layer: 'data-access', name: 'PARAM', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG557.cbl', viewTag: 'data-access'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_ZM1MG406'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que menu de monitoreo pld. modifico: nnnnnnnnn pppppppppppp mmmmmmmmm (xxxxxxx) fecha: mmmmmmmmmmmm dd, ssaa. asunto: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx. modifico: araceli salazar perez (getronics) fecha: octubre 14, 2004. asunto: agregar al menu la opc.654 historico op.inu. modifico: araceli salazar perez (getronics) fecha: mayo 14, 2005. asunto: agregar al menu la opc.657 clientes de alto riesgo pld opc.658 ctes relacionados rfc y curp opc.659 historico de saldos pld. Pertenece a: BBVA-BANCOMER, S.A. DE C.V..', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_ZM1MG406', nodeType: 'business-function', objective: 'MENU DE MONITOREO PLD. MODIFICO: NNNNNNNNN PPPPPPPPPPPP MMMMMMMMM (XXXXXXX) FECHA: MMMMMMMMMMMM DD, SSAA. ASUNTO: XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX. MODIFICO: ARACELI SALAZAR PEREZ (GETRONICS) FECHA: OCTUBRE 14, 2004. ASUNTO: AGREGAR AL MENU LA OPC.654 HISTORICO OP.INU. MODIFICO: ARACELI SALAZAR PEREZ (GETRONICS) FECHA: MAYO 14, 2005. ASUNTO: AGREGAR AL MENU LA OPC.657 CLIENTES DE ALTO RIESGO PLD OPC.658 CTES RELACIONADOS RFC Y CURP OPC.659 HISTORICO DE SALDOS PLD', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG406.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_ZM1MG547'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que presentar el menu principal de promocion. opcion: "0 " transaccion: z547 (m547) rutinas: zm8cr009 (centra textos) zm9cr403 (obtener nombre de empresa) zm9cr432 (transferencia-navegacion-) aplic. llamada: zm2og532 (funcion de aborta) modifico: nnnnnnnnn pppppppppppp mmmmmmmmm (xxxxxxx) fecha: mmmmmmmmmmmm dd, ssaa. asunto: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx. finmod. Pertenece a: PROGRAM-ID. ZM1MG547..', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_ZM1MG547', nodeType: 'business-function', objective: 'PRESENTAR EL MENU PRINCIPAL DE PROMOCION. OPCION: "0 " TRANSACCION: Z547 (M547) RUTINAS: ZM8CR009 (CENTRA TEXTOS) ZM9CR403 (OBTENER NOMBRE DE EMPRESA) ZM9CR432 (TRANSFERENCIA-NAVEGACION-) APLIC. LLAMADA: ZM2OG532 (FUNCION DE ABORTA) MODIFICO: NNNNNNNNN PPPPPPPPPPPP MMMMMMMMM (XXXXXXX) FECHA: MMMMMMMMMMMM DD, SSAA. ASUNTO: XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX. FINMOD', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG547.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_ZM1MG548'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que presentar menu promocion sociedades inversion opcion: "1 " transaccion: z548 (m548) rutinas: zm8cr009 (centra textos) zm9cr403 (obtener nombre de empresa) zm9cr432 (transferencia-navegacion-) aplic. llamada: zm2og532 (funcion de aborta) modifico: nnnnnnnnn pppppppppppp mmmmmmmmm (xxxxxxx) fecha: mmmmmmmmmmmm dd, ssaa. asunto: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx. modifico: hitss fecha: diciembre , 23, 2015 asunto: requerimiento ley fondos inversion incluir opcion 25 en menu de informacion inicio marca lfii fin marca lfif modifico: hitss fecha: diciembre , 23, 2015 asunto: requerimiento ley fondos inversion elimnar sentencia substr por validacion vl inicio marca lfii2 fin marca lfif2 finmod. Pertenece a: PROGRAM-ID. ZM1MG548..', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_ZM1MG548', nodeType: 'business-function', objective: 'PRESENTAR MENU PROMOCION SOCIEDADES INVERSION OPCION: "1 " TRANSACCION: Z548 (M548) RUTINAS: ZM8CR009 (CENTRA TEXTOS) ZM9CR403 (OBTENER NOMBRE DE EMPRESA) ZM9CR432 (TRANSFERENCIA-NAVEGACION-) APLIC. LLAMADA: ZM2OG532 (FUNCION DE ABORTA) MODIFICO: NNNNNNNNN PPPPPPPPPPPP MMMMMMMMM (XXXXXXX) FECHA: MMMMMMMMMMMM DD, SSAA. ASUNTO: XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX. MODIFICO: HITSS FECHA: DICIEMBRE , 23, 2015 ASUNTO: REQUERIMIENTO LEY FONDOS INVERSION INCLUIR OPCION 25 EN MENU DE INFORMACION INICIO MARCA LFII FIN MARCA LFIF MODIFICO: HITSS FECHA: DICIEMBRE , 23, 2015 ASUNTO: REQUERIMIENTO LEY FONDOS INVERSION ELIMNAR SENTENCIA SUBSTR POR VALIDACION VL INICIO MARCA LFII2 FIN MARCA LFIF2 FINMOD', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG548.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_ZM1MG549'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que ejecuta procesos.', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_ZM1MG549', nodeType: 'business-function', objective: 'Capacidad funcional principal de ZM1MG549.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG549.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_ZM1MG550'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que ejecuta procesos.', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_ZM1MG550', nodeType: 'business-function', objective: 'Capacidad funcional principal de ZM1MG550.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG550.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_ZM1MG551'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que ejecuta procesos.', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_ZM1MG551', nodeType: 'business-function', objective: 'Capacidad funcional principal de ZM1MG551.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG551.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_ZM1MG552'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que presentar menu promocion consultas generales opcion: "5 " transaccion: z552 (m552) rutinas: zm8cr009 (centra textos) zm9cr403 (obtener nombre de empresa) zm9cr432 (transferencia-navegacion-) aplic. llamada: zm2og532 (funcion de aborta) modifico: gesfor 2005-11-10 se adiciona opcion 194 fsw-1.1.0-01 14-nov-2007 xtsobmd(softtek) modifico: its se agrega opcion 200 (08-07-2013) modifico: dgcm 2013-10-10 -se ingresa nueva opcion @dgcm01 "d10" en w000-opcion-valida modifico: dgcm 2015-03-30 -se ingresa nueva opcion @dgcm02 "is3" en w000-opcion-valida finmod. Pertenece a: PROGRAM-ID. ZM1MG552..', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_ZM1MG552', nodeType: 'business-function', objective: 'PRESENTAR MENU PROMOCION CONSULTAS GENERALES OPCION: "5 " TRANSACCION: Z552 (M552) RUTINAS: ZM8CR009 (CENTRA TEXTOS) ZM9CR403 (OBTENER NOMBRE DE EMPRESA) ZM9CR432 (TRANSFERENCIA-NAVEGACION-) APLIC. LLAMADA: ZM2OG532 (FUNCION DE ABORTA) MODIFICO: GESFOR 2005-11-10 SE ADICIONA OPCION 194 FSW-1.1.0-01 14-NOV-2007 XTSOBMD(SOFTTEK) MODIFICO: ITS SE AGREGA OPCION 200 (08-07-2013) MODIFICO: DGCM 2013-10-10 -SE INGRESA NUEVA OPCION @DGCM01 "D10" EN W000-OPCION-VALIDA MODIFICO: DGCM 2015-03-30 -SE INGRESA NUEVA OPCION @DGCM02 "IS3" EN W000-OPCION-VALIDA FINMOD', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG552.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_ZM1MG553'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que presentar menu de control de contratos transaccion : z553 de prueba la g006 opcion : 210 rutinas: zm8cr009 (centra textos) ahr009 zmwsg532 (rutina de aborta) vrc980o zm9cr403 (obtener nombre de compania) vrb403o zm9cr432 (transferencia-navegacion-) vrb432o m o d u l o d e m o d i f i c a c i o n e s fws-1.1.0-00 14-nov-2007 xtsobmd(softtek) fs-2.0.0-01 xmcb150 09abr13 - adecuacion solicitada por dyd fs-2.0.0-02 tecnocom 09may13 - atencion a odt4 siva - 2012 fs-2.0.0-03 fs-dgcm 28jul14 - atencion a odt25 siva fs-2.0.0-04 fsw-cda 15dic15 - se elimina la opcion 476. Pertenece a: PROGRAM-ID. ZM1MG553..', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_ZM1MG553', nodeType: 'business-function', objective: 'PRESENTAR MENU DE CONTROL DE CONTRATOS TRANSACCION : Z553 DE PRUEBA LA G006 OPCION : 210 RUTINAS: ZM8CR009 (CENTRA TEXTOS) AHR009 ZMWSG532 (RUTINA DE ABORTA) VRC980O ZM9CR403 (OBTENER NOMBRE DE COMPANIA) VRB403O ZM9CR432 (TRANSFERENCIA-NAVEGACION-) VRB432O M O D U L O D E M O D I F I C A C I O N E S FWS-1.1.0-00 14-NOV-2007 XTSOBMD(SOFTTEK) FS-2.0.0-01 XMCB150 09ABR13 - ADECUACION SOLICITADA POR DYD FS-2.0.0-02 TECNOCOM 09MAY13 - ATENCION A ODT4 SIVA - 2012 FS-2.0.0-03 FS-DGCM 28JUL14 - ATENCION A ODT25 SIVA FS-2.0.0-04 FSW-CDA 15DIC15 - SE ELIMINA LA OPCION 476', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG553.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_ZM1MG555'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que ejecuta procesos.', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_ZM1MG555', nodeType: 'business-function', objective: 'Capacidad funcional principal de ZM1MG555.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG555.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_ZM1MG557'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que ejecuta procesos.', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_ZM1MG557', nodeType: 'business-function', objective: 'Capacidad funcional principal de ZM1MG557.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG557.cbl', viewTag: 'functional'};

MERGE (n:Paragraph {name: '0000-INICIO', programName: 'ZM1MG406'})
SET n += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [157], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0000-INICIO', nodeType: 'process-step', programName: 'ZM1MG406', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG406.cbl', summary: 'Inicializa el flujo operativo de ZM1MG406, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MG406'})
SET n += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [193], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8000-TRANSFIERE', nodeType: 'process-step', programName: 'ZM1MG406', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG406.cbl', summary: 'Orquesta una fase funcional de ZM1MG406, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MG406'})
SET n += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [200], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8100-RECIBE-PANTALLA', nodeType: 'process-step', programName: 'ZM1MG406', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG406.cbl', summary: 'Orquesta una fase funcional de ZM1MG406, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG406'})
SET n += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [215], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8110-ENVIA-PANTALLA', nodeType: 'process-step', programName: 'ZM1MG406', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG406.cbl', summary: 'Orquesta una fase funcional de ZM1MG406, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG406'})
SET n += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [237], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8120-ENCABEZADO', nodeType: 'process-step', programName: 'ZM1MG406', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG406.cbl', summary: 'Orquesta una fase funcional de ZM1MG406, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8900-FECHA', programName: 'ZM1MG406'})
SET n += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [247], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8900-FECHA', nodeType: 'process-step', programName: 'ZM1MG406', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG406.cbl', summary: 'Orquesta una fase funcional de ZM1MG406, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'ZM1MG406'})
SET n += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [8], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'ZM1MG406', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG406.cbl', summary: 'Orquesta una fase funcional de ZM1MG406, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'ZM1MG406'})
SET n += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [10], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'ZM1MG406', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG406.cbl', summary: 'Orquesta una fase funcional de ZM1MG406, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ZM1MG406'})
SET n += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [147], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ZM1MG406', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG406.cbl', summary: 'Orquesta una fase funcional de ZM1MG406, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG406'})
SET n += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [52], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ZM1MG406', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG406.cbl', summary: 'Orquesta una fase funcional de ZM1MG406, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0000-INICIO', programName: 'ZM1MG547'})
SET n += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [146], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0000-INICIO', nodeType: 'process-step', programName: 'ZM1MG547', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG547.cbl', summary: 'Inicializa el flujo operativo de ZM1MG547, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0010-INICIO-APLICACION', programName: 'ZM1MG547'})
SET n += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [158], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0010-INICIO-APLICACION', nodeType: 'process-step', programName: 'ZM1MG547', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG547.cbl', summary: 'Inicializa el flujo operativo de ZM1MG547, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0100-REINICIO-APLICACION', programName: 'ZM1MG547'})
SET n += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [162], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0100-REINICIO-APLICACION', nodeType: 'process-step', programName: 'ZM1MG547', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG547.cbl', summary: 'Inicializa el flujo operativo de ZM1MG547, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MG547'})
SET n += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [217], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8000-TRANSFIERE', nodeType: 'process-step', programName: 'ZM1MG547', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG547.cbl', summary: 'Orquesta una fase funcional de ZM1MG547, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MG547'})
SET n += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [223], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8100-RECIBE-PANTALLA', nodeType: 'process-step', programName: 'ZM1MG547', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG547.cbl', summary: 'Orquesta una fase funcional de ZM1MG547, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG547'})
SET n += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [237], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8110-ENVIA-PANTALLA', nodeType: 'process-step', programName: 'ZM1MG547', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG547.cbl', summary: 'Orquesta una fase funcional de ZM1MG547, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG547'})
SET n += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [262], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8120-ENCABEZADO', nodeType: 'process-step', programName: 'ZM1MG547', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG547.cbl', summary: 'Orquesta una fase funcional de ZM1MG547, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8500-CONTROL-EVENTO', programName: 'ZM1MG547'})
SET n += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [272], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8500-CONTROL-EVENTO', nodeType: 'process-step', programName: 'ZM1MG547', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG547.cbl', summary: 'Orquesta una fase funcional de ZM1MG547, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8550-VALIDA-EVENTO', programName: 'ZM1MG547'})
SET n += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [296], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8550-VALIDA-EVENTO', nodeType: 'process-step', programName: 'ZM1MG547', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG547.cbl', summary: 'Orquesta una fase funcional de ZM1MG547, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8600-MUEVE-DESCRIPCION', programName: 'ZM1MG547'})
SET n += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [327], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8600-MUEVE-DESCRIPCION', nodeType: 'process-step', programName: 'ZM1MG547', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG547.cbl', summary: 'Orquesta una fase funcional de ZM1MG547, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ZM1MG547'})
SET n += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [37], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ZM1MG547', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG547.cbl', summary: 'Orquesta una fase funcional de ZM1MG547, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ZM1MG547'})
SET n += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [139], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ZM1MG547', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG547.cbl', summary: 'Orquesta una fase funcional de ZM1MG547, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG547'})
SET n += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [44], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ZM1MG547', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG547.cbl', summary: 'Orquesta una fase funcional de ZM1MG547, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0000-INICIO', programName: 'ZM1MG548'})
SET n += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [259], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0000-INICIO', nodeType: 'process-step', programName: 'ZM1MG548', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG548.cbl', summary: 'Inicializa el flujo operativo de ZM1MG548, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0010-INICIO-APLICACION', programName: 'ZM1MG548'})
SET n += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [273], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0010-INICIO-APLICACION', nodeType: 'process-step', programName: 'ZM1MG548', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG548.cbl', summary: 'Inicializa el flujo operativo de ZM1MG548, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0020-CARGA-MENU', programName: 'ZM1MG548'})
SET n += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [281], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0020-CARGA-MENU', nodeType: 'process-step', programName: 'ZM1MG548', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG548.cbl', summary: 'Orquesta una fase funcional de ZM1MG548, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0100-REINICIO-APLICACION', programName: 'ZM1MG548'})
SET n += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [306], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0100-REINICIO-APLICACION', nodeType: 'process-step', programName: 'ZM1MG548', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG548.cbl', summary: 'Inicializa el flujo operativo de ZM1MG548, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0110-REGENERA-OPCIONES', programName: 'ZM1MG548'})
SET n += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [337], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0110-REGENERA-OPCIONES', nodeType: 'process-step', programName: 'ZM1MG548', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG548.cbl', summary: 'Orquesta una fase funcional de ZM1MG548, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '5530-LEE-PARAM', programName: 'ZM1MG548'})
SET n += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [346], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '5530-LEE-PARAM', nodeType: 'process-step', programName: 'ZM1MG548', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG548.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM1MG548 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8000-GRABA-REG-QUEUE', programName: 'ZM1MG548'})
SET n += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [369], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8000-GRABA-REG-QUEUE', nodeType: 'process-step', programName: 'ZM1MG548', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG548.cbl', summary: 'Persiste actualizaciones de negocio en ZM1MG548, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MG548'})
SET n += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [380], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8000-TRANSFIERE', nodeType: 'process-step', programName: 'ZM1MG548', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG548.cbl', summary: 'Orquesta una fase funcional de ZM1MG548, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MG548'})
SET n += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [386], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8100-RECIBE-PANTALLA', nodeType: 'process-step', programName: 'ZM1MG548', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG548.cbl', summary: 'Orquesta una fase funcional de ZM1MG548, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG548'})
SET n += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [400], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8110-ENVIA-PANTALLA', nodeType: 'process-step', programName: 'ZM1MG548', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG548.cbl', summary: 'Orquesta una fase funcional de ZM1MG548, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG548'})
SET n += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [421], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8120-ENCABEZADO', nodeType: 'process-step', programName: 'ZM1MG548', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG548.cbl', summary: 'Orquesta una fase funcional de ZM1MG548, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8125-ARMA-MENU', programName: 'ZM1MG548'})
SET n += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [431], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8125-ARMA-MENU', nodeType: 'process-step', programName: 'ZM1MG548', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG548.cbl', summary: 'Orquesta una fase funcional de ZM1MG548, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8126-LEE-OPCIONES', programName: 'ZM1MG548'})
SET n += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [469], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8126-LEE-OPCIONES', nodeType: 'process-step', programName: 'ZM1MG548', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG548.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM1MG548 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ZM1MG548'})
SET n += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [50], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ZM1MG548', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG548.cbl', summary: 'Orquesta una fase funcional de ZM1MG548, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ZM1MG548'})
SET n += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [252], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ZM1MG548', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG548.cbl', summary: 'Orquesta una fase funcional de ZM1MG548, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG548'})
SET n += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [57], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ZM1MG548', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG548.cbl', summary: 'Orquesta una fase funcional de ZM1MG548, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0000-INICIO', programName: 'ZM1MG549'})
SET n += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [136], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0000-INICIO', nodeType: 'process-step', programName: 'ZM1MG549', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG549.cbl', summary: 'Inicializa el flujo operativo de ZM1MG549, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0010-INICIO-APLICACION', programName: 'ZM1MG549'})
SET n += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [150], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0010-INICIO-APLICACION', nodeType: 'process-step', programName: 'ZM1MG549', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG549.cbl', summary: 'Inicializa el flujo operativo de ZM1MG549, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0100-REINICIO-APLICACION', programName: 'ZM1MG549'})
SET n += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [157], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0100-REINICIO-APLICACION', nodeType: 'process-step', programName: 'ZM1MG549', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG549.cbl', summary: 'Inicializa el flujo operativo de ZM1MG549, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MG549'})
SET n += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [170], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8000-TRANSFIERE', nodeType: 'process-step', programName: 'ZM1MG549', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG549.cbl', summary: 'Orquesta una fase funcional de ZM1MG549, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8010-PF2-PF3', programName: 'ZM1MG549'})
SET n += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [176], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8010-PF2-PF3', nodeType: 'process-step', programName: 'ZM1MG549', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG549.cbl', summary: 'Orquesta una fase funcional de ZM1MG549, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MG549'})
SET n += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [192], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8100-RECIBE-PANTALLA', nodeType: 'process-step', programName: 'ZM1MG549', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG549.cbl', summary: 'Orquesta una fase funcional de ZM1MG549, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG549'})
SET n += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [207], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8110-ENVIA-PANTALLA', nodeType: 'process-step', programName: 'ZM1MG549', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG549.cbl', summary: 'Orquesta una fase funcional de ZM1MG549, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG549'})
SET n += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [228], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8120-ENCABEZADO', nodeType: 'process-step', programName: 'ZM1MG549', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG549.cbl', summary: 'Orquesta una fase funcional de ZM1MG549, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'ZM1MG549'})
SET n += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [5], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'ZM1MG549', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG549.cbl', summary: 'Orquesta una fase funcional de ZM1MG549, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'ZM1MG549'})
SET n += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [7], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'ZM1MG549', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG549.cbl', summary: 'Orquesta una fase funcional de ZM1MG549, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ZM1MG549'})
SET n += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [129], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ZM1MG549', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG549.cbl', summary: 'Orquesta una fase funcional de ZM1MG549, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG549'})
SET n += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [38], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ZM1MG549', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG549.cbl', summary: 'Orquesta una fase funcional de ZM1MG549, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0000-INICIO', programName: 'ZM1MG550'})
SET n += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [113], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0000-INICIO', nodeType: 'process-step', programName: 'ZM1MG550', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG550.cbl', summary: 'Inicializa el flujo operativo de ZM1MG550, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0010-INICIO-APLICACION', programName: 'ZM1MG550'})
SET n += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [124], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0010-INICIO-APLICACION', nodeType: 'process-step', programName: 'ZM1MG550', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG550.cbl', summary: 'Inicializa el flujo operativo de ZM1MG550, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0100-REINICIO-APLICACION', programName: 'ZM1MG550'})
SET n += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [128], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0100-REINICIO-APLICACION', nodeType: 'process-step', programName: 'ZM1MG550', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG550.cbl', summary: 'Inicializa el flujo operativo de ZM1MG550, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MG550'})
SET n += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [153], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8000-TRANSFIERE', nodeType: 'process-step', programName: 'ZM1MG550', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG550.cbl', summary: 'Orquesta una fase funcional de ZM1MG550, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MG550'})
SET n += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [159], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8100-RECIBE-PANTALLA', nodeType: 'process-step', programName: 'ZM1MG550', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG550.cbl', summary: 'Orquesta una fase funcional de ZM1MG550, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG550'})
SET n += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [173], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8110-ENVIA-PANTALLA', nodeType: 'process-step', programName: 'ZM1MG550', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG550.cbl', summary: 'Orquesta una fase funcional de ZM1MG550, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG550'})
SET n += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [194], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8120-ENCABEZADO', nodeType: 'process-step', programName: 'ZM1MG550', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG550.cbl', summary: 'Orquesta una fase funcional de ZM1MG550, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'ZM1MG550'})
SET n += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [5], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'ZM1MG550', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG550.cbl', summary: 'Orquesta una fase funcional de ZM1MG550, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'ZM1MG550'})
SET n += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [7], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'ZM1MG550', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG550.cbl', summary: 'Orquesta una fase funcional de ZM1MG550, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ZM1MG550'})
SET n += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [106], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ZM1MG550', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG550.cbl', summary: 'Orquesta una fase funcional de ZM1MG550, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG550'})
SET n += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [29], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ZM1MG550', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG550.cbl', summary: 'Orquesta una fase funcional de ZM1MG550, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0000-INICIO', programName: 'ZM1MG551'})
SET n += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [222], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0000-INICIO', nodeType: 'process-step', programName: 'ZM1MG551', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG551.cbl', summary: 'Inicializa el flujo operativo de ZM1MG551, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0000-LLENA-DATOS-MAPA', programName: 'ZM1MG551'})
SET n += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [265], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0000-LLENA-DATOS-MAPA', nodeType: 'process-step', programName: 'ZM1MG551', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG551.cbl', summary: 'Orquesta una fase funcional de ZM1MG551, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0002-BUSCA-AUTIRIZACION', programName: 'ZM1MG551'})
SET n += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [306], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0002-BUSCA-AUTIRIZACION', nodeType: 'process-step', programName: 'ZM1MG551', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG551.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM1MG551 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MG551'})
SET n += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [359], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8000-TRANSFIERE', nodeType: 'process-step', programName: 'ZM1MG551', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG551.cbl', summary: 'Orquesta una fase funcional de ZM1MG551, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MG551'})
SET n += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [365], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8100-RECIBE-PANTALLA', nodeType: 'process-step', programName: 'ZM1MG551', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG551.cbl', summary: 'Orquesta una fase funcional de ZM1MG551, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8110-ARMA-OPCIONES-PANTALLA', programName: 'ZM1MG551'})
SET n += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [412], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8110-ARMA-OPCIONES-PANTALLA', nodeType: 'process-step', programName: 'ZM1MG551', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG551.cbl', summary: 'Orquesta una fase funcional de ZM1MG551, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG551'})
SET n += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [379], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8110-ENVIA-PANTALLA', nodeType: 'process-step', programName: 'ZM1MG551', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG551.cbl', summary: 'Orquesta una fase funcional de ZM1MG551, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG551'})
SET n += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [403], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8120-ENCABEZADO', nodeType: 'process-step', programName: 'ZM1MG551', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG551.cbl', summary: 'Orquesta una fase funcional de ZM1MG551, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8130-VALIDA-OPCION-CAPTURADA', programName: 'ZM1MG551'})
SET n += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [324], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8130-VALIDA-OPCION-CAPTURADA', nodeType: 'process-step', programName: 'ZM1MG551', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG551.cbl', summary: 'Orquesta una fase funcional de ZM1MG551, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'JUSTIFICA-OPCION', programName: 'ZM1MG551'})
SET n += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [461], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'JUSTIFICA-OPCION', nodeType: 'process-step', programName: 'ZM1MG551', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG551.cbl', summary: 'Orquesta una fase funcional de ZM1MG551, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ZM1MG551'})
SET n += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [213], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ZM1MG551', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG551.cbl', summary: 'Orquesta una fase funcional de ZM1MG551, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'})
SET n += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [27], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ZM1MG551', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG551.cbl', summary: 'Orquesta una fase funcional de ZM1MG551, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0000-INICIO', programName: 'ZM1MG552'})
SET n += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [182], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0000-INICIO', nodeType: 'process-step', programName: 'ZM1MG552', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG552.cbl', summary: 'Inicializa el flujo operativo de ZM1MG552, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0010-INICIO-APLICACION', programName: 'ZM1MG552'})
SET n += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [193], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0010-INICIO-APLICACION', nodeType: 'process-step', programName: 'ZM1MG552', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG552.cbl', summary: 'Inicializa el flujo operativo de ZM1MG552, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0100-REINICIO-APLICACION', programName: 'ZM1MG552'})
SET n += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [199], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0100-REINICIO-APLICACION', nodeType: 'process-step', programName: 'ZM1MG552', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG552.cbl', summary: 'Inicializa el flujo operativo de ZM1MG552, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MG552'})
SET n += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [224], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8000-TRANSFIERE', nodeType: 'process-step', programName: 'ZM1MG552', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG552.cbl', summary: 'Orquesta una fase funcional de ZM1MG552, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MG552'})
SET n += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [230], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8100-RECIBE-PANTALLA', nodeType: 'process-step', programName: 'ZM1MG552', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG552.cbl', summary: 'Orquesta una fase funcional de ZM1MG552, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG552'})
SET n += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [244], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8110-ENVIA-PANTALLA', nodeType: 'process-step', programName: 'ZM1MG552', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG552.cbl', summary: 'Orquesta una fase funcional de ZM1MG552, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG552'})
SET n += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [265], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8120-ENCABEZADO', nodeType: 'process-step', programName: 'ZM1MG552', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG552.cbl', summary: 'Orquesta una fase funcional de ZM1MG552, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ZM1MG552'})
SET n += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [46], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ZM1MG552', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG552.cbl', summary: 'Orquesta una fase funcional de ZM1MG552, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ZM1MG552'})
SET n += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [175], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ZM1MG552', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG552.cbl', summary: 'Orquesta una fase funcional de ZM1MG552, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG552'})
SET n += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [53], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ZM1MG552', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG552.cbl', summary: 'Orquesta una fase funcional de ZM1MG552, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0000-CONTROL', programName: 'ZM1MG553'})
SET n += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [169], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0000-CONTROL', nodeType: 'process-step', programName: 'ZM1MG553', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG553.cbl', summary: 'Orquesta una fase funcional de ZM1MG553, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0010-INICIO-APLICACION', programName: 'ZM1MG553'})
SET n += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [236], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0010-INICIO-APLICACION', nodeType: 'process-step', programName: 'ZM1MG553', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG553.cbl', summary: 'Inicializa el flujo operativo de ZM1MG553, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0100-TRANS', programName: 'ZM1MG553'})
SET n += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [243], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0100-TRANS', nodeType: 'process-step', programName: 'ZM1MG553', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG553.cbl', summary: 'Orquesta una fase funcional de ZM1MG553, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '3000-VALIDA-OPCION', programName: 'ZM1MG553'})
SET n += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [256], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '3000-VALIDA-OPCION', nodeType: 'process-step', programName: 'ZM1MG553', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG553.cbl', summary: 'Orquesta una fase funcional de ZM1MG553, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8450-PREPARA-DATOS-ENCA', programName: 'ZM1MG553'})
SET n += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [273], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8450-PREPARA-DATOS-ENCA', nodeType: 'process-step', programName: 'ZM1MG553', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG553.cbl', summary: 'Inicializa el flujo operativo de ZM1MG553, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8500-ENVIAR-PANTALLA', programName: 'ZM1MG553'})
SET n += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [283], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8500-ENVIAR-PANTALLA', nodeType: 'process-step', programName: 'ZM1MG553', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG553.cbl', summary: 'Orquesta una fase funcional de ZM1MG553, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MG553'})
SET n += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [300], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8600-RECIBE-PANTALLA', nodeType: 'process-step', programName: 'ZM1MG553', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG553.cbl', summary: 'Orquesta una fase funcional de ZM1MG553, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ZM1MG553'})
SET n += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [31], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ZM1MG553', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG553.cbl', summary: 'Orquesta una fase funcional de ZM1MG553, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ZM1MG553'})
SET n += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [159], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ZM1MG553', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG553.cbl', summary: 'Orquesta una fase funcional de ZM1MG553, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG553'})
SET n += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [35], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ZM1MG553', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG553.cbl', summary: 'Orquesta una fase funcional de ZM1MG553, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0000-INICIO', programName: 'ZM1MG555'})
SET n += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [130], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0000-INICIO', nodeType: 'process-step', programName: 'ZM1MG555', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG555.cbl', summary: 'Inicializa el flujo operativo de ZM1MG555, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0010-INICIO-APLICACION', programName: 'ZM1MG555'})
SET n += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [144], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0010-INICIO-APLICACION', nodeType: 'process-step', programName: 'ZM1MG555', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG555.cbl', summary: 'Inicializa el flujo operativo de ZM1MG555, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0100-REINICIO-APLICACION', programName: 'ZM1MG555'})
SET n += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [151], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0100-REINICIO-APLICACION', nodeType: 'process-step', programName: 'ZM1MG555', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG555.cbl', summary: 'Inicializa el flujo operativo de ZM1MG555, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MG555'})
SET n += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [164], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8000-TRANSFIERE', nodeType: 'process-step', programName: 'ZM1MG555', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG555.cbl', summary: 'Orquesta una fase funcional de ZM1MG555, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8010-PF2-PF3', programName: 'ZM1MG555'})
SET n += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [170], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8010-PF2-PF3', nodeType: 'process-step', programName: 'ZM1MG555', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG555.cbl', summary: 'Orquesta una fase funcional de ZM1MG555, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MG555'})
SET n += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [186], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8100-RECIBE-PANTALLA', nodeType: 'process-step', programName: 'ZM1MG555', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG555.cbl', summary: 'Orquesta una fase funcional de ZM1MG555, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG555'})
SET n += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [201], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8110-ENVIA-PANTALLA', nodeType: 'process-step', programName: 'ZM1MG555', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG555.cbl', summary: 'Orquesta una fase funcional de ZM1MG555, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG555'})
SET n += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [222], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8120-ENCABEZADO', nodeType: 'process-step', programName: 'ZM1MG555', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG555.cbl', summary: 'Orquesta una fase funcional de ZM1MG555, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'ZM1MG555'})
SET n += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [5], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'ZM1MG555', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG555.cbl', summary: 'Orquesta una fase funcional de ZM1MG555, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'ZM1MG555'})
SET n += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [7], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'ZM1MG555', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG555.cbl', summary: 'Orquesta una fase funcional de ZM1MG555, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ZM1MG555'})
SET n += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [123], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ZM1MG555', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG555.cbl', summary: 'Orquesta una fase funcional de ZM1MG555, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG555'})
SET n += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [35], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ZM1MG555', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG555.cbl', summary: 'Orquesta una fase funcional de ZM1MG555, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0000-INICIO', programName: 'ZM1MG557'})
SET n += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [139], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0000-INICIO', nodeType: 'process-step', programName: 'ZM1MG557', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG557.cbl', summary: 'Inicializa el flujo operativo de ZM1MG557, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0010-INICIO-APLICACION', programName: 'ZM1MG557'})
SET n += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [153], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0010-INICIO-APLICACION', nodeType: 'process-step', programName: 'ZM1MG557', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG557.cbl', summary: 'Inicializa el flujo operativo de ZM1MG557, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0100-REINICIO-APLICACION', programName: 'ZM1MG557'})
SET n += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [164], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0100-REINICIO-APLICACION', nodeType: 'process-step', programName: 'ZM1MG557', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG557.cbl', summary: 'Inicializa el flujo operativo de ZM1MG557, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MG557'})
SET n += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [177], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8000-TRANSFIERE', nodeType: 'process-step', programName: 'ZM1MG557', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG557.cbl', summary: 'Orquesta una fase funcional de ZM1MG557, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8010-PF2-PF3', programName: 'ZM1MG557'})
SET n += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [183], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8010-PF2-PF3', nodeType: 'process-step', programName: 'ZM1MG557', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG557.cbl', summary: 'Orquesta una fase funcional de ZM1MG557, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MG557'})
SET n += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [199], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8100-RECIBE-PANTALLA', nodeType: 'process-step', programName: 'ZM1MG557', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG557.cbl', summary: 'Orquesta una fase funcional de ZM1MG557, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG557'})
SET n += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [214], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8110-ENVIA-PANTALLA', nodeType: 'process-step', programName: 'ZM1MG557', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG557.cbl', summary: 'Orquesta una fase funcional de ZM1MG557, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG557'})
SET n += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [235], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8120-ENCABEZADO', nodeType: 'process-step', programName: 'ZM1MG557', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG557.cbl', summary: 'Orquesta una fase funcional de ZM1MG557, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'ZM1MG557'})
SET n += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [5], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'ZM1MG557', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG557.cbl', summary: 'Orquesta una fase funcional de ZM1MG557, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'ZM1MG557'})
SET n += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [7], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'ZM1MG557', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG557.cbl', summary: 'Orquesta una fase funcional de ZM1MG557, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ZM1MG557'})
SET n += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [132], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ZM1MG557', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG557.cbl', summary: 'Orquesta una fase funcional de ZM1MG557, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG557'})
SET n += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [42], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ZM1MG557', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG557.cbl', summary: 'Orquesta una fase funcional de ZM1MG557, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Program {name: 'ZM1MG406'})
SET n += {description: 'Programa COBOL que menu de monitoreo pld. modifico: nnnnnnnnn pppppppppppp mmmmmmmmm (xxxxxxx) fecha: mmmmmmmmmmmm dd, ssaa. asunto: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx. modifico: araceli salazar perez (getronics) fecha: octubre 14, 2004. asunto: agregar al menu la opc.654 historico op.inu. modifico: araceli salazar perez (getronics) fecha: mayo 14, 2005. asunto: agregar al menu la opc.657 clientes de alto riesgo pld opc.658 ctes relacionados rfc y curp opc.659 historico de saldos pld. Pertenece a: BBVA-BANCOMER, S.A. DE C.V..', ingestion: 'auto', layer: 'program', name: 'ZM1MG406', nodeType: 'program', objective: 'MENU DE MONITOREO PLD. MODIFICO: NNNNNNNNN PPPPPPPPPPPP MMMMMMMMM (XXXXXXX) FECHA: MMMMMMMMMMMM DD, SSAA. ASUNTO: XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX. MODIFICO: ARACELI SALAZAR PEREZ (GETRONICS) FECHA: OCTUBRE 14, 2004. ASUNTO: AGREGAR AL MENU LA OPC.654 HISTORICO OP.INU. MODIFICO: ARACELI SALAZAR PEREZ (GETRONICS) FECHA: MAYO 14, 2005. ASUNTO: AGREGAR AL MENU LA OPC.657 CLIENTES DE ALTO RIESGO PLD OPC.658 CTES RELACIONADOS RFC Y CURP OPC.659 HISTORICO DE SALDOS PLD', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG406.cbl', system: 'BBVA-BANCOMER, S.A. DE C.V.', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'ZM1MG547'})
SET n += {description: 'Programa COBOL que presentar el menu principal de promocion. opcion: "0 " transaccion: z547 (m547) rutinas: zm8cr009 (centra textos) zm9cr403 (obtener nombre de empresa) zm9cr432 (transferencia-navegacion-) aplic. llamada: zm2og532 (funcion de aborta) modifico: nnnnnnnnn pppppppppppp mmmmmmmmm (xxxxxxx) fecha: mmmmmmmmmmmm dd, ssaa. asunto: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx. finmod. Pertenece a: PROGRAM-ID. ZM1MG547..', ingestion: 'auto', layer: 'program', name: 'ZM1MG547', nodeType: 'program', objective: 'PRESENTAR EL MENU PRINCIPAL DE PROMOCION. OPCION: "0 " TRANSACCION: Z547 (M547) RUTINAS: ZM8CR009 (CENTRA TEXTOS) ZM9CR403 (OBTENER NOMBRE DE EMPRESA) ZM9CR432 (TRANSFERENCIA-NAVEGACION-) APLIC. LLAMADA: ZM2OG532 (FUNCION DE ABORTA) MODIFICO: NNNNNNNNN PPPPPPPPPPPP MMMMMMMMM (XXXXXXX) FECHA: MMMMMMMMMMMM DD, SSAA. ASUNTO: XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX. FINMOD', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG547.cbl', system: 'PROGRAM-ID. ZM1MG547.', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'ZM1MG548'})
SET n += {description: 'Programa COBOL que presentar menu promocion sociedades inversion opcion: "1 " transaccion: z548 (m548) rutinas: zm8cr009 (centra textos) zm9cr403 (obtener nombre de empresa) zm9cr432 (transferencia-navegacion-) aplic. llamada: zm2og532 (funcion de aborta) modifico: nnnnnnnnn pppppppppppp mmmmmmmmm (xxxxxxx) fecha: mmmmmmmmmmmm dd, ssaa. asunto: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx. modifico: hitss fecha: diciembre , 23, 2015 asunto: requerimiento ley fondos inversion incluir opcion 25 en menu de informacion inicio marca lfii fin marca lfif modifico: hitss fecha: diciembre , 23, 2015 asunto: requerimiento ley fondos inversion elimnar sentencia substr por validacion vl inicio marca lfii2 fin marca lfif2 finmod. Pertenece a: PROGRAM-ID. ZM1MG548..', ingestion: 'auto', layer: 'program', name: 'ZM1MG548', nodeType: 'program', objective: 'PRESENTAR MENU PROMOCION SOCIEDADES INVERSION OPCION: "1 " TRANSACCION: Z548 (M548) RUTINAS: ZM8CR009 (CENTRA TEXTOS) ZM9CR403 (OBTENER NOMBRE DE EMPRESA) ZM9CR432 (TRANSFERENCIA-NAVEGACION-) APLIC. LLAMADA: ZM2OG532 (FUNCION DE ABORTA) MODIFICO: NNNNNNNNN PPPPPPPPPPPP MMMMMMMMM (XXXXXXX) FECHA: MMMMMMMMMMMM DD, SSAA. ASUNTO: XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX. MODIFICO: HITSS FECHA: DICIEMBRE , 23, 2015 ASUNTO: REQUERIMIENTO LEY FONDOS INVERSION INCLUIR OPCION 25 EN MENU DE INFORMACION INICIO MARCA LFII FIN MARCA LFIF MODIFICO: HITSS FECHA: DICIEMBRE , 23, 2015 ASUNTO: REQUERIMIENTO LEY FONDOS INVERSION ELIMNAR SENTENCIA SUBSTR POR VALIDACION VL INICIO MARCA LFII2 FIN MARCA LFIF2 FINMOD', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG548.cbl', system: 'PROGRAM-ID. ZM1MG548.', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'ZM1MG549'})
SET n += {description: 'Programa COBOL que ejecuta procesos.', ingestion: 'auto', layer: 'program', name: 'ZM1MG549', nodeType: 'program', objective: null, reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG549.cbl', system: null, viewTag: 'cobol-program'};

MERGE (n:Program {name: 'ZM1MG550'})
SET n += {description: 'Programa COBOL que ejecuta procesos.', ingestion: 'auto', layer: 'program', name: 'ZM1MG550', nodeType: 'program', objective: null, reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG550.cbl', system: null, viewTag: 'cobol-program'};

MERGE (n:Program {name: 'ZM1MG551'})
SET n += {description: 'Programa COBOL que ejecuta procesos.', ingestion: 'auto', layer: 'program', name: 'ZM1MG551', nodeType: 'program', objective: null, reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG551.cbl', system: null, viewTag: 'cobol-program'};

MERGE (n:Program {name: 'ZM1MG552'})
SET n += {description: 'Programa COBOL que presentar menu promocion consultas generales opcion: "5 " transaccion: z552 (m552) rutinas: zm8cr009 (centra textos) zm9cr403 (obtener nombre de empresa) zm9cr432 (transferencia-navegacion-) aplic. llamada: zm2og532 (funcion de aborta) modifico: gesfor 2005-11-10 se adiciona opcion 194 fsw-1.1.0-01 14-nov-2007 xtsobmd(softtek) modifico: its se agrega opcion 200 (08-07-2013) modifico: dgcm 2013-10-10 -se ingresa nueva opcion @dgcm01 "d10" en w000-opcion-valida modifico: dgcm 2015-03-30 -se ingresa nueva opcion @dgcm02 "is3" en w000-opcion-valida finmod. Pertenece a: PROGRAM-ID. ZM1MG552..', ingestion: 'auto', layer: 'program', name: 'ZM1MG552', nodeType: 'program', objective: 'PRESENTAR MENU PROMOCION CONSULTAS GENERALES OPCION: "5 " TRANSACCION: Z552 (M552) RUTINAS: ZM8CR009 (CENTRA TEXTOS) ZM9CR403 (OBTENER NOMBRE DE EMPRESA) ZM9CR432 (TRANSFERENCIA-NAVEGACION-) APLIC. LLAMADA: ZM2OG532 (FUNCION DE ABORTA) MODIFICO: GESFOR 2005-11-10 SE ADICIONA OPCION 194 FSW-1.1.0-01 14-NOV-2007 XTSOBMD(SOFTTEK) MODIFICO: ITS SE AGREGA OPCION 200 (08-07-2013) MODIFICO: DGCM 2013-10-10 -SE INGRESA NUEVA OPCION @DGCM01 "D10" EN W000-OPCION-VALIDA MODIFICO: DGCM 2015-03-30 -SE INGRESA NUEVA OPCION @DGCM02 "IS3" EN W000-OPCION-VALIDA FINMOD', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG552.cbl', system: 'PROGRAM-ID. ZM1MG552.', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'ZM1MG553'})
SET n += {description: 'Programa COBOL que presentar menu de control de contratos transaccion : z553 de prueba la g006 opcion : 210 rutinas: zm8cr009 (centra textos) ahr009 zmwsg532 (rutina de aborta) vrc980o zm9cr403 (obtener nombre de compania) vrb403o zm9cr432 (transferencia-navegacion-) vrb432o m o d u l o d e m o d i f i c a c i o n e s fws-1.1.0-00 14-nov-2007 xtsobmd(softtek) fs-2.0.0-01 xmcb150 09abr13 - adecuacion solicitada por dyd fs-2.0.0-02 tecnocom 09may13 - atencion a odt4 siva - 2012 fs-2.0.0-03 fs-dgcm 28jul14 - atencion a odt25 siva fs-2.0.0-04 fsw-cda 15dic15 - se elimina la opcion 476. Pertenece a: PROGRAM-ID. ZM1MG553..', ingestion: 'auto', layer: 'program', name: 'ZM1MG553', nodeType: 'program', objective: 'PRESENTAR MENU DE CONTROL DE CONTRATOS TRANSACCION : Z553 DE PRUEBA LA G006 OPCION : 210 RUTINAS: ZM8CR009 (CENTRA TEXTOS) AHR009 ZMWSG532 (RUTINA DE ABORTA) VRC980O ZM9CR403 (OBTENER NOMBRE DE COMPANIA) VRB403O ZM9CR432 (TRANSFERENCIA-NAVEGACION-) VRB432O M O D U L O D E M O D I F I C A C I O N E S FWS-1.1.0-00 14-NOV-2007 XTSOBMD(SOFTTEK) FS-2.0.0-01 XMCB150 09ABR13 - ADECUACION SOLICITADA POR DYD FS-2.0.0-02 TECNOCOM 09MAY13 - ATENCION A ODT4 SIVA - 2012 FS-2.0.0-03 FS-DGCM 28JUL14 - ATENCION A ODT25 SIVA FS-2.0.0-04 FSW-CDA 15DIC15 - SE ELIMINA LA OPCION 476', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG553.cbl', system: 'PROGRAM-ID. ZM1MG553.', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'ZM1MG555'})
SET n += {description: 'Programa COBOL que ejecuta procesos.', ingestion: 'auto', layer: 'program', name: 'ZM1MG555', nodeType: 'program', objective: null, reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG555.cbl', system: null, viewTag: 'cobol-program'};

MERGE (n:Program {name: 'ZM1MG557'})
SET n += {description: 'Programa COBOL que ejecuta procesos.', ingestion: 'auto', layer: 'program', name: 'ZM1MG557', nodeType: 'program', objective: null, reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG557.cbl', system: null, viewTag: 'cobol-program'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MG406', name: 'ZM1MG406_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de ZM1MG406 para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_ZM1MG406', ingestion: 'auto', layer: 'functional', name: 'ZM1MG406_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG406.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MG547', name: 'ZM1MG547_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de ZM1MG547 para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_ZM1MG547', ingestion: 'auto', layer: 'functional', name: 'ZM1MG547_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG547.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MG548', name: 'ZM1MG548_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de ZM1MG548 para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_ZM1MG548', ingestion: 'auto', layer: 'functional', name: 'ZM1MG548_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG548.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MG549', name: 'ZM1MG549_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de ZM1MG549 para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_ZM1MG549', ingestion: 'auto', layer: 'functional', name: 'ZM1MG549_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG549.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MG550', name: 'ZM1MG550_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de ZM1MG550 para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_ZM1MG550', ingestion: 'auto', layer: 'functional', name: 'ZM1MG550_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG550.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MG551', name: 'ZM1MG551_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de ZM1MG551 para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_ZM1MG551', ingestion: 'auto', layer: 'functional', name: 'ZM1MG551_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG551.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MG552', name: 'ZM1MG552_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de ZM1MG552 para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_ZM1MG552', ingestion: 'auto', layer: 'functional', name: 'ZM1MG552_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG552.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MG553', name: 'ZM1MG553_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de ZM1MG553 para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_ZM1MG553', ingestion: 'auto', layer: 'functional', name: 'ZM1MG553_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG553.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MG555', name: 'ZM1MG555_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de ZM1MG555 para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_ZM1MG555', ingestion: 'auto', layer: 'functional', name: 'ZM1MG555_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG555.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MG557', name: 'ZM1MG557_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de ZM1MG557 para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_ZM1MG557', ingestion: 'auto', layer: 'functional', name: 'ZM1MG557_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557', sourceFile: 'src/ZM1MG557.cbl', viewTag: 'functional'};

MATCH (a:Program {name: 'ZM1MG406'}), (b:Paragraph {name: '0000-INICIO', programName: 'ZM1MG406'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [157], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG406'}), (b:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MG406'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [193], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG406'}), (b:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MG406'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [200], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG406'}), (b:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG406'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [215], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG406'}), (b:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG406'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [237], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG406'}), (b:Paragraph {name: '8900-FECHA', programName: 'ZM1MG406'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [247], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG406'}), (b:Paragraph {name: 'AUTHOR', programName: 'ZM1MG406'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [8], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG406'}), (b:Paragraph {name: 'INSTALLATION', programName: 'ZM1MG406'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [10], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG406'}), (b:Paragraph {name: 'LINKAGE', programName: 'ZM1MG406'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [147], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG406'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG406'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [52], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG547'}), (b:Paragraph {name: '0000-INICIO', programName: 'ZM1MG547'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [146], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG547'}), (b:Paragraph {name: '0010-INICIO-APLICACION', programName: 'ZM1MG547'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [158], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG547'}), (b:Paragraph {name: '0100-REINICIO-APLICACION', programName: 'ZM1MG547'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [162], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG547'}), (b:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MG547'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [217], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG547'}), (b:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MG547'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [223], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG547'}), (b:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG547'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [237], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG547'}), (b:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG547'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [262], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG547'}), (b:Paragraph {name: '8500-CONTROL-EVENTO', programName: 'ZM1MG547'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [272], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG547'}), (b:Paragraph {name: '8550-VALIDA-EVENTO', programName: 'ZM1MG547'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [296], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG547'}), (b:Paragraph {name: '8600-MUEVE-DESCRIPCION', programName: 'ZM1MG547'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [327], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG547'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ZM1MG547'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [37], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG547'}), (b:Paragraph {name: 'LINKAGE', programName: 'ZM1MG547'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [139], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG547'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG547'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [44], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG548'}), (b:Paragraph {name: '0000-INICIO', programName: 'ZM1MG548'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [259], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG548'}), (b:Paragraph {name: '0010-INICIO-APLICACION', programName: 'ZM1MG548'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [273], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG548'}), (b:Paragraph {name: '0020-CARGA-MENU', programName: 'ZM1MG548'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [281], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG548'}), (b:Paragraph {name: '0100-REINICIO-APLICACION', programName: 'ZM1MG548'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [306], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG548'}), (b:Paragraph {name: '0110-REGENERA-OPCIONES', programName: 'ZM1MG548'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [337], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG548'}), (b:Paragraph {name: '5530-LEE-PARAM', programName: 'ZM1MG548'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [346], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG548'}), (b:Paragraph {name: '8000-GRABA-REG-QUEUE', programName: 'ZM1MG548'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [369], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG548'}), (b:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MG548'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [380], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG548'}), (b:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MG548'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [386], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG548'}), (b:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG548'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [400], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG548'}), (b:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG548'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [421], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG548'}), (b:Paragraph {name: '8125-ARMA-MENU', programName: 'ZM1MG548'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [431], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG548'}), (b:Paragraph {name: '8126-LEE-OPCIONES', programName: 'ZM1MG548'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [469], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG548'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ZM1MG548'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [50], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG548'}), (b:Paragraph {name: 'LINKAGE', programName: 'ZM1MG548'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [252], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG548'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG548'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [57], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG549'}), (b:Paragraph {name: '0000-INICIO', programName: 'ZM1MG549'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [136], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG549'}), (b:Paragraph {name: '0010-INICIO-APLICACION', programName: 'ZM1MG549'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [150], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG549'}), (b:Paragraph {name: '0100-REINICIO-APLICACION', programName: 'ZM1MG549'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [157], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG549'}), (b:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MG549'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [170], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG549'}), (b:Paragraph {name: '8010-PF2-PF3', programName: 'ZM1MG549'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [176], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG549'}), (b:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MG549'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [192], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG549'}), (b:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG549'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [207], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG549'}), (b:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG549'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [228], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG549'}), (b:Paragraph {name: 'AUTHOR', programName: 'ZM1MG549'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [5], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG549'}), (b:Paragraph {name: 'INSTALLATION', programName: 'ZM1MG549'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG549'}), (b:Paragraph {name: 'LINKAGE', programName: 'ZM1MG549'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [129], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG549'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG549'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [38], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG550'}), (b:Paragraph {name: '0000-INICIO', programName: 'ZM1MG550'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [113], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG550'}), (b:Paragraph {name: '0010-INICIO-APLICACION', programName: 'ZM1MG550'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [124], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG550'}), (b:Paragraph {name: '0100-REINICIO-APLICACION', programName: 'ZM1MG550'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [128], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG550'}), (b:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MG550'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [153], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG550'}), (b:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MG550'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [159], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG550'}), (b:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG550'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [173], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG550'}), (b:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG550'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [194], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG550'}), (b:Paragraph {name: 'AUTHOR', programName: 'ZM1MG550'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [5], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG550'}), (b:Paragraph {name: 'INSTALLATION', programName: 'ZM1MG550'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG550'}), (b:Paragraph {name: 'LINKAGE', programName: 'ZM1MG550'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [106], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG550'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG550'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [29], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Paragraph {name: '0000-INICIO', programName: 'ZM1MG551'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [222], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Paragraph {name: '0000-LLENA-DATOS-MAPA', programName: 'ZM1MG551'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [265], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Paragraph {name: '0002-BUSCA-AUTIRIZACION', programName: 'ZM1MG551'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [306], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MG551'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [359], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MG551'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [365], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Paragraph {name: '8110-ARMA-OPCIONES-PANTALLA', programName: 'ZM1MG551'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [412], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG551'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [379], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG551'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [403], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Paragraph {name: '8130-VALIDA-OPCION-CAPTURADA', programName: 'ZM1MG551'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [324], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Paragraph {name: 'JUSTIFICA-OPCION', programName: 'ZM1MG551'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [461], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Paragraph {name: 'LINKAGE', programName: 'ZM1MG551'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [213], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [27], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG552'}), (b:Paragraph {name: '0000-INICIO', programName: 'ZM1MG552'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [182], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG552'}), (b:Paragraph {name: '0010-INICIO-APLICACION', programName: 'ZM1MG552'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [193], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG552'}), (b:Paragraph {name: '0100-REINICIO-APLICACION', programName: 'ZM1MG552'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [199], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG552'}), (b:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MG552'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [224], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG552'}), (b:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MG552'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [230], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG552'}), (b:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG552'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [244], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG552'}), (b:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG552'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [265], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG552'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ZM1MG552'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [46], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG552'}), (b:Paragraph {name: 'LINKAGE', programName: 'ZM1MG552'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [175], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG552'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG552'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [53], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG553'}), (b:Paragraph {name: '0000-CONTROL', programName: 'ZM1MG553'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [169], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG553'}), (b:Paragraph {name: '0010-INICIO-APLICACION', programName: 'ZM1MG553'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [236], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG553'}), (b:Paragraph {name: '0100-TRANS', programName: 'ZM1MG553'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [243], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG553'}), (b:Paragraph {name: '3000-VALIDA-OPCION', programName: 'ZM1MG553'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [256], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG553'}), (b:Paragraph {name: '8450-PREPARA-DATOS-ENCA', programName: 'ZM1MG553'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [273], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG553'}), (b:Paragraph {name: '8500-ENVIAR-PANTALLA', programName: 'ZM1MG553'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [283], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG553'}), (b:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MG553'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [300], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG553'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ZM1MG553'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [31], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG553'}), (b:Paragraph {name: 'LINKAGE', programName: 'ZM1MG553'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [159], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG553'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG553'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [35], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG555'}), (b:Paragraph {name: '0000-INICIO', programName: 'ZM1MG555'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [130], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG555'}), (b:Paragraph {name: '0010-INICIO-APLICACION', programName: 'ZM1MG555'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [144], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG555'}), (b:Paragraph {name: '0100-REINICIO-APLICACION', programName: 'ZM1MG555'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [151], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG555'}), (b:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MG555'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [164], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG555'}), (b:Paragraph {name: '8010-PF2-PF3', programName: 'ZM1MG555'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [170], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG555'}), (b:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MG555'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [186], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG555'}), (b:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG555'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [201], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG555'}), (b:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG555'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [222], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG555'}), (b:Paragraph {name: 'AUTHOR', programName: 'ZM1MG555'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [5], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG555'}), (b:Paragraph {name: 'INSTALLATION', programName: 'ZM1MG555'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG555'}), (b:Paragraph {name: 'LINKAGE', programName: 'ZM1MG555'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [123], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG555'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG555'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [35], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG557'}), (b:Paragraph {name: '0000-INICIO', programName: 'ZM1MG557'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [139], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG557'}), (b:Paragraph {name: '0010-INICIO-APLICACION', programName: 'ZM1MG557'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [153], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG557'}), (b:Paragraph {name: '0100-REINICIO-APLICACION', programName: 'ZM1MG557'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [164], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG557'}), (b:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MG557'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [177], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG557'}), (b:Paragraph {name: '8010-PF2-PF3', programName: 'ZM1MG557'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [183], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG557'}), (b:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MG557'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [199], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG557'}), (b:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG557'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [214], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG557'}), (b:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG557'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [235], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG557'}), (b:Paragraph {name: 'AUTHOR', programName: 'ZM1MG557'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [5], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG557'}), (b:Paragraph {name: 'INSTALLATION', programName: 'ZM1MG557'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG557'}), (b:Paragraph {name: 'LINKAGE', programName: 'ZM1MG557'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [132], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG557'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG557'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [42], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_ZM1MG406'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MG406', name: 'ZM1MG406_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_ZM1MG547'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MG547', name: 'ZM1MG547_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_ZM1MG548'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MG548', name: 'ZM1MG548_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_ZM1MG549'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MG549', name: 'ZM1MG549_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_ZM1MG550'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MG550', name: 'ZM1MG550_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_ZM1MG551'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MG551', name: 'ZM1MG551_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_ZM1MG552'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MG552', name: 'ZM1MG552_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_ZM1MG553'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MG553', name: 'ZM1MG553_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_ZM1MG555'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MG555', name: 'ZM1MG555_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_ZM1MG557'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MG557', name: 'ZM1MG557_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [191], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [158], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [197], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [211], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [222], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [235], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [241], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8900-FECHA', programName: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [278], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8900-FECHA', programName: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [285], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8900-FECHA', programName: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [292], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8900-FECHA', programName: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [299], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8900-FECHA', programName: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [306], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8900-FECHA', programName: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [322], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8900-FECHA', programName: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [315], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8900-FECHA', programName: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [264], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8900-FECHA', programName: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [271], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG406'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [83], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG406'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [87], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG406'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [141], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG406'}), (b:Copybook {name: 'ZMG4061'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [91], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG406'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [137], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [95], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [99], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [103], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [107], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [79], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [127], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [112], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [122], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [117], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG406'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [144], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [156], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [147], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [220], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [233], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [246], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [259], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [265], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8500-CONTROL-EVENTO', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [288], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8500-CONTROL-EVENTO', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [290], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8600-MUEVE-DESCRIPCION', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [363], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8600-MUEVE-DESCRIPCION', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [370], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8600-MUEVE-DESCRIPCION', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [377], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8600-MUEVE-DESCRIPCION', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [384], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8600-MUEVE-DESCRIPCION', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [391], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8600-MUEVE-DESCRIPCION', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [407], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8600-MUEVE-DESCRIPCION', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [400], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8600-MUEVE-DESCRIPCION', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [349], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8600-MUEVE-DESCRIPCION', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [356], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG547'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [71], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG547'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [75], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMG5471'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [79], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [128], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [83], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [87], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [91], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [95], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [99], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [119], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [104], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [114], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSRCTL'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [124], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [109], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [271], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [260], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '0020-CARGA-MENU', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [289, 304], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '5530-LEE-PARAM', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [358], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [383], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [396], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [406], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [419], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [424], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8126-LEE-OPCIONES', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [500], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8126-LEE-OPCIONES', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [506], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8126-LEE-OPCIONES', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [512], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8126-LEE-OPCIONES', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [518], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8126-LEE-OPCIONES', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [524], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8126-LEE-OPCIONES', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [530], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8126-LEE-OPCIONES', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [544], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8126-LEE-OPCIONES', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [538], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8126-LEE-OPCIONES', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [488], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8126-LEE-OPCIONES', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [494], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG548'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [135], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG548'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [139], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG548'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [89], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMG5482'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [144], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [219], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [179], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [183], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [187], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [191], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [195], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [215], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [200], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [210], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [205], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [95], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [148], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [137], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [173], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [203], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [213], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [226], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [259], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [231, 265], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [271], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [277], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [283], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [297], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [291], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [247], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [253], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG549'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [67], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG549'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [71], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG549'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [62], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG549'}), (b:Copybook {name: 'ZMG5491'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [75], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG549'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [125], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [79], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [83], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [87], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [91], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [95], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [115], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [100], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [110], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [105], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [122], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [114], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [156], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [169], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [179], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [192], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [220], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [197, 224], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [228], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [232], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [236], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [246], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [242], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [212], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [216], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG550'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [44], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG550'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [48], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG550'}), (b:Copybook {name: 'ZMG5501'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [52], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG550'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [102], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [56], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [60], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [64], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [68], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [72], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [92], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [77], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [87], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [82], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [262], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [223], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '0002-BUSCA-AUTIRIZACION', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [320], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [362], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [375], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [388], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [401], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [406], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'JUSTIFICA-OPCION', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [500], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'JUSTIFICA-OPCION', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [506], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'JUSTIFICA-OPCION', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [512], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'JUSTIFICA-OPCION', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [518], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'JUSTIFICA-OPCION', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [524], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'JUSTIFICA-OPCION', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [530], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'JUSTIFICA-OPCION', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [544], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'JUSTIFICA-OPCION', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [538], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'JUSTIFICA-OPCION', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [488], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'JUSTIFICA-OPCION', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [494], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [44], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [48], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [74], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZAPERAPL'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [82], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMG5511'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [52], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [198], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [152], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [156], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [160], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [164], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [168], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [188], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [173], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [183], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [178], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [78], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [191], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [183], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [227], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [240], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [250], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [263], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [296], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [268, 302], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [308], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [314], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [320], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [334], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [328], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [284], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [290], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG552'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [108], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG552'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [112], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG552'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [159], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG552'}), (b:Copybook {name: 'ZMG5521'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [116], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG552'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [165], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [120], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [124], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [128], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [132], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [136], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [156], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [141], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [151], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [146], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '0000-CONTROL', programName: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [234], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '0000-CONTROL', programName: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [203, 218], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '0000-CONTROL', programName: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [182], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '3000-VALIDA-OPCION', programName: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [269], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8450-PREPARA-DATOS-ENCA', programName: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [276], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8500-ENVIAR-PANTALLA', programName: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [286], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8500-ENVIAR-PANTALLA', programName: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [297], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [336], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [342], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [348], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [354], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [361], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [375], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [311, 369], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [324], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [330], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG553'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [127], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG553'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [129], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG553'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [124], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG553'}), (b:Copybook {name: 'ZMG5531'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [131], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG553'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [56], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [150], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [147], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [145], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [148], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [152], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [143], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [137], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [134], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [140], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [142], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [131], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [167], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [197], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [207], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [220], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [253], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [225, 259], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [265], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [271], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [277], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [291], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [285], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [241], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [247], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG555'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [57], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG555'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [61], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG555'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [114], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG555'}), (b:Copybook {name: 'ZMG5551'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [65], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG555'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [119], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [69], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [73], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [77], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [81], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [85], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [105], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [90], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [100], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [95], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [151], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [140], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [180], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [210], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [220], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [233], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [266], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [238, 272], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [278], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [284], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [290], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [304], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [298], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [254], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [260], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG557'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [66], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG557'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [70], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG557'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [61], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG557'}), (b:Copybook {name: 'ZMG5571'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [74], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG557'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [128], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [78], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [82], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [86], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [90], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [94], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [114], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [99], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [109], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [104], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG557'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [117], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG406'}), (b:Functionality {name: 'FUNCTIONALITY_ZM1MG406'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG547'}), (b:Functionality {name: 'FUNCTIONALITY_ZM1MG547'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG548'}), (b:Functionality {name: 'FUNCTIONALITY_ZM1MG548'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG549'}), (b:Functionality {name: 'FUNCTIONALITY_ZM1MG549'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG550'}), (b:Functionality {name: 'FUNCTIONALITY_ZM1MG550'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Functionality {name: 'FUNCTIONALITY_ZM1MG551'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG552'}), (b:Functionality {name: 'FUNCTIONALITY_ZM1MG552'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG553'}), (b:Functionality {name: 'FUNCTIONALITY_ZM1MG553'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG555'}), (b:Functionality {name: 'FUNCTIONALITY_ZM1MG555'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG557'}), (b:Functionality {name: 'FUNCTIONALITY_ZM1MG557'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG406'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [83], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG406'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [87], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG406'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [141], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG406'}), (b:Copybook {name: 'ZMG4061'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [91], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG406'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [137], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [278], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [285], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [292], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [299], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [306], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [322], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [95], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [99], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [103], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [107], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [79], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [315], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [264], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [271], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [127], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [112], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [122], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [117], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG406'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [144], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG547'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [71], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG547'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [75], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG547'}), (b:Copybook {name: 'ZMG5471'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [79], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG547'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [128], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [363], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [370], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [377], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [384], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [391], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [407], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [83], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [87], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [91], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [95], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [99], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [400], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [349], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [356], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [119], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [104], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [114], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSRCTL'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [124], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [109], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG548'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [135], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG548'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [139], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG548'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [89], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG548'}), (b:Copybook {name: 'ZMG5482'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [144], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG548'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [219], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [500], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [506], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [512], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [518], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [524], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [530], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [544], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [179], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [183], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [187], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [191], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [195], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [538], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [488], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [494], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [215], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [200], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [210], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [205], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG548'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [95], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG549'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [67], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG549'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [71], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG549'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [62], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG549'}), (b:Copybook {name: 'ZMG5491'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [75], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG549'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [125], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [259], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [265], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [271], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [277], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [283], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [297], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [79], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [83], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [87], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [91], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [95], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [291], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [247], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [253], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [115], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [100], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [110], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [105], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG550'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [44], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG550'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [48], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG550'}), (b:Copybook {name: 'ZMG5501'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [52], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG550'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [102], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [220], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [224], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [228], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [232], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [236], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [246], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [56], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [60], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [64], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [68], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [72], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [242], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [212], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [216], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [92], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [77], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [87], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [82], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [44], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [48], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [74], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Copybook {name: 'ZAPERAPL'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [82], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Copybook {name: 'ZMG5511'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [52], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [198], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [500], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [506], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [512], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [518], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [524], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [530], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [544], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [152], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [156], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [160], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [164], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [168], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [538], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [488], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [494], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [188], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [173], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [183], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [178], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [78], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG552'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [108], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG552'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [112], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG552'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [159], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG552'}), (b:Copybook {name: 'ZMG5521'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [116], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG552'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [165], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [296], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [302], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [308], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [314], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [320], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [334], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [120], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [124], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [128], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [132], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [136], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [328], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [284], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [290], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [156], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [141], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [151], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [146], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG553'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [127], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG553'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [129], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG553'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [124], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG553'}), (b:Copybook {name: 'ZMG5531'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [131], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG553'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [56], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [336], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [342], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [348], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [354], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [361], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [375], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [150], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [147], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [145], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [148], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [152], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [369], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [324], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [330], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [143], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [137], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [134], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [140], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG555'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [57], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG555'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [61], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG555'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [114], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG555'}), (b:Copybook {name: 'ZMG5551'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [65], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG555'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [119], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [253], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [259], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [265], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [271], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [277], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [291], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [69], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [73], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [77], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [81], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [85], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [285], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [241], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [247], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [105], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [90], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [100], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [95], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG557'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [66], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG557'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [70], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG557'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [61], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG557'}), (b:Copybook {name: 'ZMG5571'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [74], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG557'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [128], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [266], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [272], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [278], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [284], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [290], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [304], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [78], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [82], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [86], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [90], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [94], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [298], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [254], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [260], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [114], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [99], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [109], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [104], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG557'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [117], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG406'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [248, 249, 250, 251, 252, 253], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG548'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [234, 235, 237, 238, 239, 241, 242, 243, 244], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [307, 308, 309, 310, 311, 312, 313, 314, 315], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Program {name: 'ZM1MG557'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [156, 157, 158, 159, 160, 161, 162], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MG406', name: 'ZM1MG406_PROCESSING'}), (b:Paragraph {name: '8900-FECHA', programName: 'ZM1MG406'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [247], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MG547', name: 'ZM1MG547_PROCESSING'}), (b:Paragraph {name: '8600-MUEVE-DESCRIPCION', programName: 'ZM1MG547'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [327], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MG548', name: 'ZM1MG548_PROCESSING'}), (b:Paragraph {name: '8126-LEE-OPCIONES', programName: 'ZM1MG548'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [469], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MG549', name: 'ZM1MG549_PROCESSING'}), (b:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG549'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [228], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MG550', name: 'ZM1MG550_PROCESSING'}), (b:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG550'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [194], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MG551', name: 'ZM1MG551_PROCESSING'}), (b:Paragraph {name: 'JUSTIFICA-OPCION', programName: 'ZM1MG551'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [461], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MG552', name: 'ZM1MG552_PROCESSING'}), (b:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG552'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [265], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MG553', name: 'ZM1MG553_PROCESSING'}), (b:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MG553'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [300], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MG555', name: 'ZM1MG555_PROCESSING'}), (b:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG555'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [222], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MG557', name: 'ZM1MG557_PROCESSING'}), (b:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG557'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [235], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [191], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [158], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [197], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [211], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [222], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [235], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [241], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8900-FECHA', programName: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [278], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8900-FECHA', programName: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [285], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8900-FECHA', programName: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [292], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8900-FECHA', programName: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [299], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8900-FECHA', programName: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [306], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8900-FECHA', programName: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [322], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8900-FECHA', programName: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [315], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8900-FECHA', programName: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [264], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8900-FECHA', programName: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [271], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG406'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [83], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG406'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [87], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG406'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [141], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG406'}), (b:Copybook {name: 'ZMG4061'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [91], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG406'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [137], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [95], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [99], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [103], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [107], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [79], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [127], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [112], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [122], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG406'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [117], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG406'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG406.cbl', evidenceLines: [144], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [156], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [147], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [220], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [233], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [246], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [259], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [265], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8500-CONTROL-EVENTO', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [288], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8500-CONTROL-EVENTO', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [290], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8600-MUEVE-DESCRIPCION', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [363], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8600-MUEVE-DESCRIPCION', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [370], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8600-MUEVE-DESCRIPCION', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [377], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8600-MUEVE-DESCRIPCION', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [384], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8600-MUEVE-DESCRIPCION', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [391], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8600-MUEVE-DESCRIPCION', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [407], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8600-MUEVE-DESCRIPCION', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [400], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8600-MUEVE-DESCRIPCION', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [349], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8600-MUEVE-DESCRIPCION', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [356], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG547'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [71], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG547'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [75], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMG5471'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [79], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [128], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [83], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [87], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [91], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [95], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [99], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [119], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [104], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [114], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSRCTL'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [124], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG547'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG547.cbl', evidenceLines: [109], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [271], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [260], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '0020-CARGA-MENU', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [289, 304], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '5530-LEE-PARAM', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [358], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [383], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [396], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [406], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [419], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [424], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8126-LEE-OPCIONES', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [500], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8126-LEE-OPCIONES', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [506], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8126-LEE-OPCIONES', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [512], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8126-LEE-OPCIONES', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [518], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8126-LEE-OPCIONES', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [524], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8126-LEE-OPCIONES', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [530], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8126-LEE-OPCIONES', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [544], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8126-LEE-OPCIONES', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [538], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8126-LEE-OPCIONES', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [488], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8126-LEE-OPCIONES', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [494], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG548'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [135], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG548'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [139], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG548'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [89], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMG5482'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [144], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [219], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [179], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [183], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [187], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [191], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [195], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [215], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [200], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [210], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [205], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG548'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG548.cbl', evidenceLines: [95], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [148], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [137], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [173], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [203], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [213], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [226], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [259], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [231, 265], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [271], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [277], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [283], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [297], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [291], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [247], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [253], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG549'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [67], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG549'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [71], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG549'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [62], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG549'}), (b:Copybook {name: 'ZMG5491'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [75], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG549'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [125], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [79], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [83], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [87], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [91], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [95], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [115], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [100], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [110], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG549'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG549.cbl', evidenceLines: [105], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [122], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [114], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [156], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [169], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [179], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [192], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [220], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [197, 224], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [228], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [232], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [236], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [246], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [242], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [212], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [216], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG550'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [44], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG550'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [48], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG550'}), (b:Copybook {name: 'ZMG5501'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [52], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG550'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [102], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [56], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [60], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [64], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [68], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [72], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [92], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [77], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [87], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG550'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG550.cbl', evidenceLines: [82], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [262], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [223], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '0002-BUSCA-AUTIRIZACION', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [320], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [362], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [375], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [388], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [401], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [406], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'JUSTIFICA-OPCION', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [500], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'JUSTIFICA-OPCION', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [506], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'JUSTIFICA-OPCION', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [512], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'JUSTIFICA-OPCION', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [518], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'JUSTIFICA-OPCION', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [524], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'JUSTIFICA-OPCION', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [530], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'JUSTIFICA-OPCION', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [544], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'JUSTIFICA-OPCION', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [538], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'JUSTIFICA-OPCION', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [488], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'JUSTIFICA-OPCION', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [494], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [44], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [48], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [74], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZAPERAPL'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [82], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMG5511'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [52], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [198], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [152], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [156], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [160], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [164], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [168], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [188], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [173], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [183], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [178], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [78], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [191], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [183], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [227], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [240], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [250], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [263], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [296], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [268, 302], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [308], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [314], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [320], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [334], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [328], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [284], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [290], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG552'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [108], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG552'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [112], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG552'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [159], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG552'}), (b:Copybook {name: 'ZMG5521'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [116], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG552'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [165], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [120], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [124], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [128], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [132], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [136], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [156], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [141], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [151], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG552'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG552.cbl', evidenceLines: [146], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '0000-CONTROL', programName: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [234], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '0000-CONTROL', programName: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [203, 218], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '0000-CONTROL', programName: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [182], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '3000-VALIDA-OPCION', programName: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [269], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8450-PREPARA-DATOS-ENCA', programName: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [276], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8500-ENVIAR-PANTALLA', programName: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [286], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8500-ENVIAR-PANTALLA', programName: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [297], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [336], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [342], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [348], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [354], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [361], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [375], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [311, 369], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [324], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [330], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG553'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [127], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG553'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [129], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG553'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [124], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG553'}), (b:Copybook {name: 'ZMG5531'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [131], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG553'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [56], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [150], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [147], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [145], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [148], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [152], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [143], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [137], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [134], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG553'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG553.cbl', evidenceLines: [140], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [142], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [131], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [167], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [197], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [207], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [220], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [253], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [225, 259], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [265], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [271], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [277], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [291], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [285], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [241], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [247], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG555'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [57], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG555'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [61], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG555'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [114], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG555'}), (b:Copybook {name: 'ZMG5551'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [65], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG555'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [119], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [69], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [73], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [77], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [81], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [85], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [105], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [90], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [100], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG555'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG555.cbl', evidenceLines: [95], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [151], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [140], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [180], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [210], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [220], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [233], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [266], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [238, 272], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [278], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [284], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [290], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [304], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [298], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [254], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [260], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG557'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [66], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG557'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [70], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG557'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [61], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG557'}), (b:Copybook {name: 'ZMG5571'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [74], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG557'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [128], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [78], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [82], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [86], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [90], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [94], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [114], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [99], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [109], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG557'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [104], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG557'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG557.cbl', evidenceLines: [117], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205841Z-zm1mg406-zm1mg547-zm1mg548-zm1mg549-zm1mg550-zm1mg551-zm1mg552-zm1mg553-zm1mg555-zm1mg557'};

