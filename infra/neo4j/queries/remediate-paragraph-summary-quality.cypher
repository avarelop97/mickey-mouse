// Remediation: ensure Paragraph.summary exists and has informative content.
WITH [
  'limpieza pendiente',
  'nodo tecnico no funcional',
  'requiere limpieza',
  'placeholder',
  'todo'
] AS invalidSummaryTokens
MATCH (n:Paragraph)
WHERE n.summary IS NULL
   OR trim(toString(n.summary)) = ''
   OR any(token IN invalidSummaryTokens WHERE toLower(toString(n.summary)) CONTAINS token)
   OR toLower(trim(toString(n.summary))) =~ '^parrafo .+ del programa .+\\.$'
OPTIONAL MATCH (n)-[:USES_COPYBOOK]->(cb:Copybook)
WITH n, count(DISTINCT cb) AS copybookDeps
OPTIONAL MATCH (n)-[:DEPENDS_ON_EXTERNAL]->(er:ExternalRoutine)
WITH n, copybookDeps, count(DISTINCT er) AS externalDeps
WITH n, copybookDeps, externalDeps,
     CASE
       WHEN toUpper(coalesce(n.name, '')) CONTAINS 'VALIDA' THEN 'Valida reglas y condiciones de negocio del flujo.'
       WHEN toUpper(coalesce(n.name, '')) CONTAINS 'INSERT' OR toUpper(coalesce(n.name, '')) CONTAINS 'UPDATE' THEN 'Persiste cambios en estructuras de datos del proceso.'
       WHEN toUpper(coalesce(n.name, '')) CONTAINS 'SELECT' OR toUpper(coalesce(n.name, '')) CONTAINS 'CONSULTA' OR toUpper(coalesce(n.name, '')) CONTAINS 'FETCH' OR toUpper(coalesce(n.name, '')) CONTAINS 'LEE' THEN 'Consulta y recupera informacion requerida por el proceso.'
       WHEN toUpper(coalesce(n.name, '')) CONTAINS 'INICIO' OR toUpper(coalesce(n.name, '')) CONTAINS 'CONTROL' THEN 'Controla la inicializacion y la orquestacion del flujo principal.'
       WHEN toUpper(coalesce(n.name, '')) CONTAINS 'FINAL' OR toUpper(coalesce(n.name, '')) CONTAINS 'CIERRE' THEN 'Gestiona el cierre del flujo y la devolucion de control.'
       WHEN toUpper(coalesce(n.name, '')) CONTAINS 'ARMA' OR toUpper(coalesce(n.name, '')) CONTAINS 'GENERA' THEN 'Construye datos y estructuras necesarias para la salida del proceso.'
       WHEN toUpper(coalesce(n.name, '')) CONTAINS 'ENVIA' OR toUpper(coalesce(n.name, '')) CONTAINS 'RECIBE' THEN 'Gestiona intercambio de informacion con componentes de entrada/salida.'
       ELSE 'Ejecuta un paso operativo del proceso en el contexto del programa.'
     END AS baseSummary
SET n.summary = baseSummary
                + CASE WHEN copybookDeps > 0 THEN ' Usa ' + toString(copybookDeps) + ' copybook(s) de soporte.' ELSE '' END
                + CASE WHEN externalDeps > 0 THEN ' Depende de ' + toString(externalDeps) + ' rutina(s) externa(s).' ELSE '' END,
    n.lastRemediationAt = datetime().epochMillis,
    n.ingestion = coalesce(n.ingestion, 'agent-remediation'),
    n.reviewStatus = coalesce(n.reviewStatus, 'pending_human_review'),
    n.reviewRequired = true,
    n.reviewSource = coalesce(n.reviewSource, 'agent-reviewed')
RETURN count(n) AS remediatedParagraphSummaries;
