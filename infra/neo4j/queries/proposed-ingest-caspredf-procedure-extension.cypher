// Procedure-centric ingest: prc/CASPREDF.prc
// Aligned with active ontology contract (core + operational layer).

WITH {
  ingestion: 'manual-proposal',
  reviewStatus: 'pending_human_review',
  reviewRequired: true,
  reviewSource: 'auto-ingestion',
  sourceFile: 'prc/CASPREDF.prc'
} AS cfg

MERGE (p:Procedure {name: 'CASPREDF'})
SET p.ingestion = cfg.ingestion,
    p.layer = 'orchestration',
    p.nodeType = 'Procedure',
    p.viewTag = 'jcl-proc',
    p.reviewStatus = cfg.reviewStatus,
    p.reviewRequired = cfg.reviewRequired,
    p.reviewSource = cfg.reviewSource,
    p.sourceFile = cfg.sourceFile,
    p.system = 'SISTEMA INTEGRAL DE VALORES (S.I.V.A.)',
    p.process = 'VOBA06E',
    p.objective = 'Recibe parametros enviados de CSP y los graba en archivo OSCT',
    p.description = 'PROC de orchestracion para carga de parametros de CSP y persistencia temporal en &&ARCHPAR antes de generar la salida OSCT.'

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
  {stepName:'PASO04', execType:'PGM', execTarget:'VOB942E', parmRaw:'&IEMI,&ISER,&ICUP,&INSER,&INCUP,&ICON,&IPROC,&FINI,&ITIPO,&FFIN,&COMP', lines:[13,14,15], condName:null, condDateScope:null},
  {stepName:'PASO03', execType:'PGM', execTarget:'IKJEFT01', parmRaw:'COND=(4,LT)', lines:[35,36,37,38,39,40,41,42,43,44,45,46], condName:'COND_4_LT', condDateScope:'STEP'},
  {stepName:'PASO02', execType:'PGM', execTarget:'IKJEFT01', parmRaw:'COND=(4,LT)', lines:[53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93], condName:'COND_4_LT', condDateScope:'STEP'},
  {stepName:'PASO01', execType:'PGM', execTarget:'MAILOPER', parmRaw:'AVISO DE ERROR A CONSOLA', lines:[97,98,99,100], condName:'COND_4_GE_PASO03', condDateScope:'STEP'}
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

FOREACH (_ IN CASE WHEN s.condName IS NULL THEN [] ELSE [1] END |
  MERGE (sc:SchedulerCondition {scheduler: p.name, name: s.condName, dateScope: s.condDateScope})
  SET sc.ingestion = cfg.ingestion,
    sc.layer = 'orchestration',
    sc.nodeType = 'SchedulerCondition',
    sc.viewTag = 'scheduler-condition',
    sc.reviewStatus = cfg.reviewStatus,
    sc.reviewRequired = cfg.reviewRequired,
      sc.reviewSource = cfg.reviewSource,
      sc.description = 'Condicion de scheduler emitida por ' + s.stepName + ' para ' + s.condName + ' (' + s.condDateScope + ').'
  MERGE (st)-[rCond:EMITS_CONDITION]->(sc)
  SET rCond.evidenceFile = cfg.sourceFile,
    rCond.evidenceLines = s.lines
)

WITH p, cfg
UNWIND [
  {stepName:'PASO04', ddName:'VOB942A1', ddType:'DATASET', dataset:'&&ARCHPAR', disp:'NEW,PASS', lines:[24,25,26,27,28]},
  {stepName:'PASO03', ddName:'VOBA06A1', ddType:'DATASET', dataset:'&&ARCHPAR', disp:'OLD,PASS', lines:[37]},
  {stepName:'PASO02', ddName:'VIB431A1', ddType:'DATASET', dataset:'&&ARCHPAR', disp:'OLD,PASS', lines:[55]},
  {stepName:'PASO02', ddName:'SAN431R1', ddType:'SYSOUT', dataset:null, disp:null, lines:[82], routeVar:'USAN', observedRaw:'USAQ'},
  {stepName:'PASO02', ddName:'ZZZ431R1', ddType:'SYSOUT', dataset:null, disp:null, lines:[83], routeVar:'UZZZ'},
  {stepName:'PASO02', ddName:'PDR431R1', ddType:'SYSOUT', dataset:null, disp:null, lines:[56], routeVar:'UPDR'}
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

WITH dd, d, cfg
FOREACH (_ IN CASE WHEN d.dataset IS NULL THEN [] ELSE [1] END |
  MERGE (rd:RuntimeDataset {dsn: d.dataset})
  SET rd.ingestion = cfg.ingestion,
      rd.layer = 'orchestration',
      rd.nodeType = 'RuntimeDataset',
      rd.viewTag = 'jcl-runtime-dataset',
      rd.reviewStatus = cfg.reviewStatus,
      rd.reviewRequired = cfg.reviewRequired,
      rd.reviewSource = cfg.reviewSource,
      rd.disp = d.disp,
        rd.description = 'Dataset temporal o fisico referenciado por ' + d.ddName + '.'
  MERGE (dd)-[rDs:RESOLVES_TO_DATASET]->(rd)
  SET rDs.evidenceFile = cfg.sourceFile,
      rDs.evidenceLines = d.lines
)

RETURN 'CASPREDF' AS procedure, 'Procedure-centric draft graph loaded' AS status, cfg.sourceFile AS sourceFile;
