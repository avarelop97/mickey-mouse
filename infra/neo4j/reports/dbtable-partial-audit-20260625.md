# Auditoria parcial DBTable

Fecha: 2026-06-25
Alcance: nodos `DBTable` de Neo4j con `qualifiedName` presente pero sin bloque DCL completo (`dclMember`, `dclPath`, `declaredColumnCount`, `declaredColumns`).

## Objetivo

Determinar si estos nodos parciales representan:

- residuos legacy sin uso actual en el grafo
- casos activos que se corrigen reprocesando con el pipeline actual
- casos sin referencia activa observable en `src/`

## Resumen ejecutivo

- Total de `DBTable` en la base: 134
- Total de relaciones `Program -> DBTable` con evidencia: 502 de 502
- Total de `DBTable` parcialmente enriquecidos: 30
- `DBTable` parciales con `runId` o `sourceFile`: 0
- `DBTable` parciales con relaciones incidentes en el grafo: 1 (`MDDCST`)

Clasificacion del conjunto parcial de 30 nodos:

- `active_partial`: 1
- `orphan_regenerable`: 22
- `orphan_no_active_src_match`: 7

Interpretacion:

- El problema dominante no es de trazabilidad SQL actual, sino de deuda legacy en nodos `DBTable` viejos.
- La mayoria de los casos parciales parecen recuperables mediante reproceso con el pipeline nuevo porque existe DCL real y referencias activas en `src/`.
- Una minoria queda como nodo huerfano con DCL presente en el repositorio, pero sin referencia activa localizada en `src/`; esos casos requieren revision de alcance antes de borrado o regeneracion.

## Metodologia

1. Consultar en Neo4j los `DBTable` con `qualifiedName` presente pero sin bloque DCL completo.
2. Medir si tienen relaciones incidentes en el grafo.
3. Resolver cada tabla contra `dcl/*.dcl` usando el `DECLARE ... TABLE` del miembro DCL.
4. Buscar referencias activas `EXEC SQL INCLUDE <miembro DCL>` en `src/*.cbl`.
5. Clasificar cada nodo parcial.

## Regla de clasificacion

- `active_partial`: el nodo parcial sigue conectado a programas o relaciones del grafo.
- `orphan_regenerable`: el nodo parcial esta huerfano en Neo4j, pero existe DCL real y referencias activas en `src/`.
- `orphan_no_active_src_match`: el nodo parcial esta huerfano en Neo4j, existe DCL real, pero no se localizaron referencias activas en `src/`.

## Validacion representativa

Caso auditado: `MATGAPR`

- Nodo parcial en Neo4j: `MATGAPR`, sin `dclMember` ni `declaredColumnCount`
- DCL real localizado: `dcl/ZMATGAPR.dcl`
- Referencias activas localizadas: `src/ZM2OGJ63.cbl`, `src/ZM2OH957.cbl`, `src/ZM2OHJ90.cbl`
- Validacion de pipeline: `python3 infra/neo4j/scripts/e2e_ingest_pipeline.py --programs ZM2OGJ63 --mode discovery`
- Resultado observado en el payload: `MATGAPR` sale con `qualifiedName=MATGAPR`, `dclMember=ZMATGAPR`, `declaredColumnCount=8`

Conclusion: `MATGAPR` es un caso `orphan_regenerable`, no un problema estructural de parser en el estado actual.

## Detalle clasificado

### active_partial

- `MDDCST` -> DCL `ZMDDCST.dcl`, 4 relaciones incidentes en grafo, 73 referencias activas en `src/`

### orphan_regenerable

- `MATGAPR` -> `ZMATGAPR.dcl`, 3 referencias activas
- `MCAPISR` -> `ZMCAPISR.dcl`, 3 referencias activas
- `MCCARAT` -> `ZMCCARAT.dcl`, 3 referencias activas
- `MDDCART` -> `ZMDDCART.dcl`, 28 referencias activas
- `MDINBMV` -> `ZMDINBMV.dcl`, 1 referencia activa
- `MENSAJE` -> `ZMENSAJE.dcl`, 1 referencia activa
- `MENTEXT` -> `ZMENTEXT.dcl`, 1 referencia activa
- `MOVFAX` -> `ZMOVFAX.dcl`, 8 referencias activas
- `MOVIND` -> `ZMOVIND.dcl`, 5 referencias activas
- `MSGERALT` -> `ZMSGERAL.dcl`, 3 referencias activas
- `MTZDEM` -> `ZMTZDEM.dcl`, 19 referencias activas
- `MTZINV` -> `ZMTZINV.dcl`, 7 referencias activas
- `ZMDTATE` -> `ZMGTATE.dcl`, 1 referencia activa
- `ZMDTCAR` -> `ZMGTCAR.dcl`, 10 referencias activas
- `ZMDTCAX` -> `ZMGTCAX.dcl`, 5 referencias activas
- `ZMDTCTA` -> `ZMGTCTA.dcl`, 9 referencias activas
- `ZMDTCTH` -> `ZMGTCTH.dcl`, 4 referencias activas
- `ZMDTCTL` -> `ZMGTCTL.dcl`, 5 referencias activas
- `ZMDTOPE` -> `ZMGTOPE.dcl`, 1 referencia activa
- `ZMDTOPS` -> `ZMGTOPS.dcl`, 12 referencias activas
- `ZMDTOPT` -> `ZMGTOPT.dcl`, 2 referencias activas
- `ZMDTSEH` -> `ZMGTSEH.dcl`, 2 referencias activas

### orphan_no_active_src_match

- `MACUOPE` -> `ZMACUOPE.dcl`
- `MDDACUM` -> `ZMDDACUM.dcl`
- `MENDETA` -> `ZMENDETA.dcl`
- `MOPERCO` -> `ZMOPERCO.dcl`
- `MSDOPER` -> `ZMSDOPER.dcl`
- `ZMDTCVC` -> `ZMDTCVC.dcl`
- `ZMDTFCL` -> `ZMGTFCL.dcl`

## Lectura recomendada del backlog

Prioridad 1:

- `MDDCST` porque sigue activo en el grafo y permanece parcial.

Prioridad 2:

- los 22 `orphan_regenerable`, porque el repositorio actual ya contiene la evidencia necesaria para rehacerlos correctamente.

Prioridad 3:

- los 7 `orphan_no_active_src_match`, porque antes de regenerar o eliminar conviene confirmar si dependen de fuentes fuera de `src/`, de programas no ingeridos aun o de una semilla historica ya obsoleta.

## Conclusion operativa

La auditoria parcial confirma que la nueva especificacion de `DBTable` no esta reflejada todavia en estos 30 nodos legacy de la base, pero tambien confirma que el problema es abordable:

- 1 caso esta activo y debe corregirse con prioridad
- 22 casos parecen deuda de migracion recuperable por reproceso
- 7 casos requieren decision de alcance porque hoy no muestran uso activo local