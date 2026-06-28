//ZMHIPD09 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<<   V A L O R E S   >>>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMHIPD09.                                           *
//*                                                                    *
//*   OBJETIVO  :  REPORTES DE CONCILIACION CASA DE BOLSA - BANCO      *
//*                                                                    *
//*   CORRE ANTES DE  :                                                *
//*                                                                    *
//*   CORRE DESPUES DE:  CBHIND09 (ZMHIPD09)                           *
//*                                                                    *
//*   PERIODICIDAD    :  DIARIO                                        *
//*                                                                    *
//*   ELABORADO POR: SOFTTEK                                           *
//*                                                                    *
//*   FECHA:  JULIO  2004.                                             *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//**********************************************************************
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM3DG001                                                *
//* FUNCION:  RECIBE LOS PARAMETROS ENVIADOS POR EL SUBMITIDOR        *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHI09P11 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC')
//PI601765 DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHIPD09,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=96,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*-------------------------------------------------------------------*
//* PROGRAMA: SORT                                                    *
//* FUNCION:  ORDENA ARCHIVO CARTERA POR ICONCEPT, ITIPOTEN,  TPOS    *
//*           CUENTA, MERCADO Y FECHA. EXCLUIR PREAVISOS              *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHI09P10 EXEC PGM=ICEMAN,COND=(4,LT)
//PI601765 DD DUMMY
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.GDGD.VAL.ECBP.SZPR.CARTERA(0),DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.WKF.VAL.E&EMP..S&SUC..CARTERA.BCOS,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=70,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHI09T10),DISP=SHR                   00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: SORT                                                    *
//* FUNCION:  ORDENA ARCHIVO LIQNOHOY POR ICONCEPT, ITIPOTEN, TPOS,   *
//*           FLIQUIDA. SUMA CANTIDAD DE TITULOS * IAFTITUL.          *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHI09P09 EXEC PGM=ICEMAN,COND=(4,LT)
//PI601765 DD DUMMY
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.GDGD.VAL.ECBP.SZPR.LIQNOHOY(0),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.VAL.ECBP.SZPR.REPORTO(0),DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.WKF.VAL.E&EMP..S&SUC..LIQNOHOY.BCOS,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=74,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHI09T09),DISP=SHR                   00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM3EH002                                                *
//* FUNCION:  GENERA ARCHIVO CON POSICION DEL DIA ANTERIOR.           *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHI09P08 EXEC PGM=ZM3EH002,COND=(4,LT)
//PI601765 DD DUMMY
//ZM3EH0A1 DD DSN=MXCP.ZM.GDGD.VAL.ECBP.SZPR.CONEMIS(0),DISP=SHR
//ZM3EH0A2 DD DSN=MXCP.ZM.WKF.VAL.E&EMP..S&SUC..CARTERA.BCOS,
//            DISP=SHR
//ZM3EH0S1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..TITULOS.BANCO,
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
//* PROGRAMA: ZM4DH017                                                *
//* FUNCION:  ARCHIVO DE OPERACIONES LIQUIDADAS Y POR LIQUIDAR.       *
//* NO ACTUALIZA TABLAS                                               *
//*-------------------------------------------------------------------*
//PHI09P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZM4DH0A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..TITULOS.BANCO,
//            DISP=SHR
//ZM4DH0A2 DD DSN=MXCP.ZM.WKF.VAL.E&EMP..S&SUC..LIQNOHOY.BCOS,
//            DISP=SHR
//ZM4DH0S1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..CAPSI.BANCO,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=162,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI09T07),DISP=SHR
//*-------------------------------------------------------------------*
//* PROGRAMA: SORT                                                    *
//* FUNCION:  ORDENA ARCHIVO DE MOVIMIENTOS DEL DIA Y POR VENCER      *
//*           A 24, 48 Y 72 HORAS POR : POSICION, TIPOEMI, EMISORA,   *
//*           SERIE, CUPON,TENENCIA,ICONCEPT.                         *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHI09P06 EXEC PGM=ICEMAN,COND=(4,LT)
//PI601765 DD DUMMY
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..CAPSI.BANCO,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.WKF.VAL.E&EMP..S&SUC..MOVTOS.BANCO,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=162,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHI09T06),DISP=SHR                   00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM3EH004                                                *
//* FUNCION:  ARCHIVO POSICION REAL DEL DIA.                          *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHI09P05 EXEC PGM=ZM3EH004,COND=(4,LT)
//PI601765 DD DUMMY
//ZM3EH0A1 DD  DSN=MXCP.ZM.WKF.VAL.E&EMP..S&SUC..MOVTOS.BANCO,
//             DISP=SHR
//ZM3EH0S1 DD  DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..MOVTOS.CONCBCO,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(20,10),RLSE),
//             DCB=(RECFM=FB,DSORG=PS,LRECL=162,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4DH016                                                *
//* FUNCION:  ARCHIVO POSICION REAL SIVA Y BANCO                      *
//* NO ACTUALIZA TABLAS                                               *
//*-------------------------------------------------------------------*
//PHI09P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PI601765 DD DUMMY
//ZMDH16A1 DD  DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..MOVTOS.CONCBCO,
//             DISP=SHR
//ZMDH16S1 DD  DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..MOVSIVA,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(20,10),RLSE),
//             DCB=(RECFM=FB,DSORG=PS,LRECL=162,BLKSIZE=0)
//ZMDH16S2 DD  DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..MOVBCO,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(20,10),RLSE),
//             DCB=(RECFM=FB,DSORG=PS,LRECL=162,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI09T04),DISP=SHR
//*-------------------------------------------------------------------*
//* PROGRAMA: SORT                                                    *
//* FUNCION:  ORDENAR POR E-S-C  Y CUENTA, SUMANDO TITULOS            *
//*-------------------------------------------------------------------*
//PHI09P03 EXEC PGM=ICEMAN,COND=(4,LT)
//PI601765 DD DUMMY
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..MOVSIVA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.WKF.VAL.E&EMP..S&SUC..MOVSIVA.SORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=162,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHI09T03),DISP=SHR                   00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: SORT                                                    *
//* FUNCION:  ORDENAR POR E-S-C  Y CUENTA, SUMANDO TITULOS            *
//*-------------------------------------------------------------------*
//PHI09P02 EXEC PGM=ICEMAN,COND=(4,LT)
//PI601765 DD DUMMY
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..MOVBCO,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.WKF.VAL.E&EMP..S&SUC..MOVBCO.SORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=162,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHI09T03),DISP=SHR                   00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4DH018                                                *
//* FUNCION:  REPORTE CONCILIACION SIVA BANCO                         *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHI09P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZMD018A0 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHIPD09,
//            DISP=SHR
//ZMD018A1 DD DSN=MXCP.ZM.WKF.VAL.E&EMP..S&SUC..MOVSIVA.SORT,
//            DISP=SHR
//ZMD018A2 DD DSN=MXCP.ZM.WKF.VAL.E&EMP..S&SUC..MOVBCO.SORT,
//            DISP=SHR
//ZMD018R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI09T01),DISP=SHR
