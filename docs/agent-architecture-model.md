# Modelo de Arquitectura de Agentes

## Estado Operativo Actual

La arquitectura activa usa un orquestador y subagentes especialistas, con una distincion explicita entre propuesta semantica de extraccion, payload de escritura y validacion post-escritura.

- Orquestador: decide que hacer, quien lo hace, que input enviar y valida calidad de salida.
- Subagentes: ejecutan funciones acotadas con contrato estricto de entrada/salida.

Este modelo evita mezclar responsabilidades y reduce falsos bloqueos en precheck.

## Topologia Activa

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
	- clasificar dependencias por contexto sintactico (COPY/INCLUDE vs SQL DML)
- Salida:
	- `ExtractionProposal`
	- inventario de nodos propuestos
	- inventario de relaciones propuestas
	- evidencia verificable (archivo + lineas fisicas)

3. `neo4j-ontology-auditor` (subagente)
- Tipo: auditoria
- Responsabilidad:
	- ejecutar set determinista de queries de control
	- validar propuesta semantica, payload de escritura o grafo persistido segun etapa
	- validar completitud y valores de propiedades solo cuando exista `WritePayload` o grafo persistido
	- consolidar resultado de evaluacion
- Salida:
	- documento de evaluacion consolidado
	- findings por severidad
	- resultados por query ejecutada

4. `cypher-expert` (subagente)
- Tipo: ejecucion de escritura
- Responsabilidad:
	- insertar en Neo4j un `WritePayload` validado por el orquestador
	- ejecutar Cypher de carga de manera idempotente
- Salida:
	- reporte de ejecucion (creados/reutilizados/actualizados)
	- errores de ejecucion si aplican

## Flujo Operativo

1. Orquestador recibe objetivo, modo y alcance.
2. Orquestador delega a `cobol-evidence-extractor`.
3. Orquestador valida calidad minima del `ExtractionProposal`.
4. Orquestador enriquece la propuesta y construye `WritePayload`.
5. Orquestador delega a `neo4j-ontology-auditor` para `payload-check`.
6. Si el payload pasa validacion, orquestador delega a `cypher-expert` para insercion.
7. Orquestador delega de nuevo a `neo4j-ontology-auditor` para `post-write-check` determinista en BD.
8. Orquestador consolida resultado final y decision.

## Reglas de Bloqueo

Detener y pedir validacion humana si:
- Falta evidencia en relaciones criticas.
- Hay violacion de ontologia.
- Hay duplicados ambiguos no resolubles por clave natural.
- Hay inconsistencia de `reviewStatus`.
- El auditor marca salida no valida en cualquier etapa.

## Beneficios Operativos

- Menos errores por especializacion de rol.
- Mejor auditabilidad de decisiones.
- Menor drift entre prompts, skills y agentes.
- Menor ambiguedad entre extraccion, enriquecimiento y escritura.

## Contrato de Calidad Entre Etapas

1. Extractor -> Orquestador
- Debe devolver `ExtractionProposal` con inventario, relaciones y evidencia.

2. Orquestador -> Auditor (`payload-check`)
- Debe enviar `WritePayload`, no propuesta bruta.

3. Auditor (`payload-check`) -> Orquestador
- Debe devolver estado `valid` y lista de bloqueos.

4. Orquestador -> Cypher Expert
- Solo si `valid = true` en `payload-check`.

5. Cypher Expert -> Orquestador
- Debe devolver resultado de ejecucion estructurado.

6. Orquestador -> Auditor (`post-write-check`)
- Debe enviar contexto de ejecucion para verificacion en BD.

7. Auditor (`post-write-check`) -> Orquestador
- Debe devolver evaluacion final determinista.
