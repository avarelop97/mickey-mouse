// Objetivo: insertar un nodo nuevo para revision manual y conectarlo al flujo real de ZM2OHA18.
// Evidencia COBOL:
// - Declaracion rutina: src/ZM2OHA18.cbl linea 92 (RUT-ZM9CRACP)
// - Invocacion CICS LINK: src/ZM2OHA18.cbl linea 2324

MERGE (r:ExternalRoutine {name: 'ZM9CRACP'})
SET r += {
  evidenceFile: 'src/ZM2OHA18.cbl',
  evidenceLines: [92, 2324],
  ingestion: 'auto',
  layer: 'integration',
  name: 'ZM9CRACP',
  nodeType: 'external-service-call',
  reviewRequired: true,
  reviewSource: 'auto-ingestion',
  reviewStatus: 'pending_human_review',
  runId: 'manual-seed-20260622-zm2oha18-zm9cracp',
  sourceFile: 'src/ZM2OHA18.cbl',
  viewTag: 'integration'
};

MERGE (p:Program {name: 'ZM2OHA18'})
SET p += {
  ingestion: 'auto',
  layer: 'program',
  name: 'ZM2OHA18',
  nodeType: 'program',
  reviewRequired: true,
  reviewSource: 'auto-ingestion',
  reviewStatus: 'pending_human_review',
  runId: 'manual-seed-20260622-zm2oha18-zm9cracp',
  sourceFile: 'src/ZM2OHA18.cbl',
  viewTag: 'program'
};

MATCH (p:Program {name: 'ZM2OHA18'}), (r:ExternalRoutine {name: 'ZM9CRACP'})
MERGE (p)-[cr:CALLS_ROUTINE]->(r)
SET cr += {
  evidenceFile: 'src/ZM2OHA18.cbl',
  evidenceLines: [2324],
  reviewRequired: true,
  reviewSource: 'auto-ingestion',
  reviewStatus: 'pending_human_review',
  runId: 'manual-seed-20260622-zm2oha18-zm9cracp'
};

MATCH (par:Paragraph {programName: 'ZM2OHA18', name: '2301-ACTUALIZA-CP'}), (r:ExternalRoutine {name: 'ZM9CRACP'})
MERGE (par)-[dx:DEPENDS_ON_EXTERNAL]->(r)
SET dx += {
  evidenceFile: 'src/ZM2OHA18.cbl',
  evidenceLines: [2324],
  reviewRequired: true,
  reviewSource: 'auto-ingestion',
  reviewStatus: 'pending_human_review',
  runId: 'manual-seed-20260622-zm2oha18-zm9cracp'
};

// Consulta sugerida de verificacion post-write:
// MATCH (n)
// WHERE n.reviewStatus = 'pending_human_review'
//   AND (n:ExternalRoutine OR n:Program)
//   AND n.runId = 'manual-seed-20260622-zm2oha18-zm9cracp'
// RETURN labels(n) AS labels, n.name AS name, n.reviewStatus AS reviewStatus, n.sourceFile AS sourceFile;
