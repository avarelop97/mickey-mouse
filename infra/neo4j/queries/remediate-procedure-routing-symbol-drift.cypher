// Remediation query: fix routing symbol drift in Procedure-centric operational layer.
// Scope: ProcDD entries where observedRawVariable='USAQ' but procedure declares USAN.
// Safety: idempotent; only updates mismatched rows and re-wires ROUTES_TO_VARIABLE.

// -----------------------------------------------------------------------------
// 1) PRECHECK (read-only)
// -----------------------------------------------------------------------------
MATCH (p:Procedure)-[:DEFINES_VARIABLE]->(pvUsan:ProcVariable)
WHERE toUpper(trim(coalesce(pvUsan.name, ''))) = 'USAN'
  AND toUpper(trim(coalesce(pvUsan.direction, ''))) = 'IN'
MATCH (p)-[:DEFINES_DD]->(dd:ProcDD)
WHERE toUpper(trim(coalesce(dd.observedRawVariable, ''))) = 'USAQ'
  AND toUpper(trim(coalesce(dd.ddName, ''))) STARTS WITH 'SAN'
OPTIONAL MATCH (dd)-[rOld:ROUTES_TO_VARIABLE]->(pvOld:ProcVariable)
WITH p, dd, pvUsan, rOld, pvOld,
     CASE WHEN rOld IS NULL THEN false ELSE true END AS hasRoute,
     CASE WHEN pvOld IS NULL THEN '(none)' ELSE coalesce(pvOld.name, '(sin-name)') END AS currentRoute
RETURN
  'PROC_ROUTING_SYMBOL_DRIFT' AS issueType,
  coalesce(p.name, '(sin procedure)') AS procedure,
  coalesce(dd.ddName, '(sin ddName)') AS ddName,
  coalesce(dd.observedRawVariable, '(sin observedRawVariable)') AS observedSymbol,
  'USAN' AS expectedSymbol,
  hasRoute,
  currentRoute,
  coalesce(p.sourceFile, '(sin sourceFile)') AS evidenceFile,
  coalesce(p.reviewStatus, '(sin reviewStatus)') AS reviewStatus
ORDER BY procedure, ddName;

// -----------------------------------------------------------------------------
// 2) APPLY REMEDIATION (write)
// -----------------------------------------------------------------------------
MATCH (p:Procedure)-[:DEFINES_VARIABLE]->(pvUsan:ProcVariable)
WHERE toUpper(trim(coalesce(pvUsan.name, ''))) = 'USAN'
  AND toUpper(trim(coalesce(pvUsan.direction, ''))) = 'IN'
MATCH (p)-[:DEFINES_DD]->(dd:ProcDD)
WHERE toUpper(trim(coalesce(dd.observedRawVariable, ''))) = 'USAQ'
  AND toUpper(trim(coalesce(dd.ddName, ''))) STARTS WITH 'SAN'
OPTIONAL MATCH (dd)-[rOld:ROUTES_TO_VARIABLE]->(pvOld:ProcVariable)
WITH p, dd, pvUsan, rOld,
     coalesce(rOld.evidenceFile, p.sourceFile) AS evFile,
     coalesce(rOld.evidenceLines, [1]) AS evLines
SET dd.observedRawVariable = 'USAN'
FOREACH (_ IN CASE WHEN rOld IS NULL THEN [] ELSE [1] END |
  DELETE rOld
)
MERGE (dd)-[rNew:ROUTES_TO_VARIABLE]->(pvUsan)
SET rNew.evidenceFile = coalesce(rNew.evidenceFile, evFile),
    rNew.evidenceLines = coalesce(rNew.evidenceLines, evLines)
RETURN
  'PROC_ROUTING_SYMBOL_DRIFT_REMEDIATED' AS issueType,
  coalesce(p.name, '(sin procedure)') AS procedure,
  coalesce(dd.ddName, '(sin ddName)') AS ddName,
  'USAQ' AS oldSymbol,
  'USAN' AS newSymbol,
  coalesce(p.sourceFile, '(sin sourceFile)') AS evidenceFile,
  coalesce(p.reviewStatus, '(sin reviewStatus)') AS reviewStatus
ORDER BY procedure, ddName;
