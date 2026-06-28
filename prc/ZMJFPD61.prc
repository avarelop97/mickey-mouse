//ZMJFPD61 PROC
//*
//*******************************************************************
//*   RECEPCION DE PARAMETROS
//*******************************************************************
//PJP61P04 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','CBPZPR','     ',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJFPD61,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//*******************************************************************
//*   CREA ARCHIVO OPERACIONES MDC BMV
//*******************************************************************
//PJP61P03 EXEC PGM=IEFBR14,COND=(4,LT)
//ARCHIVO   DD DSN=MXCP.ZM.FIX.TES.OPBMV,
//             DISP=(NEW,CATLG,CATLG),
//             DCB=(LRECL=64,RECFM=FB,BLKSIZE=0,DSORG=PS),
//             UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//*******************************************************************
//*   CREA ARCHIVO OPERACIONES MDC BIV
//*******************************************************************
//PJP61P02 EXEC PGM=IEFBR14,COND=(4,LT)
//ARCHIVO   DD DSN=MXCP.ZM.FIX.TES.OPBIV,
//             DISP=(NEW,CATLG,CATLG),
//             DCB=(LRECL=72,RECFM=FB,BLKSIZE=0,DSORG=PS),
//             UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
