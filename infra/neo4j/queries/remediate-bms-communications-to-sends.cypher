// ============================================================================
// REMEDIATION: BMS communication relations to emitter-driven SENDS pattern
// ============================================================================
// Objetivo:
// - Reemplazar Program-[:SENDS_MAP]->BmsMap por Program-[:SENDS]->BmsMap
// - Reemplazar Program-[:RECEIVES_MAP]->BmsMap por BmsMap-[:SENDS]->Program
// - Preservar evidencia y metadata de gobernanza en las nuevas relaciones
// ============================================================================

// 1) SENDS_MAP -> SENDS (mismo sentido)
MATCH (p:Program)-[old:SENDS_MAP]->(m:BmsMap)
MERGE (p)-[new:SENDS]->(m)
SET new += properties(old)
SET new.description = coalesce(new.description, 'El emisor programa envia contenido de pantalla BMS al terminal.'),
    new.usagePurpose = coalesce(new.usagePurpose, 'Comunicacion emisor->receptor con patron SENDS.')
DELETE old;

// 2) RECEIVES_MAP -> SENDS invertido (pantalla emite al programa)
MATCH (p:Program)-[old:RECEIVES_MAP]->(m:BmsMap)
MERGE (m)-[new:SENDS]->(p)
SET new += properties(old)
SET new.description = 'La pantalla BMS envia datos capturados al programa (normalizado desde RECEIVES_MAP).',
    new.usagePurpose = 'Modelar comunicacion desde el emisor para lectura bidireccional consistente.'
DELETE old;

// 3) Resumen post-remediacion
RETURN
  'BMS_SENDS_REMEDIATION' AS remediation,
  count(*) AS operationsCompleted;
