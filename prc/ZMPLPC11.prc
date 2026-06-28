//ZMPLPC11 PROC
//*--------------------------------------------------------------------*
//*               FIBRAS - LOG
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//* PASO    : ZMPC1170
//* PROGRAMA: IKJEFT01
//*---------------------------------------------------------------------
//ZMPC1180 EXEC PGM=IKJEFT01
//*
//S1DES109 DD DSN=MXCP.ZM.FIX.REC.ZMUEPR99.DESCA109.LOG,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=369,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZMPC1180),DISP=SHR
//**********************************************************************
//*                     * SORT   * CASA DE BOLSA                       *
//* OBJETIVO: SORTEA EL ARCHIVO POR EMMISORA, SERIE                    *
//**********************************************************************
//ZMPC1170 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.ZMUEPR99.DESCA109.LOG,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.ZMUEPR99.DESCA109.LOGS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=369,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPC1170),DISP=SHR
//*
//*====================================================================*
//* PASO     : ZMPC1150                                                *
//* PROGRAMA : IKJEFT01                                                *
//* OBJETIVO : GENERA ARCHIVO DE FIBRAS                                *
//*====================================================================*
//ZMPC1160 EXEC PGM=IKJEFT01,COND=(0,NE)                                01151027
//ZMJ091E1 DD DSN=MXCP.ZM.FIX.REC.ZMUEPR99.DESCA109.LOGS,
//            DISP=SHR
//*                                                                     01153001
//ZMJ091S1 DD DSN=MXCP.ZM.FIX.REP.REPFIBS.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,500),RLSE),
//            DCB=(RECFM=FB,LRECL=300,BLKSIZE=0,DSORG=PS)
//*
//ZMJ091S2 DD DSN=MXCP.ZM.FIX.INC.REPFIBS.F&FECHA,                      01170038
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        01180038
//            SPACE=(CYL,(500,250),RLSE),                               01190038
//            DCB=(RECFM=FB,LRECL=90,BLKSIZE=0,DSORG=PS)                01200038
//*                                                                     01210000
//SYSTSPRT DD SYSOUT=*                                                  01220000
//SYSPRINT DD SYSOUT=*                                                  01155001
//SYSOUT   DD SYSOUT=*                                                  01230041
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPC1160),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   * CASA DE BOLSA                       *
//* OBJETIVO: SORTEA EL ARCHIVO POR CUENTA, EMISORA, SERIE, FECHA DE   *
//*           OPERACION IREF                                           *
//**********************************************************************
//ZMPC1140 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.REP.REPFIBS.F&FECHA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REP.REPFIBS.F&FECHA..SOR1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=300,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPC1140),DISP=SHR
//*
//**********************************************************************
//* PASO    : ZMPC1130                                                 *
//* PROGRAMA: ZM3OJ101                                                 *
//**********************************************************************
//ZMPC1130 EXEC PGM=ZM3OJ101,COND=(4,LT),PARM=('LOG')
//ENTRADA1 DD DSN=MXCP.ZM.FIX.REP.REPFIBS.F&FECHA..SOR1,DISP=SHR
//*
//ZMJ090S1 DD DSN=MXCP.ZM.FIX.REP.CBPFIBS.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=365,BLKSIZE=0,DSORG=PS)
//*
//ZMJ090S2 DD DSN=MXCP.ZM.FIX.REP.BCMFIBS.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=365,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
