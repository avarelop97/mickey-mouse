// ============================================================================
// REMEDIATION: Rename Program<->BmsMap communication relations to descriptive names
// ============================================================================
// Objetivo:
// - Program-[:SENDS]->BmsMap      => Program-[:PRESENTS_MAP]->BmsMap
// - BmsMap-[:SENDS]->Program      => BmsMap-[:SUBMITS_INPUT_TO]->Program
// - Preservar evidencia y metadata de gobernanza
// ============================================================================

// 1) Program -> BmsMap
MATCH (p:Program)-[old:SENDS]->(m:BmsMap)
MERGE (p)-[new:PRESENTS_MAP]->(m)
SET new += properties(old)
SET new.description = coalesce(new.description, 'El programa presenta el mapa BMS al terminal.'),
    new.usagePurpose = coalesce(new.usagePurpose, 'Comunicacion de salida UI: programa hacia pantalla.')
DELETE old;

// 2) BmsMap -> Program
MATCH (m:BmsMap)-[old:SENDS]->(p:Program)
MERGE (m)-[new:SUBMITS_INPUT_TO]->(p)
SET new += properties(old)
SET new.description = coalesce(new.description, 'La pantalla BMS entrega al programa los datos capturados.'),
    new.usagePurpose = coalesce(new.usagePurpose, 'Comunicacion de entrada UI: pantalla hacia programa.')
DELETE old;

// 3) Compatibilidad retroactiva adicional (si quedaran relaciones antiguas)
MATCH (p:Program)-[old:SENDS_MAP]->(m:BmsMap)
MERGE (p)-[new:PRESENTS_MAP]->(m)
SET new += properties(old)
SET new.description = coalesce(new.description, 'El programa presenta el mapa BMS al terminal.'),
    new.usagePurpose = coalesce(new.usagePurpose, 'Comunicacion de salida UI: programa hacia pantalla.')
DELETE old;

MATCH (p:Program)-[old:RECEIVES_MAP]->(m:BmsMap)
MERGE (m)-[new:SUBMITS_INPUT_TO]->(p)
SET new += properties(old)
SET new.description = coalesce(new.description, 'La pantalla BMS entrega al programa los datos capturados.'),
    new.usagePurpose = coalesce(new.usagePurpose, 'Comunicacion de entrada UI: pantalla hacia programa.')
DELETE old;

RETURN 'BMS_RELATION_RENAME_DESCRIPTIVE' AS remediation, count(*) AS operationsCompleted;
