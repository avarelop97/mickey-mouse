// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260619T004726Z-cob056d
// ============================================================================

MERGE (n:Copybook {name: 'DCTLPROC'})
SET n += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [80], ingestion: 'auto', layer: 'dependency', name: 'DCTLPROC', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d', sourceFile: 'src/COB056D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC004'})
SET n += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [150], ingestion: 'auto', layer: 'dependency', name: 'SIC004', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d', sourceFile: 'src/COB056D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC005'})
SET n += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [68], ingestion: 'auto', layer: 'dependency', name: 'SIC005', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d', sourceFile: 'src/COB056D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICCM026'})
SET n += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [172], ingestion: 'auto', layer: 'dependency', name: 'SICCM026', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d', sourceFile: 'src/COB056D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICFH027'})
SET n += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [50], ingestion: 'auto', layer: 'dependency', name: 'SICFH027', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d', sourceFile: 'src/COB056D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICFP024'})
SET n += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [143], ingestion: 'auto', layer: 'dependency', name: 'SICFP024', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d', sourceFile: 'src/COB056D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICIP023'})
SET n += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [88], ingestion: 'auto', layer: 'dependency', name: 'SICIP023', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d', sourceFile: 'src/COB056D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICRF330'})
SET n += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [56], ingestion: 'auto', layer: 'dependency', name: 'SICRF330', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d', sourceFile: 'src/COB056D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICVS011'})
SET n += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [43], ingestion: 'auto', layer: 'dependency', name: 'SICVS011', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d', sourceFile: 'src/COB056D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SQLCA'})
SET n += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [77], ingestion: 'auto', layer: 'dependency', name: 'SQLCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d', sourceFile: 'src/COB056D.cbl', viewTag: 'dependency'};

MERGE (n:DBTable {name: 'CTLPROC'})
SET n += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125], ingestion: 'auto', layer: 'data-access', name: 'CTLPROC', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d', sourceFile: 'src/COB056D.cbl', viewTag: 'data-access'};

MERGE (n:Paragraph {name: '000-0100-FECHA-HORA', programName: 'COB056D'})
SET n += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [90], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-0100-FECHA-HORA', nodeType: 'process-step', programName: 'COB056D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d', sourceFile: 'src/COB056D.cbl', summary: 'Orquesta una fase funcional de COB056D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-0200-INSERTA-CTLPROC', programName: 'COB056D'})
SET n += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [96], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-0200-INSERTA-CTLPROC', nodeType: 'process-step', programName: 'COB056D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d', sourceFile: 'src/COB056D.cbl', summary: 'Persiste actualizaciones de negocio en COB056D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-0100-INICIO', programName: 'COB056D'})
SET n += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [154], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-0100-INICIO', nodeType: 'process-step', programName: 'COB056D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d', sourceFile: 'src/COB056D.cbl', summary: 'Inicializa el flujo operativo de COB056D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-9900-FIN', programName: 'COB056D'})
SET n += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [160], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-9900-FIN', nodeType: 'process-step', programName: 'COB056D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d', sourceFile: 'src/COB056D.cbl', summary: 'Cierra la ejecucion de COB056D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'COB056D'})
SET n += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [153], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'COB056D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d', sourceFile: 'src/COB056D.cbl', summary: 'Gestiona contingencias en COB056D, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-0100-INICIO', programName: 'COB056D'})
SET n += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [164], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-0100-INICIO', nodeType: 'process-step', programName: 'COB056D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d', sourceFile: 'src/COB056D.cbl', summary: 'Inicializa el flujo operativo de COB056D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-9900-FIN', programName: 'COB056D'})
SET n += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [167], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-9900-FIN', nodeType: 'process-step', programName: 'COB056D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d', sourceFile: 'src/COB056D.cbl', summary: 'Cierra la ejecucion de COB056D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'COB056D'})
SET n += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [163], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'COB056D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d', sourceFile: 'src/COB056D.cbl', summary: 'Orquesta una fase funcional de COB056D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'COB056D'})
SET n += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [5], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'COB056D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d', sourceFile: 'src/COB056D.cbl', summary: 'Orquesta una fase funcional de COB056D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'COB056D', programName: 'COB056D'})
SET n += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [4], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'COB056D', nodeType: 'process-step', programName: 'COB056D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d', sourceFile: 'src/COB056D.cbl', summary: 'Orquesta una fase funcional de COB056D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'COB056D'})
SET n += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [19], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'COB056D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d', sourceFile: 'src/COB056D.cbl', summary: 'Orquesta una fase funcional de COB056D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'COB056D'})
SET n += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [9], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'COB056D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d', sourceFile: 'src/COB056D.cbl', summary: 'Orquesta una fase funcional de COB056D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'COB056D'})
SET n += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [29], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'COB056D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d', sourceFile: 'src/COB056D.cbl', summary: 'Orquesta una fase funcional de COB056D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'COB056D'})
SET n += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [26], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'COB056D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d', sourceFile: 'src/COB056D.cbl', summary: 'Orquesta una fase funcional de COB056D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-4381', programName: 'COB056D'})
SET n += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [23], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-4381', nodeType: 'process-step', programName: 'COB056D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d', sourceFile: 'src/COB056D.cbl', summary: 'Orquesta una fase funcional de COB056D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'COB056D'})
SET n += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [25], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'COB056D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d', sourceFile: 'src/COB056D.cbl', summary: 'Orquesta una fase funcional de COB056D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'COB056D'})
SET n += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [7], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'COB056D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d', sourceFile: 'src/COB056D.cbl', summary: 'Orquesta una fase funcional de COB056D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'COB056D'})
SET n += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [22], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'COB056D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d', sourceFile: 'src/COB056D.cbl', summary: 'Orquesta una fase funcional de COB056D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'COB056D'})
SET n += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [3], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'COB056D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d', sourceFile: 'src/COB056D.cbl', summary: 'Orquesta una fase funcional de COB056D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'COB056D'})
SET n += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [20], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'COB056D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d', sourceFile: 'src/COB056D.cbl', summary: 'Orquesta una fase funcional de COB056D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'COB056D'})
SET n += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [31], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'COB056D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d', sourceFile: 'src/COB056D.cbl', summary: 'Orquesta una fase funcional de COB056D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Program {name: 'COB056D'})
SET n += {ingestion: 'auto', layer: 'program', name: 'COB056D', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d', sourceFile: 'src/COB056D.cbl', viewTag: 'program'};

MATCH (a:Program {name: 'COB056D'}), (b:Paragraph {name: '000-0100-FECHA-HORA', programName: 'COB056D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [90], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d'};

MATCH (a:Program {name: 'COB056D'}), (b:Paragraph {name: '000-0200-INSERTA-CTLPROC', programName: 'COB056D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [96], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d'};

MATCH (a:Program {name: 'COB056D'}), (b:Paragraph {name: '980-0100-INICIO', programName: 'COB056D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [154], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d'};

MATCH (a:Program {name: 'COB056D'}), (b:Paragraph {name: '980-9900-FIN', programName: 'COB056D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [160], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d'};

MATCH (a:Program {name: 'COB056D'}), (b:Paragraph {name: '980-ABORTA', programName: 'COB056D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [153], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d'};

MATCH (a:Program {name: 'COB056D'}), (b:Paragraph {name: '990-0100-INICIO', programName: 'COB056D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [164], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d'};

MATCH (a:Program {name: 'COB056D'}), (b:Paragraph {name: '990-9900-FIN', programName: 'COB056D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [167], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d'};

MATCH (a:Program {name: 'COB056D'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'COB056D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [163], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d'};

MATCH (a:Program {name: 'COB056D'}), (b:Paragraph {name: 'AUTHOR', programName: 'COB056D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [5], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d'};

MATCH (a:Program {name: 'COB056D'}), (b:Paragraph {name: 'COB056D', programName: 'COB056D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d'};

MATCH (a:Program {name: 'COB056D'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'COB056D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [19], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d'};

MATCH (a:Program {name: 'COB056D'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'COB056D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [9], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d'};

MATCH (a:Program {name: 'COB056D'}), (b:Paragraph {name: 'FILE', programName: 'COB056D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [29], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d'};

MATCH (a:Program {name: 'COB056D'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'COB056D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [26], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d'};

MATCH (a:Program {name: 'COB056D'}), (b:Paragraph {name: 'IBM-4381', programName: 'COB056D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [23], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d'};

MATCH (a:Program {name: 'COB056D'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'COB056D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [25], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d'};

MATCH (a:Program {name: 'COB056D'}), (b:Paragraph {name: 'INSTALLATION', programName: 'COB056D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d'};

MATCH (a:Program {name: 'COB056D'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'COB056D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [22], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d'};

MATCH (a:Program {name: 'COB056D'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'COB056D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d'};

MATCH (a:Program {name: 'COB056D'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'COB056D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [20], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d'};

MATCH (a:Program {name: 'COB056D'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'COB056D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [31], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d'};

MATCH (a:Paragraph {name: '000-0200-INSERTA-CTLPROC', programName: 'COB056D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [133, 139, 150], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d'};

MATCH (a:Paragraph {name: '000-0200-INSERTA-CTLPROC', programName: 'COB056D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [143], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'COB056D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [172], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB056D'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [80], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB056D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [68], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB056D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [50], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB056D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [88], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB056D'}), (b:Copybook {name: 'SICRF330'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [56], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB056D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [43], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB056D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [77], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d'};

MATCH (a:Program {name: 'COB056D'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [80], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d'};

MATCH (a:Program {name: 'COB056D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [150], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d'};

MATCH (a:Program {name: 'COB056D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [68], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d'};

MATCH (a:Program {name: 'COB056D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [172], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d'};

MATCH (a:Program {name: 'COB056D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [50], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d'};

MATCH (a:Program {name: 'COB056D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [143], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d'};

MATCH (a:Program {name: 'COB056D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [88], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d'};

MATCH (a:Program {name: 'COB056D'}), (b:Copybook {name: 'SICRF330'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [56], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d'};

MATCH (a:Program {name: 'COB056D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [43], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d'};

MATCH (a:Program {name: 'COB056D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [77], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d'};

MATCH (a:Program {name: 'COB056D'}), (b:DBTable {name: 'CTLPROC'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d'};

MATCH (a:Paragraph {name: '000-0200-INSERTA-CTLPROC', programName: 'COB056D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [133, 139, 150], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d'};

MATCH (a:Paragraph {name: '000-0200-INSERTA-CTLPROC', programName: 'COB056D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [143], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'COB056D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [172], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB056D'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [80], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB056D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [68], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB056D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [50], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB056D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [88], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB056D'}), (b:Copybook {name: 'SICRF330'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [56], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB056D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [43], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB056D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [77], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004726Z-cob056d'};

