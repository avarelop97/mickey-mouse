# Neo4j — Test Graph (grafo de documentación)

Entorno Neo4j aislado que contiene un grafo mínimo de demostración con **un nodo representativo de cada uno de los 24 tipos** del contrato ontológico y **todas las relaciones válidas** entre ellos.

Sirve para explorar el esquema sin tocar el grafo de producción.

## Contenido del grafo

| Dominio | Tipos de nodo |
|---|---|
| Funcional COBOL (core) | Program, Functionality, SubFunctionality, Paragraph ×2, Copybook, DBTable, ParamType, ExternalRoutine, OutputFile |
| Abstracción de Proceso | ProcessFlow, ProcessState ×2 |
| Orquestación JCL/PRC | Procedure, ProcStep, ProcVariable, ProcDD ×2, RuntimeDataset, SchedulerCondition, ControlCardMember, SysoutChannel, BatchJob |
| Presentación CICS/BMS | BmsMapset, BmsMap, BmsField, UiLiteral, UiFunctionKey |

Cubre los 45 tipos de relación del contrato (incluyendo todas las relaciones semánticas con `evidenceFile` y `evidenceLines`).

## Requisitos

- Docker Engine operativo.
- Puertos `7475` y `7688` libres en el host.
- No es necesario que `neo4j-local` (producción) esté apagado; usan puertos distintos.

## Arranque

```bash
docker compose -f infra/neo4j/test-graph/docker-compose.yml up -d
```

El servicio `seed` espera a que Neo4j esté listo y carga el grafo automáticamente. Puede tardar entre 30 y 90 segundos en la primera ejecución.

Para ver que el seed terminó:

```bash
docker logs neo4j-final-seed
```

Salida esperada al finalizar:

```
Cargando test graph...
Test graph seed cargado correctamente.
```

## Acceso

| Interfaz | URL |
|---|---|
| Browser (UI) | http://localhost:7475 |
| Bolt (driver) | bolt://localhost:7688 |

Credenciales por defecto: `neo4j` / `TestClave123!`

Para usar una contraseña distinta:

```bash
NEO4J_TEST_PASSWORD='MiClave123!' docker compose -f infra/neo4j/test-graph/docker-compose.yml up -d
```

## Consultas de exploración

Ver todos los tipos de nodo y cuántos hay de cada uno:

```cypher
MATCH (n) RETURN labels(n) AS tipo, count(n) AS total ORDER BY tipo;
```

Ver todos los tipos de relación:

```cypher
MATCH ()-[r]->() RETURN DISTINCT type(r) AS relacion ORDER BY relacion;
```

Explorar el grafo completo desde el programa central:

```cypher
MATCH path = (p:Program {name: 'TEST-PROGRAM'})-[*1..2]-(n)
RETURN path;
```

Ver todos los nodos con sus propiedades:

```cypher
MATCH (n) RETURN labels(n) AS tipo, properties(n) AS props ORDER BY tipo;
```

## Parada y limpieza

```bash
# Solo parar
docker compose -f infra/neo4j/test-graph/docker-compose.yml stop

# Parar y eliminar contenedores (datos se conservan en los volúmenes)
docker compose -f infra/neo4j/test-graph/docker-compose.yml down

# Eliminar todo, incluyendo datos
docker compose -f infra/neo4j/test-graph/docker-compose.yml down -v
```

## Recargar el seed desde cero

```bash
docker compose -f infra/neo4j/test-graph/docker-compose.yml down -v
docker compose -f infra/neo4j/test-graph/docker-compose.yml up -d
```

## Diferencias con el entorno de producción

| | Producción | Test |
|---|---|---|
| Contenedor | `neo4j-local` | `neo4j-final` |
| Puerto HTTP | 7474 | 7475 |
| Puerto Bolt | 7687 | 7688 |
| Volúmenes | `neo4j_data`, `neo4j_logs` | `neo4j_test_data`, `neo4j_test_logs` |
| Contraseña env | `NEO4J_PASSWORD` | `NEO4J_TEST_PASSWORD` |
| Datos | Grafo real (miles de nodos) | 28 nodos de demostración |
