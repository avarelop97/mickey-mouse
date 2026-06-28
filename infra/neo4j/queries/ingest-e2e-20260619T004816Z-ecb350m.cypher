// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260619T004816Z-ecb350m
// ============================================================================

MERGE (n:Copybook {name: 'DAGPOPRO'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [190], ingestion: 'auto', layer: 'dependency', name: 'DAGPOPRO', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DEDREPER'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [272], ingestion: 'auto', layer: 'dependency', name: 'DEDREPER', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC000'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [265], ingestion: 'auto', layer: 'dependency', name: 'SIC000', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC004'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [969], ingestion: 'auto', layer: 'dependency', name: 'SIC004', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC005'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [164], ingestion: 'auto', layer: 'dependency', name: 'SIC005', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICAM029'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [178], ingestion: 'auto', layer: 'dependency', name: 'SICAM029', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICCE028'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [1004], ingestion: 'auto', layer: 'dependency', name: 'SICCE028', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICCM026'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [998], ingestion: 'auto', layer: 'dependency', name: 'SICCM026', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICFH027'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [160], ingestion: 'auto', layer: 'dependency', name: 'SICFH027', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICFP024'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [440], ingestion: 'auto', layer: 'dependency', name: 'SICFP024', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICIP023'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [427], ingestion: 'auto', layer: 'dependency', name: 'SICIP023', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICNC011'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [184], ingestion: 'auto', layer: 'dependency', name: 'SICNC011', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICR1025'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [196], ingestion: 'auto', layer: 'dependency', name: 'SICR1025', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICVS011'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [171], ingestion: 'auto', layer: 'dependency', name: 'SICVS011', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SQLCA'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [153], ingestion: 'auto', layer: 'dependency', name: 'SQLCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', viewTag: 'dependency'};

MERGE (n:DBTable {name: 'EDREPER'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421], ingestion: 'auto', layer: 'data-access', name: 'EDREPER', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', viewTag: 'data-access'};

MERGE (n:Paragraph {name: '000-0100-PROCESO-PRINCIPAL', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [432], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-0100-PROCESO-PRINCIPAL', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', summary: 'Orquesta una fase funcional de ECB350M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-0100-INICIO', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [444], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-0100-INICIO', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', summary: 'Inicializa el flujo operativo de ECB350M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-9999-FIN', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [496], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-9999-FIN', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', summary: 'Cierra la ejecucion de ECB350M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-INICIO', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [443], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-INICIO', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', summary: 'Inicializa el flujo operativo de ECB350M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-9999-FIN', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [551], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-9999-FIN', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', summary: 'Cierra la ejecucion de ECB350M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-PROCESO', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [499], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-PROCESO', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', summary: 'Orquesta una fase funcional de ECB350M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-0100-INICIO', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [558], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-0100-INICIO', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', summary: 'Inicializa el flujo operativo de ECB350M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-9999-FIN', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [574], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-9999-FIN', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', summary: 'Cierra la ejecucion de ECB350M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-PROCESA-DETALLE', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [557], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-PROCESA-DETALLE', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', summary: 'Orquesta una fase funcional de ECB350M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-0100-INICIO', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [581], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-0100-INICIO', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', summary: 'Inicializa el flujo operativo de ECB350M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-9999-FIN', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [601], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-9999-FIN', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', summary: 'Cierra la ejecucion de ECB350M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-PROCESA-REPORTE', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [580], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-PROCESA-REPORTE', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', summary: 'Orquesta una fase funcional de ECB350M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '035-9999-FIN', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [608], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '035-9999-FIN', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', summary: 'Cierra la ejecucion de ECB350M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '035-FIN', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [604], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '035-FIN', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', summary: 'Cierra la ejecucion de ECB350M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200-0100-INICIO', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [615], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200-0100-INICIO', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', summary: 'Inicializa el flujo operativo de ECB350M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200-9999-FIN', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [619], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200-9999-FIN', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', summary: 'Cierra la ejecucion de ECB350M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200-ENCABEZADO', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [614], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200-ENCABEZADO', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', summary: 'Orquesta una fase funcional de ECB350M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-0100-INICIO', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [626], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-0100-INICIO', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', summary: 'Inicializa el flujo operativo de ECB350M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-9999-FIN', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [812], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-9999-FIN', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', summary: 'Cierra la ejecucion de ECB350M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-LEE-CURSOR', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [625], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-LEE-CURSOR', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB350M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-0100-INICIO', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [816], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-0100-INICIO', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', summary: 'Inicializa el flujo operativo de ECB350M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-9900-FIN', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [859], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-9900-FIN', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', summary: 'Cierra la ejecucion de ECB350M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-CIERRA-CURSOR', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [815], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-CIERRA-CURSOR', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', summary: 'Cierra la ejecucion de ECB350M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-0100-INICIO', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [866], executionOrder: 3900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-0100-INICIO', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', summary: 'Inicializa el flujo operativo de ECB350M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-9900-FIN', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [945], executionOrder: 4000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-9900-FIN', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', summary: 'Cierra la ejecucion de ECB350M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-ABRE-CURSOR', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [865], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-ABRE-CURSOR', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', summary: 'Orquesta una fase funcional de ECB350M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '800-0100-INICIO', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [952], executionOrder: 4200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '800-0100-INICIO', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', summary: 'Inicializa el flujo operativo de ECB350M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '800-9900-FIN', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [963], executionOrder: 4300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '800-9900-FIN', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', summary: 'Cierra la ejecucion de ECB350M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '800-ENCA', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [951], executionOrder: 4100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '800-ENCA', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', summary: 'Orquesta una fase funcional de ECB350M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-0100-INICIO', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [977], executionOrder: 4500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-0100-INICIO', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', summary: 'Inicializa el flujo operativo de ECB350M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-9900-FIN', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [984], executionOrder: 4600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-9900-FIN', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', summary: 'Cierra la ejecucion de ECB350M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [976], executionOrder: 4400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', summary: 'Gestiona contingencias en ECB350M, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-0100-INICIO', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [988], executionOrder: 4800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-0100-INICIO', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', summary: 'Inicializa el flujo operativo de ECB350M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-9900-FIN', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [991], executionOrder: 4900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-9900-FIN', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', summary: 'Cierra la ejecucion de ECB350M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [987], executionOrder: 4700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', summary: 'Orquesta una fase funcional de ECB350M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [4], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', summary: 'Orquesta una fase funcional de ECB350M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [16], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', summary: 'Orquesta una fase funcional de ECB350M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [8], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', summary: 'Orquesta una fase funcional de ECB350M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'ECB350M', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [3], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'ECB350M', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', summary: 'Orquesta una fase funcional de ECB350M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [33], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', summary: 'Orquesta una fase funcional de ECB350M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [23], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', summary: 'Orquesta una fase funcional de ECB350M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-9121', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [20], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-9121', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', summary: 'Orquesta una fase funcional de ECB350M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [22], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', summary: 'Orquesta una fase funcional de ECB350M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [6], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', summary: 'Orquesta una fase funcional de ECB350M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [19], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', summary: 'Orquesta una fase funcional de ECB350M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [2], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', summary: 'Orquesta una fase funcional de ECB350M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [17], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', summary: 'Orquesta una fase funcional de ECB350M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB350M'})
SET n += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [61], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ECB350M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', summary: 'Orquesta una fase funcional de ECB350M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Program {name: 'ECB350M'})
SET n += {ingestion: 'auto', layer: 'program', name: 'ECB350M', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m', sourceFile: 'src/ECB350M.cbl', viewTag: 'program'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '000-0100-PROCESO-PRINCIPAL', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [432], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '010-0100-INICIO', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [444], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '010-9999-FIN', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [496], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '010-INICIO', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [443], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '015-9999-FIN', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [551], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '015-PROCESO', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [499], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '020-0100-INICIO', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [558], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '020-9999-FIN', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [574], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '020-PROCESA-DETALLE', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [557], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '030-0100-INICIO', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [581], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '030-9999-FIN', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [601], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '030-PROCESA-REPORTE', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [580], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '035-9999-FIN', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [608], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '035-FIN', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [604], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '200-0100-INICIO', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [615], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '200-9999-FIN', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [619], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '200-ENCABEZADO', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [614], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '500-0100-INICIO', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [626], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '500-9999-FIN', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [812], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '500-LEE-CURSOR', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [625], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '520-0100-INICIO', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [816], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '520-9900-FIN', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [859], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '520-CIERRA-CURSOR', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [815], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '700-0100-INICIO', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [866], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '700-9900-FIN', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [945], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '700-ABRE-CURSOR', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [865], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '800-0100-INICIO', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [952], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '800-9900-FIN', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [963], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '800-ENCA', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [951], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '980-0100-INICIO', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [977], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '980-9900-FIN', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [984], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '980-ABORTA', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [976], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '990-0100-INICIO', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [988], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '990-9900-FIN', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [991], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [987], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: 'AUTHOR', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [16], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [8], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: 'ECB350M', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: 'FILE', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [33], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [23], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: 'IBM-9121', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [20], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [22], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: 'INSTALLATION', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [6], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [19], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [2], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [17], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB350M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [61], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Paragraph {name: '000-0100-PROCESO-PRINCIPAL', programName: 'ECB350M'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [440], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Paragraph {name: '010-0100-INICIO', programName: 'ECB350M'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [493], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Paragraph {name: '500-0100-INICIO', programName: 'ECB350M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [803], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Paragraph {name: '520-0100-INICIO', programName: 'ECB350M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [858], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Paragraph {name: '700-0100-INICIO', programName: 'ECB350M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [942], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Paragraph {name: '800-9900-FIN', programName: 'ECB350M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [969], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'ECB350M'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [1004], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'ECB350M'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [998], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB350M'}), (b:Copybook {name: 'DAGPOPRO'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [190], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB350M'}), (b:Copybook {name: 'DEDREPER'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [272], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB350M'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [265], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB350M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [164], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB350M'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [178], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB350M'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [160], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB350M'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [427], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB350M'}), (b:Copybook {name: 'SICNC011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [184], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB350M'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [196], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB350M'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [171], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB350M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [153], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Copybook {name: 'DAGPOPRO'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [190], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Copybook {name: 'DEDREPER'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [272], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [265], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [969], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [164], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [178], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [1004], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [998], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [160], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [440], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [427], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Copybook {name: 'SICNC011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [184], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [196], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [171], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [153], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Program {name: 'ECB350M'}), (b:DBTable {name: 'EDREPER'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Paragraph {name: '000-0100-PROCESO-PRINCIPAL', programName: 'ECB350M'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [440], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Paragraph {name: '010-0100-INICIO', programName: 'ECB350M'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [493], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Paragraph {name: '500-0100-INICIO', programName: 'ECB350M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [803], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Paragraph {name: '520-0100-INICIO', programName: 'ECB350M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [858], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Paragraph {name: '700-0100-INICIO', programName: 'ECB350M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [942], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Paragraph {name: '800-9900-FIN', programName: 'ECB350M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [969], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'ECB350M'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [1004], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'ECB350M'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [998], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB350M'}), (b:Copybook {name: 'DAGPOPRO'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [190], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB350M'}), (b:Copybook {name: 'DEDREPER'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [272], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB350M'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [265], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB350M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [164], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB350M'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [178], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB350M'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [160], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB350M'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [427], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB350M'}), (b:Copybook {name: 'SICNC011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [184], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB350M'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [196], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB350M'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [171], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB350M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB350M.cbl', evidenceLines: [153], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004816Z-ecb350m'};

