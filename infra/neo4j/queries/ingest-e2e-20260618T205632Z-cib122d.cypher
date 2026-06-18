// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260618T205632Z-cib122d
// ============================================================================

MERGE (n:Copybook {name: 'DCTAMARC'})
SET n += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [315], ingestion: 'auto', layer: 'dependency', name: 'DCTAMARC', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d', sourceFile: 'src/CIB122D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DOPECORI'})
SET n += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [307], ingestion: 'auto', layer: 'dependency', name: 'DOPECORI', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d', sourceFile: 'src/CIB122D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DPARAM'})
SET n += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [311], ingestion: 'auto', layer: 'dependency', name: 'DPARAM', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d', sourceFile: 'src/CIB122D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2CE028'})
SET n += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [791], ingestion: 'auto', layer: 'dependency', name: 'SI2CE028', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d', sourceFile: 'src/CIB122D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2CM026'})
SET n += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [824], ingestion: 'auto', layer: 'dependency', name: 'SI2CM026', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d', sourceFile: 'src/CIB122D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2FH027'})
SET n += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [97], ingestion: 'auto', layer: 'dependency', name: 'SI2FH027', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d', sourceFile: 'src/CIB122D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2R1025'})
SET n += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [139], ingestion: 'auto', layer: 'dependency', name: 'SI2R1025', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d', sourceFile: 'src/CIB122D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC004'})
SET n += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [775], ingestion: 'auto', layer: 'dependency', name: 'SIC004', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d', sourceFile: 'src/CIB122D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC005'})
SET n += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [111], ingestion: 'auto', layer: 'dependency', name: 'SIC005', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d', sourceFile: 'src/CIB122D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICAM029'})
SET n += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [132], ingestion: 'auto', layer: 'dependency', name: 'SICAM029', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d', sourceFile: 'src/CIB122D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICVS011'})
SET n += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [125], ingestion: 'auto', layer: 'dependency', name: 'SICVS011', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d', sourceFile: 'src/CIB122D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIXAB001'})
SET n += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [118], ingestion: 'auto', layer: 'dependency', name: 'SIXAB001', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d', sourceFile: 'src/CIB122D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIXAB002'})
SET n += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [784], ingestion: 'auto', layer: 'dependency', name: 'SIXAB002', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d', sourceFile: 'src/CIB122D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SQLCA'})
SET n += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [104], ingestion: 'auto', layer: 'dependency', name: 'SQLCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d', sourceFile: 'src/CIB122D.cbl', viewTag: 'dependency'};

MERGE (n:DBTable {name: 'OPECORI'})
SET n += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 508, 509, 510, 511, 512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535], ingestion: 'auto', layer: 'data-access', name: 'OPECORI', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d', sourceFile: 'src/CIB122D.cbl', viewTag: 'data-access'};

MERGE (n:ExternalRoutine {name: 'ADR003'})
SET n += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [810], ingestion: 'auto', layer: 'integration', name: 'ADR003', nodeType: 'external-service-call', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d', sourceFile: 'src/CIB122D.cbl', viewTag: 'integration'};

MERGE (n:ExternalRoutine {name: 'ADR009'})
SET n += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [812, 816], ingestion: 'auto', layer: 'integration', name: 'ADR009', nodeType: 'external-service-call', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d', sourceFile: 'src/CIB122D.cbl', viewTag: 'integration'};

MERGE (n:ExternalRoutine {name: 'MDB403O'})
SET n += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [815], ingestion: 'auto', layer: 'integration', name: 'MDB403O', nodeType: 'external-service-call', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d', sourceFile: 'src/CIB122D.cbl', viewTag: 'integration'};

MERGE (n:ExternalRoutine {name: 'VTB415O'})
SET n += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [330], ingestion: 'auto', layer: 'integration', name: 'VTB415O', nodeType: 'external-service-call', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d', sourceFile: 'src/CIB122D.cbl', viewTag: 'integration'};

MERGE (n:Paragraph {name: '000-CONTROL', programName: 'CIB122D'})
SET n += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [322], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-CONTROL', nodeType: 'process-step', programName: 'CIB122D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d', sourceFile: 'src/CIB122D.cbl', summary: 'Orquesta una fase funcional de CIB122D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-INICIO', programName: 'CIB122D'})
SET n += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [351], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-INICIO', nodeType: 'process-step', programName: 'CIB122D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d', sourceFile: 'src/CIB122D.cbl', summary: 'Inicializa el flujo operativo de CIB122D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-PROCESO-CURSORES', programName: 'CIB122D'})
SET n += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [369], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-PROCESO-CURSORES', nodeType: 'process-step', programName: 'CIB122D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d', sourceFile: 'src/CIB122D.cbl', summary: 'Orquesta una fase funcional de CIB122D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-LIMPIA-REPORTE', programName: 'CIB122D'})
SET n += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [396], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-LIMPIA-REPORTE', nodeType: 'process-step', programName: 'CIB122D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d', sourceFile: 'src/CIB122D.cbl', summary: 'Orquesta una fase funcional de CIB122D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-PROCESA-INFORMACION', programName: 'CIB122D'})
SET n += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [415], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-PROCESA-INFORMACION', nodeType: 'process-step', programName: 'CIB122D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d', sourceFile: 'src/CIB122D.cbl', summary: 'Orquesta una fase funcional de CIB122D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-GENERA-REGISTRO-IMPRESION', programName: 'CIB122D'})
SET n += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [426], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-GENERA-REGISTRO-IMPRESION', nodeType: 'process-step', programName: 'CIB122D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d', sourceFile: 'src/CIB122D.cbl', summary: 'Orquesta una fase funcional de CIB122D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-DEFINE-CURSOR-POSICIONCA', programName: 'CIB122D'})
SET n += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [463], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-DEFINE-CURSOR-POSICIONCA', nodeType: 'process-step', programName: 'CIB122D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d', sourceFile: 'src/CIB122D.cbl', summary: 'Cierra la ejecucion de CIB122D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '515-DEFINE-CURSOR-POSICIONBA', programName: 'CIB122D'})
SET n += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [507], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '515-DEFINE-CURSOR-POSICIONBA', nodeType: 'process-step', programName: 'CIB122D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d', sourceFile: 'src/CIB122D.cbl', summary: 'Cierra la ejecucion de CIB122D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-LEE-POSICIONCA', programName: 'CIB122D'})
SET n += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [552], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-LEE-POSICIONCA', nodeType: 'process-step', programName: 'CIB122D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d', sourceFile: 'src/CIB122D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB122D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '530-LEE-POSICIONBA', programName: 'CIB122D'})
SET n += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [589], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '530-LEE-POSICIONBA', nodeType: 'process-step', programName: 'CIB122D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d', sourceFile: 'src/CIB122D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB122D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-9900', programName: 'CIB122D'})
SET n += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [645], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-9900', nodeType: 'process-step', programName: 'CIB122D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d', sourceFile: 'src/CIB122D.cbl', summary: 'Orquesta una fase funcional de CIB122D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-CALCULA-VALUACION', programName: 'CIB122D'})
SET n += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [626], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-CALCULA-VALUACION', nodeType: 'process-step', programName: 'CIB122D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d', sourceFile: 'src/CIB122D.cbl', summary: 'Orquesta una fase funcional de CIB122D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-FIN', programName: 'CIB122D'})
SET n += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [651], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-FIN', nodeType: 'process-step', programName: 'CIB122D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d', sourceFile: 'src/CIB122D.cbl', summary: 'Cierra la ejecucion de CIB122D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '705-ENCABEZADO', programName: 'CIB122D'})
SET n += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [661], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '705-ENCABEZADO', nodeType: 'process-step', programName: 'CIB122D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d', sourceFile: 'src/CIB122D.cbl', summary: 'Orquesta una fase funcional de CIB122D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '720-REP-CONCEPTOS', programName: 'CIB122D'})
SET n += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [679], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '720-REP-CONCEPTOS', nodeType: 'process-step', programName: 'CIB122D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d', sourceFile: 'src/CIB122D.cbl', summary: 'Orquesta una fase funcional de CIB122D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '800-SUMA-TOTALES', programName: 'CIB122D'})
SET n += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [691], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '800-SUMA-TOTALES', nodeType: 'process-step', programName: 'CIB122D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d', sourceFile: 'src/CIB122D.cbl', summary: 'Orquesta una fase funcional de CIB122D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '810-SUMA-TOTALES-FIN', programName: 'CIB122D'})
SET n += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [749], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '810-SUMA-TOTALES-FIN', nodeType: 'process-step', programName: 'CIB122D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d', sourceFile: 'src/CIB122D.cbl', summary: 'Cierra la ejecucion de CIB122D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'CIB122D'})
SET n += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [781], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'CIB122D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d', sourceFile: 'src/CIB122D.cbl', summary: 'Gestiona contingencias en CIB122D, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-0100-CONSTRUYE', programName: 'CIB122D'})
SET n += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [798], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-0100-CONSTRUYE', nodeType: 'process-step', programName: 'CIB122D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d', sourceFile: 'src/CIB122D.cbl', summary: 'Orquesta una fase funcional de CIB122D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-9900-FIN', programName: 'CIB122D'})
SET n += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [818], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-9900-FIN', nodeType: 'process-step', programName: 'CIB122D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d', sourceFile: 'src/CIB122D.cbl', summary: 'Cierra la ejecucion de CIB122D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-CONST-ENCA-BANCO', programName: 'CIB122D'})
SET n += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [797], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-CONST-ENCA-BANCO', nodeType: 'process-step', programName: 'CIB122D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d', sourceFile: 'src/CIB122D.cbl', summary: 'Orquesta una fase funcional de CIB122D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Program {name: 'CIB122D'})
SET n += {ingestion: 'auto', layer: 'program', name: 'CIB122D', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d', sourceFile: 'src/CIB122D.cbl', viewTag: 'program'};

MATCH (a:Program {name: 'CIB122D'}), (b:ExternalRoutine {name: 'ADR003'})
MERGE (a)-[r:CALLS_ROUTINE]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [810], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Program {name: 'CIB122D'}), (b:ExternalRoutine {name: 'ADR009'})
MERGE (a)-[r:CALLS_ROUTINE]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [812, 816], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Program {name: 'CIB122D'}), (b:ExternalRoutine {name: 'MDB403O'})
MERGE (a)-[r:CALLS_ROUTINE]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [815], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Program {name: 'CIB122D'}), (b:ExternalRoutine {name: 'VTB415O'})
MERGE (a)-[r:CALLS_ROUTINE]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [330], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB122D'}), (b:ExternalRoutine {name: 'VTB415O'})
MERGE (a)-[r:DEPENDS_ON_EXTERNAL]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [330], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Paragraph {name: '999-0100-CONSTRUYE', programName: 'CIB122D'}), (b:ExternalRoutine {name: 'ADR003'})
MERGE (a)-[r:DEPENDS_ON_EXTERNAL]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [810], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Paragraph {name: '999-0100-CONSTRUYE', programName: 'CIB122D'}), (b:ExternalRoutine {name: 'ADR009'})
MERGE (a)-[r:DEPENDS_ON_EXTERNAL]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [812, 816], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Paragraph {name: '999-0100-CONSTRUYE', programName: 'CIB122D'}), (b:ExternalRoutine {name: 'MDB403O'})
MERGE (a)-[r:DEPENDS_ON_EXTERNAL]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [815], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Program {name: 'CIB122D'}), (b:Paragraph {name: '000-CONTROL', programName: 'CIB122D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [322], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Program {name: 'CIB122D'}), (b:Paragraph {name: '010-INICIO', programName: 'CIB122D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [351], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Program {name: 'CIB122D'}), (b:Paragraph {name: '015-PROCESO-CURSORES', programName: 'CIB122D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [369], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Program {name: 'CIB122D'}), (b:Paragraph {name: '020-LIMPIA-REPORTE', programName: 'CIB122D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [396], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Program {name: 'CIB122D'}), (b:Paragraph {name: '030-PROCESA-INFORMACION', programName: 'CIB122D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [415], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Program {name: 'CIB122D'}), (b:Paragraph {name: '050-GENERA-REGISTRO-IMPRESION', programName: 'CIB122D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [426], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Program {name: 'CIB122D'}), (b:Paragraph {name: '510-DEFINE-CURSOR-POSICIONCA', programName: 'CIB122D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [463], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Program {name: 'CIB122D'}), (b:Paragraph {name: '515-DEFINE-CURSOR-POSICIONBA', programName: 'CIB122D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [507], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Program {name: 'CIB122D'}), (b:Paragraph {name: '520-LEE-POSICIONCA', programName: 'CIB122D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [552], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Program {name: 'CIB122D'}), (b:Paragraph {name: '530-LEE-POSICIONBA', programName: 'CIB122D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [589], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Program {name: 'CIB122D'}), (b:Paragraph {name: '600-9900', programName: 'CIB122D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [645], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Program {name: 'CIB122D'}), (b:Paragraph {name: '600-CALCULA-VALUACION', programName: 'CIB122D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [626], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Program {name: 'CIB122D'}), (b:Paragraph {name: '700-FIN', programName: 'CIB122D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [651], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Program {name: 'CIB122D'}), (b:Paragraph {name: '705-ENCABEZADO', programName: 'CIB122D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [661], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Program {name: 'CIB122D'}), (b:Paragraph {name: '720-REP-CONCEPTOS', programName: 'CIB122D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [679], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Program {name: 'CIB122D'}), (b:Paragraph {name: '800-SUMA-TOTALES', programName: 'CIB122D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [691], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Program {name: 'CIB122D'}), (b:Paragraph {name: '810-SUMA-TOTALES-FIN', programName: 'CIB122D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [749], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Program {name: 'CIB122D'}), (b:Paragraph {name: '980-ABORTA', programName: 'CIB122D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [781], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Program {name: 'CIB122D'}), (b:Paragraph {name: '999-0100-CONSTRUYE', programName: 'CIB122D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [798], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Program {name: 'CIB122D'}), (b:Paragraph {name: '999-9900-FIN', programName: 'CIB122D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [818], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Program {name: 'CIB122D'}), (b:Paragraph {name: '999-CONST-ENCA-BANCO', programName: 'CIB122D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [797], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB122D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [323], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Paragraph {name: '010-INICIO', programName: 'CIB122D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [356], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Paragraph {name: '510-DEFINE-CURSOR-POSICIONCA', programName: 'CIB122D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [500], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Paragraph {name: '515-DEFINE-CURSOR-POSICIONBA', programName: 'CIB122D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [544], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Paragraph {name: '520-LEE-POSICIONCA', programName: 'CIB122D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [582], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Paragraph {name: '530-LEE-POSICIONBA', programName: 'CIB122D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [619], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Paragraph {name: '810-SUMA-TOTALES-FIN', programName: 'CIB122D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [775], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB122D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [791], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB122D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [784], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Paragraph {name: '999-9900-FIN', programName: 'CIB122D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [824], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Program {name: 'CIB122D'}), (b:Copybook {name: 'DCTAMARC'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [315], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Program {name: 'CIB122D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [307], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Program {name: 'CIB122D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [311], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Program {name: 'CIB122D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [791], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Program {name: 'CIB122D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [824], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Program {name: 'CIB122D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [97], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Program {name: 'CIB122D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [139], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Program {name: 'CIB122D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [775], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Program {name: 'CIB122D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [111], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Program {name: 'CIB122D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [132], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Program {name: 'CIB122D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [125], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Program {name: 'CIB122D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [118], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Program {name: 'CIB122D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [784], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Program {name: 'CIB122D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [104], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Program {name: 'CIB122D'}), (b:DBTable {name: 'OPECORI'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 508, 509, 510, 511, 512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB122D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [323], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Paragraph {name: '010-INICIO', programName: 'CIB122D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [356], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Paragraph {name: '510-DEFINE-CURSOR-POSICIONCA', programName: 'CIB122D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [500], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Paragraph {name: '515-DEFINE-CURSOR-POSICIONBA', programName: 'CIB122D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [544], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Paragraph {name: '520-LEE-POSICIONCA', programName: 'CIB122D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [582], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Paragraph {name: '530-LEE-POSICIONBA', programName: 'CIB122D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [619], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Paragraph {name: '810-SUMA-TOTALES-FIN', programName: 'CIB122D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [775], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB122D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [791], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB122D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [784], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

MATCH (a:Paragraph {name: '999-9900-FIN', programName: 'CIB122D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB122D.cbl', evidenceLines: [824], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205632Z-cib122d'};

