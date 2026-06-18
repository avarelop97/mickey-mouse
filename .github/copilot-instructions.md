# Copilot Instructions - zm_cbop

Este repositorio implementa una metodologia de documentacion COBOL hacia Neo4j con gobernanza estricta.

## Objetivo operativo

- Analizar programas COBOL de `src/`.
- Extraer evidencia verificable (archivo + lineas).
- Construir/actualizar el grafo en Neo4j sin invenciones ni duplicados.
- Respetar la ontologia y el flujo de revision humana.

## Fuentes de verdad

1. `docs/graph-ontology.md`
2. `docs/node-review-state-machine.md`
3. `docs/programa-ingestion-methodology.md`
4. `docs/agentic-cobol-neo4j-blueprint.md`

Si hay conflicto, priorizar este orden.

## Reglas duras

1. No inventar nodos, relaciones ni metadata no respaldada por evidencia.
2. No crear etiquetas ni relaciones fuera de la ontologia permitida.
3. Exigir `evidenceFile` y `evidenceLines` en relaciones criticas de datos/dependencias.
4. Priorizar `MERGE` para entidades compartidas (`Copybook`, `DBTable`, `ParamType`, `ExternalRoutine`).
5. Mantener trazabilidad con `runId`, `reviewStatus`, `reviewSource`.
6. Todo resultado automatico debe quedar en `pending_human_review` con `reviewSource = auto-ingestion` hasta aprobacion humana.
7. Todos los campos definidos por tipologia de nodo son obligatorios; si falta al menos uno, el nodo debe marcarse para revision y notificarse.
8. La clave natural operativa para `Paragraph` es compuesta (`programName` + `name`); para el resto de tipologias es `name`.
9. En COBOL de formato fijo, toda extraccion lexical debe normalizar columnas de secuencia (1-6) y no usar columnas 73-80 para detectar labels/parrafos.
10. Si hay `PERFORM` targets relevantes no resueltos a `Paragraph`, bloquear commit automatico y exigir remediacion o confirmacion humana.

## Convenciones

- Consultas: preferencia por ejecucion en consola Neo4j Browser/cypher-shell.
- Documentacion: lenguaje claro, secciones cortas, evidencia explicita.
- Cambios incrementales: primero `dry-run`, luego `commit`.

## Arquitectura operativa actual

El flujo vigente se ejecuta con orquestacion y especialistas:

1. `cobol-neo4j-orchestrator` (orquestador)
2. `cobol-evidence-extractor` (extraccion)
3. `neo4j-ontology-auditor` (auditoria determinista pre/post)
4. `cypher-expert` (escritura idempotente autorizada)

Secuencia operativa actual:

1. Orquestador -> Evidence Extractor
2. Orquestador enriquece la propuesta a `WritePayload`
3. Orquestador -> Auditor (payload-check)
4. Orquestador -> Cypher Expert (solo si payload-check valida)
5. Orquestador -> Auditor (post-write-check)
6. Orquestador -> Decision final

## Skill obligatoria para Cypher

Cuando el usuario solicite generar o corregir queries Cypher, cargar y seguir siempre:

- `.github/skills/cypher-safe-query-generator/SKILL.md`

Objetivo de la skill:

- Evitar pitfalls comunes (scope en `UNION`, type errors, merges ambiguos, omisiones de gobernanza/evidencia).
- Estandarizar salida tabular para auditorias.
- Mantener compatibilidad con ontologia y reglas del repositorio.

## Definicion minima de entrega por programa

- Inventario de nodos y relaciones con evidencia.
- Script Cypher idempotente de carga.
- Queries de validacion y auditoria.
- Resumen de riesgos/incertidumbres.

## Criterios de bloqueo

Detener la ejecucion y pedir confirmacion humana si:

- Falta evidencia para relaciones criticas.
- Se detecta violacion de ontologia.
- Se detectan posibles duplicados no resolubles por clave natural.
- Existen inconsistencias de estado de revision.
