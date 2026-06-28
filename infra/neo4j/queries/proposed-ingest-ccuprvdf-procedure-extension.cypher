// Procedure-centric ingest: prc/CCUPRVDF.prc
// Aligned with active ontology contract (core + operational layer).

WITH {
  ingestion: 'manual-proposal',
  reviewStatus: 'pending_human_review',
  reviewRequired: true,
  reviewSource: 'auto-ingestion',
  sourceFile: 'prc/CCUPRVDF.prc'
} AS cfg

MERGE (p:Procedure {name: 'CCUPRVDF'})
SET p.ingestion = cfg.ingestion,
    p.layer = 'orchestration',
    p.nodeType = 'Procedure',
    p.viewTag = 'jcl-proc',
    p.reviewStatus = cfg.reviewStatus,
    p.reviewRequired = cfg.reviewRequired,
    p.reviewSource = cfg.reviewSource,
    p.sourceFile = cfg.sourceFile,
    p.system = 'SISTEMA INTEGRAL DE VALORES (S.I.V.A.)',
    p.process = 'VOB926E',
    p.objective = 'Recibe parametros enviados de CSP y los graba en archivo OSCT',
    p.description = 'PROC de orchestration para recibir parametros CSP y preparar la salida temporal y final.'

WITH p, cfg
UNWIND [
  {name:'SALS', direction:'IN', role:'sysout-selector', lines:[3]},
  {name:'SALU', direction:'IN', role:'sysout-selector', lines:[3]},
  {name:'CICS', direction:'IN', role:'cics-routing', lines:[3]},
  {name:'USAN', direction:'IN', role:'regional-routing-san', lines:[7]},
  {name:'UPDR', direction:'IN', role:'regional-routing-pdr', lines:[4]}
] AS v
MERGE (pv:ProcVariable {procedureName: p.name, name: v.name, direction: v.direction})
SET pv.ingestion = cfg.ingestion,
    pv.layer = 'orchestration',
    pv.nodeType = 'ProcVariable',
    pv.viewTag = 'jcl-proc-variable',
    pv.reviewStatus = cfg.reviewStatus,
    pv.reviewRequired = cfg.reviewRequired,
    pv.reviewSource = cfg.reviewSource,
    pv.description = 'Variable PROC ' + v.direction + ' con rol ' + v.role + '.',
    pv.semanticRole = v.role
MERGE (p)-[rDefVar:DEFINES_VARIABLE]->(pv)
SET rDefVar.evidenceFile = cfg.sourceFile,
    rDefVar.evidenceLines = v.lines

WITH p, cfg
UNWIND [
  {stepName:'PASO06', execType:'PGM', execTarget:'VOB942E', parmRaw:'&IEMI,&ISER,&ICUP,&INSER,&INCUP,&ICON,&IPROC,&FINI,&ITIPO,&FFIN,&COMP', lines:[13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28]},
  {stepName:'PASO05', execType:'PGM', execTarget:'IKJEFT01', parmRaw:'COND=(4,LT)', lines:[35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61]},
  {stepName:'PASO04', execType:'PGM', execTarget:'IEFBR14', parmRaw:'COND=(4,LT)', lines:[66,67,68,69,70,71,72]},
  {stepName:'PASO03', execType:'PGM', execTarget:'IKJEFT01', parmRaw:'COND=(4,LT)', lines:[79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123]},
  {stepName:'PASO02', execType:'PGM', execTarget:'IKJEFT01', parmRaw:'COND=(4,LT)', lines:[130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170]},
  {stepName:'PASO01', execType:'PGM', execTarget:'MAILOPER', parmRaw:'AVISO DE ERROR A CONSOLA', lines:[186,187,188,189,190]}
] AS s
MERGE (st:ProcStep {procedureName: p.name, stepName: s.stepName})
SET st.ingestion = cfg.ingestion,
    st.layer = 'orchestration',
    st.nodeType = 'ProcStep',
    st.viewTag = 'jcl-proc-step',
    st.reviewStatus = cfg.reviewStatus,
    st.reviewRequired = cfg.reviewRequired,
    st.reviewSource = cfg.reviewSource,
    st.execType = s.execType,
    st.execTarget = s.execTarget,
    st.parmRaw = s.parmRaw,
    st.description = 'Paso EXEC ' + s.stepName + ' que invoca ' + s.execTarget + ' con parametros operativos.'
MERGE (p)-[rStep:HAS_STEP]->(st)
SET rStep.evidenceFile = cfg.sourceFile,
    rStep.evidenceLines = s.lines
MERGE (er:ExternalRoutine {name: s.execTarget})
SET er.ingestion = cfg.ingestion,
    er.layer = 'integration',
    er.nodeType = 'ExternalRoutine',
    er.viewTag = 'external-routine',
    er.reviewStatus = cfg.reviewStatus,
    er.reviewRequired = cfg.reviewRequired,
    er.reviewSource = cfg.reviewSource,
    er.description = 'Rutina o utilidad externa invocada por el paso ' + s.stepName + '.'
MERGE (st)-[rExec:EXECUTES_PROGRAM]->(er)
SET rExec.evidenceFile = cfg.sourceFile,
    rExec.evidenceLines = s.lines

WITH p, cfg
UNWIND [
  {stepName:'PASO06', ddName:'VOB942A1', ddType:'DATASET', dataset:'&&ARCHPAR', disp:'NEW,PASS', lines:[24,25,26,27,28]},
  {stepName:'PASO05', ddName:'VOBA06A1', ddType:'DATASET', dataset:'&&ARCHPAR', disp:'OLD,PASS', lines:[37]},
  {stepName:'PASO03', ddName:'VIB431A1', ddType:'DATASET', dataset:'&&ARCHPAR', disp:'OLD,PASS', lines:[55]},
  {stepName:'PASO02', ddName:'SAN431R1', ddType:'SYSOUT', dataset:null, disp:null, lines:[145], routeVar:'USAN', observedRaw:'USAQ'},
  {stepName:'PASO02', ddName:'ZZZ431R1', ddType:'SYSOUT', dataset:null, disp:null, lines:[146], routeVar:'UZZZ'},
  {stepName:'PASO02', ddName:'MMU431R1', ddType:'SYSOUT', dataset:null, disp:null, lines:[162], routeVar:'UMMU'}
] AS d
MERGE (dd:ProcDD {procedureName: p.name, ddName: d.ddName})
SET dd.ingestion = cfg.ingestion,
    dd.layer = 'orchestration',
    dd.nodeType = 'ProcDD',
    dd.viewTag = 'jcl-proc-dd',
    dd.reviewStatus = cfg.reviewStatus,
    dd.reviewRequired = cfg.reviewRequired,
    dd.reviewSource = cfg.reviewSource,
    dd.ddType = d.ddType,
    dd.observedRawVariable = coalesce(d.observedRaw, d.routeVar),
    dd.description = 'Definicion DD ' + d.ddName + ' del paso ' + d.stepName + ' (' + d.ddType + ').'
MERGE (p)-[rDefDd:DEFINES_DD]->(dd)
SET rDefDd.evidenceFile = cfg.sourceFile,
    rDefDd.evidenceLines = d.lines

MERGE (st:ProcStep {procedureName: p.name, stepName: d.stepName})
MERGE (st)-[rUseDd:USES_DD]->(dd)
SET rUseDd.evidenceFile = cfg.sourceFile,
    rUseDd.evidenceLines = d.lines

RETURN 'CCUPRVDF' AS procedure, 'Procedure-centric draft graph loaded' AS status, cfg.sourceFile AS sourceFile;