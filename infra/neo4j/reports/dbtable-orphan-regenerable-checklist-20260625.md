# Checklist de reproceso seguro DBTable

Fecha: 2026-06-25
Objetivo: reprocesar los 22 casos `orphan_regenerable` detectados en la auditoria parcial sin perder informacion funcional, tecnica ni de trazabilidad.

Referencia base: `infra/neo4j/reports/dbtable-partial-audit-20260625.md`

## Alcance del lote objetivo

Casos incluidos en esta checklist:

- `MATGAPR`
- `MCAPISR`
- `MCCARAT`
- `MDDCART`
- `MDINBMV`
- `MENSAJE`
- `MENTEXT`
- `MOVFAX`
- `MOVIND`
- `MSGERALT`
- `MTZDEM`
- `MTZINV`
- `ZMDTATE`
- `ZMDTCAR`
- `ZMDTCAX`
- `ZMDTCTA`
- `ZMDTCTH`
- `ZMDTCTL`
- `ZMDTOPE`
- `ZMDTOPS`
- `ZMDTOPT`
- `ZMDTSEH`

## Fase 0. Preparacion

- [ ] Confirmar que el alcance sigue siendo exactamente de 22 casos `orphan_regenerable`.
- [ ] Congelar la lista de tablas y no mezclar en este proceso el caso `MDDCST` ni los `orphan_no_active_src_match`.
- [ ] Crear un identificador de migracion para esta campana de reproceso.
- [ ] Definir tamano de lote pequeno para ejecucion controlada: recomendado 5 a 7 tablas por lote.
- [ ] Definir carpeta de evidencias del proceso dentro de `infra/neo4j/reports/`.

## Fase 1. Respaldo previo obligatorio

- [ ] Ejecutar snapshot completo del grafo con `infra/neo4j/scripts/export_live_graph.py`.
- [ ] Guardar nombre exacto del snapshot generado.
- [ ] Generar un respaldo logico del subconjunto afectado: nodos `DBTable` legacy de estos 22 casos y cualquier relacion incidente existente.
- [ ] Exportar una tabla de control con el estado actual de cada DBTable legacy: `name`, `qualifiedName`, `runId`, `sourceFile`, numero de relaciones incidentes.
- [ ] Verificar que el mecanismo de restauracion `infra/neo4j/scripts/restore_from_snapshot.sh` sigue operativo antes de tocar la base.

## Fase 2. Manifiesto de regeneracion

- [ ] Crear una fila por tabla con estas columnas minimas:
- [ ] `tableName`
- [ ] `dclMember`
- [ ] `dclPath`
- [ ] `qualifiedNameEsperado`
- [ ] `programaCandidatoPrincipal`
- [ ] `programasCandidatosSecundarios`
- [ ] `clasificacionAudit`
- [ ] `estadoAntes`
- [ ] `estadoDespues`
- [ ] `runIdReproceso`

- [ ] Asignar un programa candidato principal por cada tabla.
- [ ] Confirmar que el programa candidato contiene `EXEC SQL INCLUDE` del DCL esperado.
- [ ] Confirmar que el fichero `dcl/*.dcl` correspondiente existe en el repositorio.

## Fase 3. Validacion en dry-run antes de escribir

Para cada tabla del lote:

- [ ] Ejecutar `python3 infra/neo4j/scripts/e2e_ingest_pipeline.py --programs <programa> --mode discovery`.
- [ ] Abrir el `writepayload` generado para ese run.
- [ ] Verificar que el `DBTable` aparece con `name` correcto.
- [ ] Verificar que `qualifiedName` coincide con el valor esperado del DCL.
- [ ] Verificar que `dclMember` esta presente.
- [ ] Verificar que `dclPath` esta presente.
- [ ] Verificar que `declaredColumnCount` esta presente.
- [ ] Verificar que `declaredColumns` no esta vacio.
- [ ] Verificar que `declaredColumnCount = size(declaredColumns)`.
- [ ] Marcar el caso como `dry-run valido` o `bloqueado`.

Regla:

- [ ] No pasar un caso a commit si el dry-run no genera el DBTable completo segun la nueva especificacion.

## Fase 4. Commit por lotes pequenos

- [ ] Construir el primer lote con un maximo de 5 a 7 tablas.
- [ ] Ejecutar el pipeline en modo `commit` solo para los programas del lote.
- [ ] Registrar `runId` de cada ejecucion.
- [ ] Guardar el `final-report.json`, `precheck.json` y `writepayload.json` de cada run.
- [ ] No limpiar nodos legacy en esta fase.

## Fase 5. Validacion post-commit por lote

Para cada tabla del lote reprocesado:

- [ ] Verificar que existe un `DBTable` en Neo4j con `name` correcto.
- [ ] Verificar que tiene `qualifiedName`, `dclMember`, `dclPath`, `declaredColumnCount` y `declaredColumns`.
- [ ] Verificar que `declaredColumnCount = size(declaredColumns)`.
- [ ] Verificar que la tabla sigue teniendo o recupera relaciones `READS_TABLE` o `UPDATES_TABLE` con evidencia.
- [ ] Verificar que el nuevo nodo tiene `runId` y `sourceFile` trazables.
- [ ] Confirmar que no se ha reducido el numero de relaciones SQL validas respecto al antes.
- [ ] Registrar evidencia de validacion en el manifiesto.

## Fase 6. Coexistencia controlada

- [ ] Mantener temporalmente el nodo legacy y el nodo regenerado mientras se valida el lote.
- [ ] Comparar propiedades del nodo legacy contra el nodo regenerado.
- [ ] Confirmar que el nodo legacy no aporta relaciones o propiedades utiles ausentes en el nuevo.
- [ ] Marcar cada caso como `listo para limpieza` solo tras esa comparacion.

Regla:

- [ ] Nunca borrar primero y reprocesar despues.
- [ ] Siempre regenerar primero, validar despues y limpiar al final.

## Fase 7. Limpieza de legacy huerfano

- [ ] Limpiar solo nodos legacy que hayan sido sustituidos por un DBTable regenerado y validado.
- [ ] Guardar una tabla de correspondencia `legacy -> nuevo -> runId` antes de borrar.
- [ ] Confirmar que el nodo legacy a eliminar sigue sin relaciones utiles.
- [ ] Ejecutar borrado selectivo, nunca masivo sin lista cerrada.
- [ ] Tomar snapshot despues de cada lote limpio.

## Fase 8. Cierre del lote

- [ ] Actualizar el informe de auditoria con estado final por tabla.
- [ ] Recalcular conteos globales de `DBTable` con metadata DCL completa.
- [ ] Recalcular el numero de parciales restantes.
- [ ] Confirmar que el lote no introdujo `DBTable` nuevos en estado parcial.
- [ ] Archivar los artefactos de ejecucion y validacion del lote.

## Consultas de control recomendadas

### Estado de cobertura DCL

```cypher
MATCH (t:DBTable)
RETURN count(t) AS totalTables,
       count(CASE WHEN t.dclMember IS NOT NULL THEN 1 END) AS withDclMember,
       count(CASE WHEN t.declaredColumnCount IS NOT NULL THEN 1 END) AS withDeclaredColumnCount,
       count(CASE WHEN t.declaredColumns IS NOT NULL AND size(t.declaredColumns) > 0 THEN 1 END) AS withDeclaredColumns;
```

### Parciales restantes

```cypher
MATCH (t:DBTable)
WHERE t.qualifiedName IS NOT NULL
  AND (t.dclMember IS NULL OR t.dclPath IS NULL OR t.declaredColumnCount IS NULL OR t.declaredColumns IS NULL OR size(t.declaredColumns) = 0)
RETURN count(t) AS partialRemaining;
```

### Relaciones SQL con evidencia

```cypher
MATCH (:Program)-[r:READS_TABLE|UPDATES_TABLE]->(t:DBTable)
RETURN count(r) AS totalLinks,
       count(CASE WHEN r.evidenceFile IS NOT NULL AND r.evidenceLines IS NOT NULL AND size(r.evidenceLines) > 0 THEN 1 END) AS linksWithEvidence;
```

## Orden recomendado de ejecucion

Primer lote sugerido por visibilidad y valor:

- [ ] `MDDCART`
- [ ] `MATGAPR`
- [ ] `MCAPISR`
- [ ] `MCCARAT`
- [ ] `ZMDTCTA`

Segundo lote sugerido:

- [ ] `ZMDTCAR`
- [ ] `ZMDTCAX`
- [ ] `ZMDTOPS`
- [ ] `MTZDEM`
- [ ] `MTZINV`

Tercer lote sugerido:

- [ ] `MOVFAX`
- [ ] `MOVIND`
- [ ] `ZMDTCTL`
- [ ] `ZMDTCTH`
- [ ] `ZMDTOPE`

Cuarto lote sugerido:

- [ ] `MENSAJE`
- [ ] `MENTEXT`
- [ ] `MDINBMV`
- [ ] `MSGERALT`
- [ ] `ZMDTOPT`
- [ ] `ZMDTSEH`
- [ ] `ZMDTATE`

## Criterio de exito del proceso

- [ ] Ningun nodo validado pierde trazabilidad respecto al estado anterior.
- [ ] Cada tabla reprocesada termina con bloque DCL completo.
- [ ] Cada limpieza de legacy queda respaldada por snapshot y manifiesto.
- [ ] El numero de `partialRemaining` disminuye de forma monotona tras cada lote.
- [ ] No aparece deuda nueva de `DBTable` parciales como efecto lateral del reproceso.