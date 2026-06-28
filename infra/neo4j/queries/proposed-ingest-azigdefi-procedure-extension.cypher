// Procedure-centric ingest: prc/AZIGDEFI.prc
// Aligned with active ontology contract (core + operational layer).

WITH {
  ingestion: 'manual-proposal',
  reviewStatus: 'pending_human_review',
  reviewRequired: true,
  reviewSource: 'auto-ingestion',
  sourceFile: 'prc/AZIGDEFI.prc'
} AS cfg

MERGE (p:Procedure {name: 'AZIGDEFI'})
SET p.ingestion = cfg.ingestion,
    p.layer = 'orchestration',
    p.nodeType = 'Procedure',
    p.viewTag = 'jcl-proc',
    p.reviewStatus = cfg.reviewStatus,
    p.reviewRequired = cfg.reviewRequired,
    p.reviewSource = cfg.reviewSource,
    p.sourceFile = cfg.sourceFile,
    p.system = 'SISTEMA INTEGRAL DE VALORES (S.I.V.A.)',
    p.process = 'SIVAXDEF',
    p.objective = 'Dar de alta condicion Control-M para cierre de capitales',
    p.description = 'PROC de orchestration para activar una condicion de Control-M antes del cierre de capitales.'

WITH p, cfg
UNWIND [
  {name:'SALU', direction:'IN', role:'sysout-class', lines:[1]},
  {name:'SALS', direction:'IN', role:'sysout-destination', lines:[1]},
  {name:'CICS', direction:'IN', role:'subsystem-routing', lines:[1]},
  {name:'UMTY', direction:'IN', role:'regional-routing-mty', lines:[3]},
  {name:'USAN', direction:'IN', role:'regional-routing-san', lines:[6]}
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
MERGE (s:ProcStep {procedureName: p.name, stepName: 'PASO01'})
SET s.ingestion = cfg.ingestion,
    s.layer = 'orchestration',
    s.nodeType = 'ProcStep',
    s.viewTag = 'jcl-proc-step',
    s.reviewStatus = cfg.reviewStatus,
    s.reviewRequired = cfg.reviewRequired,
    s.reviewSource = cfg.reviewSource,
    s.execType = 'PGM',
    s.execTarget = 'CTMCND',
  s.parmRaw = 'ADD COND FINCAZ_OK WDATE',
  s.description = 'Paso EXEC que invoca CTMCND para registrar la condicion FINCAZ_OK.'
MERGE (p)-[rStep:HAS_STEP]->(s)
SET rStep.evidenceFile = cfg.sourceFile,
    rStep.evidenceLines = [31]

WITH p, s, cfg
MERGE (er:ExternalRoutine {name: 'CTMCND'})
SET er.ingestion = cfg.ingestion,
    er.layer = 'integration',
    er.nodeType = 'ExternalRoutine',
    er.viewTag = 'external-routine',
    er.reviewStatus = cfg.reviewStatus,
    er.reviewRequired = cfg.reviewRequired,
  er.reviewSource = cfg.reviewSource,
  er.description = 'Utilidad externa llamada por el paso PASO01.'
MERGE (s)-[rExec:EXECUTES_PROGRAM]->(er)
SET rExec.evidenceFile = cfg.sourceFile,
    rExec.evidenceLines = [31]

WITH p, s, cfg
MERGE (sc:SchedulerCondition {scheduler: 'Control-M', name: 'FINCAZ_OK', dateScope: 'WDATE'})
SET sc.ingestion = cfg.ingestion,
    sc.layer = 'orchestration',
    sc.nodeType = 'SchedulerCondition',
    sc.viewTag = 'scheduler-condition',
    sc.reviewStatus = cfg.reviewStatus,
    sc.reviewRequired = cfg.reviewRequired,
    sc.reviewSource = cfg.reviewSource,
  sc.action = 'ADD',
  sc.description = 'Condicion Control-M emitida por AZIGDEFI para marcar el cierre de capitales.'
MERGE (s)-[rCond:EMITS_CONDITION]->(sc)
SET rCond.evidenceFile = cfg.sourceFile,
    rCond.evidenceLines = [31]

WITH p, s, cfg
UNWIND [
  {
    ddName:'STEPLIB', ddType:'DATASET',
    dataset:'SYS3.IOAO.SYSZBBV.TGT.LOAD', disp:'SHR',
    lines:[33], routeVar:null
  },
  {
    ddName:'DAPARM', ddType:'DATASET',
    dataset:'SYS3.IOAI.SYSZBBV.TGT.PARM', disp:'SHR',
    lines:[34], routeVar:null
  },
  {
    ddName:'MTY472RX', ddType:'SYSOUT',
    dataset:null, disp:null,
    lines:[56], routeVar:'UMTY'
  },
  {
    ddName:'SAN472RX', ddType:'SYSOUT',
    dataset:null, disp:null,
    lines:[76], routeVar:'USAN',
    observedRaw:'USAQ'
  }
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
  dd.description = 'Definicion DD ' + d.ddName + ' del paso ' + coalesce(d.stepName, 'PASO01') + '.'
MERGE (p)-[rDefDd:DEFINES_DD]->(dd)
SET rDefDd.evidenceFile = cfg.sourceFile,
    rDefDd.evidenceLines = d.lines
MERGE (s)-[rUseDd:USES_DD]->(dd)
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

WITH dd, d, cfg
FOREACH (_ IN CASE WHEN d.routeVar IS NULL THEN [] ELSE [1] END |
  MERGE (pv:ProcVariable {procedureName: 'AZIGDEFI', name: d.routeVar, direction: 'IN'})
  ON CREATE SET pv.ingestion = cfg.ingestion,
                pv.layer = 'orchestration',
                pv.nodeType = 'ProcVariable',
                pv.viewTag = 'jcl-proc-variable',
                pv.reviewStatus = cfg.reviewStatus,
                pv.reviewRequired = cfg.reviewRequired,
                pv.reviewSource = cfg.reviewSource,
                pv.description = 'Variable PROC de ruteo ' + d.routeVar + ' creada por derivacion de ' + d.ddName + '.',
                pv.semanticRole = 'routing-variable'
  MERGE (dd)-[rRoute:ROUTES_TO_VARIABLE]->(pv)
  SET rRoute.evidenceFile = cfg.sourceFile,
      rRoute.evidenceLines = d.lines
)

RETURN
  'AZIGDEFI' AS procedure,
  'Procedure-centric draft graph loaded' AS status,
  cfg.sourceFile AS sourceFile;
