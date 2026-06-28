//ZMUFPM22 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM RENDIMIENTOS DE INGRESOS SIVA                    *
//* PROCESO      : ZMUFPM22                                            *
//* PERIODICIDAD : EVENTUAL                                            *
//* OBJETIVO     : CARGA INICIAL DE LA INFORMACION DE TENENCIA EN LA   *
//*                TABLA ZMDT768.                                      *
//* REALIZO      : HILDEBRANDO(XM010AB).                               *
//* FECHA        : NOVIEMBRE 2009.                                     *
//*                                                                    *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//*      @01     XMBO010 18DIC09  SE REEMPLAZA TARJETA DE CONTROL PARA *
//*                               DESCARGA DE INFORMACION DE LA TABLA  *
//*                               ZMDT705, SE MODIFICA ULTIMO PASO.    *
//*                                                                    *
//* FS-0.0.0-00  XXXXXXX DDMMMAA  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*
//*--------------------------------------------------------------------*
//*
//**********************************************************************
//* PASO    : PUF22200                                                 *
//* PGM/UTIL: IDCAMS                                                   *
//* OBJETIVO: BORRAR ARCHIVOS DE PASO                                  *
//**********************************************************************
//PUF22200 EXEC PGM=IDCAMS
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF22T01),DISP=SHR
//**********************************************************************
//* PASO    : PUF22190                                                 *
//* PGM/UTIL: ADUUMAIN                                                 *
//* OBJETIVO: DESCARGA DE DATOS DE LA TABLA ZMDT705 DE RENDIMIENTOS    *
//**********************************************************************
//PUF22190  EXEC PGM=ADUUMAIN,COND=(4,LT),                              00022900
//          PARM='MXP1,PUF22190,NEW,,MSGLEVEL(1)'                       00023000
//*                                                                     00023400
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*                                                                     00023400
//SYSREC   DD DSN=MXCP.ZM.TMP.EVE.BCM.TENENCIA,                         00023800
//            UNIT=3390,                                                00023900
//            SPACE=(CYL,(100,50),RLSE),DISP=(NEW,CATLG,DELETE),        00024000
//            DCB=(RECFM=FB,LRECL=094,BLKSIZE=0,DSORG=PS)               00024100
//*                                                                     00024400
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*@01-I
//SYSIN    DD DSN=DUMMY
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF22T02),DISP=SHR
//*@01-F
//*
//*--------------------------------------------------------------------*
//*  CREACION DE SYSTSIN PARA EL PROGRAMA ZM4MV007                     *
//*--------------------------------------------------------------------*
//PUF22180 EXEC PGM=ZM3CTC01,COND=(4,LT),PARM=('P,MXP1,ZM4MV007,')
//SYSTSIN  DD DSN=MXCP.ZM.WKF.M22.ZM4MV007,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE),
//            DCB=(LRECL=100,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//**********************************************************************
//* PASO    : PUF22170                                                 *
//* PGM/UTIL: ZM4MV007 / IKJEFT01                                      *
//* OBJETIVO: DEPURACION DE DATOS PARA TENENCIA.
//**********************************************************************
//PUF22170 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E1TENENC DD DSN=MXCP.ZM.TMP.EVE.BCM.TENENCIA,
//            DISP=SHR
//*
//S1DEPURA DD DSN=MXCP.ZM.TMP.EVE.BCM.DEPU.CTE,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,050),RLSE),
//            DCB=(LRECL=094,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//S2INCIDE DD DSN=MXCP.ZM.TMP.EVE.BCM.INCID001,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,050),RLSE),
//            DCB=(LRECL=161,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=MXCP.ZM.WKF.M22.ZM4MV007,
//            DISP=(OLD,DELETE,DELETE)
//*
//**********************************************************************
//* PASO    : PUF22160                                                 *
//* PGM/UTIL: ICEMAN                                                   *
//* OBJETIVO: ORDENA POR TPBANCA, CLIENTE, CUENTA, AñO_PROCESO,        *
//*           MES_PROCESO.                          ñ                  *
//**********************************************************************
//PUF22160 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.TMP.EVE.BCM.DEPU.CTE,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.EVE.BCM.CTE.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,050),RLSE),
//            DCB=(LRECL=094,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF22T03),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*  CREACION DE SYSTSIN PARA EL PROGRAMA ZM4MV008                     *
//*--------------------------------------------------------------------*
//PUF22150 EXEC PGM=ZM3CTC01,COND=(4,LT),PARM=('P,MXP1,ZM4MV008,')
//SYSTSIN  DD DSN=MXCP.ZM.WKF.M22.ZM4MV008,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE),
//            DCB=(LRECL=100,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//**********************************************************************
//* PASO    : PUF22140                                                 *
//* PGM/UTIL: ZM4MV008 / IKJEFT01                                      *
//* OBJETIVO: CORTE POR CLIENTE Y CUENTóA óPARA RENDIMIENTO E INGRESO  *
//**********************************************************************
//PUF22140 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E1TENENC DD DSN=MXCP.ZM.TMP.EVE.BCM.CTE.SORT,
//            DISP=SHR
//*
//S1CLIENT DD DSN=MXCP.ZM.TMP.EVE.BCM.CLIENTE,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,050),RLSE),
//            DCB=(LRECL=323,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//S2INCIDE DD DSN=MXCP.ZM.TMP.EVE.BCM.INCID002,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(060,030),RLSE),
//            DCB=(LRECL=161,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=MXCP.ZM.WKF.M22.ZM4MV008,
//            DISP=(OLD,DELETE,DELETE)
//*
//**********************************************************************
//* PASO    : PUF22130                                                 *
//* PGM/UTIL: ICEMAN                                                   *
//* OBJETIVO: ORDENA ARCHIVO POR TPBANCA, IPROM, PROñD.                *
//**********************************************************************
//PUF22130 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.TMP.EVE.BCM.CLIENTE,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.EVE.BCM.BQR.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,050),RLSE),
//            DCB=(LRECL=323,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF22T04),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*  CREACION DE SYSTSIN PARA EL PROGRAMA ZM4MV009                     *
//*--------------------------------------------------------------------*
//PUF22120 EXEC PGM=ZM3CTC01,COND=(4,LT),PARM=('P,MXP1,ZM4MV009,')
//SYSTSIN  DD DSN=MXCP.ZM.WKF.M22.ZM4MV009,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE),
//            DCB=(LRECL=100,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//*
//**********************************************************************
//* PASO    : PUF22110                                                 *
//* PGM/UTIL: ZM4MV009 / IKJEFT01                                      *
//* OBJETIVO: CORTE POR BANQUERO PARA TóENóENCIA.                      *
//**********************************************************************
//PUF22110 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E1TENENC DD DSN=MXCP.ZM.TMP.EVE.BCM.BQR.SORT,
//            DISP=SHR
//*
//S1CLIENT DD DSN=MXCP.ZM.TMP.EVE.BCM.BANQUERO,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,050),RLSE),
//            DCB=(LRECL=323,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//S2INCIDE DD DSN=MXCP.ZM.TMP.EVE.BCM.INCID003,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(060,030),RLSE),
//            DCB=(LRECL=461,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=MXCP.ZM.WKF.M22.ZM4MV009,
//            DISP=(OLD,DELETE,DELETE)
//*
//**********************************************************************
//* PASO    : PUF22100                                                 *
//* PGM/UTIL: ICEMAN                                                   *
//* OBJETIVO: ORDENA ARCHIVO POR TPBANCA, OFICINA, PROD.               *
//**********************************************************************
//PUF22100 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.TMP.EVE.BCM.BANQUERO,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.EVE.BCM.OFNA.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,050),RLSE),
//            DCB=(LRECL=323,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF22T05),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*  CREACION DE SYSTSIN PARA EL PROGRAMA ZM4MV009                     *
//*--------------------------------------------------------------------*
//PUF22090 EXEC PGM=ZM3CTC01,COND=(4,LT),PARM=('P,MXP1,ZM4MV010,')
//SYSTSIN  DD DSN=MXCP.ZM.WKF.M22.ZM4MV010,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE),
//            DCB=(LRECL=100,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//*
//**********************************************************************
//* PASO    : PUF22080                                                 *
//* PGM/UTIL: ZM4MV010 / IKJEFT01                                      *
//* OBJETIVO: CORTE POR UNIDAD GESTORA óPAóRA INGRESOS.                *
//**********************************************************************
//PUF22080 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E1TENENC DD DSN=MXCP.ZM.TMP.EVE.BCM.OFNA.SORT,
//            DISP=SHR
//*
//S1CLIENT DD DSN=MXCP.ZM.TMP.EVE.BCM.OFICINA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,050),RLSE),
//            DCB=(LRECL=323,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//S2INCIDE DD DSN=MXCP.ZM.TMP.EVE.BCM.INCID004,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(060,030),RLSE),
//            DCB=(LRECL=461,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=MXCP.ZM.WKF.M22.ZM4MV010,
//            DISP=(OLD,DELETE,DELETE)
//*
//**********************************************************************
//* PASO    : PUF22070                                                 *
//* PGM/UTIL: ICEMAN                                                   *
//* OBJETIVO: ORDENA ARCHIVO POR TPBANCA, DIVISION, PROD.              *
//* CONTROL : ZUC02T10                                                 *
//**********************************************************************
//PUF22070 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.TMP.EVE.BCM.OFICINA,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.EVE.BCM.DIV.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(060,030),RLSE),
//            DCB=(LRECL=323,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF22T06),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*  CREACION DE SYSTSIN PARA EL PROGRAMA ZM4MV011                     *
//*--------------------------------------------------------------------*
//PUF22060 EXEC PGM=ZM3CTC01,COND=(4,LT),PARM=('P,MXP1,ZM4MV011,')
//SYSTSIN  DD DSN=MXCP.ZM.WKF.M22.ZM4MV011,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE),
//            DCB=(LRECL=100,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//*
//**********************************************************************
//* PASO    : PUF22050                                                 *
//* PGM/UTIL: ZM4MV011 / IKJEFT01                                      *
//* OBJETIVO: CORTE POR DIVISION PARA IóNGóRESOS                       *
//* CONTROL : ZUC21T09                                                 *
//**********************************************************************
//PUF22050 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E1TENENC DD DSN=MXCP.ZM.TMP.EVE.BCM.DIV.SORT,
//            DISP=SHR
//*
//S1CLIENT DD DSN=MXCP.ZM.TMP.EVE.BCM.DIVISION,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,050),RLSE),
//            DCB=(LRECL=323,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//S2INCIDE DD DSN=MXCP.ZM.TMP.EVE.BCM.INCID005,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(060,030),RLSE),
//            DCB=(LRECL=461,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=MXCP.ZM.WKF.M22.ZM4MV011,
//            DISP=(OLD,DELETE,DELETE)
//*
//**********************************************************************
//* PASO    : PUF22040                                                 *
//* PGM/UTIL: ICEMAN                                                   *
//* OBJETIVO: ORDENA ARCHIVO POR TPBANCA, DIVISION, PROD.              *
//* CONTROL : ZUC02T10                                                 *
//**********************************************************************
//PUF22040 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.TMP.EVE.BCM.DIVISION,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.EVE.BCM.BCA.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,050),RLSE),
//            DCB=(LRECL=323,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF22T07),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*  CREACION DE SYSTSIN PARA EL PROGRAMA ZM4MV012                     *
//*--------------------------------------------------------------------*
//PUF22030 EXEC PGM=ZM3CTC01,COND=(4,LT),PARM=('P,MXP1,ZM4MV012,')
//SYSTSIN  DD DSN=MXCP.ZM.WKF.M22.ZM4MV012,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE),
//            DCB=(LRECL=100,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//*
//**********************************************************************
//* PASO    : PUF22020                                                 *
//* PGM/UTIL: ICEMAN                                                   *
//* OBJETIVO: ORDENA ARCHIVO POR TPBANCA, PROD.                        *
//* CONTROL : ZUC02T12                                                 *
//**********************************************************************
//PUF22020 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E1TENENC DD DSN=MXCP.ZM.TMP.EVE.BCM.BCA.SORT,
//            DISP=SHR
//*
//S1CLIENT DD DSN=MXCP.ZM.TMP.EVE.BCM.BANCA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,050),RLSE),
//            DCB=(LRECL=323,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//S2INCIDE DD DSN=MXCP.ZM.TMP.EVE.BCM.INCID006,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(060,030),RLSE),
//            DCB=(LRECL=461,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=MXCP.ZM.WKF.M22.ZM4MV012,
//            DISP=(OLD,DELETE,DELETE)
//*
//**********************************************************************
//* PASO    : PUF22010                                                 *
//* PGM/UTIL: ICEMAN                                                   *
//* OBJETIVO: CONCATENA ARCHIVOS PARA CARGA.                           *
//* CONTROL : ZUC02T12                                                 *
//**********************************************************************
//PUF22010 EXEC PGM=ICEMAN,COND=(4,LT)                                  00000090
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.EVE.BCM.CLIENTE,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.EVE.BCM.BANQUERO,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.EVE.BCM.OFICINA,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.EVE.BCM.DIVISION,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.EVE.BCM.BANCA,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.EVE.BCM.LOADT.ZMDT768,                    00000140
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(200,100),RLSE),UNIT=3390,
//            DCB=(LRECL=323,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSOUT   DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF22T08),DISP=SHR
//*@01-I
//*--------------------------------------------------------------------*
//*  CREACION DE SYSTSIN PARA EL PROGRAMA ZM4MU034                     *
//*--------------------------------------------------------------------*
//PUF22009 EXEC PGM=ZM3CTC01,COND=(4,LT),PARM=('P,MXP1,ZM4MU034,')
//SYSTSIN  DD DSN=MXCP.ZM.WKF.M22.ZM4MU034,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE),
//            DCB=(LRECL=100,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO     : PUF22008                                                *
//* UTILERIA : IKJEFT01/PUF22009                                       *
//* OBJETIVO : EJECUCION DEL PROGRAMA ZM4MU034 QUE CARGA TENENCIA EN   *
//*            LA TABLA ZMDT768                                        *
//*--------------------------------------------------------------------*
//PUF22008 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXCP.ZM.TMP.EVE.BCM.LOADT.ZMDT768,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=MXCP.ZM.WKF.M22.ZM4MU034,
//            DISP=(OLD,DELETE,DELETE)
//*--------------------------------------------------------------------*
//*  CREACION DE SYSTSIN PARA EL PROGRAMA ZM4MU035                     *
//*--------------------------------------------------------------------*
//PUF22007 EXEC PGM=ZM3CTC01,COND=(4,LT),
//          PARM=('P,MXP1,ZM4MU035,00008.00012.ZM4MU034')
//SYSTSIN  DD DSN=MXCP.ZM.WKF.M22.ZM4MU035,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE),
//            DCB=(LRECL=100,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO     : PUF10PC3                                                *
//* UTILERIA : IKJEFT01/ZM4MU035                                       *
//* OBJETIVO : EJECUCION DEL PROGRAMA ZM4MU035 QUE DEPURA REGISTROS EN *
//*            LA TABLA ZMDT768 POR ULT_MOD                            *
//*--------------------------------------------------------------------*
//PUF22006 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=MXCP.ZM.WKF.M22.ZM4MU035,
//            DISP=(OLD,DELETE,DELETE)
//**********************************************************************
//* PASO    : PUF22005                                                 *
//* PGM/UTIL: AMUUMAIN                                                 *
//* OBJETIVO: CARGA TABLA  DE INGRESOS ZMDT768.                        *
//* CONTROL :
//**********************************************************************
//*PUF22005 EXEC PGM=AMUUMAIN,
//*           PARM='MXP1,PUF22005,NEW,,MSGLEVEL(1)',
//*           COND=(4,LT)
//*STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//*         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//*         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//*SYSREC1  DD DSN=MXCP.ZM.TMP.EVE.BCM.LOADT.ZMDT768,
//*            DISP=SHR
//*SYSUT1   DD DSN=MXCP.ZM.TMP.EVE.ZMDT768.SYSUT1,
//*            DISP=(NEW,CATLG,CATLG),
//*            SPACE=(CYL,(050,025),RLSE),
//*            UNIT=3390
//*SORTOUT  DD DSN=MXCP.ZM.TMP.EVE.ZMDT768.SORTOUT,
//*            DISP=(NEW,CATLG,CATLG),
//*            SPACE=(CYL,(050,025),RLSE),
//*            UNIT=3390
//*SYSERR   DD DSN=MXCP.ZM.TMP.EVE.ZMDT768.SYSERR,
//*            DISP=(NEW,CATLG,CATLG),
//*            SPACE=(CYL,(050,025),RLSE),
//*            UNIT=3390
//*ABNLIGNR DD DUMMY
//*SYSTSPRT DD SYSOUT=*
//*UTPRINT  DD SYSOUT=*
//*SYSUDUMP DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF22T09),DISP=SHR
//*@01-F
//**********************************************************************
