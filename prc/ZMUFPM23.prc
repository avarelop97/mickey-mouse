//ZMUFPM23 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM REPORTE GESTION SIVA                             *
//* PROCESO      : ZMUFPM23                                            *
//* PERIODICIDAD : EVENTUAL                                            *
//* OBJETIVO     : CARGA INICIAL DE LA INFORMACION DE APERTURAS A      *
//*                TABLA ZMDT768.                                      *
//* REALIZO      : ASP.                                                *
//* FECHA        : NOVIEMBRE 2009.                                     *
//*                                                                    *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//* FS-0.0.0-00  XXXXXXX DDMMMAA  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*
//*--------------------------------------------------------------------*
//*
//**********************************************************************
//* PASO    : PUF23110                                                 *
//* PGM/UTIL: IDCAMS                                                   *
//* OBJETIVO: BORRAR ARCHIVOS DE PASO                                  *
//**********************************************************************
//PUF23110 EXEC PGM=IDCAMS
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF23T01),DISP=SHR
//**********************************************************************
//* PASO    : PUF23100                                                 *
//* PGM/UTIL: ADUUMAIN                                                 *
//* OBJETIVO: DESCARGA DE DATOS DE LA TABLA ZMDT933.                   *
//**********************************************************************
//PUF23100  EXEC PGM=ADUUMAIN,COND=(4,LT),                              00022900
//          PARM='MXP1,PUF23100,NEW,,MSGLEVEL(1)'                       00023000
//*                                                                     00023400
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*                                                                     00023400
//SYSREC   DD DSN=MXCP.ZM.TMP.EVE.BCM.ALTAS,                            00023800
//            UNIT=3390,                                                00023900
//            SPACE=(CYL,(100,50),RLSE),DISP=(NEW,CATLG,DELETE),        00024000
//            DCB=(RECFM=FB,LRECL=45,BLKSIZE=0,DSORG=PS)                00024100
//*                                                                     00024400
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF23T02),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF23090                                                 *
//* PGM/UTIL: ZM4MV007 / IKJEFT01                                      *
//* OBJETIVO: EJECUCION DE PROCESO QUE GENERA CORTE A NIVEL BANQUERO.  *
//**********************************************************************
//PUF23090 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXCP.ZM.TMP.EVE.BCM.ALTAS,
//            DISP=SHR
//*
//SALIDA1  DD DSN=MXCP.ZM.TMP.EVE.BCM.ALTAS.BQR,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,050),RLSE),
//            DCB=(LRECL=323,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF23T03),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF23080                                                 *
//* PGM/UTIL: ICEMAN                                                   *
//* OBJETIVO: ORDENA POR TPBANCA, UNIDAD GESTORA, PROD                 *
//**********************************************************************
//PUF23080 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.TMP.EVE.BCM.ALTAS.BQR,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.EVE.BCM.ALTAS.BQR.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,050),RLSE),
//            DCB=(LRECL=323,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF23T04),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF23070                                                 *
//* PGM/UTIL: ZM4MV008 / IKJEFT01                                      *
//* OBJETIVO: EJECUCION DE PROCESO QUE GENERA CORTE A NIVEL U GESTORA  *
//**********************************************************************
//PUF23070 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E1SRTBQR DD DSN=MXCP.ZM.TMP.EVE.BCM.ALTAS.BQR.SORT,
//            DISP=SHR
//*
//S1ALTUNG DD DSN=MXCP.ZM.TMP.EVE.BCM.ALTAS.UNG,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,050),RLSE),
//            DCB=(LRECL=323,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF23T05),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF23060                                                 *
//* PGM/UTIL: ICEMAN                                                   *
//* OBJETIVO: ORDENA ARCHIVO POR TPBANCA, DIVISION, PRODUCTO           *
//**********************************************************************
//PUF23060 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.TMP.EVE.BCM.ALTAS.UNG,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.EVE.BCM.ALTAS.UNG.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,050),RLSE),
//            DCB=(LRECL=323,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF23T06),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF23050                                                 *
//* PGM/UTIL: ZM4MV009 / IKJEFT01                                      *
//* OBJETIVO: EJECUCION DE PROCESO QUE GENERA CORTE A NIVEL DIVISION   *
//**********************************************************************
//PUF23050 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E1ALTUNG DD DSN=MXCP.ZM.TMP.EVE.BCM.ALTAS.UNG.SORT,
//            DISP=SHR
//*
//S1ALTDIV DD DSN=MXCP.ZM.TMP.EVE.BCM.ALTAS.DIV,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,050),RLSE),
//            DCB=(LRECL=323,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF23T07),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF23040                                                 *
//* PGM/UTIL: ICEMAN                                                   *
//* OBJETIVO: ORDENA ARCHIVO POR TPBANCA, PROD                         *
//**********************************************************************
//PUF23040 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.TMP.EVE.BCM.ALTAS.DIV,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.EVE.BCM.ALTAS.DIV.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,050),RLSE),
//            DCB=(LRECL=323,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF23T08),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF23030                                                 *
//* PGM/UTIL: ZM4MV010 / IKJEFT01                                      *
//* OBJETIVO: EJECUCION DE PROCESO QUE GENERA CORTE A NIVEL BANCA      *
//**********************************************************************
//PUF23030 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXCP.ZM.TMP.EVE.BCM.ALTAS.DIV.SORT,
//            DISP=SHR
//*
//SALIDA1  DD DSN=MXCP.ZM.TMP.EVE.BCM.ALTAS.BCA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,050),RLSE),
//            DCB=(LRECL=323,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF23T09),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF23020                                                 *
//* PGM/UTIL: ICEMAN                                                   *
//* OBJETIVO: CONCATENA ARCHIVOS PARA CARGA.                           *
//* CONTROL : ZUC02T12                                                 *
//**********************************************************************
//PUF23020 EXEC PGM=ICEMAN,COND=(4,LT)                                  00000090
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.EVE.BCM.ALTAS.BQR,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.EVE.BCM.ALTAS.UNG,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.EVE.BCM.ALTAS.DIV,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.EVE.BCM.ALTAS.BCA,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.EVE.BCM.ALTAS.ZMDT768,                    00000140
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(200,100),RLSE),UNIT=3390,
//            DCB=(LRECL=323,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSOUT   DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF23T10),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF23010                                                 *
//* PGM/UTIL: AMUUMAIN                                                 *
//* OBJETIVO: CARGA TABLA  DE INGRESOS ZMDT768.                        *
//* CONTROL :
//**********************************************************************
//*PUF23010 EXEC PGM=AMUUMAIN,
//*           PARM='MXP1,PUF23010,NEW,,MSGLEVEL(1)',
//*           COND=(4,LT)
//*STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//*         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//*         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//**
//*SYSREC1  DD DSN=MXCP.ZM.TMP.EVE.BCM.ALTAS.ZMDT768,
//*            DISP=SHR
//*SYSUT1   DD DSN=MXCP.ZM.TMP.EVE.APER.SYSUT01,
//*            DISP=(NEW,CATLG,CATLG),
//*            SPACE=(CYL,(050,025),RLSE),
//*            UNIT=3390
//*SORTOUT  DD DSN=MXCP.ZM.TMP.EVE.APER.SYSERR,
//*            DISP=(NEW,CATLG,CATLG),
//*            SPACE=(CYL,(050,025),RLSE),
//*            UNIT=3390
//*SYSERR   DD DSN=MXCP.ZM.TMP.EVE.APER.SORTOUT,
//*            DISP=(NEW,CATLG,CATLG),
//*            SPACE=(CYL,(050,025),RLSE),
//*            UNIT=3390
//*ABNLIGNR DD DUMMY
//*SYSTSPRT DD SYSOUT=*
//*UTPRINT  DD SYSOUT=*
//*SYSUDUMP DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF23T11),DISP=SHR
//**********************************************************************
