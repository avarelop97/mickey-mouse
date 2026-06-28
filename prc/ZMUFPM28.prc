//ZMUFPM28 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM REPORTE GESTION SIVA                             *
//* PROCESO      : ZMUFPM28                                            *
//* PERIODICIDAD : EVENTUAL                                            *
//* OBJETIVO     : CARGA INICIAL DE LA INFORMACION DE BONIFICACIONES A *
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
//* PASO    : PUF28110                                                 *
//* PGM/UTIL: IDCAMS                                                   *
//* OBJETIVO: BORRAR ARCHIVOS DE PASO                                  *
//**********************************************************************
//PUF28110 EXEC PGM=IDCAMS
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF28T01),DISP=SHR
//**********************************************************************
//* PASO    : PUF28100                                                 *
//* PGM/UTIL: ADUUMAIN                                                 *
//* OBJETIVO: DESCARGA DE DATOS DE LA TABLA ZMDT933.                   *
//**********************************************************************
//PUF28100  EXEC PGM=ADUUMAIN,COND=(4,LT),                              00022900
//          PARM='MXP1,PUF28100,NEW,,MSGLEVEL(1)'                       00023000
//*                                                                     00023400
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*                                                                     00023400
//SYSREC   DD DSN=MXCP.ZM.TMP.EVE.BCM.BONIF,                            00023800
//            UNIT=3390,                                                00023900
//            SPACE=(CYL,(100,50),RLSE),DISP=(NEW,CATLG,DELETE),        00024000
//            DCB=(RECFM=FB,LRECL=44,BLKSIZE=0,DSORG=PS)                00024100
//*                                                                     00024400
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF28T02),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF28090                                                 *
//* PGM/UTIL: ZM4MV007 / IKJEFT01                                      *
//* OBJETIVO: EJECUCION DE PROCESO QUE GENERA CORTE A NIVEL BANQUERO.  *
//**********************************************************************
//PUF28090 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXCP.ZM.TMP.EVE.BCM.BONIF,
//            DISP=SHR
//*
//SALIDA1  DD DSN=MXCP.ZM.TMP.EVE.BCM.BONIF.BQR,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF28T03),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF28080                                                 *
//* PGM/UTIL: ICEMAN                                                   *
//* OBJETIVO: ORDENA POR TPBANCA, UNIDAD GESTORA, PROD                 *
//**********************************************************************
//PUF28080 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.TMP.EVE.BCM.BONIF.BQR,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.EVE.BCM.BONIF.BQR.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,050),RLSE),
//            DCB=(LRECL=323,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF28T04),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF28070                                                 *
//* PGM/UTIL: ZM4MV008 / IKJEFT01                                      *
//* OBJETIVO: EJECUCION DE PROCESO QUE GENERA CORTE A NIVEL U GESTORA  *
//**********************************************************************
//PUF28070 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E1SRTBQR DD DSN=MXCP.ZM.TMP.EVE.BCM.BONIF.BQR.SORT,
//            DISP=SHR
//*
//S1BONUNG DD DSN=MXCP.ZM.TMP.EVE.BCM.BONIF.UNG,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF28T05),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF28060                                                 *
//* PGM/UTIL: ICEMAN                                                   *
//* OBJETIVO: ORDENA ARCHIVO POR TPBANCA, DIVISION, PRODUCTO           *
//**********************************************************************
//PUF28060 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.TMP.EVE.BCM.BONIF.UNG,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.EVE.BCM.BONIF.UNG.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,050),RLSE),
//            DCB=(LRECL=323,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF28T06),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF28050                                                 *
//* PGM/UTIL: ZM4MV009 / IKJEFT01                                      *
//* OBJETIVO: EJECUCION DE PROCESO QUE GENERA CORTE A NIVEL DIVISION   *
//**********************************************************************
//PUF28050 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E1BONUNG DD DSN=MXCP.ZM.TMP.EVE.BCM.BONIF.UNG.SORT,
//            DISP=SHR
//*
//S1BONDIV DD DSN=MXCP.ZM.TMP.EVE.BCM.BONIF.DIV,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF28T07),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF28040                                                 *
//* PGM/UTIL: ICEMAN                                                   *
//* OBJETIVO: ORDENA ARCHIVO POR TPBANCA, PROD                         *
//**********************************************************************
//PUF28040 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.TMP.EVE.BCM.BONIF.DIV,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.EVE.BCM.BONIF.DIV.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,050),RLSE),
//            DCB=(LRECL=323,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF28T08),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF28030                                                 *
//* PGM/UTIL: ZM4MV010 / IKJEFT01                                      *
//* OBJETIVO: EJECUCION DE PROCESO QUE GENERA CORTE A NIVEL BANCA      *
//**********************************************************************
//PUF28030 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXCP.ZM.TMP.EVE.BCM.BONIF.DIV.SORT,
//            DISP=SHR
//*
//SALIDA1  DD DSN=MXCP.ZM.TMP.EVE.BCM.BONIF.BCA,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF28T09),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF28020                                                 *
//* PGM/UTIL: ICEMAN                                                   *
//* OBJETIVO: CONCATENA ARCHIVOS PARA CARGA.                           *
//* CONTROL : ZUC02T12                                                 *
//**********************************************************************
//PUF28020 EXEC PGM=ICEMAN,COND=(4,LT)                                  00000090
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.EVE.BCM.BONIF.BQR,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.EVE.BCM.BONIF.UNG,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.EVE.BCM.BONIF.DIV,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.EVE.BCM.BONIF.BCA,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.EVE.BCM.BONIF.ZMDT768,                    00000140
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(200,100),RLSE),UNIT=3390,
//            DCB=(LRECL=323,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSOUT   DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF28T10),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF28010                                                 *
//* PGM/UTIL: AMUUMAIN                                                 *
//* OBJETIVO: CARGA TABLA  DE INGRESOS ZMDT768.                        *
//* CONTROL :
//**********************************************************************
//*PUF28010 EXEC PGM=AMUUMAIN,
//*           PARM='MXP1,PUF28010,NEW,,MSGLEVEL(1)',
//*           COND=(4,LT)
//*STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//*         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//*         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//**
//*SYSREC1  DD DSN=MXCP.ZM.TMP.EVE.BCM.BONIF.ZMDT768,
//*            DISP=SHR
//*SYSUT1   DD DSN=MXCP.ZM.TMP.EVE.BONI.SYSUT01,
//*            DISP=(NEW,CATLG,CATLG),
//*            SPACE=(CYL,(050,025),RLSE),
//*            UNIT=3390
//*SORTOUT  DD DSN=MXCP.ZM.TMP.EVE.BONI.SYSERR,
//*            DISP=(NEW,CATLG,CATLG),
//*            SPACE=(CYL,(050,025),RLSE),
//*            UNIT=3390
//*SYSERR   DD DSN=MXCP.ZM.TMP.EVE.BONI.SORTOUT,
//*            DISP=(NEW,CATLG,CATLG),
//*            SPACE=(CYL,(050,025),RLSE),
//*            UNIT=3390
//*ABNLIGNR DD DUMMY
//*SYSTSPRT DD SYSOUT=*
//*UTPRINT  DD SYSOUT=*
//*SYSUDUMP DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF28T11),DISP=SHR
//**********************************************************************
