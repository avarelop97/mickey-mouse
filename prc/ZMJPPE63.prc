//ZMJPPE63 PROC
//**********************************************************************
//* *                                                                  *
//* SISTEMA : ZM@ CASA DE BOLSA                                        *
//*                                                                    *
//* PROCESO : ZMJPPE63                                                 *
//*                                                                    *
//* OBJETIVO: ESTE JOB GENERA 5 ARCHIVOS DE DETALLE DEL QUERY DE       *
//*           POSICION DE MERCADOS, EFECTIVO , PRLV , REPORTOS Y       *
//*           PAPEL BANCARIO                                           *
//*           A PARTIR DE ESTOS 5 ARCHIVOS DE DETALLE SE OBTIENE       *
//*           EL ARCHIVO FINAL SOLICITADO CON TOTALES POR CUENTA       *
//*           Y CADA TIPO DE MERCADO.                                  *
//*                                                                    *
//* REALIZO : FABRICA DE SOFTWARE ACCENTURE                            *
//*                                                                    *
//* FECHA   : OCTUBRE 2011                                             *
//*                                                                    *
//**********************************************************************
//*           L O G    D E   M O D I F I C A C I O N E S               *
//*--------------------------------------------------------------------*
//*   MARCA      AUTOR   FECHA       DESCRIPCION                       *
//* ----------  ------- ------- ---------------------------------------*
//**********************************************************************
//* PASO    : PJL63P07                                                 *
//* PROGRAMA: IKJEFT01 / ZM4EJF66                                      *
//* FUNCION : EJECUTA EL PROGRAMA ZM4EJF66 PARA VALIDAR PARAMETRO      *
//*           DE MESA ASSET O MESA PRECIOS                             *
//**********************************************************************
//PJL63P07 EXEC PGM=IKJEFT01
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL63T05),DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//**********************************************************************
// IF (PJL63P07.RC<4) THEN
//**********************************************************************
//**********************************************************************
//*PASO        : PJL63P06                                              *
//*PROGRAMA    : IKJEFT01 / ZM4EJF63                                   *
//*DESCRIPCION : GENERA ARCHIVOS DE DETALLE DE POSICION DE CONTRATOS   *
//*              DE FIDEICOMISOS MESA ASSET                            *
//**********************************************************************
//PJL63P06 EXEC PGM=IKJEFT01
//SALMERC  DD DSN=MXCP.ZM.FIX.ECT.EBCM.MERCDET.FIDE63,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=226,BLKSIZE=0)
//SALEFEC  DD DSN=MXCP.ZM.FIX.ECT.EBCM.EFECDET.FIDE63,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=226,BLKSIZE=0)
//SALPRLV  DD DSN=MXCP.ZM.FIX.ECT.EBCM.PRLVDET.FIDE63,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=212,BLKSIZE=0)
//SALREPO  DD DSN=MXCP.ZM.FIX.ECT.EBCM.REPODET.FIDE63,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=177,BLKSIZE=0)
//SALIBAN  DD DSN=MXCP.ZM.FIX.ECT.EBCM.IBANDET.FIDE63,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=212,BLKSIZE=0)
//QRLSDB2  DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL63T01),DISP=SHR
//*                                                                     00340006
//*
//**********************************************************************
//*PASO        : PJL63P05                                              *
//*PROGRAMA    : ZM3EJF63                                              *
//*DESCRIPCION : GENERA REPORTE DE TOTALES DE POSICION A PARTIR DE LOS *
//*              ARCHIVOS DE DETALLE                                   *
//**********************************************************************
//PJL63P05 EXEC PGM=ZM3EJF63,COND=(4,LT)
//E1DMERC  DD DSN=MXCP.ZM.FIX.ECT.EBCM.MERCDET.FIDE63,
//            DISP=SHR
//E2DEFEC  DD DSN=MXCP.ZM.FIX.ECT.EBCM.EFECDET.FIDE63,
//            DISP=SHR
//E3DPRLV  DD DSN=MXCP.ZM.FIX.ECT.EBCM.PRLVDET.FIDE63,
//            DISP=SHR
//E4DREPO  DD DSN=MXCP.ZM.FIX.ECT.EBCM.REPODET.FIDE63,
//            DISP=SHR
//E5DIBAN  DD DSN=MXCP.ZM.FIX.ECT.EBCM.IBANDET.FIDE63,
//            DISP=SHR
//SALMERC  DD DSN=MXCP.ZM.FIX.ECT.EBCM.MERCTOT.FIDE63,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=255,BLKSIZE=0)
//SALEFEC  DD DSN=MXCP.ZM.FIX.ECT.EBCM.EFECDTOT.FIDE63,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=255,BLKSIZE=0)
//SALPRLV  DD DSN=MXCP.ZM.FIX.ECT.EBCM.PRLVTOT.FIDE63,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=255,BLKSIZE=0)
//SALREPO  DD DSN=MXCP.ZM.FIX.ECT.EBCM.REPOTOT.FIDE63,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=255,BLKSIZE=0)
//SALIBAN  DD DSN=MXCP.ZM.FIX.ECT.EBCM.IBANTOT.FIDE63,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=255,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//*PASO        : PJL63P04                                              *
//*PROGRAMA    : ICEMAN                                                *
//*DESCRIPCION : REALIZA MERGE Y SORTEO POR CUENTA DE LA UNION DE LOS  *
//*              5 ARCHIVOS DE TOTALES                                 *
//**********************************************************************
//PJL63P04 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.ECT.EBCM.MERCTOT.FIDE63,
//            DISP=SHR
//         DD DSN=MXCP.ZM.FIX.ECT.EBCM.EFECDTOT.FIDE63,
//            DISP=SHR
//         DD DSN=MXCP.ZM.FIX.ECT.EBCM.PRLVTOT.FIDE63,
//            DISP=SHR
//         DD DSN=MXCP.ZM.FIX.ECT.EBCM.REPOTOT.FIDE63,
//            DISP=SHR
//         DD DSN=MXCP.ZM.FIX.ECT.EBCM.IBANTOT.FIDE63,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECT.EBCM.REPTOT1.FIDE63,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(RECFM=FB,LRECL=255,BLKSIZE=0,DSORG=PS)
//SYSOUT   DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJL63T02),DISP=SHR
//*
//**********************************************************************
//*PASO        : PJL63P03                                              *
//*PROGRAMA    : ZM3EJF64                                              *
//*DESCRIPCION : GENERA REPORTE DE TOTALES CON FORMATO FINAL           *
//**********************************************************************
//PJL63P03 EXEC PGM=ZM3EJF64,COND=(4,LT)
//E1TOTME DD DSN=MXCP.ZM.FIX.ECT.EBCM.REPTOT1.FIDE63,
//           DISP=SHR
//S1TOTME DD DSN=MXCP.ZM.FIX.ECT.EBCM.REPFINT.FIDE63,
//           DISP=(NEW,CATLG,DELETE),
//           UNIT=3390,
//           SPACE=(CYL,(300,150),RLSE),
//           DCB=(RECFM=FB,LRECL=276,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//*PASO        : PJL63P02                                              *
//*PROGRAMA    : IKJEFT01 / ZM4EJF64                                   *
//*DESCRIPCION : GENERA ARCHIVO CON CONTRATOS SIN POSICION NI EFECTIVO *
//**********************************************************************
//PJL63P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//SALIDA1 DD DSN=MXCP.ZM.FIX.ECT.EBCM.RNOPOEF.FIDE63,
//           DISP=(NEW,CATLG,DELETE),
//           UNIT=3390,
//           SPACE=(CYL,(300,150),RLSE),
//           DCB=(RECFM=FB,LRECL=276,BLKSIZE=0,DSORG=PS)
//QRLSDB2  DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL63T03),DISP=SHR
//*
//**********************************************************************
//*PASO        : PJL63P01                                              *
//*PROGRAMA    : ICEMAN                                                *
//*DESCRIPCION : REALIZA MERGE DEL ARCHIVO DE TOTALES DE MERCADO Y     *
//*              EL ARCHIVO DE CONTRATOS SON POSICION O EFECTIVO       *
//**********************************************************************
//PJL63P01 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.ECT.EBCM.REPFINT.FIDE63,
//            DISP=SHR
//         DD DSN=MXCP.ZM.FIX.ECT.EBCM.RNOPOEF.FIDE63,
//            DISP=SHR
//*SORTOUT  DD DSN=MXCP.ZM.FIX.ECT.EBCM.REPTOT2.FIDE63,
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECT.EBCM.REPTOT2.FIDE63.ANT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(RECFM=FB,LRECL=276,BLKSIZE=0,DSORG=PS)
//SYSOUT   DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJL63T04),DISP=SHR
//*
//**********************************************************************
//*PASO        : PJL63P0A CIHM                                         *
//*PROGRAMA    : ZM4EJF67                                              *
//*DESCRIPCION : REALIZA MERGE DEL ARCHIVO DE TOTALES DE MERCADO Y     *
//*              EL ARCHIVO DE CONTRATOS SON POSICION O EFECTIVO       *
//**********************************************************************
//PJL63P0A EXEC PGM=IKJEFT01,COND=(4,LT)
//E1TOTMF  DD DSN=MXCP.ZM.FIX.ECT.EBCM.REPTOT2.FIDE63.ANT,
//            DISP=SHR
//S1TOTMF  DD DSN=MXCP.ZM.FIX.ECT.EBCM.REPTOT2.FIDE63,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(RECFM=FB,LRECL=302,BLKSIZE=0,DSORG=PS)
//QRLSDB2  DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL63T06),DISP=SHR
//****************************************************************      00200002
//*                SE ADICIONA CONDICION                         *      00210002
//*                PARA QUE SEA TOMADA POR CTL-M                 *      00220002
//****************************************************************      00230002
//PJL63P15 EXEC PGM=CTMCND,PARM='ADD COND BCJLNE63_A_OK WDATE',         00240003
//         COND=(4,LT)                                                  00250002
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00260002
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00270002
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00280002
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00290002
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00300002
//PRTDBG   DD SYSOUT=*                                                  00310002
//SYSPRINT DD DUMMY                                                     00320002
//SYSUDUMP DD DUMMY                                                     00330002
//DAPRINT  DD SYSOUT=*                                                  00340002
//DACNDIN  DD DDNAME=SYSIN                                              00350002
//*                                                                     00360002
//*--------------------------------------------------------------------*
// ENDIF
//*--------------------------------------------------------------------*
//**********************************************************************
// IF (PJL63P07.RC=4) THEN
//**********************************************************************
//**********************************************************************
//*PASO        : PJL63P14                                              *
//*PROGRAMA    : IKJEFT01 / ZM4EJF63                                   *
//*DESCRIPCION : GENERA ARCHIVOS DE DETALLE DE POSICION DE CONTRATOS   *
//*              DE FIDEICOMISOS MESA PRECIOS                          *
//**********************************************************************
//PJL63P14 EXEC PGM=IKJEFT01
//SALMERC  DD DSN=MXCP.ZM.FIX.ECT.EBCM.MERCFI2.FIDE63P,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=226,BLKSIZE=0)
//SALEFEC  DD DSN=MXCP.ZM.FIX.ECT.EBCM.EFECFI2.FIDE63P,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=226,BLKSIZE=0)
//SALPRLV  DD DSN=MXCP.ZM.FIX.ECT.EBCM.PRLVFI2.FIDE63P,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=212,BLKSIZE=0)
//SALREPO  DD DSN=MXCP.ZM.FIX.ECT.EBCM.REPOFI2.FIDE63P,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=177,BLKSIZE=0)
//SALIBAN  DD DSN=MXCP.ZM.FIX.ECT.EBCM.IBANFI2.FIDE63P,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=212,BLKSIZE=0)
//QRLSDB2  DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL63T01),DISP=SHR
//*
//**********************************************************************
//*PASO        : PJL63P13                                              *
//*PROGRAMA    : ZM3EJF63                                              *
//*DESCRIPCION : GENERA REPORTE DE TOTALES DE POSICION A PARTIR DE LOS *
//*              ARCHIVOS DE DETALLE                                   *
//**********************************************************************
//PJL63P13 EXEC PGM=ZM3EJF63,COND=(4,LT)
//E1DMERC  DD DSN=MXCP.ZM.FIX.ECT.EBCM.MERCFI2.FIDE63P,
//            DISP=SHR
//E2DEFEC  DD DSN=MXCP.ZM.FIX.ECT.EBCM.EFECFI2.FIDE63P,
//            DISP=SHR
//E3DPRLV  DD DSN=MXCP.ZM.FIX.ECT.EBCM.PRLVFI2.FIDE63P,
//            DISP=SHR
//E4DREPO  DD DSN=MXCP.ZM.FIX.ECT.EBCM.REPOFI2.FIDE63P,
//            DISP=SHR
//E5DIBAN  DD DSN=MXCP.ZM.FIX.ECT.EBCM.IBANFI2.FIDE63P,
//            DISP=SHR
//SALMERC  DD DSN=MXCP.ZM.FIX.ECT.EBCM.MERCTOT.FI2P63,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=255,BLKSIZE=0)
//SALEFEC  DD DSN=MXCP.ZM.FIX.ECT.EBCM.EFECDTOT.FI2P63,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=255,BLKSIZE=0)
//SALPRLV  DD DSN=MXCP.ZM.FIX.ECT.EBCM.PRLVTOT.FI2P63,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=255,BLKSIZE=0)
//SALREPO  DD DSN=MXCP.ZM.FIX.ECT.EBCM.REPOTOT.FI2P63,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=255,BLKSIZE=0)
//SALIBAN  DD DSN=MXCP.ZM.FIX.ECT.EBCM.IBANTOT.FI2P63,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=255,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//*PASO        : PJL63P12                                              *
//*PROGRAMA    : ICEMAN                                                *
//*DESCRIPCION : REALIZA MERGE Y SORTEO POR CUENTA DE LA UNION DE LOS  *
//*              5 ARCHIVOS DE TOTALES                                 *
//**********************************************************************
//PJL63P12 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.ECT.EBCM.MERCTOT.FI2P63,
//            DISP=SHR
//         DD DSN=MXCP.ZM.FIX.ECT.EBCM.EFECDTOT.FI2P63,
//            DISP=SHR
//         DD DSN=MXCP.ZM.FIX.ECT.EBCM.PRLVTOT.FI2P63,
//            DISP=SHR
//         DD DSN=MXCP.ZM.FIX.ECT.EBCM.REPOTOT.FI2P63,
//            DISP=SHR
//         DD DSN=MXCP.ZM.FIX.ECT.EBCM.IBANTOT.FI2P63,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECT.EBCM.REPTOT1.FI2P63,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(RECFM=FB,LRECL=255,BLKSIZE=0,DSORG=PS)
//SYSOUT   DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJL63T02),DISP=SHR
//*
//**********************************************************************
//*PASO        : PJL63P11                                              *
//*PROGRAMA    : ZM3EJF64                                              *
//*DESCRIPCION : GENERA REPORTE DE TOTALES CON FORMATO FINAL           *
//**********************************************************************
//PJL63P11 EXEC PGM=ZM3EJF64,COND=(4,LT)
//E1TOTME DD DSN=MXCP.ZM.FIX.ECT.EBCM.REPTOT1.FI2P63,
//           DISP=SHR
//S1TOTME DD DSN=MXCP.ZM.FIX.ECT.EBCM.REPFINT.FI2P63,
//           DISP=(NEW,CATLG,DELETE),
//           UNIT=3390,
//           SPACE=(CYL,(300,150),RLSE),
//           DCB=(RECFM=FB,LRECL=276,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//*PASO        : PJL63P10                                              *
//*PROGRAMA    : IKJEFT01 / ZM4EJF64                                   *
//*DESCRIPCION : GENERA ARCHIVO CON CONTRATOS SIN POSICION NI EFECTIVO *
//**********************************************************************
//PJL63P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//SALIDA1 DD DSN=MXCP.ZM.FIX.ECT.EBCM.RNOPOEF.FI2P63,
//           DISP=(NEW,CATLG,DELETE),
//           UNIT=3390,
//           SPACE=(CYL,(300,150),RLSE),
//           DCB=(RECFM=FB,LRECL=276,BLKSIZE=0,DSORG=PS)
//QRLSDB2  DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL63T03),DISP=SHR
//*
//**********************************************************************
//*PASO        : PJL63P09                                              *
//*PROGRAMA    : ICEMAN                                                *
//*DESCRIPCION : REALIZA MERGE DEL ARCHIVO DE TOTALES DE MERCADO Y     *
//*              EL ARCHIVO DE CONTRATOS SON POSICION O EFECTIVO       *
//**********************************************************************
//PJL63P09 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.ECT.EBCM.REPFINT.FI2P63,
//            DISP=SHR
//         DD DSN=MXCP.ZM.FIX.ECT.EBCM.RNOPOEF.FI2P63,
//            DISP=SHR
//*SORTOUT  DD DSN=MXCP.ZM.FIX.ECT.EBCM.REPTOT2.FI2P63,
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECT.EBCM.REPTOT2.FI2P63.ANT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(RECFM=FB,LRECL=276,BLKSIZE=0,DSORG=PS)
//SYSOUT   DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJL63T04),DISP=SHR
//*
//**********************************************************************
//*PASO        : PJL63P08 CIHM                                         *
//*PROGRAMA    : ZM4EJF67                                              *
//*DESCRIPCION : REALIZA MERGE DEL ARCHIVO DE TOTALES DE MERCADO Y     *
//*              EL ARCHIVO DE CONTRATOS SON POSICION O EFECTIVO       *
//**********************************************************************
//PJL63P08 EXEC PGM=IKJEFT01,COND=(4,LT)
//E1TOTMF  DD DSN=MXCP.ZM.FIX.ECT.EBCM.REPTOT2.FI2P63.ANT,
//            DISP=SHR
//S1TOTMF  DD DSN=MXCP.ZM.FIX.ECT.EBCM.REPTOT2.FI2P63,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(RECFM=FB,LRECL=302,BLKSIZE=0,DSORG=PS)
//QRLSDB2  DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL63T06),DISP=SHR
//*
//****************************************************************      00200002
//*                SE ADICIONA CONDICION                         *      00210002
//*                PARA QUE SEA TOMADA POR CTL-M                 *      00220002
//****************************************************************      00230002
//PJL63P16 EXEC PGM=CTMCND,PARM='ADD COND BCJLNE63_P_OK WDATE',         00240003
//         COND=(4,LT)                                                  00250002
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00260002
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00270002
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00280002
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00290002
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00300002
//PRTDBG   DD SYSOUT=*                                                  00310002
//SYSPRINT DD DUMMY                                                     00320002
//SYSUDUMP DD DUMMY                                                     00330002
//DAPRINT  DD SYSOUT=*                                                  00340002
//DACNDIN  DD DDNAME=SYSIN                                              00350002
//*                                                                     00360002
//*--------------------------------------------------------------------*
// ENDIF
//*--------------------------------------------------------------------*
//**********************************************************************
//*        TERMINA ZMJPPE63
//**********************************************************************
