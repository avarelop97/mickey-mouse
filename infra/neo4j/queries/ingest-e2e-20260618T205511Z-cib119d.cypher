// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260618T205511Z-cib119d
// ============================================================================

MERGE (n:Copybook {name: 'DCTAMARC'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [250], ingestion: 'auto', layer: 'dependency', name: 'DCTAMARC', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d', sourceFile: 'src/CIB119D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DOPECORI'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [240], ingestion: 'auto', layer: 'dependency', name: 'DOPECORI', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d', sourceFile: 'src/CIB119D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DPARAM'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [245], ingestion: 'auto', layer: 'dependency', name: 'DPARAM', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d', sourceFile: 'src/CIB119D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2CE028'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [708], ingestion: 'auto', layer: 'dependency', name: 'SI2CE028', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d', sourceFile: 'src/CIB119D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2CM026'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [741], ingestion: 'auto', layer: 'dependency', name: 'SI2CM026', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d', sourceFile: 'src/CIB119D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2FH027'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [104], ingestion: 'auto', layer: 'dependency', name: 'SI2FH027', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d', sourceFile: 'src/CIB119D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2R1025'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [153], ingestion: 'auto', layer: 'dependency', name: 'SI2R1025', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d', sourceFile: 'src/CIB119D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC004'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [692], ingestion: 'auto', layer: 'dependency', name: 'SIC004', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d', sourceFile: 'src/CIB119D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC005'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [118], ingestion: 'auto', layer: 'dependency', name: 'SIC005', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d', sourceFile: 'src/CIB119D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICAM029'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [146], ingestion: 'auto', layer: 'dependency', name: 'SICAM029', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d', sourceFile: 'src/CIB119D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICNF043'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [139], ingestion: 'auto', layer: 'dependency', name: 'SICNF043', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d', sourceFile: 'src/CIB119D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICVS011'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [132], ingestion: 'auto', layer: 'dependency', name: 'SICVS011', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d', sourceFile: 'src/CIB119D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIXAB001'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [125], ingestion: 'auto', layer: 'dependency', name: 'SIXAB001', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d', sourceFile: 'src/CIB119D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIXAB002'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [701], ingestion: 'auto', layer: 'dependency', name: 'SIXAB002', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d', sourceFile: 'src/CIB119D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SQLCA'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [111], ingestion: 'auto', layer: 'dependency', name: 'SQLCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d', sourceFile: 'src/CIB119D.cbl', viewTag: 'dependency'};

MERGE (n:DBTable {name: 'OPECORI'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477], ingestion: 'auto', layer: 'data-access', name: 'OPECORI', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d', sourceFile: 'src/CIB119D.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'PARAM'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [374, 375, 376, 377, 378, 379, 380, 381, 382], ingestion: 'auto', layer: 'data-access', name: 'PARAM', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d', sourceFile: 'src/CIB119D.cbl', viewTag: 'data-access'};

MERGE (n:ExternalRoutine {name: 'ADR003'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [727], ingestion: 'auto', layer: 'integration', name: 'ADR003', nodeType: 'external-service-call', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d', sourceFile: 'src/CIB119D.cbl', viewTag: 'integration'};

MERGE (n:ExternalRoutine {name: 'ADR009'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [729, 733], ingestion: 'auto', layer: 'integration', name: 'ADR009', nodeType: 'external-service-call', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d', sourceFile: 'src/CIB119D.cbl', viewTag: 'integration'};

MERGE (n:ExternalRoutine {name: 'MDB403O'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [732], ingestion: 'auto', layer: 'integration', name: 'MDB403O', nodeType: 'external-service-call', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d', sourceFile: 'src/CIB119D.cbl', viewTag: 'integration'};

MERGE (n:ExternalRoutine {name: 'VTB415O'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [265], ingestion: 'auto', layer: 'integration', name: 'VTB415O', nodeType: 'external-service-call', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d', sourceFile: 'src/CIB119D.cbl', viewTag: 'integration'};

MERGE (n:Paragraph {name: '000-CONTROL', programName: 'CIB119D'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [258], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-CONTROL', nodeType: 'process-step', programName: 'CIB119D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d', sourceFile: 'src/CIB119D.cbl', summary: 'Orquesta una fase funcional de CIB119D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-INICIO', programName: 'CIB119D'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [285], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-INICIO', nodeType: 'process-step', programName: 'CIB119D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d', sourceFile: 'src/CIB119D.cbl', summary: 'Inicializa el flujo operativo de CIB119D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '013-INICIALIZA', programName: 'CIB119D'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [307], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '013-INICIALIZA', nodeType: 'process-step', programName: 'CIB119D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d', sourceFile: 'src/CIB119D.cbl', summary: 'Inicializa el flujo operativo de CIB119D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-INICIA-WAREAS-REPORTE', programName: 'CIB119D'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [317], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-INICIA-WAREAS-REPORTE', nodeType: 'process-step', programName: 'CIB119D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d', sourceFile: 'src/CIB119D.cbl', summary: 'Orquesta una fase funcional de CIB119D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-DECIDE-IOPERA', programName: 'CIB119D'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [326], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-DECIDE-IOPERA', nodeType: 'process-step', programName: 'CIB119D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d', sourceFile: 'src/CIB119D.cbl', summary: 'Orquesta una fase funcional de CIB119D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-CALCULA-PLUSVALIA', programName: 'CIB119D'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [344], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-CALCULA-PLUSVALIA', nodeType: 'process-step', programName: 'CIB119D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d', sourceFile: 'src/CIB119D.cbl', summary: 'Orquesta una fase funcional de CIB119D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-TASA-PAR-APLICA', programName: 'CIB119D'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [373], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-TASA-PAR-APLICA', nodeType: 'process-step', programName: 'CIB119D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d', sourceFile: 'src/CIB119D.cbl', summary: 'Orquesta una fase funcional de CIB119D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-CURSOR-REGS-VIGS-FOPERCA', programName: 'CIB119D'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [413], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-CURSOR-REGS-VIGS-FOPERCA', nodeType: 'process-step', programName: 'CIB119D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d', sourceFile: 'src/CIB119D.cbl', summary: 'Orquesta una fase funcional de CIB119D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '555-CURSOR-REGS-VIGS-FOPERBA', programName: 'CIB119D'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [455], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '555-CURSOR-REGS-VIGS-FOPERBA', nodeType: 'process-step', programName: 'CIB119D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d', sourceFile: 'src/CIB119D.cbl', summary: 'Orquesta una fase funcional de CIB119D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '560-LEE-REGS-VIGS-FOPERCA', programName: 'CIB119D'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [496], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '560-LEE-REGS-VIGS-FOPERCA', nodeType: 'process-step', programName: 'CIB119D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d', sourceFile: 'src/CIB119D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB119D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '570-LEE-REGS-VIGS-FOPERBA', programName: 'CIB119D'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [540], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '570-LEE-REGS-VIGS-FOPERBA', nodeType: 'process-step', programName: 'CIB119D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d', sourceFile: 'src/CIB119D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB119D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-FIN', programName: 'CIB119D'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [583], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-FIN', nodeType: 'process-step', programName: 'CIB119D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d', sourceFile: 'src/CIB119D.cbl', summary: 'Cierra la ejecucion de CIB119D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '705-ENCABEZADO', programName: 'CIB119D'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [593], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '705-ENCABEZADO', nodeType: 'process-step', programName: 'CIB119D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d', sourceFile: 'src/CIB119D.cbl', summary: 'Orquesta una fase funcional de CIB119D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '720-REP-CONCEPTOS', programName: 'CIB119D'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [611], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '720-REP-CONCEPTOS', nodeType: 'process-step', programName: 'CIB119D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d', sourceFile: 'src/CIB119D.cbl', summary: 'Orquesta una fase funcional de CIB119D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '730-TOT-CONCEPT-COMP-REPO', programName: 'CIB119D'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [665], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '730-TOT-CONCEPT-COMP-REPO', nodeType: 'process-step', programName: 'CIB119D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d', sourceFile: 'src/CIB119D.cbl', summary: 'Orquesta una fase funcional de CIB119D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '740-TOT-CONCEPT-VENT-REPO', programName: 'CIB119D'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [673], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '740-TOT-CONCEPT-VENT-REPO', nodeType: 'process-step', programName: 'CIB119D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d', sourceFile: 'src/CIB119D.cbl', summary: 'Orquesta una fase funcional de CIB119D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'CIB119D'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [698], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'CIB119D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d', sourceFile: 'src/CIB119D.cbl', summary: 'Gestiona contingencias en CIB119D, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-0100-CONSTRUYE', programName: 'CIB119D'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [715], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-0100-CONSTRUYE', nodeType: 'process-step', programName: 'CIB119D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d', sourceFile: 'src/CIB119D.cbl', summary: 'Orquesta una fase funcional de CIB119D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-9900-FIN', programName: 'CIB119D'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [735], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-9900-FIN', nodeType: 'process-step', programName: 'CIB119D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d', sourceFile: 'src/CIB119D.cbl', summary: 'Cierra la ejecucion de CIB119D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-CONST-ENCA-BANCO', programName: 'CIB119D'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [714], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-CONST-ENCA-BANCO', nodeType: 'process-step', programName: 'CIB119D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d', sourceFile: 'src/CIB119D.cbl', summary: 'Orquesta una fase funcional de CIB119D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Program {name: 'CIB119D'})
SET n += {ingestion: 'auto', layer: 'program', name: 'CIB119D', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d', sourceFile: 'src/CIB119D.cbl', viewTag: 'program'};

MATCH (a:Program {name: 'CIB119D'}), (b:ExternalRoutine {name: 'ADR003'})
MERGE (a)-[r:CALLS_ROUTINE]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [727], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:ExternalRoutine {name: 'ADR009'})
MERGE (a)-[r:CALLS_ROUTINE]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [729, 733], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:ExternalRoutine {name: 'MDB403O'})
MERGE (a)-[r:CALLS_ROUTINE]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [732], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:ExternalRoutine {name: 'VTB415O'})
MERGE (a)-[r:CALLS_ROUTINE]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [265], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB119D'}), (b:ExternalRoutine {name: 'VTB415O'})
MERGE (a)-[r:DEPENDS_ON_EXTERNAL]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [265], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Paragraph {name: '999-0100-CONSTRUYE', programName: 'CIB119D'}), (b:ExternalRoutine {name: 'ADR003'})
MERGE (a)-[r:DEPENDS_ON_EXTERNAL]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [727], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Paragraph {name: '999-0100-CONSTRUYE', programName: 'CIB119D'}), (b:ExternalRoutine {name: 'ADR009'})
MERGE (a)-[r:DEPENDS_ON_EXTERNAL]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [729, 733], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Paragraph {name: '999-0100-CONSTRUYE', programName: 'CIB119D'}), (b:ExternalRoutine {name: 'MDB403O'})
MERGE (a)-[r:DEPENDS_ON_EXTERNAL]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [732], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Paragraph {name: '000-CONTROL', programName: 'CIB119D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [258], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Paragraph {name: '010-INICIO', programName: 'CIB119D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [285], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Paragraph {name: '013-INICIALIZA', programName: 'CIB119D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [307], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Paragraph {name: '015-INICIA-WAREAS-REPORTE', programName: 'CIB119D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [317], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Paragraph {name: '020-DECIDE-IOPERA', programName: 'CIB119D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [326], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Paragraph {name: '030-CALCULA-PLUSVALIA', programName: 'CIB119D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [344], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Paragraph {name: '510-TASA-PAR-APLICA', programName: 'CIB119D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [373], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Paragraph {name: '550-CURSOR-REGS-VIGS-FOPERCA', programName: 'CIB119D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [413], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Paragraph {name: '555-CURSOR-REGS-VIGS-FOPERBA', programName: 'CIB119D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [455], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Paragraph {name: '560-LEE-REGS-VIGS-FOPERCA', programName: 'CIB119D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [496], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Paragraph {name: '570-LEE-REGS-VIGS-FOPERBA', programName: 'CIB119D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [540], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Paragraph {name: '700-FIN', programName: 'CIB119D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [583], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Paragraph {name: '705-ENCABEZADO', programName: 'CIB119D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [593], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Paragraph {name: '720-REP-CONCEPTOS', programName: 'CIB119D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [611], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Paragraph {name: '730-TOT-CONCEPT-COMP-REPO', programName: 'CIB119D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [665], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Paragraph {name: '740-TOT-CONCEPT-VENT-REPO', programName: 'CIB119D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [673], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Paragraph {name: '980-ABORTA', programName: 'CIB119D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [698], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Paragraph {name: '999-0100-CONSTRUYE', programName: 'CIB119D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [715], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Paragraph {name: '999-9900-FIN', programName: 'CIB119D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [735], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Paragraph {name: '999-CONST-ENCA-BANCO', programName: 'CIB119D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [714], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB119D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [269], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB119D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [259], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Paragraph {name: '010-INICIO', programName: 'CIB119D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [287], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Paragraph {name: '510-TASA-PAR-APLICA', programName: 'CIB119D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [403], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Paragraph {name: '550-CURSOR-REGS-VIGS-FOPERCA', programName: 'CIB119D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [445], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Paragraph {name: '555-CURSOR-REGS-VIGS-FOPERBA', programName: 'CIB119D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [487], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Paragraph {name: '560-LEE-REGS-VIGS-FOPERCA', programName: 'CIB119D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [527], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Paragraph {name: '570-LEE-REGS-VIGS-FOPERBA', programName: 'CIB119D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [571], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Paragraph {name: '740-TOT-CONCEPT-VENT-REPO', programName: 'CIB119D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [692], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB119D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [708], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB119D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [701], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Paragraph {name: '999-9900-FIN', programName: 'CIB119D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [741], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Copybook {name: 'DCTAMARC'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [250], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [240], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [245], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [708], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [741], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [104], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [153], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [692], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [118], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [146], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Copybook {name: 'SICNF043'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [139], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [132], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [125], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [701], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [111], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:DBTable {name: 'OPECORI'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [374, 375, 376, 377, 378, 379, 380, 381, 382], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB119D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [269], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB119D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [259], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Paragraph {name: '010-INICIO', programName: 'CIB119D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [287], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Paragraph {name: '510-TASA-PAR-APLICA', programName: 'CIB119D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [403], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Paragraph {name: '550-CURSOR-REGS-VIGS-FOPERCA', programName: 'CIB119D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [445], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Paragraph {name: '555-CURSOR-REGS-VIGS-FOPERBA', programName: 'CIB119D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [487], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Paragraph {name: '560-LEE-REGS-VIGS-FOPERCA', programName: 'CIB119D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [527], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Paragraph {name: '570-LEE-REGS-VIGS-FOPERBA', programName: 'CIB119D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [571], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Paragraph {name: '740-TOT-CONCEPT-VENT-REPO', programName: 'CIB119D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [692], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB119D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [708], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB119D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [701], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

MATCH (a:Paragraph {name: '999-9900-FIN', programName: 'CIB119D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [741], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205511Z-cib119d'};

