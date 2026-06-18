// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260618T205849Z-zm9rus01
// ============================================================================

MERGE (n:Copybook {name: 'AJW0ALRT'})
SET n += {evidenceFile: 'src/ZM9RUS01.cbl', evidenceLines: [292], ingestion: 'auto', layer: 'dependency', name: 'AJW0ALRT', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205849Z-zm9rus01', sourceFile: 'src/ZM9RUS01.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'AJWALRT1'})
SET n += {evidenceFile: 'src/ZM9RUS01.cbl', evidenceLines: [326], ingestion: 'auto', layer: 'dependency', name: 'AJWALRT1', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205849Z-zm9rus01', sourceFile: 'src/ZM9RUS01.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'KZDEC101'})
SET n += {evidenceFile: 'src/ZM9RUS01.cbl', evidenceLines: [295], ingestion: 'auto', layer: 'dependency', name: 'KZDEC101', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205849Z-zm9rus01', sourceFile: 'src/ZM9RUS01.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SQLCA'})
SET n += {evidenceFile: 'src/ZM9RUS01.cbl', evidenceLines: [272], ingestion: 'auto', layer: 'dependency', name: 'SQLCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205849Z-zm9rus01', sourceFile: 'src/ZM9RUS01.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZORDENES'})
SET n += {evidenceFile: 'src/ZM9RUS01.cbl', evidenceLines: [284], ingestion: 'auto', layer: 'dependency', name: 'ZORDENES', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205849Z-zm9rus01', sourceFile: 'src/ZM9RUS01.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZPARAM'})
SET n += {evidenceFile: 'src/ZM9RUS01.cbl', evidenceLines: [280], ingestion: 'auto', layer: 'dependency', name: 'ZPARAM', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205849Z-zm9rus01', sourceFile: 'src/ZM9RUS01.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZUSUARIO'})
SET n += {evidenceFile: 'src/ZM9RUS01.cbl', evidenceLines: [288], ingestion: 'auto', layer: 'dependency', name: 'ZUSUARIO', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205849Z-zm9rus01', sourceFile: 'src/ZM9RUS01.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZZMDT800'})
SET n += {evidenceFile: 'src/ZM9RUS01.cbl', evidenceLines: [276], ingestion: 'auto', layer: 'dependency', name: 'ZZMDT800', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205849Z-zm9rus01', sourceFile: 'src/ZM9RUS01.cbl', viewTag: 'dependency'};

MERGE (n:DBTable {name: 'ORDENES'})
SET n += {evidenceFile: 'src/ZM9RUS01.cbl', evidenceLines: [599, 600, 601, 602, 603, 604, 605, 606], ingestion: 'auto', layer: 'data-access', name: 'ORDENES', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205849Z-zm9rus01', sourceFile: 'src/ZM9RUS01.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'PARAM'})
SET n += {evidenceFile: 'src/ZM9RUS01.cbl', evidenceLines: [687, 688, 689, 690, 691, 692, 693, 694, 695], ingestion: 'auto', layer: 'data-access', name: 'PARAM', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205849Z-zm9rus01', sourceFile: 'src/ZM9RUS01.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'ZMDT800'})
SET n += {evidenceFile: 'src/ZM9RUS01.cbl', evidenceLines: [634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660], ingestion: 'auto', layer: 'data-access', name: 'ZMDT800', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205849Z-zm9rus01', sourceFile: 'src/ZM9RUS01.cbl', viewTag: 'data-access'};

MERGE (n:Paragraph {name: '9000-ESCRIBE-QUEUE', programName: 'ZM9RUS01'})
SET n += {evidenceFile: 'src/ZM9RUS01.cbl', evidenceLines: [734], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '9000-ESCRIBE-QUEUE', nodeType: 'process-step', programName: 'ZM9RUS01', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205849Z-zm9rus01', sourceFile: 'src/ZM9RUS01.cbl', summary: 'Orquesta una fase funcional de ZM9RUS01, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Program {name: 'ZM9RUS01'})
SET n += {ingestion: 'auto', layer: 'program', name: 'ZM9RUS01', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205849Z-zm9rus01', sourceFile: 'src/ZM9RUS01.cbl', viewTag: 'program'};

MATCH (a:Program {name: 'ZM9RUS01'}), (b:Paragraph {name: '9000-ESCRIBE-QUEUE', programName: 'ZM9RUS01'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM9RUS01.cbl', evidenceLines: [734], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205849Z-zm9rus01'};

MATCH (a:Program {name: 'ZM9RUS01'}), (b:Copybook {name: 'AJW0ALRT'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM9RUS01.cbl', evidenceLines: [292], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205849Z-zm9rus01'};

MATCH (a:Program {name: 'ZM9RUS01'}), (b:Copybook {name: 'AJWALRT1'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM9RUS01.cbl', evidenceLines: [326], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205849Z-zm9rus01'};

MATCH (a:Program {name: 'ZM9RUS01'}), (b:Copybook {name: 'KZDEC101'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM9RUS01.cbl', evidenceLines: [295], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205849Z-zm9rus01'};

MATCH (a:Program {name: 'ZM9RUS01'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM9RUS01.cbl', evidenceLines: [272], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205849Z-zm9rus01'};

MATCH (a:Program {name: 'ZM9RUS01'}), (b:Copybook {name: 'ZORDENES'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM9RUS01.cbl', evidenceLines: [284], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205849Z-zm9rus01'};

MATCH (a:Program {name: 'ZM9RUS01'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM9RUS01.cbl', evidenceLines: [280], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205849Z-zm9rus01'};

MATCH (a:Program {name: 'ZM9RUS01'}), (b:Copybook {name: 'ZUSUARIO'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM9RUS01.cbl', evidenceLines: [288], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205849Z-zm9rus01'};

MATCH (a:Program {name: 'ZM9RUS01'}), (b:Copybook {name: 'ZZMDT800'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM9RUS01.cbl', evidenceLines: [276], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205849Z-zm9rus01'};

MATCH (a:Program {name: 'ZM9RUS01'}), (b:DBTable {name: 'ORDENES'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM9RUS01.cbl', evidenceLines: [599, 600, 601, 602, 603, 604, 605, 606], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205849Z-zm9rus01'};

MATCH (a:Program {name: 'ZM9RUS01'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM9RUS01.cbl', evidenceLines: [375, 376, 377, 378, 379, 380, 381], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205849Z-zm9rus01'};

MATCH (a:Program {name: 'ZM9RUS01'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM9RUS01.cbl', evidenceLines: [687, 688, 689, 690, 691, 692, 693, 694, 695], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205849Z-zm9rus01'};

MATCH (a:Program {name: 'ZM9RUS01'}), (b:DBTable {name: 'ZMDT800'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM9RUS01.cbl', evidenceLines: [634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205849Z-zm9rus01'};

