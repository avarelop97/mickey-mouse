// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260619T011040Z-zm1cexci
// ============================================================================

MERGE (n:Paragraph {name: 'ACTUALIZA-HORA', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [1101], executionOrder: 5000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'ACTUALIZA-HORA', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Persiste actualizaciones de negocio en ZM1CEXCI, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [92], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FIN-SERVIDOR', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [1016], executionOrder: 4600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FIN-SERVIDOR', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Cierra la ejecucion de ZM1CEXCI, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FUNFILE-INVREQ', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [992], executionOrder: 4300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FUNFILE-INVREQ', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FUNFILE-IOERR', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [1000], executionOrder: 4400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FUNFILE-IOERR', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FUNFILE-NOTAUTH', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [1008], executionOrder: 4500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FUNFILE-NOTAUTH', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FUNFILE-NOTFOUND', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [984], executionOrder: 4200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FUNFILE-NOTFOUND', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FUNTRAN-END', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [941], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FUNTRAN-END', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FUNTRAN-INVREQ', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [935], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FUNTRAN-INVREQ', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FUNTRAN-IOERR', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [945], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FUNTRAN-IOERR', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FUNTRAN-ISCINVREQ', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [967], executionOrder: 4000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FUNTRAN-ISCINVREQ', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FUNTRAN-NOTAUTH', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [930], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FUNTRAN-NOTAUTH', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FUNTRAN-SYSIDERR', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [959], executionOrder: 3900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FUNTRAN-SYSIDERR', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FUNTRAN-TRANIDERR', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [951], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FUNTRAN-TRANIDERR', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FUNTRAN-USERIDERR', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [975], executionOrder: 4100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FUNTRAN-USERIDERR', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INICIA-SERVIDOR', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [361], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INICIA-SERVIDOR', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [251], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LOG-ERRORES', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [1082], executionOrder: 4900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LOG-ERRORES', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Gestiona contingencias en ZM1CEXCI, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LOG-INFORMES', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [1067], executionOrder: 4800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LOG-INFORMES', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESO-ADDFILE', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [588], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESO-ADDFILE', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESO-ADDFILE-FIN', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [611], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESO-ADDFILE-FIN', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Cierra la ejecucion de ZM1CEXCI, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESO-CLOSFILE', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [461], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESO-CLOSFILE', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESO-CLOSFILE-FIN', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [503], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESO-CLOSFILE-FIN', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Cierra la ejecucion de ZM1CEXCI, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESO-DELETEQ', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [1173], executionOrder: 5200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESO-DELETEQ', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESO-DELFILE', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [615], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESO-DELFILE', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESO-DELFILE-FIN', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [638], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESO-DELFILE-FIN', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Cierra la ejecucion de ZM1CEXCI, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESO-DISABLE', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [890], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESO-DISABLE', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESO-DISABLE-FIN', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [916], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESO-DISABLE-FIN', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Cierra la ejecucion de ZM1CEXCI, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESO-DISAFILE', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [534], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESO-DISAFILE', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESO-DISAFILE-FIN', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [557], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESO-DISAFILE-FIN', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Cierra la ejecucion de ZM1CEXCI, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESO-ENABFILE', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [507], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESO-ENABFILE', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESO-ENABFILE-FIN', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [530], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESO-ENABFILE-FIN', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Cierra la ejecucion de ZM1CEXCI, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESO-ENABLE', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [737], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESO-ENABLE', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESO-ENABLE-FIN', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [768], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESO-ENABLE-FIN', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Cierra la ejecucion de ZM1CEXCI, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESO-NADDFILE', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [669], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESO-NADDFILE', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESO-NADDFILE-FIN', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [692], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESO-NADDFILE-FIN', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Cierra la ejecucion de ZM1CEXCI, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESO-NDELFILE', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [696], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESO-NDELFILE', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESO-NDELFILE-FIN', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [719], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESO-NDELFILE-FIN', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Cierra la ejecucion de ZM1CEXCI, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESO-NUPDFILE', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [642], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESO-NUPDFILE', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESO-NUPDFILE-FIN', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [665], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESO-NUPDFILE-FIN', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Cierra la ejecucion de ZM1CEXCI, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESO-OPENFILE', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [415], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESO-OPENFILE', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESO-OPENFILE-FIN', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [457], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESO-OPENFILE-FIN', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Cierra la ejecucion de ZM1CEXCI, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESO-STARTAUT', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [863], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESO-STARTAUT', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESO-STARTPRM', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [842], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESO-STARTPRM', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESO-STARTTRN', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [775], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESO-STARTTRN', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESO-UPDFILE', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [561], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESO-UPDFILE', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESO-UPDFILE-FIN', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [584], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESO-UPDFILE-FIN', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Cierra la ejecucion de ZM1CEXCI, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'REALIZA-LINK', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [1037], executionOrder: 4700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'REALIZA-LINK', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'REALIZA-LINK-PRGM', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [1146], executionOrder: 5100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'REALIZA-LINK-PRGM', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'TRANSA-INICIAL', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [724], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'TRANSA-INICIAL', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Inicializa el flujo operativo de ZM1CEXCI, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'TRANSA-INICIAL-FIN', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [733], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'TRANSA-INICIAL-FIN', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Inicializa el flujo operativo de ZM1CEXCI, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1CEXCI'})
SET n += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [96], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ZM1CEXCI', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci', sourceFile: 'src/ZM1CEXCI.cbl', summary: 'Orquesta una fase funcional de ZM1CEXCI, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Program {name: 'ZM1CEXCI'})
SET n += {ingestion: 'auto', layer: 'program', name: 'ZM1CEXCI', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci', sourceFile: 'src/ZM1CEXCI.cbl', viewTag: 'program'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'ACTUALIZA-HORA', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [1101], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [92], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'FIN-SERVIDOR', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [1016], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'FUNFILE-INVREQ', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [992], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'FUNFILE-IOERR', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [1000], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'FUNFILE-NOTAUTH', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [1008], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'FUNFILE-NOTFOUND', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [984], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'FUNTRAN-END', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [941], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'FUNTRAN-INVREQ', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [935], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'FUNTRAN-IOERR', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [945], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'FUNTRAN-ISCINVREQ', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [967], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'FUNTRAN-NOTAUTH', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [930], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'FUNTRAN-SYSIDERR', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [959], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'FUNTRAN-TRANIDERR', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [951], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'FUNTRAN-USERIDERR', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [975], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'INICIA-SERVIDOR', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [361], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'LINKAGE', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [251], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'LOG-ERRORES', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [1082], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'LOG-INFORMES', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [1067], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'PROCESO-ADDFILE', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [588], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'PROCESO-ADDFILE-FIN', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [611], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'PROCESO-CLOSFILE', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [461], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'PROCESO-CLOSFILE-FIN', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [503], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'PROCESO-DELETEQ', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [1173], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'PROCESO-DELFILE', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [615], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'PROCESO-DELFILE-FIN', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [638], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'PROCESO-DISABLE', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [890], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'PROCESO-DISABLE-FIN', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [916], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'PROCESO-DISAFILE', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [534], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'PROCESO-DISAFILE-FIN', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [557], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'PROCESO-ENABFILE', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [507], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'PROCESO-ENABFILE-FIN', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [530], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'PROCESO-ENABLE', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [737], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'PROCESO-ENABLE-FIN', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [768], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'PROCESO-NADDFILE', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [669], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'PROCESO-NADDFILE-FIN', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [692], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'PROCESO-NDELFILE', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [696], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'PROCESO-NDELFILE-FIN', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [719], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'PROCESO-NUPDFILE', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [642], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'PROCESO-NUPDFILE-FIN', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [665], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'PROCESO-OPENFILE', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [415], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'PROCESO-OPENFILE-FIN', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [457], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'PROCESO-STARTAUT', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [863], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'PROCESO-STARTPRM', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [842], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'PROCESO-STARTTRN', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [775], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'PROCESO-UPDFILE', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [561], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'PROCESO-UPDFILE-FIN', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [584], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'REALIZA-LINK', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [1037], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'REALIZA-LINK-PRGM', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [1146], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'TRANSA-INICIAL', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [724], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'TRANSA-INICIAL-FIN', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [733], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci'};

MATCH (a:Program {name: 'ZM1CEXCI'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1CEXCI'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1CEXCI.cbl', evidenceLines: [96], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011040Z-zm1cexci'};

