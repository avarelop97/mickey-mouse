// ============================================================================
// REMEDIATION: Normalize terminology for BMS communication relations
// ============================================================================
// Objetivo:
// - Estandarizar description y usagePurpose en:
//   - (:Program)-[:PRESENTS_MAP]->(:BmsMap)
//   - (:BmsMap)-[:SUBMITS_INPUT_TO]->(:Program)
// - Mantener evidencia y metadatos existentes
// ============================================================================

MATCH (:Program)-[r:PRESENTS_MAP]->(:BmsMap)
SET r.description = 'El programa presenta el mapa BMS al operador mediante CICS SEND.',
    r.usagePurpose = 'Comunicacion de salida UI: programa hacia pantalla para presentar estado, mensajes y campos.';

MATCH (:BmsMap)-[r:SUBMITS_INPUT_TO]->(:Program)
SET r.description = 'La pantalla BMS entrega al programa los datos capturados mediante CICS RECEIVE.',
    r.usagePurpose = 'Comunicacion de entrada UI: pantalla hacia programa para validacion y procesamiento.';

RETURN 'BMS_COMMUNICATION_TERMINOLOGY_NORMALIZED' AS remediation,
       count(*) AS operationsCompleted;
