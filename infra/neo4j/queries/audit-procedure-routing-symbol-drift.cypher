// Audit query: detect symbol drift between declared procedure variables and DD routing symbols.
// Scope: proposed Procedure-centric model (Procedure, ProcVariable, ProcDD).

MATCH (p:Procedure)-[:DEFINES_VARIABLE]->(pv:ProcVariable)
WITH p, collect(toUpper(trim(pv.name))) AS declaredSymbols
MATCH (p)-[:DEFINES_DD]->(dd:ProcDD)
WHERE dd.observedRawVariable IS NOT NULL
  AND trim(toString(dd.observedRawVariable)) <> ''
WITH p, dd, declaredSymbols, toUpper(trim(toString(dd.observedRawVariable))) AS referencedSymbol
WHERE NOT referencedSymbol IN declaredSymbols
RETURN
  'PROC_ROUTING_SYMBOL_DRIFT' AS issueType,
  p.name AS procedure,
  dd.ddName AS ddName,
  referencedSymbol,
  declaredSymbols,
  coalesce(p.sourceFile, '(sin sourceFile)') AS evidenceFile,
  coalesce(p.reviewStatus, '(sin reviewStatus)') AS reviewStatus
ORDER BY procedure, ddName;
