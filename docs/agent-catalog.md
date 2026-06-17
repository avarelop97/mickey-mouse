# Catalogo de Agentes (Objetivo)

## Estado Actual

1. `cobol-neo4j-explorer`
- Estado: activo
- Rol actual: orquestador inicial
- Recomendacion: completar delegacion a especialistas

## Estado Objetivo

1. `cobol-neo4j-explorer` (orquestador)
- Entrada: objetivo, alcance, modo
- Salida: consolidado final + decision + control de calidad de outputs
- Dependencias: subagentes especializados

2. `cobol-evidence-extractor` (subagente)
- Entrada: programa(s), archivos fuente
- Salida: nodos/relaciones propuestas + evidencias verificables con lineas fisicas
- Restricciones: no escritura en BD

3. `neo4j-ontology-auditor` (subagente)
- Entrada: propuesta de datos (pre) o estado del grafo (post)
- Salida: evaluacion determinista consolidada + findings
- Restricciones: no escritura

4. `cypher-expert` (subagente)
- Entrada: findings validados
- Salida: resultado de insercion/actualizacion en Neo4j
- Restricciones: ejecutar solo cuando orquestador autoriza

## Matriz de Responsabilidades

| Capacidad | Orquestador | Evidence | Auditor | Cypher Expert |
|---|---|---|---|---|
| Discovery de codigo | X | X | - | - |
| Inventario de evidencia | X | X | - | - |
| Asociaciones nodales propuestas | X | X | - | - |
| Validacion ontologica y propiedades (pre) | X | - | X | - |
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

## Flujo Objetivo

1. Orquestador -> Evidence Extractor
2. Evidence Extractor -> Orquestador
3. Orquestador -> Auditor (pre)
4. Auditor (pre) -> Orquestador
5. Orquestador -> Cypher Expert
6. Cypher Expert -> Orquestador
7. Orquestador -> Auditor (post)
8. Auditor (post) -> Orquestador

## Criterios de Paso a Produccion

1. Cada subagente tiene salida estructurada estable.
2. Cobertura de checks criticos completa en pre y post auditoria.
3. Cero violaciones recurrentes de ontologia en ejecucion determinista.
4. Aprobacion humana del flujo end-to-end.
