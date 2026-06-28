// ============================================================================
// PROPOSAL (PILOT): Bootstrap process abstraction for ZM2OHA18
// ============================================================================
// Nota:
// - Query propuesta para evaluacion de modelo vNext.
// - No ejecutar en commit productivo sin activar contrato ontologico.
// ============================================================================

WITH 'ZM2OHA18' AS programName
MATCH (prog:Program {name: programName})

MERGE (flow:ProcessFlow {programName: programName, name: 'FLUJO_TRANSACCIONAL_ZA18'})
ON CREATE SET
  flow.description = 'Flujo operativo transaccional de ZA18 para traspasos internos en garantia.',
  flow.objective = 'Coordinar estados de captura, validacion, confirmacion y ejecucion de la operacion.',
  flow.layer = 'process',
  flow.nodeType = 'ProcessFlow',
  flow.viewTag = 'process-flow',
  flow.ingestion = 'manual-proposal',
  flow.reviewStatus = 'pending_human_review',
  flow.reviewRequired = true,
  flow.reviewSource = 'auto-ingestion',
  flow.sourceFile = 'src/ZM2OHA18.cbl'

MERGE (prog)-[:ORCHESTRATES_PROCESS {
  description: 'El programa orquesta el flujo operativo transaccional de ZA18.',
  evidenceFile: 'src/ZM2OHA18.cbl',
  evidenceLines: [527]
}]->(flow)

WITH programName, flow
UNWIND [
  {
    stateName: 'ESTADO_0_INICIAL',
    paragraphName: '0000-CONTROL',
    line: 527,
    stateDesc: 'Estado inicial de control y enrutamiento segun WC-ESTADO.'
  },
  {
    stateName: 'ESTADO_1_CAPTURA_VALIDACION',
    paragraphName: '2000-ESTADO-01',
    line: 716,
    stateDesc: 'Estado de captura de datos, validacion y preparacion de confirmacion.'
  },
  {
    stateName: 'ESTADO_2_CONFIRMACION',
    paragraphName: '3000-ESTADO-02',
    line: 2059,
    stateDesc: 'Estado de confirmacion y disparo de continuidad operativa.'
  }
] AS s
MERGE (state:ProcessState {programName: programName, flowName: flow.name, name: s.stateName})
ON CREATE SET
  state.description = s.stateDesc,
  state.objective = 'Representar estado operativo dentro del flujo transaccional ZA18.',
  state.layer = 'process',
  state.nodeType = 'ProcessState',
  state.viewTag = 'process-state',
  state.ingestion = 'manual-proposal',
  state.reviewStatus = 'pending_human_review',
  state.reviewRequired = true,
  state.reviewSource = 'auto-ingestion',
  state.sourceFile = 'src/ZM2OHA18.cbl'

MERGE (flow)-[:HAS_STATE {
  description: 'El flujo operativo contiene este estado.',
  evidenceFile: 'src/ZM2OHA18.cbl',
  evidenceLines: [s.line]
}]->(state)

WITH programName, state, s
MATCH (par:Paragraph {programName: programName, name: s.paragraphName})
MERGE (state)-[:STATE_ENTRY_PARAGRAPH {
  description: 'Paragraph controlador/entry point del estado operativo.',
  evidenceFile: 'src/ZM2OHA18.cbl',
  evidenceLines: [s.line]
}]->(par)

WITH programName
MATCH (s0:ProcessState {programName: programName, name: 'ESTADO_0_INICIAL'})
MATCH (s1:ProcessState {programName: programName, name: 'ESTADO_1_CAPTURA_VALIDACION'})
MATCH (s2:ProcessState {programName: programName, name: 'ESTADO_2_CONFIRMACION'})

MERGE (s0)-[:TRANSITIONS_TO {
  triggerType: 'STATE_VARIABLE',
  triggerValue: 'WC-ESTADO=1',
  transitionCondition: 'Branch WHEN 1',
  evidenceFile: 'src/ZM2OHA18.cbl',
  evidenceLines: [554, 556],
  description: 'Transicion a estado de captura/validacion cuando WC-ESTADO es 1.'
}]->(s1)

MERGE (s0)-[:TRANSITIONS_TO {
  triggerType: 'STATE_VARIABLE',
  triggerValue: 'WC-ESTADO=2',
  transitionCondition: 'Branch WHEN 2',
  evidenceFile: 'src/ZM2OHA18.cbl',
  evidenceLines: [558, 559],
  description: 'Transicion a estado de confirmacion cuando WC-ESTADO es 2.'
}]->(s2)

MERGE (s1)-[:TRANSITIONS_TO {
  triggerType: 'AID_KEY',
  triggerValue: 'PF4',
  transitionCondition: 'Continua proceso',
  evidenceFile: 'src/ZM2OHA18.cbl',
  evidenceLines: [754, 756],
  description: 'Transicion a estado de confirmacion/continuacion al recibir PF4.'
}]->(s2)

RETURN 'PROCESS_ABSTRACTION_BOOTSTRAP_PROPOSED' AS proposal,
       programName,
       1 AS readyForPilot;
