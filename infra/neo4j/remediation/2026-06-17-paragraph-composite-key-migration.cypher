// Paragraph composite-key migration
// Date: 2026-06-17
// Goal: align live Neo4j graph with policy Paragraph(programName, name)

// 1) Backfill programName where a paragraph has a unique Program owner.
MATCH (prog:Program)-[:HAS_PARAGRAPH]->(par:Paragraph)
WHERE par.programName IS NULL OR trim(par.programName)=''
WITH par, collect(DISTINCT prog.name) AS owners
WHERE size(owners)=1
SET par.programName = owners[0];

// 2) Normalize legacy key as derived field for backward compatibility.
MATCH (par:Paragraph)
WHERE par.programName IS NOT NULL AND trim(par.programName)<>''
  AND par.name IS NOT NULL AND trim(par.name)<>''
SET par.key = par.programName + ':' + par.name;

// 3) Enforce composite uniqueness.
CREATE CONSTRAINT paragraph_program_name_unique IF NOT EXISTS
FOR (n:Paragraph) REQUIRE (n.programName, n.name) IS UNIQUE;

// 4) Drop legacy uniqueness on key (old policy).
DROP CONSTRAINT paragraph_key_unique IF EXISTS;

// 5) Validation snapshots.
MATCH (par:Paragraph)
RETURN count(*) AS totalParagraph,
       count(CASE WHEN par.programName IS NULL OR trim(par.programName)='' THEN 1 END) AS missingProgramName,
       count(CASE WHEN par.key IS NULL OR trim(par.key)='' THEN 1 END) AS missingKey;

MATCH (par:Paragraph)
WITH par.programName AS programName, par.name AS name, count(*) AS c
WHERE c > 1
RETURN count(*) AS duplicateCompositeKeys;
