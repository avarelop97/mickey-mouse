// Bootstrap vNext ontology bridges for PRC/JCL domain.
// Scope: procedures currently curated in local graph.
// All writes remain pending_human_review.

WITH {
  ingestion: 'manual-proposal',
  reviewStatus: 'pending_human_review',
  reviewRequired: true,
  reviewSource: 'auto-ingestion'
} AS cfg

// ---------------------------------------------------------------------------
// 1) ProcStep -> ControlCardMember from SYSTSIN DD DSN=LIB(MEMBER)
// ---------------------------------------------------------------------------
WITH cfg
UNWIND [
  {procedure:'CCUPRFDF', step:'PASO07', library:'SIVA.CARDS', member:'PARAMB8', lines:[23], sourceFile:'prc/CCUPRFDF.prc'},
  {procedure:'CCUPRFDF', step:'PASO05', library:'SIVA.CARDS', member:'PARAMA6', lines:[63], sourceFile:'prc/CCUPRFDF.prc'},
  {procedure:'CCUPRFDF', step:'PASO03', library:'SIVA.CARDS', member:'PARAMB6', lines:[126], sourceFile:'prc/CCUPRFDF.prc'},
  {procedure:'CCUPRFDF', step:'PASO02', library:'SIVA.CARDS', member:'PARAM29', lines:[174], sourceFile:'prc/CCUPRFDF.prc'},
  {procedure:'CCUPRFDF', step:'PASO07', library:'SIVA.CARDS', member:'PARAMB9', lines:[189], sourceFile:'prc/CCUPRFDF.prc'},
  {procedure:'CASPREDF', step:'PASO02', library:'SIVA.CARDS', member:'PARAM29', lines:[93], sourceFile:'prc/CASPREDF.prc'},
  {procedure:'CCUPRVDF', step:'PASO02', library:'SIVA.CARDS', member:'PARAM29', lines:[159], sourceFile:'prc/CCUPRVDF.prc'}
] AS c
MATCH (st:ProcStep {procedureName: c.procedure, stepName: c.step})
MERGE (card:ControlCardMember {library: c.library, member: c.member})
SET card.ingestion = cfg.ingestion,
    card.layer = 'orchestration',
    card.nodeType = 'ControlCardMember',
    card.viewTag = 'jcl-control-card',
    card.reviewStatus = cfg.reviewStatus,
    card.reviewRequired = cfg.reviewRequired,
    card.reviewSource = cfg.reviewSource,
    card.description = 'Miembro de tarjetas de control consumido por SYSTSIN para parametrizar la corrida batch.'
MERGE (st)-[rCard:USES_CONTROL_CARD]->(card)
SET rCard.evidenceFile = c.sourceFile,
    rCard.evidenceLines = c.lines

// ---------------------------------------------------------------------------
// 2) ProcDD -> SysoutChannel from DD SYSOUT=(..., ..., CODE)
// ---------------------------------------------------------------------------
WITH cfg
UNWIND [
  {procedure:'CCUPRFDF', step:'PASO05', ddName:'VOB992R1', code:'TV16', lines:[54], sourceFile:'prc/CCUPRFDF.prc'},
  {procedure:'CCUPRFDF', step:'PASO05', ddName:'VOB992RX', code:'TV16', lines:[55], sourceFile:'prc/CCUPRFDF.prc'},
  {procedure:'CCUPRFDF', step:'PASO03', ddName:'AGS798R1', code:'AV38', lines:[88], sourceFile:'prc/CCUPRFDF.prc'},
  {procedure:'CCUPRFDF', step:'PASO03', ddName:'SAN798R1', code:'4V38', lines:[116], sourceFile:'prc/CCUPRFDF.prc'},
  {procedure:'CCUPRFDF', step:'PASO03', ddName:'ZZZ798R1', code:'5V38', lines:[117], sourceFile:'prc/CCUPRFDF.prc'}
] AS s
MATCH (p:Procedure {name: s.procedure})
MATCH (st:ProcStep {procedureName: s.procedure, stepName: s.step})
MERGE (dd:ProcDD {procedureName: s.procedure, ddName: s.ddName})
SET dd.ingestion = cfg.ingestion,
    dd.layer = 'orchestration',
    dd.nodeType = 'ProcDD',
    dd.viewTag = 'jcl-proc-dd',
    dd.reviewStatus = cfg.reviewStatus,
    dd.reviewRequired = cfg.reviewRequired,
    dd.reviewSource = cfg.reviewSource,
    dd.ddType = 'SYSOUT',
    dd.description = 'Definicion DD SYSOUT con canal de distribucion ' + s.code + '.'
MERGE (p)-[rDefDd:DEFINES_DD]->(dd)
SET rDefDd.evidenceFile = s.sourceFile,
    rDefDd.evidenceLines = s.lines
MERGE (st)-[rUseDd:USES_DD]->(dd)
SET rUseDd.evidenceFile = s.sourceFile,
    rUseDd.evidenceLines = s.lines
MERGE (ch:SysoutChannel {code: s.code})
SET ch.ingestion = cfg.ingestion,
    ch.layer = 'orchestration',
    ch.nodeType = 'SysoutChannel',
    ch.viewTag = 'jcl-sysout-channel',
    ch.reviewStatus = cfg.reviewStatus,
    ch.reviewRequired = cfg.reviewRequired,
    ch.reviewSource = cfg.reviewSource,
    ch.description = 'Canal de distribucion de SYSOUT para impresiones o rutas operativas.'
MERGE (dd)-[rCh:TARGETS_SYSOUT_CHANNEL]->(ch)
SET rCh.evidenceFile = s.sourceFile,
    rCh.evidenceLines = s.lines

// ---------------------------------------------------------------------------
// 3) Procedure -> BatchJob from explicit objective comments
// ---------------------------------------------------------------------------
WITH cfg
UNWIND [
  {procedure:'CCUPRFDF', job:'PAAMDD40', lines:[11,12,173,174], sourceFile:'prc/CCUPRFDF.prc'}
] AS j
MATCH (p:Procedure {name: j.procedure})
MERGE (bj:BatchJob {name: j.job})
SET bj.ingestion = cfg.ingestion,
    bj.layer = 'orchestration',
    bj.nodeType = 'BatchJob',
    bj.viewTag = 'jcl-job',
    bj.reviewStatus = cfg.reviewStatus,
    bj.reviewRequired = cfg.reviewRequired,
    bj.reviewSource = cfg.reviewSource,
    bj.description = 'Job batch referido en objetivo operativo de un Procedure.'
MERGE (p)-[rImpact:IMPACTS_JOB]->(bj)
SET rImpact.evidenceFile = j.sourceFile,
    rImpact.evidenceLines = j.lines

RETURN 'vNext bootstrap applied' AS status;
