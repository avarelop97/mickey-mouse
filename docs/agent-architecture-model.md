# Modelo de Arquitectura de Agentes

## Objetivo

Definir una arquitectura de agentes que reduzca errores en exploracion COBOL -> Neo4j,
mejore trazabilidad y haga mas predecible la ejecucion.

## Decision Recomendada

Adoptar un modelo de orquestador + subagentes especialistas, con doble validacion
determinista (antes y despues de escritura).

- Orquestador: decide que hacer, quien lo hace, que input enviar y valida calidad de salida.
- Subagentes: ejecutan funciones acotadas con contrato estricto de entrada/salida.

Este modelo evita mezclar responsabilidades y mejora trazabilidad de decisiones.

## Topologia Propuesta

1. `cobol-neo4j-orchestrator` (orquestador)
- Tipo: coordinacion y control de calidad
- Responsabilidad:
	- decidir que tareas ejecutar en cada momento
	- decidir que agente ejecuta cada tarea
	- construir y consolidar inputs multi-fuente para cada subagente
	- validar calidad del output de cada subagente antes del siguiente paso
	- consolidar decision final PASS/FAIL
- Escritura: no escribe directamente; delega ejecucion en `cypher-expert`

2. `cobol-evidence-extractor` (subagente)
- Tipo: extraccion
- Responsabilidad:
	- recibir un fichero COBOL objetivo
	- identificar elementos del programa (paragraphs, dependencias, copybooks, externos)
	- decidir la informacion relevante para el sistema
	- construir asociaciones entre elementos (propuesta de relaciones)
- Salida:
	- inventario de nodos propuestos
	- inventario de relaciones propuestas
	- evidencia verificable (archivo + lineas fisicas)

3. `neo4j-ontology-auditor` (subagente)
- Tipo: auditoria
- Responsabilidad:
	- ejecutar set determinista de queries de control
	- validar completitud de nodos, relaciones y propiedades
	- validar que valores de propiedades sean validos segun contexto de ejecucion
	- consolidar resultado de evaluacion
- Salida:
	- documento de evaluacion consolidado
	- findings por severidad
	- resultados por query ejecutada

4. `cypher-expert` (subagente)
- Tipo: ejecucion de escritura
- Responsabilidad:
	- insertar en Neo4j el contenido validado por el orquestador
	- ejecutar Cypher de carga de manera idempotente
- Salida:
	- reporte de ejecucion (creados/reutilizados/actualizados)
	- errores de ejecucion si aplican

## Flujo Operativo

1. Orquestador recibe objetivo, modo y alcance.
2. Orquestador delega a `cobol-evidence-extractor`.
3. Orquestador valida calidad minima del output de evidencia.
4. Orquestador delega a `neo4j-ontology-auditor` para validacion pre-escritura
	(incluyendo validez de propiedades).
5. Orquestador evalua resultado de auditoria pre-escritura.
6. Si pasa calidad, orquestador delega a `cypher-expert` para insercion.
7. Orquestador delega de nuevo a `neo4j-ontology-auditor` para validacion
	post-escritura determinista en BD.
8. Orquestador consolida resultado final y decision.

## Reglas de Bloqueo

Detener y pedir validacion humana si:
- Falta evidencia en relaciones criticas.
- Hay violacion de ontologia.
- Hay duplicados ambiguos no resolubles por clave natural.
- Hay inconsistencia de `reviewStatus`.
- El auditor marca salida no valida en cualquier etapa.

## Beneficios Esperados

- Menos errores por especializacion de rol.
- Mejor auditabilidad de decisiones.
- Menor drift entre prompts, skills y agentes.
- Mayor mantenibilidad cuando crezca el pipeline.

## Contrato de Calidad Entre Etapas

1. Extractor -> Orquestador
- Debe incluir inventario de nodos, relaciones y evidencia.

2. Orquestador -> Auditor (pre)
- Debe enviar propuesta consolidada para validacion determinista.

3. Auditor (pre) -> Orquestador
- Debe devolver estado `valid` y lista de bloqueos.

4. Orquestador -> Cypher Expert
- Solo si `valid = true` en auditoria pre.

5. Cypher Expert -> Orquestador
- Debe devolver resultado de ejecucion estructurado.

6. Orquestador -> Auditor (post)
- Debe enviar contexto de ejecucion para verificacion en BD.

7. Auditor (post) -> Orquestador
- Debe devolver evaluacion final determinista.

## Plan de Adopcion (Fases)

Fase 1 (ahora)
- Ajustar documentacion y contratos al modelo objetivo.

Fase 2
- Crear `cobol-evidence-extractor` y `neo4j-ontology-auditor`.

Fase 3
- Crear `cypher-expert` y activar flujo completo pre/post auditoria.
