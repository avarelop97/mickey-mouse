# Catalogo de Agentes (Actual)

## Estado Actual

1. `cobol-neo4j-orchestrator`
- Estado: activo
- Rol: orquestador operativo

1. `cobol-neo4j-orchestrator` (orquestador)
- Entrada: objetivo, alcance, modo
- Salida: consolidado final + decision + control de calidad de `ExtractionProposal`, `WritePayload` y `post-write-check`
- Dependencias: subagentes especializados

2. `cobol-evidence-extractor` (subagente)
- Entrada: programa(s), archivos fuente
- Salida: `ExtractionProposal` + evidencias verificables con lineas fisicas
- Restricciones: no escritura en BD

3. `neo4j-ontology-auditor` (subagente)
- Entrada: `ExtractionProposal`, `WritePayload` o estado del grafo persistido
- Salida: evaluacion determinista consolidada + findings
- Restricciones: no escritura

4. `cypher-expert` (subagente)
- Entrada: `WritePayload` validado
- Salida: resultado de insercion/actualizacion en Neo4j
- Restricciones: ejecutar solo cuando orquestador autoriza

## Matriz de Responsabilidades

| Capacidad | Orquestador | Evidence | Auditor | Cypher Expert |
|---|---|---|---|---|
| Discovery de codigo | X | X | - | - |
| Inventario de evidencia | X | X | - | - |
| Asociaciones nodales propuestas | X | X | - | - |
| Enriquecimiento a WritePayload | X | - | - | - |
| Validacion de propuesta semantica | X | - | X | - |
| Validacion ontologica y propiedades de payload | X | - | X | - |
| Insercion en BD | X (autoriza) | - | - | X |
| Validacion determinista post-escritura | X | - | X | - |

## Politica de Delegacion

El orquestador delega cuando:
- Se requiere especializacion tecnica clara.
- Se necesita aislamiento de contexto.
- El resultado debe seguir contrato fijo.
- Se requiere consolidar multiples inputs antes de la siguiente etapa.

No delega cuando:
- La tarea es simple y de bajo riesgo.
- No hay evidencia suficiente para ejecutar.

## Flujo Operativo Actual

1. Orquestador -> Evidence Extractor
2. Evidence Extractor -> Orquestador
3. Orquestador -> payload-check (Auditor)
4. Auditor -> Orquestador
5. Orquestador -> Cypher Expert
6. Cypher Expert -> Orquestador
7. Orquestador -> post-write-check (Auditor)
8. Auditor -> Orquestador
