# BMS Quality Review Checklist (2026-06-25)

## Query Cypher oficial (tabla de elementos que requieren revision)

```cypher
MATCH (m:BmsMap)-[:HAS_SUPERVISION_RUN]->(sr:AiSupervisionRun)
WHERE m.name = 'ZMG0103::ZMG0103'
  AND sr.program IN ['ZM2OGF33','ZM2OJ102','ZM2OJ103']
WITH m, sr
ORDER BY datetime(sr.runAt) DESC
WITH m, sr.program AS program, collect(sr)[0] AS latestSr
OPTIONAL MATCH (latestSr)-[:HAS_FINDING]->(f:AiSupervisionFinding)
WITH m, program, latestSr, f
WHERE f IS NOT NULL
  AND coalesce(f.reviewStatus, 'pending_human_review') = 'pending_human_review'
MERGE (task:BmsQualityReviewTask {name: latestSr.name + '::' + f.code})
SET task.mapKey = m.name,
    task.program = program,
    task.findingCode = f.code,
    task.severity = f.severity,
    task.findingMessage = f.message,
    task.sourceRunId = latestSr.name,
    task.reviewStatus = 'pending_human_review',
    task.reviewSource = 'quality-checklist',
    task.lastDetectedAt = latestSr.runAt,
    task.updatedAt = toString(datetime()),
    task.checklistStatus = 'open'
MERGE (latestSr)-[:HAS_REVIEW_TASK]->(task)
RETURN task.mapKey AS mapKey,
       task.program AS program,
       task.findingCode AS findingCode,
       task.severity AS severity,
       task.findingMessage AS findingMessage,
       task.reviewStatus AS reviewStatus,
       task.checklistStatus AS checklistStatus,
       coalesce(task.remediationStatus,'') AS remediationStatus,
       coalesce(task.remediationAction,'') AS remediationAction,
       coalesce(task.nextStep,'') AS nextStep,
       task.sourceRunId AS sourceRunId
ORDER BY mapKey, program, findingCode;
```

## Resultados extraidos (estado actual)

| mapKey | program | findingCode | severity | reviewStatus | checklistStatus | remediationStatus |
|---|---|---|---|---|---|---|
| ZMG0103::ZMG0103 | ZM2OJ102 | NO_NAVIGATION_DESTINATIONS | medium | pending_human_review | open | applied_partial |
| ZMG0103::ZMG0103 | ZM2OJ103 | NO_NAVIGATION_DESTINATIONS | medium | pending_human_review | open | applied_partial |

## Checklist de revision

- [ ] ZMG0103::ZMG0103 / ZM2OJ102 / NO_NAVIGATION_DESTINATIONS
  - Remediacion aplicada: parser mejorado (PERFORM chain + marcador comentado numerico + targetKind parcial).
  - Pendiente: resolver destinos via INCLUDE externo (ej. ZMWSC009) para elevar TO_MAP/TO_PROGRAM explicito.

- [ ] ZMG0103::ZMG0103 / ZM2OJ103 / NO_NAVIGATION_DESTINATIONS
  - Remediacion aplicada: parser mejorado (PERFORM chain + marcador comentado numerico + targetKind parcial).
  - Pendiente: resolver destinos via INCLUDE externo (ej. ZMWSC009) para elevar TO_MAP/TO_PROGRAM explicito.

## Remediaciones aplicadas en el sistema

1. Se corrigio falso positivo de STATE_FIELDS_READ_ONLY en supervision (normalizacion de tipo de relacion con comillas).
2. Se cerraron hallazgos historicos STATE_FIELDS_READ_ONLY como resolved_by_fix en AiSupervisionFinding.
3. Se reconstruyo el checklist desde el ultimo run por programa, eliminando ruido historico.
4. Se aplico metadata de remediacion a hallazgos vigentes NO_NAVIGATION_DESTINATIONS.
