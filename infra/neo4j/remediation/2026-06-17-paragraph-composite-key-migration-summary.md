# Paragraph Composite-Key Migration Summary

Date: 2026-06-17
Database: neo4j-local
Scope: Paragraph nodes and constraints

## Executed actions

1. Backfilled `Paragraph.programName` from unique `Program-[:HAS_PARAGRAPH]->Paragraph` ownership.
2. Normalized `Paragraph.key` to `programName:name` as derived compatibility field.
3. Created composite unique constraint:
   - `paragraph_program_name_unique` on `(programName, name)`.
4. Dropped legacy unique constraint:
   - `paragraph_key_unique` on `key`.

## Validation results

- `Paragraph` total: 473
- `Paragraph` missing `programName`: 0
- `Paragraph` missing `key`: 0
- Duplicate composite keys `(programName, name)`: 0

## Final constraint state for Paragraph

- Active: `paragraph_program_name_unique` (`(programName, name)`)
- Removed: `paragraph_key_unique` (`key`)

## Safety notes

- Backfill was only applied where owner cardinality was exactly 1.
- No ambiguous multi-owner paragraph required manual intervention.
- `key` remains populated as a compatibility field (not as uniqueness anchor).
