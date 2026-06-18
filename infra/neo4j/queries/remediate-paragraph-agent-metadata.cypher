// ============================================================================
// REMEDIATION: Paragraph metadata de agente y limpieza de metadata humana temprana
// ============================================================================
// Objetivo:
// - Completar agentReviewedBy / agentReviewedAt / agentReviewNotes en Paragraph.
// - Asegurar reviewedBy/reviewedAt vacios mientras reviewStatus sea pending_human_review.
// ============================================================================

// 1) Completar metadata de agente faltante
MATCH (n:Paragraph)
WHERE n.agentReviewedBy IS NULL OR trim(toString(n.agentReviewedBy)) = ''
   OR n.agentReviewedAt IS NULL OR trim(toString(n.agentReviewedAt)) = ''
   OR n.agentReviewNotes IS NULL OR trim(toString(n.agentReviewNotes)) = ''
SET n.agentReviewedBy = CASE
      WHEN n.agentReviewedBy IS NULL OR trim(toString(n.agentReviewedBy)) = '' THEN 'auto-remediation'
      ELSE n.agentReviewedBy
    END,
    n.agentReviewedAt = CASE
      WHEN n.agentReviewedAt IS NULL OR trim(toString(n.agentReviewedAt)) = '' THEN toString(datetime())
      ELSE n.agentReviewedAt
    END,
    n.agentReviewNotes = CASE
      WHEN n.agentReviewNotes IS NULL OR trim(toString(n.agentReviewNotes)) = ''
      THEN 'Metadata normalizada automaticamente; pendiente de revision humana.'
      ELSE n.agentReviewNotes
    END,
    n.lastRemediationAt = datetime().epochMillis
RETURN count(n) AS remediatedAgentMetadata;

// 2) Limpiar metadata humana adelantada en nodos pending_human_review (todas las tipologias)
MATCH (n)
WHERE any(lbl IN labels(n) WHERE lbl IN ['Program','Paragraph','Copybook','DBTable','ParamType','ExternalRoutine','OutputFile'])
  AND n.reviewStatus = 'pending_human_review'
  AND (
    (n.reviewedBy IS NOT NULL AND trim(toString(n.reviewedBy)) <> '') OR
    (n.reviewedAt IS NOT NULL AND trim(toString(n.reviewedAt)) <> '')
  )
SET n.reviewedBy = NULL,
    n.reviewedAt = NULL,
    n.lastRemediationAt = datetime().epochMillis
RETURN count(n) AS clearedEarlyHumanMetadata;
