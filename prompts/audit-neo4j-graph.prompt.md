---
mode: agent
description: Audita calidad y gobernanza del grafo Neo4j COBOL
---

Objetivo: ejecutar auditoria integral de calidad sobre el grafo de conocimiento COBOL.

Chequeos minimos:
1. Etiquetas fuera de ontologia.
2. Tipos de relacion fuera de ontologia.
3. Pares origen-destino invalidos.
4. Relaciones criticas sin `evidenceFile`/`evidenceLines`.
5. Duplicados por clave natural (`Copybook`, `DBTable`, `ParamType`, `ExternalRoutine`, `OutputFile`, `Program`, `Paragraph`).
6. Nodos huerfanos.
7. Inconsistencias de `reviewStatus`.

Salida obligatoria:

## Findings (orden severidad)
- severidad
- tipo
- evidencia
- impacto
- recomendacion

## Cypher Fix Pack
- consultas de normalizacion no destructiva
- estrategia de merge segura para duplicados

## Governance Status
- conteo por estado de revision
- backlog en `pending_agent_review`

## Decision
- `PASS` o `FAIL` con justificacion
