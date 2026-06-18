// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260618T151614Z-cob100e
// ============================================================================

MERGE (n:Paragraph {name: '000-CONTROL', programName: 'COB100E'})
SET n += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [79], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-CONTROL', nodeType: 'process-step', programName: 'COB100E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151614Z-cob100e', sourceFile: 'src/COB100E.cbl', summary: 'Orquesta una fase funcional de COB100E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-SALDOS-TA0', programName: 'COB100E'})
SET n += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [127], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-SALDOS-TA0', nodeType: 'process-step', programName: 'COB100E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151614Z-cob100e', sourceFile: 'src/COB100E.cbl', summary: 'Orquesta una fase funcional de COB100E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-SALDOS-TA1', programName: 'COB100E'})
SET n += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [136], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-SALDOS-TA1', nodeType: 'process-step', programName: 'COB100E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151614Z-cob100e', sourceFile: 'src/COB100E.cbl', summary: 'Orquesta una fase funcional de COB100E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-LEE-PARAM', programName: 'COB100E'})
SET n += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [146], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-LEE-PARAM', nodeType: 'process-step', programName: 'COB100E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151614Z-cob100e', sourceFile: 'src/COB100E.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por COB100E y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-ACTUALIZA-PARAM', programName: 'COB100E'})
SET n += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [163], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-ACTUALIZA-PARAM', nodeType: 'process-step', programName: 'COB100E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151614Z-cob100e', sourceFile: 'src/COB100E.cbl', summary: 'Persiste actualizaciones de negocio en COB100E, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '710-TERMINA', programName: 'COB100E'})
SET n += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [177], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '710-TERMINA', nodeType: 'process-step', programName: 'COB100E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151614Z-cob100e', sourceFile: 'src/COB100E.cbl', summary: 'Cierra la ejecucion de COB100E, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'COB100E'})
SET n += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [190], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'COB100E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151614Z-cob100e', sourceFile: 'src/COB100E.cbl', summary: 'Gestiona contingencias en COB100E, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Program {name: 'COB100E'})
SET n += {ingestion: 'auto', layer: 'program', name: 'COB100E', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151614Z-cob100e', sourceFile: 'src/COB100E.cbl', viewTag: 'program'};

MATCH (a:Program {name: 'COB100E'}), (b:Paragraph {name: '000-CONTROL', programName: 'COB100E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [79], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151614Z-cob100e'};

MATCH (a:Program {name: 'COB100E'}), (b:Paragraph {name: '010-SALDOS-TA0', programName: 'COB100E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [127], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151614Z-cob100e'};

MATCH (a:Program {name: 'COB100E'}), (b:Paragraph {name: '020-SALDOS-TA1', programName: 'COB100E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [136], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151614Z-cob100e'};

MATCH (a:Program {name: 'COB100E'}), (b:Paragraph {name: '500-LEE-PARAM', programName: 'COB100E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [146], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151614Z-cob100e'};

MATCH (a:Program {name: 'COB100E'}), (b:Paragraph {name: '600-ACTUALIZA-PARAM', programName: 'COB100E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [163], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151614Z-cob100e'};

MATCH (a:Program {name: 'COB100E'}), (b:Paragraph {name: '710-TERMINA', programName: 'COB100E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [177], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151614Z-cob100e'};

MATCH (a:Program {name: 'COB100E'}), (b:Paragraph {name: '980-ABORTA', programName: 'COB100E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [190], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151614Z-cob100e'};

