// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260618T151348Z-cib126d-cib127d
// ============================================================================

MERGE (n:DBTable {name: 'OPECORI'})
SET n += {evidenceFile: 'src/CIB127D.cbl', evidenceLines: [425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471], ingestion: 'auto', layer: 'data-access', name: 'OPECORI', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151348Z-cib126d-cib127d', sourceFile: 'src/CIB127D.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'PARAM'})
SET n += {evidenceFile: 'src/CIB126D.cbl', evidenceLines: [390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 421, 422, 423, 424, 425, 426, 427], ingestion: 'auto', layer: 'data-access', name: 'PARAM', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151348Z-cib126d-cib127d', sourceFile: 'src/CIB126D.cbl', viewTag: 'data-access'};

MERGE (n:ExternalRoutine {name: 'ADR003'})
SET n += {evidenceFile: 'src/CIB126D.cbl', evidenceLines: [754], ingestion: 'auto', layer: 'integration', name: 'ADR003', nodeType: 'external-service-call', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151348Z-cib126d-cib127d', sourceFile: 'src/CIB126D.cbl', viewTag: 'integration'};

MERGE (n:ExternalRoutine {name: 'ADR009'})
SET n += {evidenceFile: 'src/CIB127D.cbl', evidenceLines: [623], ingestion: 'auto', layer: 'integration', name: 'ADR009', nodeType: 'external-service-call', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151348Z-cib126d-cib127d', sourceFile: 'src/CIB127D.cbl', viewTag: 'integration'};

MERGE (n:ExternalRoutine {name: 'MDB403O'})
SET n += {evidenceFile: 'src/CIB127D.cbl', evidenceLines: [622], ingestion: 'auto', layer: 'integration', name: 'MDB403O', nodeType: 'external-service-call', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151348Z-cib126d-cib127d', sourceFile: 'src/CIB127D.cbl', viewTag: 'integration'};

MERGE (n:ExternalRoutine {name: 'VTB415O'})
SET n += {evidenceFile: 'src/CIB127D.cbl', evidenceLines: [263], ingestion: 'auto', layer: 'integration', name: 'VTB415O', nodeType: 'external-service-call', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151348Z-cib126d-cib127d', sourceFile: 'src/CIB127D.cbl', viewTag: 'integration'};

MERGE (n:Paragraph {name: '999-0100-CONSTRUYE', programName: 'CIB126D'})
SET n += {evidenceFile: 'src/CIB126D.cbl', evidenceLines: [741], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-0100-CONSTRUYE', nodeType: 'process-step', programName: 'CIB126D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151348Z-cib126d-cib127d', sourceFile: 'src/CIB126D.cbl', summary: 'Orquesta una fase funcional de CIB126D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-9900-FIN', programName: 'CIB126D'})
SET n += {evidenceFile: 'src/CIB126D.cbl', evidenceLines: [762], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-9900-FIN', nodeType: 'process-step', programName: 'CIB126D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151348Z-cib126d-cib127d', sourceFile: 'src/CIB126D.cbl', summary: 'Cierra la ejecucion de CIB126D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'END-EXEC', programName: 'CIB126D'})
SET n += {evidenceFile: 'src/CIB126D.cbl', evidenceLines: [769], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'END-EXEC', nodeType: 'process-step', programName: 'CIB126D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151348Z-cib126d-cib127d', sourceFile: 'src/CIB126D.cbl', summary: 'Orquesta una fase funcional de CIB126D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'END-IF', programName: 'CIB126D'})
SET n += {evidenceFile: 'src/CIB126D.cbl', evidenceLines: [612], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'END-IF', nodeType: 'process-step', programName: 'CIB126D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151348Z-cib126d-cib127d', sourceFile: 'src/CIB126D.cbl', summary: 'Orquesta una fase funcional de CIB126D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'EXIT', programName: 'CIB126D'})
SET n += {evidenceFile: 'src/CIB126D.cbl', evidenceLines: [763], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'EXIT', nodeType: 'process-step', programName: 'CIB126D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151348Z-cib126d-cib127d', sourceFile: 'src/CIB126D.cbl', summary: 'Orquesta una fase funcional de CIB126D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'R1-01-CIA', programName: 'CIB126D'})
SET n += {evidenceFile: 'src/CIB126D.cbl', evidenceLines: [761], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'R1-01-CIA', nodeType: 'process-step', programName: 'CIB126D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151348Z-cib126d-cib127d', sourceFile: 'src/CIB126D.cbl', summary: 'Orquesta una fase funcional de CIB126D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-0100-CONSTRUYE', programName: 'CIB127D'})
SET n += {evidenceFile: 'src/CIB127D.cbl', evidenceLines: [621], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-0100-CONSTRUYE', nodeType: 'process-step', programName: 'CIB127D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151348Z-cib126d-cib127d', sourceFile: 'src/CIB127D.cbl', summary: 'Orquesta una fase funcional de CIB127D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-0100-FIN', programName: 'CIB127D'})
SET n += {evidenceFile: 'src/CIB127D.cbl', evidenceLines: [625], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-0100-FIN', nodeType: 'process-step', programName: 'CIB127D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151348Z-cib126d-cib127d', sourceFile: 'src/CIB127D.cbl', summary: 'Cierra la ejecucion de CIB127D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'END-EXEC', programName: 'CIB127D'})
SET n += {evidenceFile: 'src/CIB127D.cbl', evidenceLines: [632], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'END-EXEC', nodeType: 'process-step', programName: 'CIB127D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151348Z-cib126d-cib127d', sourceFile: 'src/CIB127D.cbl', summary: 'Orquesta una fase funcional de CIB127D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'END-IF', programName: 'CIB127D'})
SET n += {evidenceFile: 'src/CIB127D.cbl', evidenceLines: [551], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'END-IF', nodeType: 'process-step', programName: 'CIB127D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151348Z-cib126d-cib127d', sourceFile: 'src/CIB127D.cbl', summary: 'Orquesta una fase funcional de CIB127D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'EXIT', programName: 'CIB127D'})
SET n += {evidenceFile: 'src/CIB127D.cbl', evidenceLines: [626], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'EXIT', nodeType: 'process-step', programName: 'CIB127D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151348Z-cib126d-cib127d', sourceFile: 'src/CIB127D.cbl', summary: 'Orquesta una fase funcional de CIB127D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'R1-01-CIA', programName: 'CIB127D'})
SET n += {evidenceFile: 'src/CIB127D.cbl', evidenceLines: [624], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'R1-01-CIA', nodeType: 'process-step', programName: 'CIB127D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151348Z-cib126d-cib127d', sourceFile: 'src/CIB127D.cbl', summary: 'Orquesta una fase funcional de CIB127D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'W010-BAN-VENTAS', programName: 'CIB127D'})
SET n += {evidenceFile: 'src/CIB127D.cbl', evidenceLines: [338], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'W010-BAN-VENTAS', nodeType: 'process-step', programName: 'CIB127D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151348Z-cib126d-cib127d', sourceFile: 'src/CIB127D.cbl', summary: 'Orquesta una fase funcional de CIB127D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Program {name: 'CIB126D'})
SET n += {ingestion: 'auto', layer: 'program', name: 'CIB126D', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151348Z-cib126d-cib127d', sourceFile: 'src/CIB126D.cbl', viewTag: 'program'};

MERGE (n:Program {name: 'CIB127D'})
SET n += {ingestion: 'auto', layer: 'program', name: 'CIB127D', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151348Z-cib126d-cib127d', sourceFile: 'src/CIB127D.cbl', viewTag: 'program'};

MATCH (a:Program {name: 'CIB126D'}), (b:ExternalRoutine {name: 'ADR003'})
MERGE (a)-[r:CALLS_ROUTINE]->(b)
SET r += {evidenceFile: 'src/CIB126D.cbl', evidenceLines: [754], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151348Z-cib126d-cib127d'};

MATCH (a:Program {name: 'CIB126D'}), (b:ExternalRoutine {name: 'ADR009'})
MERGE (a)-[r:CALLS_ROUTINE]->(b)
SET r += {evidenceFile: 'src/CIB126D.cbl', evidenceLines: [756, 760], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151348Z-cib126d-cib127d'};

MATCH (a:Program {name: 'CIB126D'}), (b:ExternalRoutine {name: 'MDB403O'})
MERGE (a)-[r:CALLS_ROUTINE]->(b)
SET r += {evidenceFile: 'src/CIB126D.cbl', evidenceLines: [759], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151348Z-cib126d-cib127d'};

MATCH (a:Program {name: 'CIB126D'}), (b:ExternalRoutine {name: 'VTB415O'})
MERGE (a)-[r:CALLS_ROUTINE]->(b)
SET r += {evidenceFile: 'src/CIB126D.cbl', evidenceLines: [294], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151348Z-cib126d-cib127d'};

MATCH (a:Program {name: 'CIB127D'}), (b:ExternalRoutine {name: 'ADR009'})
MERGE (a)-[r:CALLS_ROUTINE]->(b)
SET r += {evidenceFile: 'src/CIB127D.cbl', evidenceLines: [623], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151348Z-cib126d-cib127d'};

MATCH (a:Program {name: 'CIB127D'}), (b:ExternalRoutine {name: 'MDB403O'})
MERGE (a)-[r:CALLS_ROUTINE]->(b)
SET r += {evidenceFile: 'src/CIB127D.cbl', evidenceLines: [622], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151348Z-cib126d-cib127d'};

MATCH (a:Program {name: 'CIB127D'}), (b:ExternalRoutine {name: 'VTB415O'})
MERGE (a)-[r:CALLS_ROUTINE]->(b)
SET r += {evidenceFile: 'src/CIB127D.cbl', evidenceLines: [263], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151348Z-cib126d-cib127d'};

MATCH (a:Program {name: 'CIB126D'}), (b:Paragraph {name: '999-0100-CONSTRUYE', programName: 'CIB126D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB126D.cbl', evidenceLines: [741], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151348Z-cib126d-cib127d'};

MATCH (a:Program {name: 'CIB126D'}), (b:Paragraph {name: '999-9900-FIN', programName: 'CIB126D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB126D.cbl', evidenceLines: [762], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151348Z-cib126d-cib127d'};

MATCH (a:Program {name: 'CIB126D'}), (b:Paragraph {name: 'END-EXEC', programName: 'CIB126D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB126D.cbl', evidenceLines: [769], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151348Z-cib126d-cib127d'};

MATCH (a:Program {name: 'CIB126D'}), (b:Paragraph {name: 'END-IF', programName: 'CIB126D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB126D.cbl', evidenceLines: [612], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151348Z-cib126d-cib127d'};

MATCH (a:Program {name: 'CIB126D'}), (b:Paragraph {name: 'EXIT', programName: 'CIB126D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB126D.cbl', evidenceLines: [763], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151348Z-cib126d-cib127d'};

MATCH (a:Program {name: 'CIB126D'}), (b:Paragraph {name: 'R1-01-CIA', programName: 'CIB126D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB126D.cbl', evidenceLines: [761], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151348Z-cib126d-cib127d'};

MATCH (a:Program {name: 'CIB127D'}), (b:Paragraph {name: '999-0100-CONSTRUYE', programName: 'CIB127D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB127D.cbl', evidenceLines: [621], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151348Z-cib126d-cib127d'};

MATCH (a:Program {name: 'CIB127D'}), (b:Paragraph {name: '999-0100-FIN', programName: 'CIB127D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB127D.cbl', evidenceLines: [625], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151348Z-cib126d-cib127d'};

MATCH (a:Program {name: 'CIB127D'}), (b:Paragraph {name: 'END-EXEC', programName: 'CIB127D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB127D.cbl', evidenceLines: [632], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151348Z-cib126d-cib127d'};

MATCH (a:Program {name: 'CIB127D'}), (b:Paragraph {name: 'END-IF', programName: 'CIB127D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB127D.cbl', evidenceLines: [551], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151348Z-cib126d-cib127d'};

MATCH (a:Program {name: 'CIB127D'}), (b:Paragraph {name: 'EXIT', programName: 'CIB127D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB127D.cbl', evidenceLines: [626], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151348Z-cib126d-cib127d'};

MATCH (a:Program {name: 'CIB127D'}), (b:Paragraph {name: 'R1-01-CIA', programName: 'CIB127D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB127D.cbl', evidenceLines: [624], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151348Z-cib126d-cib127d'};

MATCH (a:Program {name: 'CIB127D'}), (b:Paragraph {name: 'W010-BAN-VENTAS', programName: 'CIB127D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB127D.cbl', evidenceLines: [338], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151348Z-cib126d-cib127d'};

MATCH (a:Program {name: 'CIB126D'}), (b:DBTable {name: 'OPECORI'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB126D.cbl', evidenceLines: [449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151348Z-cib126d-cib127d'};

MATCH (a:Program {name: 'CIB126D'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB126D.cbl', evidenceLines: [390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 421, 422, 423, 424, 425, 426, 427], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151348Z-cib126d-cib127d'};

MATCH (a:Program {name: 'CIB127D'}), (b:DBTable {name: 'OPECORI'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB127D.cbl', evidenceLines: [425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T151348Z-cib126d-cib127d'};

