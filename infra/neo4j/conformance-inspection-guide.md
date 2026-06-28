# Inspección de conformidad de Procedures (Neo4j Browser / Bloom)

Flujo para **ver en el grafo** qué procedimientos no replican la estructura
desarrollada e **inspeccionar a fondo un Procedure**. La conformidad es
determinista y se calcula con Cypher (contrato de [docs/graph-ontology.md](../../docs/graph-ontology.md)
+ diff de forma contra una referencia golden, por defecto `CCUPRFDF`).

> La app Streamlit anterior fue retirada. Las plantillas
> `conformance-procedure-{contract,reference-shape,inventory}.cypher` se
> conservan como consultas de tabla/auditoría y como referencia de la lógica.

## Piezas

| Archivo | Rol |
|---|---|
| [queries/annotate-procedure-conformance.cypher](queries/annotate-procedure-conformance.cypher) | **Escribe** la conformidad sobre los nodos: props `conf*` + etiquetas `:ConfDeficient`/`:ConfWarn`. Idempotente. |
| [queries/clear-procedure-conformance.cypher](queries/clear-procedure-conformance.cypher) | Revierte: quita props `conf*` y etiquetas marcadoras. |
| [queries/inspect-procedure.cypher](queries/inspect-procedure.cypher) | Consultas de lectura para Browser: Panorama, (A) subgrafo, (B) hallazgos, (C) vs referencia. |
| [conformance-procedure-style.grass](conformance-procedure-style.grass) | Estilo de Browser: colores por label + overlay rojo/ámbar de conformidad. |

### Qué escribe el `annotate` en cada nodo
- `confStatus` — estado **local** del nodo: `PASS` / `PASS_WITH_WARNINGS` / `DEFICIENT`.
- `confSeverityTop` — `blocker` / `high` / `medium` / `low` / `none`.
- `confIssues` — lista de `"checkId: detalle"` (qué está mal y por qué).
- `confCheckedAt` — timestamp ISO de la anotación.
- En el nodo `Procedure`, además: `confRollupStatus` (peor estado entre él y sus
  hijos — para el panorama) y `confRef` (referencia usada).
- Etiqueta `:ConfDeficient` (rojo) o `:ConfWarn` (ámbar) según el `confStatus` local.

Regla de estado: cualquier `blocker`/`high` → **DEFICIENT**; solo `medium`/`low` →
**PASS_WITH_WARNINGS**; ninguno → **PASS**.

## Requisitos
- Neo4j arriba: `docker compose -f infra/neo4j/docker-compose.yml up -d`.
- Procedures cargados (p. ej. los `proposed-ingest-*-procedure-extension.cypher` o el último snapshot).
- `NEO4J_PASSWORD` (si no, se usa el de docker-compose).

---

## Flujo en Neo4j Browser

**1. Anotar el grafo** (una vez; repetir tras cada re-ingesta):

```bash
PW="${NEO4J_PASSWORD:-CambiaEstaClave123!}"
cat infra/neo4j/queries/annotate-procedure-conformance.cypher \
  | docker exec -i neo4j-local cypher-shell -u neo4j -p "$PW"
```

Para cambiar la referencia o limitar a ciertos procedimientos, edita las dos
líneas `:param` al inicio del archivo:
`:param referenceProcedure => 'CCUPRFDF';` y `:param procedureFilter => [];`
(`[]` = todos; o p. ej. `['CASPREDF','CCUPRVDF']`).

**2. Cargar el estilo** en Browser: arrastra
[conformance-procedure-style.grass](conformance-procedure-style.grass) al panel
de la izquierda, o ejecuta `:style` y pega su contenido.

**3. Panorama** (qué procedimientos están mal): pega el bloque **PANORAMA** de
[inspect-procedure.cypher](queries/inspect-procedure.cypher). Tabla ordenada por
`rollup` (DEFICIENT primero).

**4. Inspeccionar un Procedure**: fija el parámetro y corre los bloques:

```cypher
:param procedureName => 'CASPREDF';
```

- **Bloque A — subgrafo (grafo):** dibuja el Procedure y todos sus subnodos. Los
  ProcDD/ProcStep deficientes salen en **rojo** (`:ConfDeficient`) y los de aviso
  en **ámbar** (`:ConfWarn`).
- **Bloque B — hallazgos (tabla):** lista por nodo el `confStatus`, la severidad y
  los `confIssues` exactos, ordenado por severidad.
- **Bloque C — target vs referencia (grafo):** muestra el procedimiento y la
  referencia lado a lado para comparar la forma a ojo.

**Nota multi-label:** un DD deficiente tiene `:ProcDD` **y** `:ConfDeficient`.
Browser pinta por un solo label; en la **leyenda** (arriba del grafo) haz clic en
`:ConfDeficient` / `:ConfWarn` para que el color de conformidad domine. Queda
recordado en esa sesión.

**5. Revertir** cuando quieras dejar el grafo limpio:

```bash
PW="${NEO4J_PASSWORD:-CambiaEstaClave123!}"
cat infra/neo4j/queries/clear-procedure-conformance.cypher \
  | docker exec -i neo4j-local cypher-shell -u neo4j -p "$PW"
```

---

## Flujo en Neo4j Bloom

Bloom sí permite **estilo por condición de propiedad**, así que no depende de las
etiquetas marcadoras (aunque también las puede usar).

1. **Perspectiva**: crea una perspectiva sobre la base `neo4j`; Bloom genera
   categorías automáticamente por label (Procedure, ProcStep, ProcVariable,
   ProcDD, ExternalRoutine, RuntimeDataset, …).
2. **Rule-based styling** sobre `confStatus` (en la categoría de cada label, o a
   nivel global): 
   - `confStatus = 'DEFICIENT'` → rojo (#D8232A)
   - `confStatus = 'PASS_WITH_WARNINGS'` → ámbar (#F5A623)
   - `confStatus = 'PASS'` → color base
   Opcional: tamaño por `confSeverityTop`.
3. **Search phrases** (frases de búsqueda basadas en Cypher) para la inspección
   de un nodo; reusa las consultas de `inspect-procedure.cypher`. Ejemplos:
   - *"inspeccionar procedimiento $procedureName"* → Bloque A (subgrafo).
   - *"procedimientos deficientes"* → `MATCH (p:Procedure) WHERE p.confRollupStatus = 'DEFICIENT' RETURN p`.
   - *"DDs deficientes de $procedureName"* → `MATCH (dd:ProcDD {procedureName:$procedureName}) WHERE dd.confStatus = 'DEFICIENT' RETURN dd`.

> No se incluye una perspectiva `.json` hecha a mano porque el formato cambia
> entre versiones de Bloom y suele fallar al importar. Si configuras una
> perspectiva con estas reglas, expórtala desde Bloom y guárdala aquí.

---

## Mantenimiento
- Tras re-ingestar o modificar procedimientos, vuelve a correr `annotate` (es
  idempotente: reescribe props y recoloca etiquetas).
- Para una vista de tabla de todos los hallazgos (sin tocar el grafo), usa las
  plantillas `conformance-procedure-contract.cypher` y
  `conformance-procedure-reference-shape.cypher` vía cypher-shell.
