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

| Label | Clave natural | Descripcion | Capa |
|---|---|---|---|
| Program | name | Programa COBOL analizado | program |
| Paragraph | name | Paso/parrafo de ejecucion | execution |
| Copybook | name | Dependencia de datos o codigo | dependency |
| DBTable | name | Tabla fisica (DB2) | data-access |
| ParamType | name | Tipo logico dentro de tabla (ej. TA0/TA1) | data-access |
| ExternalRoutine | name | Rutina externa llamada | integration |
| OutputFile | name | Archivo de salida generado | output |

Nota: `ProgramFacet` es legado y no forma parte del modelo activo. Si aparece, se considera desviacion.

## Restricciones de unicidad (actuales)

Las siguientes restricciones deben existir en Neo4j:

- `Program.name` unico
- `Copybook.name` unico
- `Paragraph.name` unico
- `DBTable.name` unico
- `ParamType.name` unico
- `ExternalRoutine.name` unico
- `OutputFile.name` unico

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

### Semanticas con trazabilidad

| Relacion | Origen permitido | Destino permitido | Evidencia requerida |
|---|---|---|---|
| USES_COPYBOOK | Paragraph | Copybook | evidenceFile, evidenceLines |
| READS_DATA | Paragraph | ParamType | evidenceFile, evidenceLines |
| UPDATES_DATA | Paragraph | ParamType | evidenceFile, evidenceLines |
| DERIVES_FROM | Paragraph | ParamType | evidenceFile, evidenceLines |
| DEPENDS_ON_EXTERNAL | Paragraph | ExternalRoutine | evidenceFile, evidenceLines |

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
WHERE NOT lbl IN ['Program','Paragraph','Copybook','DBTable','ParamType','ExternalRoutine','OutputFile']
RETURN lbl AS invalidLabel;
```

### 2) Relaciones no permitidas

```cypher
MATCH ()-[r]->()
WITH DISTINCT type(r) AS rel
WHERE NOT rel IN [
  'HAS_PARAGRAPH','INCLUDES_COPYBOOK','READS_TABLE','UPDATES_TABLE','USES_PARAM_TYPE',
  'CALLS_ROUTINE','WRITES_FILE','STORES','IMPLEMENTED_BY','USES_COPYBOOK',
  'READS_DATA','UPDATES_DATA','DERIVES_FROM','DEPENDS_ON_EXTERNAL'
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
       'Paragraph|DEPENDS_ON_EXTERNAL|ExternalRoutine'
     ] AS allowed
WHERE NOT (src + '|' + rel + '|' + dst) IN allowed
RETURN src, rel, dst;
```

### 4) Relaciones semanticas sin evidencia

```cypher
MATCH ()-[r]->()
WHERE type(r) IN ['USES_COPYBOOK','READS_DATA','UPDATES_DATA','DERIVES_FROM','DEPENDS_ON_EXTERNAL']
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
