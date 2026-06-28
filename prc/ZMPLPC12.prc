//ZMPLPC12 PROC
//*--------------------------------------------------------------------*
//*                  CKDS - LOG
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//* PASO    : ZMPC1250
//* PROGRAMA: ZM4OJ102
//*---------------------------------------------------------------------
//ZMPC1250 EXEC PGM=IKJEFT01
//*
//ZMJ091S1 DD DSN=MXCP.ZM.FIX.REP.REPCKDS.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,500),RLSE),
//            DCB=(RECFM=FB,LRECL=502,BLKSIZE=0,DSORG=PS)
//*
//ZMJ091S2 DD DSN=MXCP.ZM.FIX.INC.REPCKDS.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=90,BLKSIZE=0,DSORG=PS)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPC1250),DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//*                     * SORT   * CASA DE BOLSA                       *
//* OBJETIVO: SORTEA EL ARCHIVO POR CUENTA, EMISORA, SERIE, FECHA DE   *
//*           OPERACION IREF                                           *
//**********************************************************************
//ZMPC1240 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.REP.REPCKDS.F&FECHA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REP.REPCKDS.F&FECHA..SOR1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=502,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPC1240),DISP=SHR
//*
//**********************************************************************
//* PASO    : ZMPC1230                                                 *
//* PROGRAMA: ZM3OJ102                                                 *
//**********************************************************************
//ZMPC1230 EXEC PGM=ZM3OJ102,COND=(4,LT),PARM=('LOG')
//ENTRADA1 DD DSN=MXCP.ZM.FIX.REP.REPCKDS.F&FECHA..SOR1,DISP=SHR
//*
//ZMJ090S1 DD DSN=MXCP.ZM.FIX.REP.CBPCKDS.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=590,BLKSIZE=0,DSORG=PS)
//*
//ZMJ090S2 DD DSN=MXCP.ZM.FIX.REP.BCMCKDS.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=590,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
