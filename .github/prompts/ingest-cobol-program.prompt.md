---
mode: agent
description: Ingesta un programa COBOL en Neo4j con ontologia y evidencia
---

Objetivo: analizar un programa COBOL y generar una propuesta de ingesta segura en Neo4j.

Entrada esperada:
- `PROGRAM_NAME` (ej. `ZM9RUS01`)
- `SOURCE_FILE` (ej. `src/ZM9RUS01.cbl`)

Pasos obligatorios:
1. Extraer inventario de `Paragraph`, `Copybook`, `DBTable`, `ParamType`, `ExternalRoutine`, `OutputFile`.
2. Identificar relaciones permitidas por ontologia.
3. Capturar evidencia (`evidenceFile`, `evidenceLines`) para relaciones criticas.
4. Construir Cypher idempotente (`MERGE`/`MERGE compuesto`).
5. Proponer queries de validacion y auditoria post-carga.
6. Marcar resultado para `pending_human_review`.

Regla de evidencia de lineas:
- `evidenceLines` debe usar linea fisica real (1-based) del archivo fuente.
- No usar la secuencia COBOL de columnas 73-80 (ej. `00028800`) como numero de linea.
- Si se detecta desfase entre ambos valores, incluirlo explicitamente en "Riesgos y gaps".

Reglas de estado en escritura (modo commit):
- No usar `reviewed_human` para datos generados por agente.
- Toda creacion/actualizacion debe incluir:
  - `reviewStatus: pending_human_review`
  - `reviewSource: auto-ingestion`
  - `runId`

Regla de clave natural para Paragraph:
- `Paragraph` debe resolverse por clave compuesta: `programName` + `name`.
- No usar `MERGE (p:Paragraph {name: ...})` sin `programName`.

Formato de salida:

## 1. Inventario
- Lista por tipo de nodo.

## 2. Evidencias
- Tabla: relacion, origen, destino, evidenceFile, evidenceLines.

## 3. Cypher de carga
- Bloque `cypher` listo para consola.
- Debe incluir `SET` explicito de `reviewStatus` y `reviewSource`.

## 4. Validaciones
- Bloques `cypher` para:
  - etiquetas invalidas
  - relaciones invalidas
  - relaciones sin evidencia
  - duplicados por tipo
  - nodos huerfanos

## 5. Riesgos y gaps
- Solo hechos verificables.
- Dudas explicitadas, sin suposiciones.
- Incluir como riesgo cualquier desalineacion entre `evidenceLines` y la numeracion COBOL de secuencia.
