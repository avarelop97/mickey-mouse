---
applyTo: "src/**/*.cbl,cpy/**/*.cpy,infra/neo4j/**/*.cypher,docs/**/*.md"
---

# Instrucciones de agente COBOL -> Neo4j

## Contrato comun minimo (aplica a todos los agentes)

1. Enfoque obligatorio: `evidence-first`.
2. Si no hay evidencia, no hay hecho.
3. No inventar labels, relaciones ni metadata fuera de contrato.

## Fuentes de verdad y precedencia

1. `docs/graph-ontology.md`
2. `docs/node-review-state-machine.md`
3. `docs/programa-ingestion-methodology.md`
4. `docs/agentic-cobol-neo4j-blueprint.md`

Si hay conflicto, prevalece este archivo y luego el orden anterior.

## Politica comun de identidad y gobernanza

1. Labels permitidas: `Program`, `Paragraph`, `Copybook`, `DBTable`, `ParamType`, `ExternalRoutine`, `OutputFile`.
2. Claves naturales:
	- Compartidas: `name`
	- `Paragraph`: `programName` + `name`
3. Estados de revision validos: `pending_human_review`, `reviewed_human`, `rejected_human`.
4. Default para contenido generado automaticamente: `reviewStatus = pending_human_review`, `reviewSource = auto-ingestion`.

## Regla comun para Cypher seguro

Para cualquier generacion/correccion Cypher, usar:
- `.github/skills/cypher-safe-query-generator/SKILL.md`
