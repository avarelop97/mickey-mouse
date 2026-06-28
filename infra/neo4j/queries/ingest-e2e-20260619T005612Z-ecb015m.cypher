// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260619T005612Z-ecb015m
// ============================================================================

MERGE (n:Copybook {name: 'DEDVALCA'})
SET n += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [82], ingestion: 'auto', layer: 'dependency', name: 'DEDVALCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m', sourceFile: 'src/ECB015M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ECBFP004'})
SET n += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [76], ingestion: 'auto', layer: 'dependency', name: 'ECBFP004', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m', sourceFile: 'src/ECB015M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC004'})
SET n += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [181], ingestion: 'auto', layer: 'dependency', name: 'SIC004', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m', sourceFile: 'src/ECB015M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC005'})
SET n += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [54], ingestion: 'auto', layer: 'dependency', name: 'SIC005', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m', sourceFile: 'src/ECB015M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICAB005'})
SET n += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [70], ingestion: 'auto', layer: 'dependency', name: 'SICAB005', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m', sourceFile: 'src/ECB015M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICCM026'})
SET n += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [185], ingestion: 'auto', layer: 'dependency', name: 'SICCM026', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m', sourceFile: 'src/ECB015M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICFH027'})
SET n += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [64], ingestion: 'auto', layer: 'dependency', name: 'SICFH027', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m', sourceFile: 'src/ECB015M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICFP024'})
SET n += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [123], ingestion: 'auto', layer: 'dependency', name: 'SICFP024', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m', sourceFile: 'src/ECB015M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICIP023'})
SET n += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [94], ingestion: 'auto', layer: 'dependency', name: 'SICIP023', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m', sourceFile: 'src/ECB015M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SQLCA'})
SET n += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [58], ingestion: 'auto', layer: 'dependency', name: 'SQLCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m', sourceFile: 'src/ECB015M.cbl', viewTag: 'dependency'};

MERGE (n:DBTable {name: 'EDVALCA'})
SET n += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [159, 160, 161, 162], ingestion: 'auto', layer: 'data-access', name: 'EDVALCA', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m', sourceFile: 'src/ECB015M.cbl', viewTag: 'data-access'};

MERGE (n:Paragraph {name: '000-0100-INICIO', programName: 'ECB015M'})
SET n += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [97], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-0100-INICIO', nodeType: 'process-step', programName: 'ECB015M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m', sourceFile: 'src/ECB015M.cbl', summary: 'Inicializa el flujo operativo de ECB015M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '505-COMMIT', programName: 'ECB015M'})
SET n += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [171], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '505-COMMIT', nodeType: 'process-step', programName: 'ECB015M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m', sourceFile: 'src/ECB015M.cbl', summary: 'Orquesta una fase funcional de ECB015M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '505-COUNT-REGS', programName: 'ECB015M'})
SET n += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [127], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '505-COUNT-REGS', nodeType: 'process-step', programName: 'ECB015M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m', sourceFile: 'src/ECB015M.cbl', summary: 'Orquesta una fase funcional de ECB015M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '505-DEP-EDVALCA', programName: 'ECB015M'})
SET n += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [157], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '505-DEP-EDVALCA', nodeType: 'process-step', programName: 'ECB015M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m', sourceFile: 'src/ECB015M.cbl', summary: 'Orquesta una fase funcional de ECB015M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '505-LOCK-TABLE-EDVALCA', programName: 'ECB015M'})
SET n += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [144], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '505-LOCK-TABLE-EDVALCA', nodeType: 'process-step', programName: 'ECB015M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m', sourceFile: 'src/ECB015M.cbl', summary: 'Orquesta una fase funcional de ECB015M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-0100-INICIO', programName: 'ECB015M'})
SET n += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [189], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-0100-INICIO', nodeType: 'process-step', programName: 'ECB015M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m', sourceFile: 'src/ECB015M.cbl', summary: 'Inicializa el flujo operativo de ECB015M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-9900-FIN', programName: 'ECB015M'})
SET n += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [195], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-9900-FIN', nodeType: 'process-step', programName: 'ECB015M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m', sourceFile: 'src/ECB015M.cbl', summary: 'Cierra la ejecucion de ECB015M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'ECB015M'})
SET n += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [188], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'ECB015M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m', sourceFile: 'src/ECB015M.cbl', summary: 'Gestiona contingencias en ECB015M, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-9900-FIN', programName: 'ECB015M'})
SET n += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [199], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-9900-FIN', nodeType: 'process-step', programName: 'ECB015M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m', sourceFile: 'src/ECB015M.cbl', summary: 'Cierra la ejecucion de ECB015M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'ECB015M'})
SET n += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [198], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'ECB015M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m', sourceFile: 'src/ECB015M.cbl', summary: 'Orquesta una fase funcional de ECB015M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'ECB015M'})
SET n += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [4], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'ECB015M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m', sourceFile: 'src/ECB015M.cbl', summary: 'Orquesta una fase funcional de ECB015M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ECB015M'})
SET n += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [21], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ECB015M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m', sourceFile: 'src/ECB015M.cbl', summary: 'Orquesta una fase funcional de ECB015M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'ECB015M'})
SET n += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [9], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'ECB015M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m', sourceFile: 'src/ECB015M.cbl', summary: 'Orquesta una fase funcional de ECB015M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'ECB015M', programName: 'ECB015M'})
SET n += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [3], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'ECB015M', nodeType: 'process-step', programName: 'ECB015M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m', sourceFile: 'src/ECB015M.cbl', summary: 'Orquesta una fase funcional de ECB015M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-4381', programName: 'ECB015M'})
SET n += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [25], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-4381', nodeType: 'process-step', programName: 'ECB015M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m', sourceFile: 'src/ECB015M.cbl', summary: 'Orquesta una fase funcional de ECB015M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'ECB015M'})
SET n += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [7], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'ECB015M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m', sourceFile: 'src/ECB015M.cbl', summary: 'Orquesta una fase funcional de ECB015M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'ECB015M'})
SET n += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [24], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'ECB015M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m', sourceFile: 'src/ECB015M.cbl', summary: 'Orquesta una fase funcional de ECB015M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'ECB015M'})
SET n += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [2], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'ECB015M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m', sourceFile: 'src/ECB015M.cbl', summary: 'Orquesta una fase funcional de ECB015M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'ECB015M'})
SET n += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [22], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'ECB015M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m', sourceFile: 'src/ECB015M.cbl', summary: 'Orquesta una fase funcional de ECB015M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB015M'})
SET n += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [28], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ECB015M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m', sourceFile: 'src/ECB015M.cbl', summary: 'Orquesta una fase funcional de ECB015M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Program {name: 'ECB015M'})
SET n += {ingestion: 'auto', layer: 'program', name: 'ECB015M', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m', sourceFile: 'src/ECB015M.cbl', viewTag: 'program'};

MATCH (a:Program {name: 'ECB015M'}), (b:Paragraph {name: '000-0100-INICIO', programName: 'ECB015M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [97], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Program {name: 'ECB015M'}), (b:Paragraph {name: '505-COMMIT', programName: 'ECB015M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [171], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Program {name: 'ECB015M'}), (b:Paragraph {name: '505-COUNT-REGS', programName: 'ECB015M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [127], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Program {name: 'ECB015M'}), (b:Paragraph {name: '505-DEP-EDVALCA', programName: 'ECB015M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [157], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Program {name: 'ECB015M'}), (b:Paragraph {name: '505-LOCK-TABLE-EDVALCA', programName: 'ECB015M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [144], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Program {name: 'ECB015M'}), (b:Paragraph {name: '980-0100-INICIO', programName: 'ECB015M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [189], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Program {name: 'ECB015M'}), (b:Paragraph {name: '980-9900-FIN', programName: 'ECB015M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [195], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Program {name: 'ECB015M'}), (b:Paragraph {name: '980-ABORTA', programName: 'ECB015M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [188], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Program {name: 'ECB015M'}), (b:Paragraph {name: '990-9900-FIN', programName: 'ECB015M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [199], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Program {name: 'ECB015M'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'ECB015M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [198], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Program {name: 'ECB015M'}), (b:Paragraph {name: 'AUTHOR', programName: 'ECB015M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Program {name: 'ECB015M'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ECB015M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [21], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Program {name: 'ECB015M'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'ECB015M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [9], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Program {name: 'ECB015M'}), (b:Paragraph {name: 'ECB015M', programName: 'ECB015M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Program {name: 'ECB015M'}), (b:Paragraph {name: 'IBM-4381', programName: 'ECB015M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [25], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Program {name: 'ECB015M'}), (b:Paragraph {name: 'INSTALLATION', programName: 'ECB015M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Program {name: 'ECB015M'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'ECB015M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [24], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Program {name: 'ECB015M'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'ECB015M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [2], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Program {name: 'ECB015M'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'ECB015M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [22], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Program {name: 'ECB015M'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB015M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [28], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Paragraph {name: '000-0100-INICIO', programName: 'ECB015M'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [123], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Paragraph {name: '505-COMMIT', programName: 'ECB015M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [181], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Paragraph {name: '505-COMMIT', programName: 'ECB015M'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [185], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Paragraph {name: '505-COUNT-REGS', programName: 'ECB015M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [139], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Paragraph {name: '505-DEP-EDVALCA', programName: 'ECB015M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [168], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Paragraph {name: '505-LOCK-TABLE-EDVALCA', programName: 'ECB015M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [154], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB015M'}), (b:Copybook {name: 'DEDVALCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [82], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB015M'}), (b:Copybook {name: 'ECBFP004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [76], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB015M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [54], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB015M'}), (b:Copybook {name: 'SICAB005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [70], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB015M'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [64], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB015M'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [94], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB015M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [58], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Program {name: 'ECB015M'}), (b:Copybook {name: 'DEDVALCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [82], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Program {name: 'ECB015M'}), (b:Copybook {name: 'ECBFP004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [76], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Program {name: 'ECB015M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [181], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Program {name: 'ECB015M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [54], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Program {name: 'ECB015M'}), (b:Copybook {name: 'SICAB005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [70], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Program {name: 'ECB015M'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [185], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Program {name: 'ECB015M'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [64], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Program {name: 'ECB015M'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [123], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Program {name: 'ECB015M'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [94], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Program {name: 'ECB015M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [58], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Program {name: 'ECB015M'}), (b:DBTable {name: 'EDVALCA'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [129, 130, 131, 132, 133, 159, 160, 161, 162], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Program {name: 'ECB015M'}), (b:DBTable {name: 'EDVALCA'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [159, 160, 161, 162], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Paragraph {name: '000-0100-INICIO', programName: 'ECB015M'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [123], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Paragraph {name: '505-COMMIT', programName: 'ECB015M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [181], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Paragraph {name: '505-COMMIT', programName: 'ECB015M'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [185], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Paragraph {name: '505-COUNT-REGS', programName: 'ECB015M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [139], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Paragraph {name: '505-DEP-EDVALCA', programName: 'ECB015M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [168], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Paragraph {name: '505-LOCK-TABLE-EDVALCA', programName: 'ECB015M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [154], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB015M'}), (b:Copybook {name: 'DEDVALCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [82], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB015M'}), (b:Copybook {name: 'ECBFP004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [76], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB015M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [54], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB015M'}), (b:Copybook {name: 'SICAB005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [70], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB015M'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [64], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB015M'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [94], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB015M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB015M.cbl', evidenceLines: [58], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005612Z-ecb015m'};

