//ZMPLPC90 PROC
//*
//**********************************************************************
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA ZMDT110 ORDENADA POR ICUENTA       *
//**********************************************************************
//ZMPC9060 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMPC9060,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ARC.ZMDT110,
//            SPACE=(CYL,(1000,500),RLSE),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=30,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPC9060),DISP=SHR
//*
//**********************************************************************
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA CUENTA, PERJUR ORDENADO POR ICUENTA*
//**********************************************************************
//ZMPC9055 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMPC9055,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ARC.CUENTA,
//            SPACE=(CYL,(1000,500),RLSE),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=23,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPC9055),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO    : ZMPC9050
//* PROGRAMA: ZM4OJ091
//*---------------------------------------------------------------------
//ZMPC9050 EXEC PGM=IKJEFT01
//ZMJ091E1 DD DSN=MXCP.ZM.FIX.ARC.ZMDT110,DISP=SHR
//ZMJ091E2 DD DSN=MXCP.ZM.FIX.ARC.CUENTA,DISP=SHR
//*
//ZMJ091S1 DD DSN=MXCP.ZM.FIX.REP.EXTRACT.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1000,500),RLSE),
//            DCB=(RECFM=FB,LRECL=718,BLKSIZE=0,DSORG=PS)
//*
//ZMJ091S2 DD DSN=MXCP.ZM.FIX.INC.EXTRACT.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPC9050),DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//* PASO    : ZMPC9045                                                 *
//* PROGRAMA: ZM4OJ090                                                 *
//**********************************************************************
//ZMPC9045 EXEC PGM=IKJEFT01,COND=(4,LT)
//ENTRADA1 DD DSN=MXCP.ZM.FIX.REP.EXTRACT.F&FECHA,DISP=SHR
//*
//ZMJ090S1 DD DSN=MXCP.ZM.FIX.REP.CASACAP.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1000,500),RLSE),
//            DCB=(RECFM=FB,LRECL=655,BLKSIZE=0,DSORG=PS)
//*
//ZMJ090S2 DD DSN=MXCP.ZM.FIX.REP.BANCCAP.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1000,500),RLSE),
//            DCB=(RECFM=FB,LRECL=655,BLKSIZE=0,DSORG=PS)
//*
//ZMJ090S3 DD DSN=MXCP.ZM.FIX.REP.CASSIVR.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1000,500),RLSE),
//            DCB=(RECFM=FB,LRECL=655,BLKSIZE=0,DSORG=PS)
//*
//ZMJ090S4 DD DSN=MXCP.ZM.FIX.REP.BANSIVR.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1000,500),RLSE),
//            DCB=(RECFM=FB,LRECL=655,BLKSIZE=0,DSORG=PS)
//*
//ZMJ090S5 DD DSN=MXCP.ZM.FIX.INC.NOPROCE.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1000,500),RLSE),
//            DCB=(RECFM=FB,LRECL=655,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPC9045),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   * CASA DE BOLSA                       *
//* OBJETIVO: SORTEA EL ARCHIVO POR CUENTA, EMISORA, SERIE, FECHA DE   *
//*           OPERACION IREF DE CAPITALES.                             *
//**********************************************************************
//ZMPC9040 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.REP.BANCCAP.F&FECHA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REP.BANCCAP.F&FECHA..SOR1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=655,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1000,500),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPC9040),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   * CASA DE BOLSA                       *
//* OBJETIVO: SORTEA EL ARCHIVO POR CUENTA, EMISORA, SERIE, FECHA DE   *
//*           OPERACION IREF DE CAPITALES DEJANDO IREF 00000           *
//**********************************************************************
//ZMPC9039 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.REP.BANCCAP.F&FECHA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REP.BANCCAP.F&FECHA..SOR2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=655,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1000,500),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPC9039),DISP=SHR
//*--------------------------------------------------------------------*
//* PASO     :                                                         *
//* PROGRAMA : ICEMAN.                                                 *
//* OBJETIVO :                                                         *
//*--------------------------------------------------------------------*
//ZMPC9038 EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.REP.BANCCAP.F&FECHA..SOR1,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.REP.BANCCAP.F&FECHA..SOR2,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.REP.BANCCAP.F&FECHA..SOR,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=655,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1000,500),RLSE)
//*
//SYSCOUNT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSABEND DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPC9025),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   * CASA DE BOLSA                       *
//* OBJETIVO: SORTEA EL ARCHIVO POR CUENTA, EMISORA, SERIE, FECHA DE   *
//*           OPERACION IREF DE CAPITALES.                             *
//**********************************************************************
//ZMPC9035 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.REP.CASACAP.F&FECHA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REP.CASACAP.F&FECHA..SOR1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=655,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1000,500),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPC9040),DISP=SHR
//**********************************************************************
//*                     * SORT   * CASA DE BOLSA                       *
//* OBJETIVO: SORTEA EL ARCHIVO POR CUENTA, EMISORA, SERIE, FECHA DE   *
//*           OPERACION IREF DE CAPITALES CONSERVANDO IREF 00000       *
//**********************************************************************
//ZMPC9034 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.REP.CASACAP.F&FECHA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REP.CASACAP.F&FECHA..SOR2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=655,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1000,500),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPC9039),DISP=SHR
//*--------------------------------------------------------------------*
//* PASO     :                                                         *
//* PROGRAMA : ICEMAN.                                                 *
//* OBJETIVO :                                                         *
//*--------------------------------------------------------------------*
//ZMPC9033 EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.REP.CASACAP.F&FECHA..SOR1,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.REP.CASACAP.F&FECHA..SOR2,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.REP.CASACAP.F&FECHA..SOR,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=655,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1000,500),RLSE)
//*
//SYSCOUNT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSABEND DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPC9025),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   * CASA DE BOLSA                       *
//* OBJETIVO: SEPARA EL ENCABEZADO DEL ARCHIVO PARA PODER ORDENARLO    *
//**********************************************************************
//ZMPC9030 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.REP.BANCCAP.F&FECHA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REP.BANCCAP.F&FECHA..ENC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=655,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1000,500),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPC9030),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZMPC9025.                                               *
//* PROGRAMA : ICEMAN.                                                 *
//* OBJETIVO : COLOCA EL ENCABEZADO AL  REPORTE RESUMEN FISCAL DE BANCA*
//*            CON CAPITALES                                           *
//*--------------------------------------------------------------------*
//ZMPC9025 EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.REP.BANCCAP.F&FECHA..ENC,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.REP.BANCCAP.F&FECHA..SOR,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.REP.BANCCAP.F&FECHA..CAP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=655,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1000,500),RLSE)
//*
//SYSCOUNT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSABEND DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPC9025),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZMPC9020.                                               *
//* PROGRAMA : ICEMAN.                                                 *
//* OBJETIVO : COLOCA EL ENCABEZADO AL  REPORTE RESUMEN FISCAL DE CASA *
//*            CON CAPITALES                                           *
//*--------------------------------------------------------------------*
//ZMPC9020 EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.REP.BANCCAP.F&FECHA..ENC,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.REP.CASACAP.F&FECHA..SOR,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.REP.CASACAP.F&FECHA..CAP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=655,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1000,500),RLSE)
//*
//SYSCOUNT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSABEND DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPC9025),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   * CASA DE BOLSA                       *
//* OBJETIVO: SORTEA EL ARCHIVO POR CUENTA, EMISORA, SERIE, FECHA DE   *
//*           OPERACION IREF DE SOCIEDADES.                            *
//**********************************************************************
//ZMPC9016 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.REP.CASSIVR.F&FECHA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REP.CASSIVR.F&FECHA..SOR1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=655,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1000,500),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPC9040),DISP=SHR
//**********************************************************************
//*                     * SORT   * CASA DE BOLSA                       *
//* OBJETIVO: SORTEA EL ARCHIVO POR CUENTA, EMISORA, SERIE, FECHA DE   *
//*           OPERACION IREF DE SOCIEDADES CONSERVANDO IREF 00000      *
//**********************************************************************
//ZMPC9015 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.REP.CASSIVR.F&FECHA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REP.CASSIVR.F&FECHA..SOR2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=655,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1000,500),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPC9039),DISP=SHR
//*--------------------------------------------------------------------*
//* PASO     :                                                         *
//* PROGRAMA : ICEMAN.                                                 *
//* OBJETIVO :                                                         *
//*--------------------------------------------------------------------*
//ZMPC9014 EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.REP.CASSIVR.F&FECHA..SOR1,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.REP.CASSIVR.F&FECHA..SOR2,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.REP.CASSIVR.F&FECHA..SOR,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=655,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1000,500),RLSE)
//*
//SYSCOUNT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSABEND DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPC9025),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   * BANCA                               *
//* OBJETIVO: SORTEA EL ARCHIVO POR CUENTA, EMISORA, SERIE, FECHA DE   *
//*           OPERACION IREF DE SOCIEDADES.                            *
//**********************************************************************
//ZMPC9013 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.REP.BANSIVR.F&FECHA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REP.BANSIVR.F&FECHA..SOR1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=655,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1000,500),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPC9040),DISP=SHR
//**********************************************************************
//*                     * SORT   * BANCA                               *
//* OBJETIVO: SORTEA EL ARCHIVO POR CUENTA, EMISORA, SERIE, FECHA DE   *
//*           OPERACION IREF DE SOCIEDADES CONSERVANDO IREF 00000      *
//**********************************************************************
//ZMPC9012 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.REP.BANSIVR.F&FECHA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REP.BANSIVR.F&FECHA..SOR2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=655,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1000,500),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPC9039),DISP=SHR
//*--------------------------------------------------------------------*
//* PASO     :                                                         *
//* PROGRAMA : ICEMAN.                                                 *
//* OBJETIVO :                                                         *
//*--------------------------------------------------------------------*
//ZMPC9011 EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.REP.BANSIVR.F&FECHA..SOR1,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.REP.BANSIVR.F&FECHA..SOR2,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.REP.BANSIVR.F&FECHA..SOR,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=655,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1000,500),RLSE)
//*
//SYSCOUNT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSABEND DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPC9025),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *                                     *
//* OBJETIVO: SEPARA EL ENCABEZADO DEL ARCHIVO PARA PODER ORDENARLO    *
//**********************************************************************
//ZMPC9010 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.REP.BANSIVR.F&FECHA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REP.BANSIVR.F&FECHA..ENC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=655,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1000,500),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPC9030),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZMPC9007.                                               *
//* PROGRAMA : ICEMAN BANCA-SIRV                                       *
//* OBJETIVO : COLOCA EL ENCABEZADO AL  REPORTE RESUMEN FISCAL DE BANCA*
//*            CON SOCIEDADES                                          *
//*--------------------------------------------------------------------*
//ZMPC9007 EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.REP.BANSIVR.F&FECHA..ENC,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.REP.BANSIVR.F&FECHA..SOR,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.REP.BANSIVR.F&FECHA..SI1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=655,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1000,500),RLSE)
//*
//SYSCOUNT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSABEND DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPC9025),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZMPC9005.                                               *
//* PROGRAMA : ICEMAN CASA-SIRV                                        *
//* OBJETIVO : COLOCA EL ENCABEZADO AL  REPORTE RESUMEN FISCAL DE BANCA*
//*            CON SOCIEDADES                                          *
//*--------------------------------------------------------------------*
//ZMPC9005 EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.REP.BANSIVR.F&FECHA..ENC,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.REP.CASSIVR.F&FECHA..SOR,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.REP.CASSIVR.F&FECHA..SI1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=655,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1000,500),RLSE)
//*
//SYSCOUNT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSABEND DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPC9025),DISP=SHR
//*
//**********************************************************************
//* TERMINA  : ZMPLPC90                                                *
//**********************************************************************
