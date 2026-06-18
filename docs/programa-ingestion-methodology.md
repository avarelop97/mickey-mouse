# Metodología de Documentación Detallada de Programas COBOL

## Introducción

Este documento describe el proceso completo para documentar un programa COBOL de forma sistemática y reproducible usando Neo4j como base de conocimiento. La metodología se basa en tres pilares fundamentales:

1. **Ontología de Grafo** (contract para evitar invenciones)
2. **Estado Machine de Revisión** (gobernanza de calidad)
3. **Análisis de Estructura COBOL** (extracción evidenciada de información)

---

## Fase 1: Preparación y Análisis Inicial

### 1.1 Lectura del Programa Fuente
- **Archivo**: `src/{NOMBRE_PROGRAMA}.cbl`
- **Actividad**: 
  - Identificar la estructura general (IDENTIFICATION, ENVIRONMENT, DATA, PROCEDURE DIVISION)
  - Documentar el propósito del programa (comentarios iniciales)
  - Listar todos los copybooks incluidos
  - Identificar archivos/tablas accedidas

### 1.2 Validación contra Ontología
- Consultar [docs/graph-ontology.md](graph-ontology.md)
- **Confirmar que el programa será documentado con**:
  - ✅ **7 tipos de nodos permitidos**:
    - Program (1 por programa)
    - Paragraph (uno por sección ejecutable)
    - Copybook (uno por incluido)
    - DBTable (uno por tabla accedida)
    - ParamType (tipos de datos/estructura)
    - ExternalRoutine (rutinas/funciones externas)
    - OutputFile (archivos de salida)
  
  - ✅ **Relaciones permitidas** con sus orígenes de evidencia:
    - INCLUDES_COPYBOOK → evidenceFile + evidenceLines
    - READS_TABLE → evidenceFile + evidenceLines
    - WRITES_FILE → evidenceFile + evidenceLines
    - USES_PARAM_TYPE → evidenceFile + evidenceLines
    - CALLS_ROUTINE → evidenceFile + evidenceLines
    - HAS_PARAGRAPH → estructura
    - STORES → (table → param_type)
    - USES_COPYBOOK → evidenceFile + evidenceLines
    - READS_DATA → evidenceFile + evidenceLines
    - UPDATES_DATA → evidenceFile + evidenceLines
    - DEPENDS_ON_EXTERNAL → evidenceFile + evidenceLines
    - DERIVES_FROM → evidenceFile + evidenceLines
    - IMPLEMENTED_BY → (paragraph → copybook)

### 1.3 Identificación de Elementos Clave

Completar tabla de inventario:

| Elemento | Tipo | Nombre | Líneas | Evidencia |
|----------|------|--------|--------|-----------|
| Copybook | COPYBOOK | (ej: SICPATA0) | 1 | `cpy/SICPATA0.cpy` |
| Tabla | DBTABLE | (ej: PARAM) | - | SELECT...FROM statement |
| Párrafo | PARAGRAPH | (ej: 000-INICIO) | 10-45 | PROCEDURE DIVISION line |
| Rutina | EXTERNALROUTINE | (ej: DSNTIAR) | - | CALL statement |
| ParamType | PARAMTYPE | (ej: TA0) | - | Data definition |
| Archivo | OUTPUTFILE | (ej: SALIDA.txt) | - | FD/SELECT definition |

---

## Fase 2: Extracción Estructurada de Información

### 2.1 Paragraphs (Nodos de Ejecución)

Para cada sección ejecutable, documentar:

**Ejemplo: Paragraph "000-INICIO"**
```
Nombre: 000-INICIO
executionOrder: 100
executionPhase: INITIALIZATION
kind: CONTROL_FLOW
description: "Inicialización del programa, carga de parámetros y configuración"
startLine: 2345
endLine: 2380
```

**Relaciones que debe tener**:
- `READS_DATA` → ParamType (parámetros leídos)
- `UPDATES_DATA` → ParamType (parámetros modificados)
- `USES_COPYBOOK` → Copybook (copybooks usados)
- `CALLS_ROUTINE` → ExternalRoutine (rutinas llamadas)
- `DEPENDS_ON_EXTERNAL` → ExternalRoutine (dependencias)

**Evidencia requerida**: `evidenceFile` + `evidenceLines` en cada relación

### 2.2 Copybooks (Definiciones de Estructura)

Para cada copybook incluido:

```
Nombre: SICPATA0
type: DATA_STRUCTURE
includeLines: [2340]
description: "Estructura de parámetros de tasa TA0"
```

**Relaciones**:
- Conectado al Program via `INCLUDES_COPYBOOK`
- Conectado a ParamType via IMPLEMENTED_BY (si define tipos)

### 2.3 ParamTypes (Tipos de Datos)

Documentar cada tipo de dato/estructura usada:

```
Nombre: TA0
dataType: STRUCTURE
size: 255 bytes
description: "Parámetros de tasa de cambio TA0"
```

**Relaciones**:
- `STORES` ← DBTable (si se almacena en tabla)
- `READS_DATA` / `UPDATES_DATA` ← Paragraph (quién lo usa)
- `DERIVED_FROM` → Copybook (definido en copybook)

### 2.4 External Routines

Para cada rutina externa llamada:

```
Nombre: DSNTIAR
type: UTILITY_ROUTINE
purpose: "Convertir sqlcodes a mensajes de error"
language: COBOL
```

**Evidencia**: Línea exacta del CALL statement

### 2.5 DBTables

Para cada tabla accedida:

```
Nombre: PARAM
accessMode: READ_WRITE
description: "Tabla maestra de parámetros"
primaryKey: PARAM_ID
```

**Relaciones**:
- `STORES` → ParamType (qué tipos almacena)
- `READ_TABLE` ← Program (acceso directo)

### 2.6 Output Files

Para cada archivo de salida:

```
Nombre: SALIDA.txt
format: TEXT
description: "Archivo de reporte diario"
createdBy: PARAGRAPH_NAME
```

---

## Fase 3: Construcción del Seed Cypher

### 3.1 Estructura del Archivo

Crear archivo: `infra/neo4j/manual-seed-{PROGRAMA}.cypher`

Estructura base:
```cypher
// ============================================================================
// MANUAL SEED: {NOMBRE_PROGRAMA}
// Ingested: 2026-06-16
// SeedVersion: v1-direct
// ============================================================================

// --- PROGRAM NODE ---
CREATE (prog:Program {
  name: '{NOMBRE_PROGRAMA}',
  programType: 'TRANSACTION',
  description: '...',
  sourceFile: 'src/{NOMBRE_PROGRAMA}.cbl',
  reviewStatus: 'reviewed_human',
  reviewSource: 'manual-seed',
  reviewedBy: 'ANALYST_NAME',
  reviewedAt: timestamp('2026-06-16T00:00:00Z'),
  seedVersion: 'v1-direct',
  seedDate: date('2026-06-16')
});

// --- PARAGRAPH NODES ---
CREATE (p1:Paragraph {
  programName: '{NOMBRE_PROGRAMA}',
  name: '000-INICIO',
  executionOrder: 100,
  executionPhase: 'INITIALIZATION',
  kind: 'CONTROL_FLOW',
  description: '...',
  startLine: 2345,
  endLine: 2380,
  reviewStatus: 'reviewed_human',
  reviewSource: 'manual-seed'
});

// ... más paragraphs ...

// --- RELATIONSHIPS ---
MATCH (prog:Program {name: '{NOMBRE_PROGRAMA}'}), (p1:Paragraph {programName: '{NOMBRE_PROGRAMA}', name: '000-INICIO'})
CREATE (prog)-[:HAS_PARAGRAPH]->(p1);
```

### 3.2 Reglas de Evidencia

**OBLIGATORIO para relaciones de datos/dependencias**:

```cypher
MATCH (para:Paragraph {programName: 'CIB005D', name: '000-INICIO'}), (cpy:Copybook {name: 'SICPATA0'})
CREATE (para)-[:USES_COPYBOOK {
  evidenceFile: 'src/CIB005D.cbl',
  evidenceLines: [2356, 2357, 2358],
  description: 'Copybook usado para cargar estructura TA0'
}]->(cpy);
```

**NO PERMITIDO**: Crear relaciones sin `evidenceFile` y `evidenceLines` para:
- READS_DATA
- UPDATES_DATA
- DEPENDS_ON_EXTERNAL
- DERIVES_FROM
- USES_COPYBOOK
- CALLS_ROUTINE

Regla de numeracion:

- `evidenceLines` debe representar la linea fisica real del archivo fuente (1-based).
- No usar la numeracion de secuencia COBOL en columnas 73-80 (por ejemplo `00028800`) como `evidenceLines`.
- Si existe ese numero de secuencia y es util para auditoria, guardarlo por separado (ej. `evidenceSequence`).
- Si se detecta desfase entre linea fisica y secuencia COBOL, registrar el hallazgo en "Riesgos y gaps".

### 3.3 Validación Pre-Carga

Ejecutar validación antes de cargar en Neo4j:

```cypher
// Ejecutar en Neo4j Browser
CALL {
  MATCH (n) WHERE NOT n.reviewStatus IN ['reviewed_human', 'pending_human_review']
  RETURN n.name AS nodo, n.reviewStatus AS status
}
RETURN *;
```

---

## Fase 4: Carga en Neo4j

### 4.1 Carga del Seed

```bash
# Terminal
docker exec neo4j-local cypher-shell -u neo4j -p 'CambiaEstaClave123!' \
  < infra/neo4j/manual-seed-{PROGRAMA}.cypher
```

### 4.2 Validación Post-Carga

Ejecutar queries de validación según [docs/graph-ontology.md](graph-ontology.md):

- Verificar que `evidenceLines` corresponda a la linea fisica real del archivo.
- Reportar cualquier desalineacion entre `evidenceLines` y la secuencia COBOL impresa en columnas finales.

**Query 1: Verificar nodos inválidos**
```cypher
MATCH (n)
WHERE NOT labels(n)[0] IN ['Program', 'Paragraph', 'Copybook', 'DBTable', 'ParamType', 'ExternalRoutine', 'OutputFile']
RETURN n.name, labels(n);
```

**Query 2: Verificar relaciones sin evidencia**
```cypher
MATCH (n)-[r:READS_DATA|UPDATES_DATA|DEPENDS_ON_EXTERNAL|DERIVES_FROM|USES_COPYBOOK|CALLS_ROUTINE]->(m)
WHERE NOT EXISTS(r.evidenceFile) OR NOT EXISTS(r.evidenceLines)
RETURN r.type, n.name, m.name;
```

**Query 3: Contar nodos y relaciones**
```cypher
MATCH (prog:Program {name: '{NOMBRE_PROGRAMA}'})
CALL {
  MATCH path = (prog)-[:HAS_PARAGRAPH|INCLUDES_COPYBOOK|READS_TABLE|WRITES_FILE|USES_PARAM_TYPE|CALLS_ROUTINE|DEPENDS_ON_EXTERNAL]*->()
  RETURN count(DISTINCT path) AS totalPaths
}
RETURN totalPaths;
```

---

## Fase 5: Revisión y Gobernanza

### 5.1 Estado Machine de Revisión

Cada nodo en el grafo sigue este ciclo (ver [docs/node-review-state-machine.md](node-review-state-machine.md)):

```
PENDING_HUMAN_REVIEW → REVIEWED_HUMAN | REJECTED_HUMAN
```

**Estados**:
- `pending_human_review`: Esperando aprobación manual
- `reviewed_human`: Aprobado por analista humano
- `rejected_human`: Rechazado, requiere revisión

**Campos obligatorios**:
```
reviewStatus: 'reviewed_human'
reviewSource: 'manual-seed'
reviewedBy: 'ANALYST_NAME'
reviewedAt: timestamp('...')
```

**Regla de completitud**:
- Todos los campos definidos por tipologia son imprescindibles.
- Si falta algun campo, el nodo queda en `pending_human_review` con `reviewSource = 'auto-ingestion'` y debe notificarse.
- La clave natural operativa para `Paragraph` es compuesta: `programName + name`.
- Para el resto de tipologias, la clave natural operativa es `name`.

### 5.2 Queries de Auditoría

### Contrato operativo entre extracción y escritura

El flujo operativo actual distingue dos artefactos distintos:

- `ExtractionProposal`: propuesta semántica generada por el extractor.
- `WritePayload`: payload enriquecido y listo para escritura.

Reglas:

- El extractor no tiene obligación de devolver `ingestion`, `layer`, `nodeType`, `viewTag`, `reviewStatus`, `reviewRequired` y `reviewSource` completos en `ExtractionProposal`.
- Esos campos se validan cuando el orquestador ya construyó el `WritePayload`.
- Las queries de completitud e invalidación de valores no deben ejecutarse sobre la propuesta bruta del extractor.

### Reglas negativas del extractor

- `WRITEQ TS`, `READQ TS` y `DELETEQ TS` no crean `OutputFile`.
- Si no existe evidencia explícita de `CALL`, no se crea `ExternalRoutine`.
- `COPY X` y `EXEC SQL INCLUDE X` se clasifican como `Copybook`.
- `SELECT/INSERT/UPDATE/DELETE` sobre `X` se clasifican como `DBTable`.
- No mezclar `Copybook` y `DBTable` por similitud léxica del nombre.

Verificar estado de revisión:

```cypher
MATCH (prog:Program {name: '{NOMBRE_PROGRAMA}'})-[:HAS_PARAGRAPH|INCLUDES_COPYBOOK|READS_TABLE]*->(n)
WHERE n.reviewStatus <> 'reviewed_human'
RETURN n.name, n.reviewStatus, labels(n)[0] AS tipo;
```

---

## Fase 6: Documentación y Análisis

### 6.1 Análisis de Flujo de Ejecución

Query para entender el flujo completo:

```cypher
MATCH (:Program {name: '{NOMBRE_PROGRAMA}'})-[:HAS_PARAGRAPH]->(p:Paragraph)
WITH p
ORDER BY p.executionOrder
RETURN p.executionOrder, p.name, p.executionPhase, p.description;
```

### 6.2 Análisis de Dependencias de Datos

Query para mapear flujo de datos:

```cypher
MATCH (:Program {name: '{NOMBRE_PROGRAMA}'})-[:HAS_PARAGRAPH]->(para:Paragraph)
OPTIONAL MATCH (para)-[:READS_DATA]->(inData:ParamType)
OPTIONAL MATCH (para)-[:UPDATES_DATA]->(outData:ParamType)
RETURN 
  para.executionOrder AS orden,
  para.name AS proceso,
  collect(DISTINCT inData.name) AS entrada,
  collect(DISTINCT outData.name) AS salida
ORDER BY orden;
```

### 6.3 Visualización en Neo4j Browser

Query para visualizar el grafo completo:

```cypher
MATCH (prog:Program {name: '{NOMBRE_PROGRAMA}'})
OPTIONAL MATCH (prog)-[:HAS_PARAGRAPH]->(para:Paragraph)
OPTIONAL MATCH (prog)-[:INCLUDES_COPYBOOK]->(cpy:Copybook)
OPTIONAL MATCH (prog)-[:READS_TABLE]->(tbl:DBTable)
OPTIONAL MATCH (prog)-[:WRITES_FILE]->(file:OutputFile)
OPTIONAL MATCH (prog)-[:USES_PARAM_TYPE]->(pt:ParamType)
OPTIONAL MATCH (prog)-[:CALLS_ROUTINE]->(ext:ExternalRoutine)
RETURN prog, para, cpy, tbl, file, pt, ext;
```

---

## Fase 7: Comparación Entre Programas

### 7.1 Identificar Elementos Comunes

```cypher
MATCH (p1:Program {name: 'PROGRAMA_1'})-[:INCLUDES_COPYBOOK|READS_TABLE|USES_PARAM_TYPE|CALLS_ROUTINE|WRITES_FILE]->(n)
MATCH (p2:Program {name: 'PROGRAMA_2'})-[:INCLUDES_COPYBOOK|READS_TABLE|USES_PARAM_TYPE|CALLS_ROUTINE|WRITES_FILE]->(n)
RETURN labels(n)[0] AS tipo, n.name AS nombre, count(*) AS usedBy
ORDER BY tipo, nombre;
```

### 7.2 Analizar Paragraphs Relacionados con Elementos Comunes

```cypher
MATCH (p1:Program {name: 'PROGRAMA_1'})-[:INCLUDES_COPYBOOK|READS_TABLE|USES_PARAM_TYPE|CALLS_ROUTINE|WRITES_FILE]->(n)
MATCH (p2:Program {name: 'PROGRAMA_2'})-[:INCLUDES_COPYBOOK|READS_TABLE|USES_PARAM_TYPE|CALLS_ROUTINE|WRITES_FILE]->(n)
WITH COLLECT(DISTINCT n) AS commonElements, p1, p2

OPTIONAL MATCH (p1)-[:HAS_PARAGRAPH]->(para1:Paragraph)
WHERE ANY(elem IN commonElements WHERE (para1)-[:READS_COPYBOOK|USES_PARAM_TYPE|CALLS_ROUTINE|READS_DATA|DERIVES_FROM|UPDATES_DATA|DEPENDS_ON_EXTERNAL]->(elem))

OPTIONAL MATCH (p2)-[:HAS_PARAGRAPH]->(para2:Paragraph)
WHERE ANY(elem IN commonElements WHERE (para2)-[:READS_COPYBOOK|USES_PARAM_TYPE|CALLS_ROUTINE|READS_DATA|DERIVES_FROM|UPDATES_DATA|DEPENDS_ON_EXTERNAL]->(elem))

WITH [para1, para2] AS paragraphs
UNWIND paragraphs AS p
WITH p
WHERE p IS NOT NULL

WITH DISTINCT p
ORDER BY p.executionOrder
RETURN p.executionOrder, p.name, p.executionPhase;
```

---

## Guía de Referencia Rápida

### Checklist por Programa

- [ ] **Lectura**: Programa fuente leído y entendido
- [ ] **Inventario**: Tabla de elementos completada
- [ ] **Ontología**: Validado contra 7 tipos permitidos
- [ ] **Evidencia**: Cada relación tiene evidenceFile + evidenceLines
- [ ] **Seed Cypher**: Archivo creado con formato correcto
- [ ] **Pre-Validación**: Queries de validación ejecutadas
- [ ] **Carga**: Seed cargado en Neo4j sin errores
- [ ] **Post-Validación**: Nodos revisados, relaciones verificadas
- [ ] **Revisión**: Todos los nodos marcados `reviewed_human`
- [ ] **Documentación**: Análisis ejecutados y documentados
- [ ] **Comparación**: (si aplica) Análisis vs otros programas completado

### Nomenclatura Estándar

| Concepto | Patrón | Ejemplo |
|----------|--------|---------|
| Paragraph executionOrder | 100 × número secuencia | 100, 200, 300 |
| Paragraph kind | CONTROL_FLOW, DATA_PROCESSING, VALIDATION | CONTROL_FLOW |
| executionPhase | INITIALIZATION, PROCESSING, TERMINATION | INITIALIZATION |
| Evidence Array | [startLine, ...relevantLines] | [2356, 2357, 2358] |
| ReviewSource | manual-seed, auto-ingestion, agent-reviewed | manual-seed |

---

## Mejores Prácticas

1. **No inventar**: Todo nodo/relación DEBE tener evidencia en código fuente
2. **Granularidad**: Un Paragraph por sección lógica (000-INIT, 100-PROCESS, etc.)
3. **Evidencia clara**: evidenceLines debe incluir líneas relevantes, no todo el archivo
4. **Revisión antes de cargar**: Ejecutar pre-validación siempre
5. **Versionado**: Mantener seedVersion consistente (ej: v1-direct)
6. **Documentación**: Incluir descripción clara en cada nodo crítico
7. **Auditabilidad**: reviewedBy debe ser nombre del analista responsable

---

## Problemas Comunes y Soluciones

| Problema | Causa | Solución |
|----------|-------|----------|
| Relación sin evidencia | Olvido de campos | Agregar `evidenceFile` y `evidenceLines` |
| Nodo huérfano | Desconectado del Program | Verificar que existe path HAS_PARAGRAPH o INCLUDES_COPYBOOK |
| Ejecución fuera de orden | executionOrder incorrecto | Revisar PROCEDURE DIVISION y renumerar |
| Datos duplicados | Carga múltiple del seed | Ejecutar MATCH-DELETE antes de re-cargar |
| Query lenta | Demasiadas OPTIONAL MATCH | Usar UNION de paths específicos |

---

## Recursos

- [Graph Ontology](graph-ontology.md) - Contrato de tipos y relaciones
- [Node Review State Machine](node-review-state-machine.md) - Gobernanza de revisión
- [infra/neo4j/README.md](../infra/neo4j/README.md) - Comandos operacionales
- [infra/neo4j/manual-seed-cib005d.cypher](../infra/neo4j/manual-seed-cib005d.cypher) - Ejemplo completo
- [infra/neo4j/manual-seed-cib009d.cypher](../infra/neo4j/manual-seed-cib009d.cypher) - Segundo ejemplo

