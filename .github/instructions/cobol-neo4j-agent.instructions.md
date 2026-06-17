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

Regla de linea:
- `evidenceLines` siempre debe ser la linea fisica real del archivo (1-based).
- Nunca usar la secuencia COBOL de columnas 73-80 como valor de `evidenceLines`.
- Si existe secuencia COBOL y se requiere conservar, registrarla como metadata separada.
- Cualquier desfase detectado debe reportarse como hallazgo de calidad.

## 4) Idempotencia

- Usar `MERGE` para entidades compartidas.
- Usar `name` como clave natural para todas las tipologias, incluyendo `Paragraph`.
- Evitar `CREATE` ciego en tipos reutilizables.

## 5) Completitud obligatoria

- Todos los campos definidos para la tipologia del nodo son imprescindibles.
- Si un nodo queda incompleto, marcar `reviewStatus = pending_human_review`.
- Si un nodo queda incompleto, marcar `reviewSource = auto-ingestion` y notificar hallazgo.

## 6) Gobernanza

Estados validos:
- `pending_human_review`
- `reviewed_human`
- `rejected_human`

Default para ingesta automatica:
- `reviewStatus = pending_human_review`
- `reviewSource = auto-ingestion`

## 7) Resultado esperado por tarea de ingesta

- Resumen de evidencias encontradas.
- Cypher de carga idempotente.
- Queries de validacion.
- Hallazgos de calidad (duplicados, huerfanos, faltas de evidencia).
- Hallazgos de calidad de trazabilidad (desfase entre linea fisica y secuencia COBOL en evidencia).
