//ZMPLPC14 PROC
//*--------------------------------------------------------------------*
//*           WARRANTS   -  MENSUAL
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//* PASO    : ZMPC1450
//* PROGRAMA: ZM4OJ100
//*---------------------------------------------------------------------
//ZMPC1450 EXEC PGM=IKJEFT01
//*
//ZMJ091S1 DD DSN=MXCP.ZM.FIX.REP1.REPWARR.F&FECHA..MEN,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,500),RLSE),
//            DCB=(RECFM=FB,LRECL=448,BLKSIZE=0,DSORG=PS)
//*
//ZMJ091S2 DD DSN=MXCP.ZM.FIX.INC1.REPWARR.F&FECHA..MEN,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=90,BLKSIZE=0,DSORG=PS)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPC1450),DISP=SHR
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
//ZMPC1440 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.REP1.REPWARR.F&FECHA..MEN,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REP1.REPWARR.F&FECHA..SOR1.MEN,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=448,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPC1440),DISP=SHR
//*
//**********************************************************************
//* PASO    : ZMPC1430                                                 *
//* PROGRAMA: ZM3OJ100                                                 *
//**********************************************************************
//ZMPC1430 EXEC PGM=ZM3OJ100,COND=(4,LT)
//ENTRADA1 DD DSN=MXCP.ZM.FIX.REP1.REPWARR.F&FECHA..SOR1.MEN,DISP=SHR
//*
//ZMJ090S1 DD DSN=MXCP.ZM.FIX.REP.CBPWARR.F&FECHA..LOG.MEN,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=554,BLKSIZE=0,DSORG=PS)
//*
//ZMJ090S2 DD DSN=MXCP.ZM.FIX.REP.BCMWARR.F&FECHA..LOG.MEN,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=554,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
