// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260618T205444Z-cib118d
// ============================================================================

MERGE (n:Copybook {name: 'DOPECORI'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [239], ingestion: 'auto', layer: 'dependency', name: 'DOPECORI', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d', sourceFile: 'src/CIB118D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2CE028'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [621], ingestion: 'auto', layer: 'dependency', name: 'SI2CE028', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d', sourceFile: 'src/CIB118D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2CM026'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [654], ingestion: 'auto', layer: 'dependency', name: 'SI2CM026', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d', sourceFile: 'src/CIB118D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2FH027'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [99], ingestion: 'auto', layer: 'dependency', name: 'SI2FH027', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d', sourceFile: 'src/CIB118D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2R1025'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [141], ingestion: 'auto', layer: 'dependency', name: 'SI2R1025', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d', sourceFile: 'src/CIB118D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC004'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [605], ingestion: 'auto', layer: 'dependency', name: 'SIC004', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d', sourceFile: 'src/CIB118D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC005'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [113], ingestion: 'auto', layer: 'dependency', name: 'SIC005', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d', sourceFile: 'src/CIB118D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICAM029'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [134], ingestion: 'auto', layer: 'dependency', name: 'SICAM029', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d', sourceFile: 'src/CIB118D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICVS011'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [127], ingestion: 'auto', layer: 'dependency', name: 'SICVS011', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d', sourceFile: 'src/CIB118D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIXAB001'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [120], ingestion: 'auto', layer: 'dependency', name: 'SIXAB001', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d', sourceFile: 'src/CIB118D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIXAB002'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [614], ingestion: 'auto', layer: 'dependency', name: 'SIXAB002', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d', sourceFile: 'src/CIB118D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SQLCA'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [106], ingestion: 'auto', layer: 'dependency', name: 'SQLCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d', sourceFile: 'src/CIB118D.cbl', viewTag: 'dependency'};

MERGE (n:DBTable {name: 'OPECORI'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473], ingestion: 'auto', layer: 'data-access', name: 'OPECORI', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d', sourceFile: 'src/CIB118D.cbl', viewTag: 'data-access'};

MERGE (n:ExternalRoutine {name: 'ADR003'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [640], ingestion: 'auto', layer: 'integration', name: 'ADR003', nodeType: 'external-service-call', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d', sourceFile: 'src/CIB118D.cbl', viewTag: 'integration'};

MERGE (n:ExternalRoutine {name: 'ADR009'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [642, 646], ingestion: 'auto', layer: 'integration', name: 'ADR009', nodeType: 'external-service-call', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d', sourceFile: 'src/CIB118D.cbl', viewTag: 'integration'};

MERGE (n:ExternalRoutine {name: 'MDB403O'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [645], ingestion: 'auto', layer: 'integration', name: 'MDB403O', nodeType: 'external-service-call', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d', sourceFile: 'src/CIB118D.cbl', viewTag: 'integration'};

MERGE (n:ExternalRoutine {name: 'VTB415O'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [252], ingestion: 'auto', layer: 'integration', name: 'VTB415O', nodeType: 'external-service-call', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d', sourceFile: 'src/CIB118D.cbl', viewTag: 'integration'};

MERGE (n:Paragraph {name: '000-CONTROL', programName: 'CIB118D'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [246], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-CONTROL', nodeType: 'process-step', programName: 'CIB118D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d', sourceFile: 'src/CIB118D.cbl', summary: 'Orquesta una fase funcional de CIB118D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-INICIO', programName: 'CIB118D'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [266], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-INICIO', nodeType: 'process-step', programName: 'CIB118D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d', sourceFile: 'src/CIB118D.cbl', summary: 'Inicializa el flujo operativo de CIB118D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-INICIO', programName: 'CIB118D'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [294], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-INICIO', nodeType: 'process-step', programName: 'CIB118D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d', sourceFile: 'src/CIB118D.cbl', summary: 'Inicializa el flujo operativo de CIB118D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-INICIALIZA-WAREAS', programName: 'CIB118D'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [313], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-INICIALIZA-WAREAS', nodeType: 'process-step', programName: 'CIB118D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d', sourceFile: 'src/CIB118D.cbl', summary: 'Inicializa el flujo operativo de CIB118D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-PROCESA-INFORMACION', programName: 'CIB118D'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [326], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-PROCESA-INFORMACION', nodeType: 'process-step', programName: 'CIB118D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d', sourceFile: 'src/CIB118D.cbl', summary: 'Orquesta una fase funcional de CIB118D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-DECIDE-IOPERA', programName: 'CIB118D'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [341], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-DECIDE-IOPERA', nodeType: 'process-step', programName: 'CIB118D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d', sourceFile: 'src/CIB118D.cbl', summary: 'Orquesta una fase funcional de CIB118D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-GENERA-REGISTRO-IMPRESION', programName: 'CIB118D'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [363], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-GENERA-REGISTRO-IMPRESION', nodeType: 'process-step', programName: 'CIB118D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d', sourceFile: 'src/CIB118D.cbl', summary: 'Orquesta una fase funcional de CIB118D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-PROCESA-CORTE', programName: 'CIB118D'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [405], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-PROCESA-CORTE', nodeType: 'process-step', programName: 'CIB118D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d', sourceFile: 'src/CIB118D.cbl', summary: 'Orquesta una fase funcional de CIB118D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-DEFINE-CURSOR-VENCIM-CASA', programName: 'CIB118D'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [417], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-DEFINE-CURSOR-VENCIM-CASA', nodeType: 'process-step', programName: 'CIB118D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d', sourceFile: 'src/CIB118D.cbl', summary: 'Cierra la ejecucion de CIB118D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '515-DEFINE-CURSOR-VENCIM-BANCO', programName: 'CIB118D'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [454], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '515-DEFINE-CURSOR-VENCIM-BANCO', nodeType: 'process-step', programName: 'CIB118D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d', sourceFile: 'src/CIB118D.cbl', summary: 'Cierra la ejecucion de CIB118D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-LEE-VENCIMIENTOS-CASA', programName: 'CIB118D'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [490], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-LEE-VENCIMIENTOS-CASA', nodeType: 'process-step', programName: 'CIB118D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d', sourceFile: 'src/CIB118D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB118D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '530-LEE-VENCIMIENTOS-BANCO', programName: 'CIB118D'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [527], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '530-LEE-VENCIMIENTOS-BANCO', nodeType: 'process-step', programName: 'CIB118D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d', sourceFile: 'src/CIB118D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB118D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-FIN', programName: 'CIB118D'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [563], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-FIN', nodeType: 'process-step', programName: 'CIB118D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d', sourceFile: 'src/CIB118D.cbl', summary: 'Cierra la ejecucion de CIB118D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '705-ENCABEZADO', programName: 'CIB118D'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [573], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '705-ENCABEZADO', nodeType: 'process-step', programName: 'CIB118D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d', sourceFile: 'src/CIB118D.cbl', summary: 'Orquesta una fase funcional de CIB118D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '720-REP-CONCEPTOS', programName: 'CIB118D'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [594], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '720-REP-CONCEPTOS', nodeType: 'process-step', programName: 'CIB118D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d', sourceFile: 'src/CIB118D.cbl', summary: 'Orquesta una fase funcional de CIB118D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'CIB118D'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [611], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'CIB118D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d', sourceFile: 'src/CIB118D.cbl', summary: 'Gestiona contingencias en CIB118D, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-0100-CONTRUYE', programName: 'CIB118D'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [628], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-0100-CONTRUYE', nodeType: 'process-step', programName: 'CIB118D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d', sourceFile: 'src/CIB118D.cbl', summary: 'Orquesta una fase funcional de CIB118D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-9900-FIN', programName: 'CIB118D'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [648], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-9900-FIN', nodeType: 'process-step', programName: 'CIB118D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d', sourceFile: 'src/CIB118D.cbl', summary: 'Cierra la ejecucion de CIB118D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-CONST-ENCA-BANCO', programName: 'CIB118D'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [627], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-CONST-ENCA-BANCO', nodeType: 'process-step', programName: 'CIB118D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d', sourceFile: 'src/CIB118D.cbl', summary: 'Orquesta una fase funcional de CIB118D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Program {name: 'CIB118D'})
SET n += {ingestion: 'auto', layer: 'program', name: 'CIB118D', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d', sourceFile: 'src/CIB118D.cbl', viewTag: 'program'};

MATCH (a:Program {name: 'CIB118D'}), (b:ExternalRoutine {name: 'ADR003'})
MERGE (a)-[r:CALLS_ROUTINE]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [640], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Program {name: 'CIB118D'}), (b:ExternalRoutine {name: 'ADR009'})
MERGE (a)-[r:CALLS_ROUTINE]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [642, 646], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Program {name: 'CIB118D'}), (b:ExternalRoutine {name: 'MDB403O'})
MERGE (a)-[r:CALLS_ROUTINE]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [645], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Program {name: 'CIB118D'}), (b:ExternalRoutine {name: 'VTB415O'})
MERGE (a)-[r:CALLS_ROUTINE]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [252], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB118D'}), (b:ExternalRoutine {name: 'VTB415O'})
MERGE (a)-[r:DEPENDS_ON_EXTERNAL]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [252], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Paragraph {name: '999-0100-CONTRUYE', programName: 'CIB118D'}), (b:ExternalRoutine {name: 'ADR003'})
MERGE (a)-[r:DEPENDS_ON_EXTERNAL]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [640], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Paragraph {name: '999-0100-CONTRUYE', programName: 'CIB118D'}), (b:ExternalRoutine {name: 'ADR009'})
MERGE (a)-[r:DEPENDS_ON_EXTERNAL]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [642, 646], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Paragraph {name: '999-0100-CONTRUYE', programName: 'CIB118D'}), (b:ExternalRoutine {name: 'MDB403O'})
MERGE (a)-[r:DEPENDS_ON_EXTERNAL]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [645], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Paragraph {name: '000-CONTROL', programName: 'CIB118D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [246], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Paragraph {name: '010-INICIO', programName: 'CIB118D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [266], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Paragraph {name: '015-INICIO', programName: 'CIB118D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [294], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Paragraph {name: '020-INICIALIZA-WAREAS', programName: 'CIB118D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [313], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Paragraph {name: '030-PROCESA-INFORMACION', programName: 'CIB118D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [326], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Paragraph {name: '040-DECIDE-IOPERA', programName: 'CIB118D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [341], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Paragraph {name: '050-GENERA-REGISTRO-IMPRESION', programName: 'CIB118D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [363], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Paragraph {name: '060-PROCESA-CORTE', programName: 'CIB118D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [405], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Paragraph {name: '510-DEFINE-CURSOR-VENCIM-CASA', programName: 'CIB118D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [417], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Paragraph {name: '515-DEFINE-CURSOR-VENCIM-BANCO', programName: 'CIB118D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [454], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Paragraph {name: '520-LEE-VENCIMIENTOS-CASA', programName: 'CIB118D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [490], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Paragraph {name: '530-LEE-VENCIMIENTOS-BANCO', programName: 'CIB118D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [527], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Paragraph {name: '700-FIN', programName: 'CIB118D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [563], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Paragraph {name: '705-ENCABEZADO', programName: 'CIB118D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [573], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Paragraph {name: '720-REP-CONCEPTOS', programName: 'CIB118D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [594], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Paragraph {name: '980-ABORTA', programName: 'CIB118D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [611], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Paragraph {name: '999-0100-CONTRUYE', programName: 'CIB118D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [628], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Paragraph {name: '999-9900-FIN', programName: 'CIB118D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [648], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Paragraph {name: '999-CONST-ENCA-BANCO', programName: 'CIB118D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [627], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB118D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [247], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Paragraph {name: '015-INICIO', programName: 'CIB118D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [298], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Paragraph {name: '510-DEFINE-CURSOR-VENCIM-CASA', programName: 'CIB118D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [445], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Paragraph {name: '515-DEFINE-CURSOR-VENCIM-BANCO', programName: 'CIB118D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [482], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Paragraph {name: '520-LEE-VENCIMIENTOS-CASA', programName: 'CIB118D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [520], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Paragraph {name: '530-LEE-VENCIMIENTOS-BANCO', programName: 'CIB118D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [557], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Paragraph {name: '720-REP-CONCEPTOS', programName: 'CIB118D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [605], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB118D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [621], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB118D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [614], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Paragraph {name: '999-9900-FIN', programName: 'CIB118D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [654], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [239], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [621], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [654], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [99], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [141], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [605], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [113], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [134], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [127], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [120], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [614], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [106], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Program {name: 'CIB118D'}), (b:DBTable {name: 'OPECORI'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB118D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [247], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Paragraph {name: '015-INICIO', programName: 'CIB118D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [298], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Paragraph {name: '510-DEFINE-CURSOR-VENCIM-CASA', programName: 'CIB118D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [445], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Paragraph {name: '515-DEFINE-CURSOR-VENCIM-BANCO', programName: 'CIB118D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [482], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Paragraph {name: '520-LEE-VENCIMIENTOS-CASA', programName: 'CIB118D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [520], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Paragraph {name: '530-LEE-VENCIMIENTOS-BANCO', programName: 'CIB118D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [557], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Paragraph {name: '720-REP-CONCEPTOS', programName: 'CIB118D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [605], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB118D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [621], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB118D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [614], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

MATCH (a:Paragraph {name: '999-9900-FIN', programName: 'CIB118D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [654], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205444Z-cib118d'};

