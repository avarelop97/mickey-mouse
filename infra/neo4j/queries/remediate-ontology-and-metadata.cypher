// Remediation script: ontology pair fixes + metadata normalization
// Date: 2026-06-17
// Safety: idempotent where possible, non-destructive defaults via coalesce

// ------------------------------------------------------------------
// A) Migrate invalid Paragraph-CALLS_ROUTINE-ExternalRoutine to
//    Paragraph-DEPENDS_ON_EXTERNAL only when evidence exists.
// ------------------------------------------------------------------
MATCH (pg:Paragraph)-[r:CALLS_ROUTINE]->(er:ExternalRoutine)
WHERE r.evidenceFile IS NOT NULL
  AND trim(r.evidenceFile) <> ''
  AND r.evidenceLines IS NOT NULL
  AND size(r.evidenceLines) > 0
MERGE (pg)-[d:DEPENDS_ON_EXTERNAL]->(er)
ON CREATE SET
  d.why = coalesce(r.why, 'Migrated from invalid CALLS_ROUTINE paragraph-level edge'),
  d.evidenceFile = r.evidenceFile,
  d.evidenceLines = r.evidenceLines,
  d.runId = 'remediation-20260617'
SET d.lastRemediationAt = datetime().epochMillis;

// ------------------------------------------------------------------
// B) Remove invalid pair edges that are not allowed by ontology.
// ------------------------------------------------------------------
MATCH (:Paragraph)-[r:CALLS_ROUTINE]->(:Paragraph)
DELETE r;

MATCH (:Paragraph)-[r:CALLS_ROUTINE]->(:ExternalRoutine)
DELETE r;

// Convert Paragraph-READS_TABLE->DBTable to Program-READS_TABLE->DBTable.
MATCH (pg:Paragraph)-[r:READS_TABLE]->(tb:DBTable)
MATCH (prg:Program {name: pg.programName})
MERGE (prg)-[rr:READS_TABLE]->(tb)
ON CREATE SET
  rr.runId = 'remediation-20260617',
  rr.evidenceFile = coalesce(r.evidenceFile, pg.evidenceFile),
  rr.evidenceLines = coalesce(r.evidenceLines, pg.evidenceLines)
SET rr.lastRemediationAt = datetime().epochMillis
DELETE r;

// ------------------------------------------------------------------
// C) Normalize mandatory metadata (without overriding valid values).
// ------------------------------------------------------------------
MATCH (n)
WITH n, labels(n)[0] AS label
WHERE label IN ['Program','Paragraph','Copybook','DBTable','ParamType','ExternalRoutine','OutputFile']
SET n.ingestion = coalesce(n.ingestion, 'auto'),
    n.layer = coalesce(
      n.layer,
      CASE label
        WHEN 'Program' THEN 'program'
        WHEN 'Paragraph' THEN 'execution'
        WHEN 'Copybook' THEN 'dependency'
        WHEN 'DBTable' THEN 'data-access'
        WHEN 'ParamType' THEN 'data-access'
        WHEN 'ExternalRoutine' THEN 'integration'
        WHEN 'OutputFile' THEN 'output'
      END
    ),
    n.nodeType = coalesce(
      n.nodeType,
      CASE label
        WHEN 'Program' THEN 'program'
        WHEN 'Paragraph' THEN 'process-step'
        WHEN 'Copybook' THEN 'copybook'
        WHEN 'DBTable' THEN 'physical-table'
        WHEN 'ParamType' THEN 'logical-param-type'
        WHEN 'ExternalRoutine' THEN 'external-service-call'
        WHEN 'OutputFile' THEN 'report-file'
      END
    ),
    n.viewTag = coalesce(
      n.viewTag,
      CASE label
        WHEN 'Program' THEN 'program'
        WHEN 'Paragraph' THEN 'execution'
        WHEN 'Copybook' THEN 'dependency'
        WHEN 'DBTable' THEN 'data-access'
        WHEN 'ParamType' THEN 'data-access'
        WHEN 'ExternalRoutine' THEN 'integration'
        WHEN 'OutputFile' THEN 'output'
      END
    ),
    n.reviewStatus = coalesce(n.reviewStatus, 'pending_human_review'),
    n.reviewSource = coalesce(n.reviewSource, 'auto-ingestion');

// ------------------------------------------------------------------
// D) Enforce reviewStatus <-> reviewRequired consistency.
// ------------------------------------------------------------------
MATCH (n)
WHERE n.reviewStatus IN ['pending_human_review','reviewed_human','rejected_human']
SET n.reviewRequired = CASE
  WHEN n.reviewStatus = 'reviewed_human' THEN false
  ELSE true
END,
n.lastRemediationAt = datetime().epochMillis;

RETURN 'OK' AS status, 'Remediation applied' AS message;
