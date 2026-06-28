//ZMHLPZ08 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<<   V A L O R E S   >>>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMHLPZ08.                                           *
//*                                                                    *
//*   OBJETIVO  :  REPORTES DE CONCILIACION OPERATIVOS Y CAPITAL       *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  SIVAXVA1                                      *
//*                                                                    *
//*   PERIODICIDAD    :  A SOLICITUD DE USUARIO (OPC. 957)             *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*INDRA |SEPT. 2013|       |SIVA2012|CONCILIACION PROPIA BANCO(M.S.G.)*
//*--------------------------------------------------------------------*
//* PROGRAMA: ZM4EH004                                                *
//* FUNCION:  CLASIFICA LOS CONTRATOS DEL INDEVAL                     *
//* ACTUALIZA CCONIND                                                 *
//*-------------------------------------------------------------------*
//PHL08P19 EXEC PGM=IKJEFT01
//ZM4EH4A1 DD DSN=MXCP.ZM.FIX.O957.ECBP.SZPR.INDEVAL,
//            DISP=SHR
//ZM4EH4S1 DD DSN=MXCP.ZM.TMP.VAL.ECBP.SZPR.INDEVA2C,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=170,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL08T01),DISP=SHR
//*
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM3EH001                                                *
//* FUNCION:  GENERA TARJETA DE SORT                                  *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL08P18 EXEC PGM=ZM3EH001,COND=(4,LT)
//ZM3EH1A1 DD DSN=MXCP.ZM.TMP.VAL.ECBP.SZPR.OPCCN2,DISP=SHR
//ZM3EH1S1 DD DSN=MXCP.ZM.TMP.VAL.ECBP.SZPR.TCONCIL2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=80,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//*-------------------------------------------------------------------*
//* PROGRAMA: SORT                                                    *
//* FUNCION:  EXTRAER REGISTROS DEL INDEVAL DE LA POSICION A PROCESAR *
//*           ORDENADO POR EMISORA, SERIE CUPON, TIPOVAL, CTO. INDEV. *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL08P17 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.VAL.ECBP.SZPR.INDEVA2C,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.WKF.VAL.ECBP.SZPR.INDEVA2C.MDD,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=170,BLKSIZE=0)
//SYSIN    DD DSN=MXCP.ZM.TMP.VAL.ECBP.SZPR.TCONCIL2,DISP=SHR           00183716
//*                                                                     00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4EH009                                                *
//* FUNCION:  ARCHIVO DE TRASPASOS ANTICIPADOS ENTRE OPERATIVOS Y CAP.*
//*-------------------------------------------------------------------*
//PHL08P16 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM4EH0S1 DD DSN=MXCP.ZM.TMP.VAL.ECBP.SZPR.TRASANT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=140,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL08T02),DISP=SHR
//*                                                                     00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: SORT                                                    *
//* FUNCION:  CONCATENAR ARCHIVOS DE REPORTOS, OPERACIONES POR LIQUI- *
//*           DAR Y TRASPASOS ANTICIPADOS.                            *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL08P15 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.GDGD.VAL.ECBP.SZPR.REPORTO(0),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.VAL.ECBP.SZPR.LIQNOHOY(0),DISP=SHR
//         DD DSN=MXCP.ZM.TMP.VAL.ECBP.SZPR.TRASANT,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.WKF.VAL.ECBP.SZPR.LIQNOHOY.OPERCAP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=74,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL08T03),DISP=SHR                   00183716
//*                                                                     00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: SORT                                                    *
//* FUNCION:  ORDENAR ARCHIVO CARTERA POR ICONCEPT, TENENCIA, POSICION*
//*           Y CUENTA.                                               *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL08P14 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.GDGD.VAL.ECBP.SZPR.CARTERA(0),DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.WKF.VAL.ECBP.SZPR.CARTERA.OPERCAP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=70,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL08T04),DISP=SHR                   00183716
//*                                                                     00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM3EH002                                                *
//* FUNCION:  GENERA ARCHIVO CON POSICION DEL DIA ANTERIOR.           *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL08P13 EXEC PGM=ZM3EH002,COND=(4,LT)
//ZM3EH0A1 DD DSN=MXCP.ZM.GDGD.VAL.ECBP.SZPR.CONEMIS(0),DISP=SHR
//ZM3EH0A2 DD DSN=MXCP.ZM.WKF.VAL.ECBP.SZPR.CARTERA.OPERCAP,
//            DISP=SHR
//ZM3EH0S1 DD DSN=MXCP.ZM.TMP.VAL.ECBP.SZPR.TITULOS.OPERCAP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=80,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*                                                                     00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4EH006                                                *
//* FUNCION:  ARCHIVO DE OPERACIONES LIQUIDADAS Y POR LIQUIDAR.       *
//* NO ACTUALIZA TABLAS                                               *
//*-------------------------------------------------------------------*
//PHL08P12 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM4EH0A1 DD DSN=MXCP.ZM.TMP.VAL.ECBP.SZPR.TITULOS.OPERCAP,
//            DISP=SHR
//ZM4EH0A2 DD DSN=MXCP.ZM.WKF.VAL.ECBP.SZPR.LIQNOHOY.OPERCAP,
//            DISP=SHR
//ZM4EH0S1 DD DSN=MXCP.ZM.TMP.VAL.ECBP.SZPR.CAPSI.OPERCAP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=162,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL08T05),DISP=SHR
//*                                                                     00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: SORT                                                    *
//* FUNCION:  ORDENAR ARCHIVO CAPSI POR EMISORA, SERIE, CUPON, TIPO DE*
//*           VALOR Y CONTRATO. EXCLUIR TIPO VALOR 50                 *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL08P11 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.VAL.ECBP.SZPR.CAPSI.OPERCAP,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.WKF.VAL.ECBP.SZPR.MOVTOS.OPERSORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=162,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL08T06),DISP=SHR                   00183716
//*                                                                     00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM3EH004                                                *
//* FUNCION:  ARCHIVO POSICION REAL DEL DIA.                          *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL08P10 EXEC PGM=ZM3EH004,COND=(4,LT)
//ZM3EH0A1 DD DSN=MXCP.ZM.WKF.VAL.ECBP.SZPR.MOVTOS.OPERSORT,
//            DISP=SHR
//ZM3EH0S1 DD DSN=MXCP.ZM.TMP.VAL.ECBP.SZPR.MOVTOS.OPERCAP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=162,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*                                                                     00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4EH007                                                *
//* FUNCION:  ARCHIVO INDEVAL CON NOMBRES DE EMISORAS IGUAL A SIVA.   *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL08P09 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM4EH7A1 DD DSN=MXCP.ZM.WKF.VAL.ECBP.SZPR.INDEVA2C.MDD,
//            DISP=SHR
//ZM4EH7S1 DD DSN=MXCP.ZM.TMP.VAL.ECBP.SZPR.EMISINDE.OPERCAP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=90,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL08T07),DISP=SHR
//*                                                                     00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: SORT                                                    *
//* FUNCION:  ORDENAR ARCHIVO EMISINDE POR EMISORA, SERIE, CUPON, TIPO*
//*           VALOR Y CONTRATO.                                       *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL08P08 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.VAL.ECBP.SZPR.EMISINDE.OPERCAP,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.WKF.VAL.ECBP.SZPR.EMISINDE.SORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=90,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL08T08),DISP=SHR                   00183716
//*                                                                     00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4EH008                                                *
//* FUNCION:  CONCILIACION SIVA-INDEVAL POR CONTRATO.                 *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL08P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM4EH8A1 DD DSN=MXCP.ZM.TMP.VAL.ECBP.SZPR.MOVTOS.OPERCAP,
//            DISP=SHR
//ZM4EH8A2 DD DSN=MXCP.ZM.WKF.VAL.ECBP.SZPR.EMISINDE.SORT,
//            DISP=SHR
//ZM4EH8S1 DD DSN=MXCP.ZM.TMP.VAL.ECBP.SZPR.CONCIL.OPERCAP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=120,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL08T09),DISP=SHR
//*                                                                     00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: SORT                                                    *
//* FUNCION:  EXTRAER REGISTROS DE CONCIL SOLO MDD, SI1 Y MDC, CON    *
//*           SWITCH DE EXISTENCIA = 'S'. ORDERNAR POR E-S-C  CONTRATO*
//*           SIVA. INFORMACION CONTRATOS CAPITAL.                    *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL08P06 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.VAL.ECBP.SZPR.CONCIL.OPERCAP,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.WKF.VAL.ECBP.SZPR.CONSIVA.CAPITAL,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=120,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL08T10),DISP=SHR                   00183716
//*                                                                     00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: SORT                                                    *
//* FUNCION:  EXTRAER REGISTROS DE CONCIL SOLO MDD, SI1 Y MDC, CON    *
//*           SWITCH DE EXISTENCIA = 'S'. ORDERNAR POR CONTRATO SIVA, *
//*           MERCADI, TIPOVAL, E-S-C. OPERATIVOS.                    *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL08P05 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.VAL.ECBP.SZPR.CONCIL.OPERCAP,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.WKF.VAL.ECBP.SZPR.CONSIVA.OPERAT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=120,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL08T11),DISP=SHR                   00183716
//*                                                                     00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM3EH003                                                *
//* FUNCION:  REPORTE CONCILIACION CTOS. CAPITAL                      *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL08P04 EXEC PGM=ZM3EH003,COND=(4,LT)
//ZM3EH0A1 DD DSN=MXCP.ZM.WKF.VAL.ECBP.SZPR.CONSIVA.CAPITAL,
//            DISP=SHR
//ZM3EH0A2 DD DSN=MXCP.ZM.TMP.VAL.ECBP.SZPR.OPCCN2,DISP=SHR
//ZM3EH0A3 DD DSN=MXCP.ZM.FIX.VAL.ECBP.ZMHLPZ08.DIFCON.CAP,
//            DISP=(OLD,KEEP,KEEP),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=105,BLKSIZE=0)
//ZM3EH0R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*                                                                     00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM3EH005                                                *
//* FUNCION:  REPORTE CONCILIACION CTOS. OPERATIVOS                   *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL08P03 EXEC PGM=ZM3EH005,COND=(4,LT)
//ZM3EH0A1 DD DSN=MXCP.ZM.WKF.VAL.ECBP.SZPR.CONSIVA.OPERAT,
//            DISP=SHR
//ZM3EH0A2 DD DSN=MXCP.ZM.TMP.VAL.ECBP.SZPR.OPCCN2,DISP=SHR
//ZM3EH0A3 DD DSN=MXCP.ZM.FIX.VAL.ECBP.ZMHLPZ08.DIFCON.OPE,
//            DISP=(OLD,KEEP,KEEP),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=105,BLKSIZE=0)
//ZM3EH0R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*                                                                     00183716
//***********************   FIN ZMHLPZ08   **************************** 00183716
