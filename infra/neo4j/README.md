# Neo4j local con Docker

Esta guia describe como levantar Neo4j localmente usando Docker Compose con un solo comando.

## Decisiones de diseno

1. Docker Compose como mecanismo principal de ejecucion.
  Motivo: permite un arranque reproducible con un solo comando y evita dependencias de Kubernetes para desarrollo local.

2. Imagen versionada por major (`neo4j:5`).
  Motivo: se mantiene compatibilidad con la linea estable de Neo4j 5 sin fijar a un parche concreto en cada cambio de entorno.

3. Nombre de contenedor fijo (`neo4j-local`).
  Motivo: simplifica operaciones operativas (`logs`, `exec`, `stop`) y reduce errores por nombres aleatorios.

4. Puertos expuestos 7474 (HTTP Browser) y 7687 (Bolt).
  Motivo: son los puertos estandar de acceso para interfaz web y drivers de aplicacion.

5. Persistencia con volumenes nombrados (`neo4j_data`, `neo4j_logs`).
  Motivo: conserva datos y logs entre reinicios/recreaciones sin depender de rutas locales del host.

6. Password configurable por variable de entorno.
  Configuracion: `NEO4J_AUTH=neo4j/${NEO4J_PASSWORD:-CambiaEstaClave123!}`.
  Motivo: permite un valor por defecto para primer arranque y sobreescritura simple por entorno sin modificar el compose.

7. Politica de reinicio `unless-stopped`.
  Motivo: mejora resiliencia local ante reinicios de Docker o del host, manteniendo control manual cuando se para explicitamente.

## Requisitos

- Docker Engine operativo.
- Puertos locales libres: 7474 (Browser) y 7687 (Bolt).

## Arranque desde cero

### Paso 0: limpieza previa opcional

Usa este bloque solo si quieres empezar sin contenedor ni datos anteriores:

```bash
docker compose -f infra/neo4j/docker-compose.yml down -v --remove-orphans
```

### Paso 1: arrancar

Desde la raiz del repositorio:

```bash
docker compose -f infra/neo4j/docker-compose.yml up -d
```

### Paso 2: validar estado

```bash
docker ps
docker logs neo4j-local --tail 50
```

Validacion esperada en logs: linea `Started.` y servicios `HTTP enabled on 0.0.0.0:7474` y `Bolt enabled on 0.0.0.0:7687`.

### Paso 3: acceder a Neo4j

- Browser: http://localhost:7474
- Bolt: bolt://localhost:7687

Credenciales iniciales:

- Usuario: neo4j
- Password por defecto: CambiaEstaClave123!

### Paso 4: cambiar password en el arranque (recomendado)

```bash
NEO4J_PASSWORD='TuClaveFuerte123!' docker compose -f infra/neo4j/docker-compose.yml up -d
```

Nota: si la base ya se inicializo antes, este cambio no fuerza rotacion de password existente. En ese caso, recrea desde cero con el Paso 0 o cambia credenciales desde Neo4j.

## Primera ingestion manual del conocimiento extraido

Se incluye una primera semilla manual en `infra/neo4j/manual-seed-cib005d.cypher` para cargar un subgrafo inicial del programa `CIB005D` y sus dependencias mas relevantes.

Tambien se incluye una semilla manual para `CIB009D` en `infra/neo4j/manual-seed-cib009d.cypher`.

Objetivo de esta semilla:

- validar el modelo de nodos y relaciones antes de automatizar la ontologia general
- revisar nomenclatura, granularidad y trazabilidad del conocimiento extraido
- permitir recargas idempotentes usando `MERGE`

### Cargar la semilla manual

```bash
cat infra/neo4j/manual-seed-cib005d.cypher | docker exec -i neo4j-local cypher-shell -u neo4j -p 'CambiaEstaClave123!'
cat infra/neo4j/manual-seed-cib009d.cypher | docker exec -i neo4j-local cypher-shell -u neo4j -p 'CambiaEstaClave123!'
```

### Validar el contenido cargado

```bash
docker exec neo4j-local cypher-shell -u neo4j -p 'CambiaEstaClave123!' 'MATCH (n) RETURN labels(n) AS labels, count(n) AS count ORDER BY labels;'
docker exec neo4j-local cypher-shell -u neo4j -p 'CambiaEstaClave123!' "MATCH (p:Program {name:'CIB005D'})-[r]->(n) RETURN type(r) AS rel, labels(n) AS labels, n.name AS name ORDER BY rel, name;"
```

Conteos esperados de esta primera version:

- 1 nodo `Program`
- 5 nodos `ProgramFacet`
- 11 nodos `Paragraph`
- 11 nodos `Copybook`
- 1 nodo `DBTable`
- 2 nodos `ParamType`
- 4 nodos `ExternalRoutine`
- 1 nodo `OutputFile`

La semilla representa relaciones `HAS_FACET`, `HAS_PARAGRAPH`, `INCLUDES_COPYBOOK`, `READS_TABLE`, `UPDATES_TABLE`, `USES_PARAM_TYPE`, `CALLS_ROUTINE`, `WRITES_FILE`, `IMPLEMENTED_BY` y `DEPENDS_ON_EXTERNAL`.

La lectura visual recomendada ya no parte de un nodo `Program` con todas sus dependencias directas. El nodo `Program` expone solo cinco facetas de primer nivel:

- `execution`
- `dependency`
- `data-access`
- `integration`
- `output`

Cada faceta agrupa relaciones homogéneas en segundo nivel para reducir el fan-out del programa y mejorar la trazabilidad visual sin perder precisión semántica.

Adicionalmente, `DEPENDS_ON_EXTERNAL` enlaza párrafos de `execution` con rutinas externas para responder dos preguntas de diagnóstico:

- qué parte exacta del proceso depende del sistema externo
- para qué necesita esa dependencia (propiedad `why`)

Esta relación también guarda evidencia trazable de origen para auditoría:

- `evidenceFile`: ruta del copybook donde aparece la llamada
- `evidenceLines`: línea o líneas (array) donde se evidencia la dependencia

## Metadatos de revisión humana

Documento detallado de la máquina de estados:

- [docs/node-review-state-machine.md](docs/node-review-state-machine.md)

Contrato ontologico del grafo (nodos, relaciones y validaciones):

- [docs/graph-ontology.md](docs/graph-ontology.md)

Para preparar la transición a una ingesta automatizada, los nodos de la semilla manual incluyen metadatos de revisión:

- `reviewStatus`: estado de revisión (`pending_human_review`, `reviewed_human`, `rejected_human`)
- `reviewRequired`: indica si aún necesita validación humana (`true` o `false`)
- `reviewSource`: origen de la marca de revisión (`manual-seed`, `auto-ingestion`, `agent-reviewed`)
- `reviewedBy`: actor que realizó la revisión
- `reviewedAt`: fecha de la última revisión
- `agentReviewedBy`: agente que realizó la revisión técnica
- `agentReviewedAt`: fecha de cierre de revisión técnica por agente
- `agentReviewNotes`: resumen de hallazgos de la revisión técnica

En la semilla manual actual se carga `reviewStatus='reviewed_human'` para dejar trazabilidad de que el conocimiento fue curado manualmente.

### Consultas operativas de revisión

Nodos pendientes de revisión humana:

```bash
docker exec neo4j-local cypher-shell -u neo4j -p 'CambiaEstaClave123!' "MATCH (n) WHERE coalesce(n.reviewRequired, false) = true OR n.reviewStatus = 'pending_human_review' RETURN labels(n) AS labels, n.name AS id, n.reviewStatus AS reviewStatus, n.reviewSource AS reviewSource ORDER BY labels, id;"
```

Resumen por estado de revisión:

```bash
docker exec neo4j-local cypher-shell -u neo4j -p 'CambiaEstaClave123!' "MATCH (n) WHERE n.reviewStatus IS NOT NULL RETURN n.reviewStatus AS reviewStatus, count(*) AS total ORDER BY total DESC;"
```

Marcar como pendientes los nodos nuevos ingeridos automáticamente (ejemplo):

```bash
docker exec neo4j-local cypher-shell -u neo4j -p 'CambiaEstaClave123!' "MATCH (n) WHERE n.ingestion = 'auto' AND n.reviewStatus IS NULL SET n.reviewStatus = 'pending_human_review', n.reviewRequired = true, n.reviewSource = 'auto-ingestion';"
```

## Operaciones comunes

```bash
docker compose -f infra/neo4j/docker-compose.yml stop
docker compose -f infra/neo4j/docker-compose.yml start
docker compose -f infra/neo4j/docker-compose.yml down
```

## Limpieza completa (contenedor + datos)

```bash
docker compose -f infra/neo4j/docker-compose.yml down -v
```

## Arranque rapido (un comando)

```bash
docker compose -f infra/neo4j/docker-compose.yml up -d
```

## Exportar el estado actual a Git

Para guardar en el repositorio el contenido logico que hoy vive dentro del contenedor Neo4j, usa el exportador incluido en `infra/neo4j/scripts/`.

```bash
python3 infra/neo4j/scripts/export_live_graph.py
```

El comando genera un snapshot Cypher reproducible en `infra/neo4j/snapshots/` con:

- nodos y propiedades actuales
- relaciones y propiedades actuales
- metadatos de generacion en comentarios

Esto versiona el grafo logico, no el volumen Docker bruto.

## Restaurar el snapshot

Si necesitas reconstruir el grafo desde Git en un contenedor vacio:

```bash
infra/neo4j/scripts/restore_from_snapshot.sh infra/neo4j/snapshots/<snapshot>.cypher
```

Si no pasas ruta, el script usa el snapshot mas reciente de `infra/neo4j/snapshots/`.

Antes de restaurar, el script borra el contenido actual del database Neo4j del contenedor local y luego carga el snapshot con `cypher-shell`.

## Descubrir nodos faltantes en el grafo

Para ampliar analisis a nodos que todavia no existen en Neo4j, ejecuta:

```bash
python3 infra/neo4j/scripts/discover_missing_nodes.py
```

El script compara:

- `src/*.cbl` vs nodos `Program`
- `cpy/*.cpy` vs nodos `Copybook`
- sentencias `COPY` detectadas en COBOL (normalizando formato fijo 1-6 y 73-80) vs relaciones `INCLUDES_COPYBOOK`

Salida:

- reporte JSON en `infra/neo4j/reports/discovery-missing-nodes-*.json`
- resumen por consola con conteos de backlog pendiente

## Alternativa sin Compose (docker run)

```bash
docker run -d \
  --name neo4j-local \
  -p 7474:7474 \
  -p 7687:7687 \
  -e NEO4J_AUTH=neo4j/CambiaEstaClave123! \
  -v "$HOME/neo4j/data:/data" \
  -v "$HOME/neo4j/logs:/logs" \
  neo4j:5
```

## Recomendaciones

- Cambiar la password por una clave fuerte antes de usar datos reales.
- No exponer puertos fuera del entorno local sin revisar seguridad.
- Mantener volumenes persistentes para no perder datos al recrear el contenedor.

## Checklist Operativa de Consistencia

Esta checklist define el minimo obligatorio para considerar una corrida como consistente y reproducible en el tiempo.

### 1) Precondiciones

```bash
docker ps --filter name=neo4j-local
```

- El contenedor `neo4j-local` debe estar levantado.
- El alcance de programas debe existir en `src/`.

### 2) Discovery de backlog

```bash
python3 infra/neo4j/scripts/discover_missing_nodes.py
```

- Debe existir un reporte nuevo en `infra/neo4j/reports/discovery-missing-nodes-*.json`.
- El programa objetivo debe figurar como candidato o estar justificado si no aplica.

### 3) Ejecucion de ingestion (modo commit)

Para corridas operativas en commit, usar obligatoriamente el orquestador reproducible:

```bash
python3 infra/neo4j/scripts/e2e_ingest_pipeline.py --programs <PROGRAMA> --mode full
```

Artefactos minimos esperados por corrida:

- `*-extraction.json`
- `*-writepayload.json`
- `*-precheck.json`
- `*-final-report.json`
- `infra/neo4j/queries/ingest-<runId>.cypher`

### 4) Criterios de aceptacion de calidad

En `*-final-report.json`:

- `precheck.qualityGateResult = pass`
- `commitExecuted = true`
- `postAudit.missingMandatoryProperties = 0`
- `postAudit.invalidReviewStateMetadata = 0`
- `postAudit.invalidParagraphSummary = 0`
- `postAudit.missingCriticalRelationEvidence = 0`
- `postAudit.ontologyViolations = 0`

### 5) Verificacion de coherencia de politica

```bash
grep -n "Ejecucion Reproducible Obligatoria" .github/copilot-instructions.md
grep -n "e2e_ingest_pipeline.py" .github/agents/cobol-neo4j-orchestrator.agent.md
```

- Las instrucciones deben mantener la obligatoriedad de `e2e_ingest_pipeline.py` en corridas commit.

### 6) Snapshot para reproducibilidad inter-entornos

```bash
snapshot=$(python3 infra/neo4j/scripts/export_live_graph.py)
bash infra/neo4j/scripts/restore_from_snapshot.sh "$snapshot"
```

- Permite replicar el estado del grafo en otra maquina con el mismo artefacto versionado.
