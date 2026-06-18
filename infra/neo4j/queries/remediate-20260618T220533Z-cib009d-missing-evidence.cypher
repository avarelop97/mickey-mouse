// Remediacion no destructiva de evidencia faltante para CIB009D

MATCH (:Program {name:'CIB009D'})-[r:CALLS_ROUTINE]->(:ExternalRoutine {name:'ADR003'})
WHERE r.evidenceFile IS NULL OR trim(toString(r.evidenceFile))='' OR r.evidenceLines IS NULL OR size(r.evidenceLines)=0
SET r.evidenceFile = 'cpy/SI2CE028.cpy',
    r.evidenceLines = [22];

MATCH (:Program {name:'CIB009D'})-[r:CALLS_ROUTINE]->(:ExternalRoutine {name:'ADR009'})
WHERE r.evidenceFile IS NULL OR trim(toString(r.evidenceFile))='' OR r.evidenceLines IS NULL OR size(r.evidenceLines)=0
SET r.evidenceFile = 'cpy/SI2CE028.cpy',
    r.evidenceLines = [24, 28];

MATCH (:Program {name:'CIB009D'})-[r:CALLS_ROUTINE]->(:ExternalRoutine {name:'VDB403O'})
WHERE r.evidenceFile IS NULL OR trim(toString(r.evidenceFile))='' OR r.evidenceLines IS NULL OR size(r.evidenceLines)=0
SET r.evidenceFile = 'cpy/SI2CE028.cpy',
    r.evidenceLines = [27];

MATCH (:Program {name:'CIB009D'})-[r:CALLS_ROUTINE]->(:ExternalRoutine {name:'DSNTIAR'})
WHERE r.evidenceFile IS NULL OR trim(toString(r.evidenceFile))='' OR r.evidenceLines IS NULL OR size(r.evidenceLines)=0
SET r.evidenceFile = 'cpy/SIC004.cpy',
    r.evidenceLines = [10];

MATCH (:Paragraph {programName:'CIB009D', name:'970-SQL-ERROR'})-[r:IMPLEMENTED_BY]->(:Copybook {name:'SIC004'})
WHERE r.evidenceFile IS NULL OR trim(toString(r.evidenceFile))='' OR r.evidenceLines IS NULL OR size(r.evidenceLines)=0
SET r.evidenceFile = 'src/CIB009D.cbl',
    r.evidenceLines = [388];

MATCH (:Paragraph {programName:'CIB009D', name:'999-CONST-ENCA'})-[r:IMPLEMENTED_BY]->(:Copybook {name:'SICCE028'})
WHERE r.evidenceFile IS NULL OR trim(toString(r.evidenceFile))='' OR r.evidenceLines IS NULL OR size(r.evidenceLines)=0
SET r.evidenceFile = 'src/CIB009D.cbl',
    r.evidenceLines = [749];

MATCH (:Program {name:'CIB009D'})-[r:USES_PARAM_TYPE]->(:ParamType {name:'TA0'})
WHERE r.evidenceFile IS NULL OR trim(toString(r.evidenceFile))='' OR r.evidenceLines IS NULL OR size(r.evidenceLines)=0
SET r.evidenceFile = 'src/CIB009D.cbl',
    r.evidenceLines = [416];

MATCH (:Program {name:'CIB009D'})-[r:USES_PARAM_TYPE]->(:ParamType {name:'TA1'})
WHERE r.evidenceFile IS NULL OR trim(toString(r.evidenceFile))='' OR r.evidenceLines IS NULL OR size(r.evidenceLines)=0
SET r.evidenceFile = 'src/CIB009D.cbl',
    r.evidenceLines = [576];

MATCH (:Program {name:'CIB009D'})-[r:USES_PARAM_TYPE]->(:ParamType {name:'TA5'})
WHERE r.evidenceFile IS NULL OR trim(toString(r.evidenceFile))='' OR r.evidenceLines IS NULL OR size(r.evidenceLines)=0
SET r.evidenceFile = 'src/CIB009D.cbl',
    r.evidenceLines = [423];

MATCH (:Program {name:'CIB009D'})-[r:WRITES_FILE]->(:OutputFile {name:'CIB009R1'})
WHERE r.evidenceFile IS NULL OR trim(toString(r.evidenceFile))='' OR r.evidenceLines IS NULL OR size(r.evidenceLines)=0
SET r.evidenceFile = 'src/CIB009D.cbl',
    r.evidenceLines = [33, 602];
