// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260625T223531Z-zm4dg003
// ============================================================================

MERGE (n:Copybook {name: 'SQLCA'})
SET n += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [36], ingestion: 'auto', layer: 'dependency', name: 'SQLCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003', sourceFile: 'src/ZM4DG003.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZAGPOCTA'})
SET n += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [45], ingestion: 'auto', layer: 'dependency', name: 'ZAGPOCTA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003', sourceFile: 'src/ZM4DG003.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZCTLPROC'})
SET n += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [39], ingestion: 'auto', layer: 'dependency', name: 'ZCTLPROC', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003', sourceFile: 'src/ZM4DG003.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZCUENTA'})
SET n += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [51], ingestion: 'auto', layer: 'dependency', name: 'ZCUENTA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003', sourceFile: 'src/ZM4DG003.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMDINBMV'})
SET n += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [48], ingestion: 'auto', layer: 'dependency', name: 'ZMDINBMV', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003', sourceFile: 'src/ZM4DG003.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZPARAM'})
SET n += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [42], ingestion: 'auto', layer: 'dependency', name: 'ZPARAM', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003', sourceFile: 'src/ZM4DG003.cbl', viewTag: 'dependency'};

MERGE (n:DBTable {name: 'AGPOCTA'})
SET n += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [249, 250, 251, 252, 253, 254, 255, 272, 273, 274, 275, 276], ingestion: 'auto', layer: 'data-access', name: 'AGPOCTA', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003', sourceFile: 'src/ZM4DG003.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'CTLPROC'})
SET n += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [146, 147, 148, 149, 150, 151, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 225, 226, 227, 228, 229, 230, 231, 232, 233, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322], ingestion: 'auto', layer: 'data-access', name: 'CTLPROC', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003', sourceFile: 'src/ZM4DG003.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'CUENTA'})
SET n += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [336, 337, 338, 339, 340], ingestion: 'auto', layer: 'data-access', name: 'CUENTA', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003', sourceFile: 'src/ZM4DG003.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'MDINBMV'})
SET n += {dclHostStructure: 'DCLMDINBMV', dclMember: 'ZMDINBMV', dclPath: 'dcl/ZMDINBMV.dcl', declaredColumnCount: 12, declaredColumnDefinitions: ['ITIPOREG CHAR(2) NOT NULL', 'ITIPOMDO CHAR(2) NOT NULL', 'FVALBMV DATE NOT NULL', 'ITIPOBMV CHAR(6) NOT NULL', 'IEMISORA CHAR(7) NOT NULL', 'ISERBMV CHAR(8) NOT NULL', 'MPREACT DECIMAL(15, 8) NOT NULL', 'ICODBMV DECIMAL(2, 0) NOT NULL', 'MPREMES DECIMAL(15, 8) NOT NULL', 'MPREANO DECIMAL(15, 8) NOT NULL', 'IPROGRAM CHAR(8) NOT NULL', 'FSIST TIMESTAMP NOT NULL'], declaredColumns: ['ITIPOREG', 'ITIPOMDO', 'FVALBMV', 'ITIPOBMV', 'IEMISORA', 'ISERBMV', 'MPREACT', 'ICODBMV', 'MPREMES', 'MPREANO', 'IPROGRAM', 'FSIST'], evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [185, 186, 187], ingestion: 'auto', layer: 'data-access', name: 'MDINBMV', nodeType: 'physical-table', qualifiedName: 'MDINBMV', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003', schemaName: null, sourceFile: 'src/ZM4DG003.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'PARAM'})
SET n += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [167, 168, 169, 170, 171, 289, 290, 291, 292, 293, 294], ingestion: 'auto', layer: 'data-access', name: 'PARAM', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003', sourceFile: 'src/ZM4DG003.cbl', viewTag: 'data-access'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_ZM4DG003'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que remplazar temporalmente los spufis.. Pertenece a: PROGRAM-ID. ZM4DG003. INSTALLATION. BBVA BANCOMER, S.A. DE C.V..', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_ZM4DG003', nodeType: 'business-function', objective: 'REMPLAZAR TEMPORALMENTE LOS SPUFIS.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003', sourceFile: 'src/ZM4DG003.cbl', viewTag: 'functional'};

MERGE (n:Paragraph {name: '0000-RUTINA-DE-CONTROL', programName: 'ZM4DG003'})
SET n += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [69], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0000-RUTINA-DE-CONTROL', nodeType: 'process-step', programName: 'ZM4DG003', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003', sourceFile: 'src/ZM4DG003.cbl', summary: 'Orquesta una fase funcional de ZM4DG003, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1010-BORRA-CTLPROC', programName: 'ZM4DG003'})
SET n += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [143], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1010-BORRA-CTLPROC', nodeType: 'process-step', programName: 'ZM4DG003', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003', sourceFile: 'src/ZM4DG003.cbl', summary: 'Orquesta una fase funcional de ZM4DG003, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1021-ACTUALIZA-PARAM', programName: 'ZM4DG003'})
SET n += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [164], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1021-ACTUALIZA-PARAM', nodeType: 'process-step', programName: 'ZM4DG003', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003', sourceFile: 'src/ZM4DG003.cbl', summary: 'Persiste actualizaciones de negocio en ZM4DG003, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1022-BORRA-MDINBMV', programName: 'ZM4DG003'})
SET n += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [182], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1022-BORRA-MDINBMV', nodeType: 'process-step', programName: 'ZM4DG003', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003', sourceFile: 'src/ZM4DG003.cbl', summary: 'Orquesta una fase funcional de ZM4DG003, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1030-INSERTA-CTLPROC', programName: 'ZM4DG003'})
SET n += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [197], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1030-INSERTA-CTLPROC', nodeType: 'process-step', programName: 'ZM4DG003', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003', sourceFile: 'src/ZM4DG003.cbl', summary: 'Persiste actualizaciones de negocio en ZM4DG003, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1040-ACTUALIZA-CTLPROC', programName: 'ZM4DG003'})
SET n += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [222], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1040-ACTUALIZA-CTLPROC', nodeType: 'process-step', programName: 'ZM4DG003', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003', sourceFile: 'src/ZM4DG003.cbl', summary: 'Persiste actualizaciones de negocio en ZM4DG003, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1050-BORRA-AGPOCTA', programName: 'ZM4DG003'})
SET n += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [246], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1050-BORRA-AGPOCTA', nodeType: 'process-step', programName: 'ZM4DG003', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003', sourceFile: 'src/ZM4DG003.cbl', summary: 'Orquesta una fase funcional de ZM4DG003, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1061-INSERTA-AGPOCTA', programName: 'ZM4DG003'})
SET n += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [269], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1061-INSERTA-AGPOCTA', nodeType: 'process-step', programName: 'ZM4DG003', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003', sourceFile: 'src/ZM4DG003.cbl', summary: 'Persiste actualizaciones de negocio en ZM4DG003, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1062-BORRA-PARAM', programName: 'ZM4DG003'})
SET n += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [286], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1062-BORRA-PARAM', nodeType: 'process-step', programName: 'ZM4DG003', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003', sourceFile: 'src/ZM4DG003.cbl', summary: 'Orquesta una fase funcional de ZM4DG003, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1070-INSERTA-CTLPROC-PARAM', programName: 'ZM4DG003'})
SET n += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [304], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1070-INSERTA-CTLPROC-PARAM', nodeType: 'process-step', programName: 'ZM4DG003', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003', sourceFile: 'src/ZM4DG003.cbl', summary: 'Persiste actualizaciones de negocio en ZM4DG003, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1080-ACTUALIZA-CUENTA', programName: 'ZM4DG003'})
SET n += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [333], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1080-ACTUALIZA-CUENTA', nodeType: 'process-step', programName: 'ZM4DG003', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003', sourceFile: 'src/ZM4DG003.cbl', summary: 'Persiste actualizaciones de negocio en ZM4DG003, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2000-TERMINA', programName: 'ZM4DG003'})
SET n += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [350], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2000-TERMINA', nodeType: 'process-step', programName: 'ZM4DG003', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003', sourceFile: 'src/ZM4DG003.cbl', summary: 'Cierra la ejecucion de ZM4DG003, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '9800-ABORTA', programName: 'ZM4DG003'})
SET n += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [364], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '9800-ABORTA', nodeType: 'process-step', programName: 'ZM4DG003', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003', sourceFile: 'src/ZM4DG003.cbl', summary: 'Gestiona contingencias en ZM4DG003, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ZM4DG003'})
SET n += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [11], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ZM4DG003', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003', sourceFile: 'src/ZM4DG003.cbl', summary: 'Orquesta una fase funcional de ZM4DG003, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'ZM4DG003'})
SET n += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [19], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'ZM4DG003', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003', sourceFile: 'src/ZM4DG003.cbl', summary: 'Orquesta una fase funcional de ZM4DG003, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'ZM4DG003'})
SET n += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [15], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'ZM4DG003', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003', sourceFile: 'src/ZM4DG003.cbl', summary: 'Orquesta una fase funcional de ZM4DG003, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'ZM4DG003'})
SET n += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [14], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'ZM4DG003', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003', sourceFile: 'src/ZM4DG003.cbl', summary: 'Orquesta una fase funcional de ZM4DG003, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ZM4DG003'})
SET n += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [58], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ZM4DG003', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003', sourceFile: 'src/ZM4DG003.cbl', summary: 'Orquesta una fase funcional de ZM4DG003, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM4DG003'})
SET n += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [21], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ZM4DG003', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003', sourceFile: 'src/ZM4DG003.cbl', summary: 'Orquesta una fase funcional de ZM4DG003, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Program {name: 'ZM4DG003'})
SET n += {description: 'Programa COBOL que remplazar temporalmente los spufis.. Pertenece a: PROGRAM-ID. ZM4DG003. INSTALLATION. BBVA BANCOMER, S.A. DE C.V..', ingestion: 'auto', layer: 'program', name: 'ZM4DG003', nodeType: 'program', objective: 'REMPLAZAR TEMPORALMENTE LOS SPUFIS.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003', sourceFile: 'src/ZM4DG003.cbl', system: 'PROGRAM-ID. ZM4DG003. INSTALLATION. BBVA BANCOMER, S.A. DE C.V.', viewTag: 'cobol-program'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM4DG003', name: 'ZM4DG003_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de ZM4DG003 para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_ZM4DG003', ingestion: 'auto', layer: 'functional', name: 'ZM4DG003_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003', sourceFile: 'src/ZM4DG003.cbl', viewTag: 'functional'};

MATCH (a:Program {name: 'ZM4DG003'}), (b:Paragraph {name: '0000-RUTINA-DE-CONTROL', programName: 'ZM4DG003'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [69], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003'};

MATCH (a:Program {name: 'ZM4DG003'}), (b:Paragraph {name: '1010-BORRA-CTLPROC', programName: 'ZM4DG003'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [143], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003'};

MATCH (a:Program {name: 'ZM4DG003'}), (b:Paragraph {name: '1021-ACTUALIZA-PARAM', programName: 'ZM4DG003'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [164], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003'};

MATCH (a:Program {name: 'ZM4DG003'}), (b:Paragraph {name: '1022-BORRA-MDINBMV', programName: 'ZM4DG003'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [182], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003'};

MATCH (a:Program {name: 'ZM4DG003'}), (b:Paragraph {name: '1030-INSERTA-CTLPROC', programName: 'ZM4DG003'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [197], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003'};

MATCH (a:Program {name: 'ZM4DG003'}), (b:Paragraph {name: '1040-ACTUALIZA-CTLPROC', programName: 'ZM4DG003'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [222], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003'};

MATCH (a:Program {name: 'ZM4DG003'}), (b:Paragraph {name: '1050-BORRA-AGPOCTA', programName: 'ZM4DG003'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [246], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003'};

MATCH (a:Program {name: 'ZM4DG003'}), (b:Paragraph {name: '1061-INSERTA-AGPOCTA', programName: 'ZM4DG003'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [269], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003'};

MATCH (a:Program {name: 'ZM4DG003'}), (b:Paragraph {name: '1062-BORRA-PARAM', programName: 'ZM4DG003'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [286], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003'};

MATCH (a:Program {name: 'ZM4DG003'}), (b:Paragraph {name: '1070-INSERTA-CTLPROC-PARAM', programName: 'ZM4DG003'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [304], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003'};

MATCH (a:Program {name: 'ZM4DG003'}), (b:Paragraph {name: '1080-ACTUALIZA-CUENTA', programName: 'ZM4DG003'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [333], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003'};

MATCH (a:Program {name: 'ZM4DG003'}), (b:Paragraph {name: '2000-TERMINA', programName: 'ZM4DG003'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [350], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003'};

MATCH (a:Program {name: 'ZM4DG003'}), (b:Paragraph {name: '9800-ABORTA', programName: 'ZM4DG003'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [364], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003'};

MATCH (a:Program {name: 'ZM4DG003'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ZM4DG003'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [11], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003'};

MATCH (a:Program {name: 'ZM4DG003'}), (b:Paragraph {name: 'FILE', programName: 'ZM4DG003'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [19], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003'};

MATCH (a:Program {name: 'ZM4DG003'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'ZM4DG003'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [15], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003'};

MATCH (a:Program {name: 'ZM4DG003'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'ZM4DG003'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [14], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003'};

MATCH (a:Program {name: 'ZM4DG003'}), (b:Paragraph {name: 'LINKAGE', programName: 'ZM4DG003'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [58], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003'};

MATCH (a:Program {name: 'ZM4DG003'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM4DG003'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [21], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_ZM4DG003'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM4DG003', name: 'ZM4DG003_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM4DG003'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [36], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM4DG003'}), (b:Copybook {name: 'ZAGPOCTA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [45], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM4DG003'}), (b:Copybook {name: 'ZCTLPROC'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [39], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM4DG003'}), (b:Copybook {name: 'ZCUENTA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [51], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM4DG003'}), (b:Copybook {name: 'ZMDINBMV'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [48], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM4DG003'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [42], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003'};

MATCH (a:Program {name: 'ZM4DG003'}), (b:Functionality {name: 'FUNCTIONALITY_ZM4DG003'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003'};

MATCH (a:Program {name: 'ZM4DG003'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [36], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003'};

MATCH (a:Program {name: 'ZM4DG003'}), (b:Copybook {name: 'ZAGPOCTA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [45], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003'};

MATCH (a:Program {name: 'ZM4DG003'}), (b:Copybook {name: 'ZCTLPROC'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [39], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003'};

MATCH (a:Program {name: 'ZM4DG003'}), (b:Copybook {name: 'ZCUENTA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [51], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003'};

MATCH (a:Program {name: 'ZM4DG003'}), (b:Copybook {name: 'ZMDINBMV'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [48], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003'};

MATCH (a:Program {name: 'ZM4DG003'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [42], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003'};

MATCH (a:Program {name: 'ZM4DG003'}), (b:DBTable {name: 'AGPOCTA'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [249, 250, 251, 252, 253, 254, 255], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003'};

MATCH (a:Program {name: 'ZM4DG003'}), (b:DBTable {name: 'CTLPROC'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [146, 147, 148, 149, 150, 151], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003'};

MATCH (a:Program {name: 'ZM4DG003'}), (b:DBTable {name: 'MDINBMV'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [185, 186, 187], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003'};

MATCH (a:Program {name: 'ZM4DG003'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [289, 290, 291, 292, 293, 294, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM4DG003', name: 'ZM4DG003_PROCESSING'}), (b:Paragraph {name: '9800-ABORTA', programName: 'ZM4DG003'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [364], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003'};

MATCH (a:Program {name: 'ZM4DG003'}), (b:DBTable {name: 'AGPOCTA'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [249, 250, 251, 252, 253, 254, 255, 272, 273, 274, 275, 276], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003'};

MATCH (a:Program {name: 'ZM4DG003'}), (b:DBTable {name: 'CTLPROC'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [146, 147, 148, 149, 150, 151, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 225, 226, 227, 228, 229, 230, 231, 232, 233, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003'};

MATCH (a:Program {name: 'ZM4DG003'}), (b:DBTable {name: 'CUENTA'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [336, 337, 338, 339, 340], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003'};

MATCH (a:Program {name: 'ZM4DG003'}), (b:DBTable {name: 'MDINBMV'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [185, 186, 187], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003'};

MATCH (a:Program {name: 'ZM4DG003'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [167, 168, 169, 170, 171, 289, 290, 291, 292, 293, 294], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM4DG003'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [36], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM4DG003'}), (b:Copybook {name: 'ZAGPOCTA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [45], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM4DG003'}), (b:Copybook {name: 'ZCTLPROC'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [39], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM4DG003'}), (b:Copybook {name: 'ZCUENTA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [51], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM4DG003'}), (b:Copybook {name: 'ZMDINBMV'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [48], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM4DG003'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM4DG003.cbl', evidenceLines: [42], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223531Z-zm4dg003'};

