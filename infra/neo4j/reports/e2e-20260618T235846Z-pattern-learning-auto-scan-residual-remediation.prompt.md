# Residual Cases Remediation Prompt

You are a COBOL parser remediation specialist.

## Context
- runId: e2e-20260618T235846Z-pattern-learning-auto-scan
- programsAnalyzed: 50
- programsWithCoverageGaps: 0
- missingTargets: 0
- unsupportedMissingTargets: 0

## Objective
For each residual program/target, determine the deterministic remediation path without inventing nodes or relations.

## Required Output Per Target
1. rootCauseCategory: one of
   - IN_STRING_LITERAL
   - TRUNCATED_TARGET
   - COPYBOOK_TRANSITIVE
   - LOCAL_PARAGRAPH_NAME_VARIANT
   - TEMPLATE_ROUTINE
   - TRUE_MISSING_REQUIRES_HUMAN_REVIEW
2. evidence: source file + exact line(s)
3. deterministicAction: exact parser behavior change or no-change with manual review
4. risk: LOW/MEDIUM/HIGH and why

## Hard Constraints
- No hallucinations.
- No ontology violations.
- If ambiguous, choose TRUE_MISSING_REQUIRES_HUMAN_REVIEW.
- Keep unsupportedMissingTargets at 0.

## Residual Programs and Missing Targets

## Final Summary Required
- Count by rootCauseCategory
- Proposed deterministic changes count
- Targets that must stay pending_human_review
