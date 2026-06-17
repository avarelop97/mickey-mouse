---
mode: agent
description: Ejecuta batch agéntico de programas COBOL pendientes
---

Objetivo: ejecutar una corrida batch controlada para programas COBOL pendientes, en modo `dry-run` o `commit`.

Parametros:
- `MODE`: `dry-run` o `commit`
- `BATCH_SIZE`: numero de programas (recomendado 1-3)
- `PROGRAM_FILTER` (opcional): prefijo o lista

Flujo:
1. Descubrir programas pendientes (`src/` vs nodos `Program` en Neo4j).
2. Seleccionar lote por prioridad.
3. Ejecutar pipeline por programa:
   - extraccion de evidencia
   - normalizacion
   - validacion ontologica
   - (solo `commit`) escritura idempotente
   - auditoria post-carga
4. Consolidar reporte de corrida.

Reglas:
- Si `ValidationReport.valid = false`, bloquear escritura de ese programa.
- No continuar a `commit` sin evidencia en relaciones criticas.
- Mantener trazabilidad con `runId` por programa y por corrida.
- En `commit`, toda entidad creada o actualizada por agente debe quedar con:
   - `reviewStatus = pending_human_review`
   - `reviewSource = auto-ingestion`
- No se permite marcar `reviewed_human` en procesos automaticos.

Salida esperada:

## Batch Summary
- runId
- mode
- programas procesados
- programas bloqueados
- tiempo total

## Program Results
- programName
- validacion (ok/error)
- nodos creados/reutilizados
- relaciones creadas/reutilizadas
- hallazgos criticos
- reviewStatus aplicado
- reviewSource aplicado

## Next Actions
- lista de elementos en `pending_human_review`
- recomendaciones de ajuste
