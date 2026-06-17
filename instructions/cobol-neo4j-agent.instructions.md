---
applyTo: "src/**/*.cbl,cpy/**/*.cpy,infra/neo4j/**/*.cypher,docs/**/*.md"
---

# Instrucciones de agente COBOL -> Neo4j

## 1) Modo de trabajo

- Trabaja por programa y por evidencia.
- Usa enfoque `evidence-first`.
- Si no hay evidencia, no hay hecho.

## 2) Ontologia permitida

Etiquetas permitidas:
- `Program`
- `Paragraph`
- `Copybook`
- `DBTable`
- `ParamType`
- `ExternalRoutine`
- `OutputFile`

No crear otras etiquetas sin actualizar contrato.

## 3) Relaciones y evidencia

Relaciones que requieren siempre evidencia:
- `USES_COPYBOOK`
- `READS_DATA`
- `UPDATES_DATA`
- `DERIVES_FROM`
- `DEPENDS_ON_EXTERNAL`
- `CALLS_ROUTINE`

Cada una debe incluir:
- `evidenceFile`
- `evidenceLines` (array de lineas)

## 4) Idempotencia

- Usar `MERGE` para entidades compartidas.
- Usar clave compuesta para `Paragraph` (`programName`, `name`).
- Evitar `CREATE` ciego en tipos reutilizables.

## 5) Gobernanza

Estados validos:
- `pending_agent_review`
- `pending_human_review`
- `reviewed_human`
- `rejected_human`

Default para ingesta automatica:
- `reviewStatus = pending_agent_review`
- `reviewSource = user-agent-request`

## 6) Resultado esperado por tarea de ingesta

- Resumen de evidencias encontradas.
- Cypher de carga idempotente.
- Queries de validacion.
- Hallazgos de calidad (duplicados, huerfanos, faltas de evidencia).
