# Ontologia del Grafo (Contrato Reproducible)

## Objetivo

Este documento define el contrato ontologico que debe respetar cualquier ingestion (manual o automatizada) para que el grafo sea:

- reproducible
- verificable
- auditable
- libre de elementos inventados

El contrato se deriva del seed vigente en `infra/neo4j/manual-seed-cib005d.cypher`.

## Principios de modelado

1. Solo se aceptan labels y relaciones declaradas en este documento.
2. Toda relacion semantica debe tener evidencia trazable cuando aplique.
3. No se permiten nodos huerfanos ni labels vacios.
4. La ingestion automatica no puede crear tipos nuevos sin actualizar primero este contrato.

## Tipos de nodo permitidos

La ontologia queda organizada en dos dominios complementarios:

1. **Dominio funcional COBOL (core)**: explica que hace el programa.
2. **Dominio operativo batch (PRC/JCL)**: explica como corre en ejecucion.

| Label | Clave natural | Descripcion | Capa |
|---|---|---|---|
| Program | name | Programa COBOL analizado | program |
| Paragraph | programName + name | Paso/parrafo de ejecucion en contexto de programa | execution |
| Copybook | name | Dependencia de datos o codigo | dependency |
| DBTable | name | Tabla fisica (DB2) | data-access |
| ParamType | name | Tipo logico dentro de tabla (ej. TA0/TA1) | data-access |
| ExternalRoutine | name | Rutina externa llamada | integration |
| OutputFile | name | Archivo de salida generado | output |
| Procedure | name | Procedimiento JCL (PROC) | orchestration |
| ProcStep | procedureName + stepName | Paso EXEC dentro de PROC | orchestration |
| ProcVariable | procedureName + name + direction | Simbolo/parametro declarado en PROC | orchestration |
| ProcDD | procedureName + ddName | Definicion DD en PROC | orchestration |
| RuntimeDataset | dsn | Dataset fisico referenciado por DD | orchestration |
| SchedulerCondition | scheduler + name + dateScope | Condicion emitida/consumida por scheduler | orchestration |

Nota: `ProgramFacet` es legado y no forma parte del modelo activo. Si aparece, se considera desviacion.

## Reglas anti-solapamiento (canon de modelado)

Para evitar duplicidad semantica entre core y operacion:

1. `Paragraph` modela **pasos COBOL**; `ProcStep` modela **pasos EXEC de PROC**.
2. `OutputFile` modela **salidas de negocio COBOL**; `RuntimeDataset` modela **datasets tecnicos de ejecucion**.
3. En capa operativa, la ejecucion de programas desde PROC se modela con `EXECUTES_PROGRAM` (no con `CALLS_ROUTINE`).
4. `CALLS_ROUTINE` se reserva para invocaciones de programa COBOL (dominio funcional).
5. Un hecho debe tener una representacion canonica por capa; si existe mapping cruzado, debe documentarse explicitamente.

## Restricciones de unicidad (actuales)

Las siguientes restricciones deben existir en Neo4j:

- `Program.name` unico
- `Copybook.name` unico
- `Paragraph(programName, name)` unico (constraint compuesto)
- `DBTable.name` unico
- `ParamType.name` unico
- `ExternalRoutine.name` unico
- `OutputFile.name` unico
- `Procedure.name` unico
- `ProcStep(procedureName, stepName)` unico (constraint compuesto)
- `ProcVariable(procedureName, name, direction)` unico (constraint compuesto)
- `ProcDD(procedureName, ddName)` unico (constraint compuesto)
- `RuntimeDataset.dsn` unico
- `SchedulerCondition(scheduler, name, dateScope)` unico (constraint compuesto)

Propiedad obligatoria adicional para `Paragraph`:

- `programName` no vacio y consistente con el `Program.name` que lo contiene via `HAS_PARAGRAPH`.

## Relaciones validas (catalogo)

### Estructurales

| Relacion | Origen permitido | Destino permitido | Significado |
|---|---|---|---|
| HAS_PARAGRAPH | Program | Paragraph | Programa contiene pasos de ejecucion |
| INCLUDES_COPYBOOK | Program | Copybook | Programa incluye copybooks |
| READS_TABLE | Program | DBTable | Programa lee tabla fisica |
| UPDATES_TABLE | Program | DBTable | Programa actualiza tabla fisica |
| USES_PARAM_TYPE | Program | ParamType | Programa utiliza tipo logico |
| CALLS_ROUTINE | Program | ExternalRoutine | Programa invoca rutina externa |
| WRITES_FILE | Program | OutputFile | Programa genera archivo de salida |
| STORES | DBTable | ParamType | Tabla fisica almacena tipo logico |
| IMPLEMENTED_BY | Paragraph | Copybook | Parrafo implementado por copybook |
| HAS_STEP | Procedure | ProcStep | PROC contiene pasos EXEC |
| DEFINES_VARIABLE | Procedure | ProcVariable | PROC declara simbolos |
| DEFINES_DD | Procedure | ProcDD | PROC define DDs |
| USES_DD | ProcStep | ProcDD | Paso EXEC usa DD |
| RESOLVES_TO_DATASET | ProcDD | RuntimeDataset | DD resuelve a dataset fisico |
| ROUTES_TO_VARIABLE | ProcDD | ProcVariable | DD enruta salida mediante simbolo |
| EMITS_CONDITION | ProcStep | SchedulerCondition | Paso emite condicion scheduler |
| EXECUTES_PROGRAM | ProcStep | ExternalRoutine | Paso EXEC invoca programa/utilitario |

### Semanticas con trazabilidad

| Relacion | Origen permitido | Destino permitido | Evidencia requerida |
|---|---|---|---|
| USES_COPYBOOK | Paragraph | Copybook | evidenceFile, evidenceLines |
| READS_DATA | Paragraph | ParamType | evidenceFile, evidenceLines |
| UPDATES_DATA | Paragraph | ParamType | evidenceFile, evidenceLines |
| DERIVES_FROM | Paragraph | ParamType | evidenceFile, evidenceLines |
| DEPENDS_ON_EXTERNAL | Paragraph | ExternalRoutine | evidenceFile, evidenceLines |

Nota operativa: en dominio PRC/JCL, `DEFINES_VARIABLE`, `DEFINES_DD`, `USES_DD`, `RESOLVES_TO_DATASET`, `ROUTES_TO_VARIABLE`, `EMITS_CONDITION`, `EXECUTES_PROGRAM`, `HAS_STEP` tambien deben llevar evidencia cuando provengan de extraccion automatica.

## Matriz de pares origen -> destino permitidos

| Origen | Destino | Relaciones permitidas |
|---|---|---|
| Program | Paragraph | HAS_PARAGRAPH |
| Program | Copybook | INCLUDES_COPYBOOK |
| Program | DBTable | READS_TABLE, UPDATES_TABLE |
| Program | ParamType | USES_PARAM_TYPE |
| Program | ExternalRoutine | CALLS_ROUTINE |
| Program | OutputFile | WRITES_FILE |
| Paragraph | Copybook | IMPLEMENTED_BY, USES_COPYBOOK |
| Paragraph | ParamType | READS_DATA, UPDATES_DATA, DERIVES_FROM |
| Paragraph | ExternalRoutine | DEPENDS_ON_EXTERNAL |
| DBTable | ParamType | STORES |
| Procedure | ProcStep | HAS_STEP |
| Procedure | ProcVariable | DEFINES_VARIABLE |
| Procedure | ProcDD | DEFINES_DD |
| ProcStep | ProcDD | USES_DD |
| ProcStep | ExternalRoutine | EXECUTES_PROGRAM |
| ProcStep | SchedulerCondition | EMITS_CONDITION |
| ProcDD | RuntimeDataset | RESOLVES_TO_DATASET |
| ProcDD | ProcVariable | ROUTES_TO_VARIABLE |

Cualquier otro par origen-destino se considera no valido.

## Propiedades obligatorias por nodo

Todas las propiedades definidas para la tipologia de un nodo son obligatorias.

- Si falta al menos una propiedad definida por tipologia, el nodo debe considerarse incompleto.
- Un nodo incompleto no puede considerarse conocimiento consolidado.
- Todo nodo incompleto debe marcarse con `reviewStatus = pending_human_review` y `reviewSource = auto-ingestion`, y debe notificarse en el reporte de calidad.

Propiedades transversales minimas de control:

- Comun: `ingestion`, `layer`, `nodeType`, `viewTag`
- Gobierno de revision: `reviewStatus`, `reviewRequired`, `reviewSource`
- Auditoria humana (cuando aplique): `reviewedBy`, `reviewedAt`
- Auditoria de agente (cuando aplique): `agentReviewedBy`, `agentReviewedAt`, `agentReviewNotes`

Propiedad autoexplicativa recomendada para todos los nodos:

- `description`: texto breve y semantico que explique que representa el nodo en lenguaje natural.

Regla de uso frente a `objective`:

- `objective` expresa el proposito operativo o de negocio del nodo cuando aplique.
- `description` explica que es el nodo y por que existe dentro del grafo.
- No deben considerarse sinonimos ni reemplazarse entre si.
- Si un nodo tiene `objective` pero no tiene `description`, sigue considerandose incompleto para la capa autoexplicativa.

Nota: para `Paragraph` puede coexistir `summary` como descripcion funcional del flujo COBOL, pero `description` sigue siendo la explicacion general del nodo.

## Politica anti-invencion

Para impedir conocimiento no verificable:

1. No crear labels fuera del catalogo.
2. No crear relaciones fuera del catalogo ni fuera de la matriz origen-destino.
3. Para relaciones semanticas, exigir siempre evidencia:
   - `evidenceFile` no vacio
   - `evidenceLines` array con al menos 1 linea
4. Si no existe evidencia, el dato debe quedar fuera del grafo o marcado para revision, pero nunca consolidado como hecho.

## Regla de numeracion de evidencia

Para evitar desviaciones de trazabilidad en COBOL de formato fijo:

- `evidenceLines` debe usar siempre numero de linea fisica del archivo (1-based), no el correlativo impreso en columnas finales del codigo fuente.
- Cuando el archivo incluya numeracion COBOL en columnas 73-80 (ej. `00028800`), esa numeracion no debe almacenarse en `evidenceLines`.
- Si se desea conservar ese valor para auditoria, debe registrarse como metadata adicional (por ejemplo `evidenceSequence`), pero nunca sustituyendo `evidenceLines`.
- Si se detecta una diferencia entre linea fisica y secuencia COBOL, debe notificarse como hallazgo de calidad en el reporte de ingesta.

## Consultas de validacion de contrato

### 1) Labels no permitidos

```cypher
MATCH (n)
UNWIND labels(n) AS lbl
WITH DISTINCT lbl
WHERE NOT lbl IN [
  'Program','Paragraph','Copybook','DBTable','ParamType','ExternalRoutine','OutputFile',
  'Procedure','ProcStep','ProcVariable','ProcDD','RuntimeDataset','SchedulerCondition'
]
RETURN lbl AS invalidLabel;
```

### 2) Relaciones no permitidas

```cypher
MATCH ()-[r]->()
WITH DISTINCT type(r) AS rel
WHERE NOT rel IN [
  'HAS_PARAGRAPH','INCLUDES_COPYBOOK','READS_TABLE','UPDATES_TABLE','USES_PARAM_TYPE',
  'CALLS_ROUTINE','WRITES_FILE','STORES','IMPLEMENTED_BY','USES_COPYBOOK',
  'READS_DATA','UPDATES_DATA','DERIVES_FROM','DEPENDS_ON_EXTERNAL',
  'HAS_STEP','DEFINES_VARIABLE','DEFINES_DD','USES_DD','RESOLVES_TO_DATASET',
  'ROUTES_TO_VARIABLE','EMITS_CONDITION','EXECUTES_PROGRAM'
]
RETURN rel AS invalidRelationship;
```

### 3) Pares origen-destino invalidos

```cypher
MATCH (a)-[r]->(b)
WITH labels(a)[0] AS src, type(r) AS rel, labels(b)[0] AS dst
WITH src, rel, dst,
     [
       'Program|HAS_PARAGRAPH|Paragraph',
       'Program|INCLUDES_COPYBOOK|Copybook',
       'Program|READS_TABLE|DBTable',
       'Program|UPDATES_TABLE|DBTable',
       'Program|USES_PARAM_TYPE|ParamType',
       'Program|CALLS_ROUTINE|ExternalRoutine',
       'Program|WRITES_FILE|OutputFile',
       'DBTable|STORES|ParamType',
       'Paragraph|IMPLEMENTED_BY|Copybook',
       'Paragraph|USES_COPYBOOK|Copybook',
       'Paragraph|READS_DATA|ParamType',
       'Paragraph|UPDATES_DATA|ParamType',
       'Paragraph|DERIVES_FROM|ParamType',
       'Paragraph|DEPENDS_ON_EXTERNAL|ExternalRoutine',
       'Procedure|HAS_STEP|ProcStep',
       'Procedure|DEFINES_VARIABLE|ProcVariable',
       'Procedure|DEFINES_DD|ProcDD',
       'ProcStep|USES_DD|ProcDD',
       'ProcStep|EXECUTES_PROGRAM|ExternalRoutine',
       'ProcStep|EMITS_CONDITION|SchedulerCondition',
       'ProcDD|RESOLVES_TO_DATASET|RuntimeDataset',
       'ProcDD|ROUTES_TO_VARIABLE|ProcVariable'
     ] AS allowed
WHERE NOT (src + '|' + rel + '|' + dst) IN allowed
RETURN src, rel, dst;
```

### 4) Relaciones semanticas sin evidencia

```cypher
MATCH ()-[r]->()
WHERE type(r) IN [
  'USES_COPYBOOK','READS_DATA','UPDATES_DATA','DERIVES_FROM','DEPENDS_ON_EXTERNAL',
  'HAS_STEP','DEFINES_VARIABLE','DEFINES_DD','USES_DD','RESOLVES_TO_DATASET',
  'ROUTES_TO_VARIABLE','EMITS_CONDITION','EXECUTES_PROGRAM'
]
  AND (
    r.evidenceFile IS NULL OR trim(r.evidenceFile) = '' OR
    r.evidenceLines IS NULL OR size(r.evidenceLines) = 0
  )
RETURN type(r) AS rel, r.evidenceFile AS evidenceFile, r.evidenceLines AS evidenceLines;
```

### 5) Nodos huerfanos

```cypher
MATCH (n)
WHERE NOT (n)--()
RETURN labels(n) AS labels, n.name AS id;
```

## Flujo recomendado para ingestion automatizada

1. Extraer candidatos de nodos/relaciones desde fuente COBOL/copybooks.
2. Validar candidatos contra este contrato (labels, relaciones y pares).
3. Exigir evidencia en relaciones semanticas.
4. Persistir solo elementos validos.
5. Marcar revision (`reviewStatus`) segun el proceso definido en `docs/node-review-state-machine.md`.
6. Ejecutar consultas de validacion de contrato al final de cada carga.

## Regla de cambio del contrato

Si se necesita una nueva entidad o relacion, el orden obligatorio es:

1. Actualizar este documento.
2. Actualizar seed y validaciones.
3. Recién entonces permitir que la ingestion automatica la produzca.

Esto evita deriva ontologica y crecimiento no gobernado del grafo.
