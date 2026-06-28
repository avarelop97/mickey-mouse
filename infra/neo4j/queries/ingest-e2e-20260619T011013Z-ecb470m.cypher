// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260619T011013Z-ecb470m
// ============================================================================

MERGE (n:Copybook {name: 'DCTLPROC'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [121], ingestion: 'auto', layer: 'dependency', name: 'DCTLPROC', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DEDOPERT'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [114], ingestion: 'auto', layer: 'dependency', name: 'DEDOPERT', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DOPERATE'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [107], ingestion: 'auto', layer: 'dependency', name: 'DOPERATE', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DPARAM'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [128], ingestion: 'auto', layer: 'dependency', name: 'DPARAM', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2CM026'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [454], ingestion: 'auto', layer: 'dependency', name: 'SI2CM026', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2FH027'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [89], ingestion: 'auto', layer: 'dependency', name: 'SI2FH027', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC004'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [417], ingestion: 'auto', layer: 'dependency', name: 'SIC004', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC005'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [95], ingestion: 'auto', layer: 'dependency', name: 'SIC005', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICFP024'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [179], ingestion: 'auto', layer: 'dependency', name: 'SICFP024', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICIP023'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [138], ingestion: 'auto', layer: 'dependency', name: 'SICIP023', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICVS011'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [82], ingestion: 'auto', layer: 'dependency', name: 'SICVS011', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SQLCA'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [99], ingestion: 'auto', layer: 'dependency', name: 'SQLCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', viewTag: 'dependency'};

MERGE (n:DBTable {name: 'CTLPROC'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [347, 348, 349, 350, 351, 352, 353, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399], ingestion: 'auto', layer: 'data-access', name: 'CTLPROC', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'EDOPERT1'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 327, 328, 329], ingestion: 'auto', layer: 'data-access', name: 'EDOPERT1', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'OPERATE'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236], ingestion: 'auto', layer: 'data-access', name: 'OPERATE', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'PARAM'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [198, 199, 200, 201, 202, 203, 204], ingestion: 'auto', layer: 'data-access', name: 'PARAM', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', viewTag: 'data-access'};

MERGE (n:Paragraph {name: '005-0100-FIN', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [194], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-0100-FIN', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', summary: 'Cierra la ejecucion de ECB470M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-0100-INICIO', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [184], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-0100-INICIO', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', summary: 'Inicializa el flujo operativo de ECB470M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-INICIO', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [183], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-INICIO', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', summary: 'Inicializa el flujo operativo de ECB470M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-LEE-PARAMP04', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [197], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-LEE-PARAMP04', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB470M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-LEE-PARAMP04-FIN', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [206], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-LEE-PARAMP04-FIN', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB470M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '515-0100-INICIO', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [243], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '515-0100-INICIO', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', summary: 'Inicializa el flujo operativo de ECB470M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '515-9900-FIN', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [264], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '515-9900-FIN', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', summary: 'Cierra la ejecucion de ECB470M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '515-OBTEN-EVENTO-CARGA', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [242], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '515-OBTEN-EVENTO-CARGA', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB470M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-0100-INICIO', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [268], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-0100-INICIO', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', summary: 'Inicializa el flujo operativo de ECB470M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-9900-FIN', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [309], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-9900-FIN', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', summary: 'Cierra la ejecucion de ECB470M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-INS-SELECT', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [210], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-INS-SELECT', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', summary: 'Orquesta una fase funcional de ECB470M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-INSERT-EDOPERT1', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [267], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-INSERT-EDOPERT1', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', summary: 'Persiste actualizaciones de negocio en ECB470M, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '610-0100-INICIO', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [316], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '610-0100-INICIO', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', summary: 'Inicializa el flujo operativo de ECB470M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '610-9900-FIN', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [340], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '610-9900-FIN', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', summary: 'Cierra la ejecucion de ECB470M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '610-DEL-EDOPERT1', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [315], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '610-DEL-EDOPERT1', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', summary: 'Orquesta una fase funcional de ECB470M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '635-0100-INICIO', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [346], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '635-0100-INICIO', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', summary: 'Inicializa el flujo operativo de ECB470M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '635-9900-FIN', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [366], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '635-9900-FIN', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', summary: 'Cierra la ejecucion de ECB470M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '635-ACT-CTLPROC', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [345], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '635-ACT-CTLPROC', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', summary: 'Orquesta una fase funcional de ECB470M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '640-0100-INICIO', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [372], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '640-0100-INICIO', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', summary: 'Inicializa el flujo operativo de ECB470M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '640-9900-FIN', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [410], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '640-9900-FIN', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', summary: 'Cierra la ejecucion de ECB470M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '640-INS-CTLPROC', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [371], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '640-INS-CTLPROC', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', summary: 'Orquesta una fase funcional de ECB470M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-0100-INICIO', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [420], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-0100-INICIO', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', summary: 'Inicializa el flujo operativo de ECB470M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-0200-SIGUE', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [425], executionOrder: 3900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-0200-SIGUE', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', summary: 'Orquesta una fase funcional de ECB470M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-9900-FIN', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [428], executionOrder: 4000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-9900-FIN', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', summary: 'Cierra la ejecucion de ECB470M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [419], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', summary: 'Gestiona contingencias en ECB470M, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-0100-INICIA', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [435], executionOrder: 4200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-0100-INICIA', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', summary: 'Orquesta una fase funcional de ECB470M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-9900-FIN', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [447], executionOrder: 4300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-9900-FIN', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', summary: 'Cierra la ejecucion de ECB470M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [434], executionOrder: 4100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', summary: 'Orquesta una fase funcional de ECB470M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [4], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', summary: 'Orquesta una fase funcional de ECB470M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [22], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', summary: 'Orquesta una fase funcional de ECB470M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [8], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', summary: 'Orquesta una fase funcional de ECB470M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'ECB470M', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [3], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'ECB470M', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', summary: 'Orquesta una fase funcional de ECB470M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [29], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', summary: 'Orquesta una fase funcional de ECB470M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-4381', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [26], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-4381', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', summary: 'Orquesta una fase funcional de ECB470M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [28], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', summary: 'Orquesta una fase funcional de ECB470M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [6], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', summary: 'Orquesta una fase funcional de ECB470M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [25], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', summary: 'Orquesta una fase funcional de ECB470M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [2], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', summary: 'Orquesta una fase funcional de ECB470M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [23], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', summary: 'Orquesta una fase funcional de ECB470M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB470M'})
SET n += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [32], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ECB470M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', summary: 'Orquesta una fase funcional de ECB470M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Program {name: 'ECB470M'})
SET n += {ingestion: 'auto', layer: 'program', name: 'ECB470M', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m', sourceFile: 'src/ECB470M.cbl', viewTag: 'program'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: '005-0100-FIN', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [194], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: '005-0100-INICIO', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [184], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: '005-INICIO', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [183], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: '010-LEE-PARAMP04', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [197], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: '010-LEE-PARAMP04-FIN', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [206], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: '515-0100-INICIO', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [243], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: '515-9900-FIN', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [264], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: '515-OBTEN-EVENTO-CARGA', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [242], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: '600-0100-INICIO', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [268], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: '600-9900-FIN', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [309], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: '600-INS-SELECT', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [210], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: '600-INSERT-EDOPERT1', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [267], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: '610-0100-INICIO', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [316], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: '610-9900-FIN', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [340], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: '610-DEL-EDOPERT1', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [315], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: '635-0100-INICIO', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [346], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: '635-9900-FIN', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [366], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: '635-ACT-CTLPROC', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [345], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: '640-0100-INICIO', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [372], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: '640-9900-FIN', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [410], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: '640-INS-CTLPROC', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [371], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: '980-0100-INICIO', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [420], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: '980-0200-SIGUE', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [425], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: '980-9900-FIN', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [428], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: '980-ABORTA', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [419], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: '990-0100-INICIA', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [435], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: '990-9900-FIN', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [447], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [434], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: 'AUTHOR', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [22], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [8], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: 'ECB470M', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [29], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: 'IBM-4381', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [26], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [28], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: 'INSTALLATION', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [6], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [25], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [2], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [23], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB470M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [32], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Paragraph {name: '515-0100-INICIO', programName: 'ECB470M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [261], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Paragraph {name: '600-0100-INICIO', programName: 'ECB470M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [305], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Paragraph {name: '610-0100-INICIO', programName: 'ECB470M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [324, 334], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Paragraph {name: '635-0100-INICIO', programName: 'ECB470M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [361], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Paragraph {name: '640-0100-INICIO', programName: 'ECB470M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [407], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Paragraph {name: '640-9900-FIN', programName: 'ECB470M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [417], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'ECB470M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [454], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB470M'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [121], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB470M'}), (b:Copybook {name: 'DEDOPERT'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [114], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB470M'}), (b:Copybook {name: 'DOPERATE'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [107], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB470M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [128], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB470M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [89], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB470M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [95], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB470M'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [179], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB470M'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [138], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB470M'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [82], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB470M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [99], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [121], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:Copybook {name: 'DEDOPERT'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [114], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:Copybook {name: 'DOPERATE'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [107], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [128], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [454], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [89], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [417], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [95], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [179], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [138], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [82], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [99], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:DBTable {name: 'CTLPROC'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [244, 245, 246, 247, 248, 249, 250, 251], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:DBTable {name: 'EDOPERT1'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [327, 328, 329], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:DBTable {name: 'OPERATE'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [198, 199, 200, 201, 202, 203, 204], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:DBTable {name: 'CTLPROC'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [347, 348, 349, 350, 351, 352, 353, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Program {name: 'ECB470M'}), (b:DBTable {name: 'EDOPERT1'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 327, 328, 329], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Paragraph {name: '515-0100-INICIO', programName: 'ECB470M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [261], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Paragraph {name: '600-0100-INICIO', programName: 'ECB470M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [305], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Paragraph {name: '610-0100-INICIO', programName: 'ECB470M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [324, 334], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Paragraph {name: '635-0100-INICIO', programName: 'ECB470M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [361], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Paragraph {name: '640-0100-INICIO', programName: 'ECB470M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [407], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Paragraph {name: '640-9900-FIN', programName: 'ECB470M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [417], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'ECB470M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [454], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB470M'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [121], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB470M'}), (b:Copybook {name: 'DEDOPERT'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [114], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB470M'}), (b:Copybook {name: 'DOPERATE'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [107], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB470M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [128], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB470M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [89], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB470M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [95], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB470M'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [179], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB470M'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [138], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB470M'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [82], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB470M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB470M.cbl', evidenceLines: [99], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011013Z-ecb470m'};

