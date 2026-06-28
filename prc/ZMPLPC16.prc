//ZMPLPC16 PROC
//*--------------------------------------------------------------------*
//*            FIBRAS   -  MENSUAL
//*--------------------------------------------------------------------*
//*-------------------------------------------------------------------**
//* PASO       : ZMPC1670.                                             *
//* UTILERIA   : IKJEFT01/ZM4MU530                                     *
//* OBJETIVO   : PROGRAMA QUE DESCARGA LA TABLA ZMDT109 PARA FIBRAS    *
//*-------------------------------------------------------------------**
//ZMPC1670 EXEC PGM=IKJEFT01
//*
//S1DES109 DD DSN=MXCP.ZM.FIX.REC.ZMUEPR98.DESCA109.MEN,
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
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZMPC1670),DISP=SHR
//**********************************************************************
//*                     * SORT   * CASA DE BOLSA                       *
//* OBJETIVO: SORTEA EL ARCHIVO POR EMMISORA, SERIE                    *
//**********************************************************************
//ZMPC1660 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.ZMUEPR98.DESCA109.MEN,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.ZMUEPR98.DESCA109.MENS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=369,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPC1170),DISP=SHR
//*
//*====================================================================*
//* PASO     : ZMPC1650                                                *
//* PROGRAMA : IKJEFT01                                                *
//* OBJETIVO : GENERA ARCHIVO DE FIBRAS                                *
//*====================================================================*
//ZMPC1650 EXEC PGM=IKJEFT01,COND=(0,NE)                                01151027
//ZMJ091E1 DD DSN=MXCP.ZM.FIX.REC.ZMUEPR98.DESCA109.MENS,
//            DISP=SHR
//*                                                                     01153001
//ZMJ091S1 DD DSN=MXCP.ZM.FIX.REP.REPFIBS.F&FECHA..MEN,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,500),RLSE),
//            DCB=(RECFM=FB,LRECL=300,BLKSIZE=0,DSORG=PS)
//*
//ZMJ091S2 DD DSN=MXCP.ZM.FIX.INC.REPFIBS.F&FECHA..MEN,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=90,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPC1160),DISP=SHR                   01230041
//*
//**********************************************************************
//*                     * SORT   * CASA DE BOLSA                       *
//* OBJETIVO: SORTEA EL ARCHIVO POR CUENTA, EMISORA, SERIE, FECHA DE   *
//*           OPERACION IREF                                           *
//**********************************************************************
//ZMPC1640 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.REP.REPFIBS.F&FECHA..MEN,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REP.REPFIBS.F&FECHA..SOR1.MEN,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=300,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPC1640),DISP=SHR
//*
//**********************************************************************
//* PASO    : ZMPC1630                                                 *
//* PROGRAMA: ZM3OJ101                                                 *
//**********************************************************************
//ZMPC1630 EXEC PGM=ZM3OJ101,COND=(4,LT)
//ENTRADA1 DD DSN=MXCP.ZM.FIX.REP.REPFIBS.F&FECHA..SOR1.MEN,DISP=SHR
//*
//ZMJ090S1 DD DSN=MXCP.ZM.FIX.REP.CBPFIBS.F&FECHA..MEN,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=365,BLKSIZE=0,DSORG=PS)
//*
//ZMJ090S2 DD DSN=MXCP.ZM.FIX.REP.BCMFIBS.F&FECHA..MEN,
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
