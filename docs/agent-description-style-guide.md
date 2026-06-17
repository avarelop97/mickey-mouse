# Guia de Descripciones para Agentes, Prompts y Skills

## Objetivo

Unificar como describimos capacidades para mejorar invocacion, descubrimiento y calidad
operativa del sistema.

## Principios

1. Rol unico por agente.
2. Descripcion orientada a accion + limites.
3. Incluir trigger words reales de uso.
4. Declarar que NO hace.

## Plantilla de Descripcion (Agente)

Formato recomendado (1 linea):

`<Rol> para <dominio> con <resultado verificable>; usar para <casos>; evita <riesgo principal>.`

Ejemplo:

`Exploracion experta COBOL->Neo4j con evidencia verificable y validacion ontologica; usar para discovery, auditoria y precheck; evita escrituras peligrosas.`

## Campos Minimos Recomendados

Para `.agent.md`:
- `name`
- `description`
- `tools` minimos
- `argument-hint`

Para `.prompt.md`:
- `agent`
- `description`
- objetivo
- salida obligatoria

Para `SKILL.md`:
- `name`
- `description` rica en triggers
- procedimiento
- checklist de validacion

## Trigger Words Recomendadas

- discovery
- audit
- precheck
- ontology
- evidence
- cypher
- governance
- dry-run
- remediation

## Anti-patrones

- "Agente para todo"
- Descripciones vagas (ej: "ayuda con Neo4j")
- No declarar restricciones
- Mezclar exploracion y escritura sin gates

## Criterio de Calidad de Descripcion

Una descripcion es valida si responde en menos de 10 segundos:
1. Que hace.
2. Cuando usarlo.
3. Que riesgo evita.
4. Que no esta autorizado a hacer.
