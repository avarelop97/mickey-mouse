//ZMUEPR13 PROC
//*--------------------------------------------------------------------*
//* PROYRECO    :  ZM - DIGITALIZACION DE ESTADOS DE CUENTA BANCA      *
//*                BANCA PATRIMONIAL                                   *
//* PROCESO     :  ZMUEPR13                                            *
//* PERIODICIDAD:  MENSUAL                                             *
//* OBJETIVO    :  GENERAR LOS ARCHIVOS DE BANCA PATRIMONIAL Y BANCA   *
//*                PRIVADA PRIVADA PARA EL ENVIO AL APLICATIVO DE MEDC *
//*                Y GENERAR SELLOS FISCALES PARA LA IMPRESION DE      *
//*                ESTADOS DE CUENTA.                                  *
//* REALIZO     :  FABRICA DE SOFTWARE CAPGEMINI.                      *
//* FECHA       :  NOVIEMBRE 2013                                      *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*        L O G    D E   M O D I F I C A C I O N E S                  *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA                                      *
//*--------------------------------------------------------------------*
//* FS-0.0.0-01  XM07729 23MAR18  PARA EL PROGRAMA ZM4MU518 SE AGREGAN *
//*                               ARCHIVOS CON CONTRATOS QUE VAN A     *
//*                               GENERAR FACTURA DE EGRESOS           *
//*                               SE MODIFICAN LOS PASOS PARA INCLUIR  *
//*                               DUMMY LOS ARCHIVOS NUEVOS            *
//* FS-0.0.0-02  XMY2883 29AGO18  PARA EL PROGRAMA ZM4MU518 SE AGREGA  *
//*                               ARCHIVO  CON TODOS LOS CONTRATOS     *
//*                               PARA GUARDAR LAS COMISIONES Y LOS    *
//*                               DESCUENTOS APLICADOS EN EL MES.      *
//*                               SE INHIBE EL ARCHIVO S3EGRSO.        *
//* FS-01.14.01  INDRA   08NOV18  SE INTEGRAN LOS SEGMENTOS DEL        *
//*                               DETALLE DE RETENCIONES.              *
//*                      27DIC18  SE INCLUYE EL ARCHIVO DE RETENCIONES *
//*                               EN EL PROCESAMIENTO DE MEDC.         *
//*--------------------------------------------------------------------*
//* FS-0.0.0-03  XMZ9332 01FEB19  SE INCLUYE UN PASO NUEVO PARA GRABAR *
//*                               CORREO ELECTRONICO Y CLIENTE PARA    *
//*                               TIPO DE ENVIO 'COE'.                 *
//**********************************************************************
//* FS-1.0.0-04  M906542 29JUN22  EN EL PROGRAMA ZM4MU518 SE AGREGA    *
//*                               ARCHIVO DE SALIDA PARA INFORMAR LOS  *
//*                               RFC'S QUE SE CAMBIAN A GENERICO      *
//**********************************************************************
//**********************************************************************
//*FS-0.0.0-03-I
//*--------------------------------------------------------------------*
//* PASO    : ZUE13P2A.                                                *
//* PROGRAMA: IDCAMS.                                                  *
//* OBJETIVO: VERIFICA QUE EL ARCHIVO ENVIADO POR PE EXISTA.           *
//*--------------------------------------------------------------------*
//ZUE13P2A EXEC PGM=IDCAMS
//*
//SYSPRINT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZUR11T98),DISP=SHR
//*
// IF ZUE13P2A.RC > 0 THEN
//*--------------------------------------------------------------------*
//* PASO    : ZUE13P2B.                                                *
//* PROGRAMA: IEFBR14.                                                 *
//* OBJETIVO: GENERA ARCHIVO VACIO DE PE SI NO EXISTE EN PASO ANTERIOR.*
//*------------------------- ------------------------------------------*
//ZUE13P2B EXEC PGM=IEFBR14
//*
//CREARCH1 DD DSN=MBVP.PE.FIX.PEJCPPL2.CORREOS.PAT0003,
//            DISP=(MOD,CATLG,CATLG),UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=98,BLKSIZE=0)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
// ENDIF
//*FS-01.14.01-I
//*--------------------------------------------------------------------*
//* PASO       : ZUE13P24                                              *
//* UTILERIA   : IKJEFT01/ZM4MU310                                     *
//* OBJETIVO   : REASIGNA EL NUMERO DE CONTRATO DE LA TABLA ZMDT609    *
//*              Y ZMDT608.                                            *
//*--------------------------------------------------------------------*
//ZUE13P24 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E1DQ0001 DD DSN=MXCP.ZM.FIX.CBUENM44.DETALLE.EDIMPUE.SORT,
//            DISP=SHR
//*
//S1DQ0001 DD DSN=MXCP.ZM.WKF.BCUENR13.DETALLE.EDIMPUE,
//            DISP=(NEW,CATLG,CATLG),
//            UNIT=3390,SPACE=(CYL,(1000,500),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=88,DSORG=PS)
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE12P96),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZUE13P25                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : SE ORDENA EL ARCHIVO DEL DETALLE DE RETENCIONES POR   *
//*              EL NUEVO CONTRATO, EMISORA, SERIE Y TIPO DE MERCADO.  *
//*--------------------------------------------------------------------*
//ZUE13P25 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.WKF.BCUENR13.DETALLE.EDIMPUE,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.WKF.BCUENR13.DETALLE.EDIMPUE.SORT,
//            DISP=(NEW,CATLG,CATLG),
//            UNIT=3390,SPACE=(CYL,(1000,500),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=88,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE12P95),
//            DISP=SHR
//*
//*FS-01.14.01-F
//*FS-0.0.0-03-I
//*----------------------- --------------------------------------------*
//* PASO       : ZUE13P26.                                             *
//* UTILERIA   : IKJEFT01/ZM4CCEM1.                                    *
//* OBJETIVO   : RECIBE ARCHIVO DE PE Y CARGA EMAIL EN LA TABLA ZMDTEML*
//*--------------------------------------------------------------------*
//ZUE13P26 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MBVP.PE.FIX.PEJCPPL2.CORREOS.PAT0003,
//            DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUR11T94),DISP=SHR
//*FS-0.0.0-03-F
//*--------------------------------------------------------------------*
//* PASO       : ZUE13P01.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : REALIZA SORT PARA EXTRAER LAS CUENTAS MUESTRA         *
//*--------------------------------------------------------------------*
//ZUE13P01 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.SIIMP,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.SIIMPMU,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(DSORG=PS,LRECL=400,RECFM=FB,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE13P01),DISP=SHR                   00710000
//*
//*--------------------------------------------------------------------*
//* PASO       : ZUE13P02.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : REALIZA SORT PARA EXTRAER LAS CUENTAS MUESTRA         *
//*--------------------------------------------------------------------*
//ZUE13P02 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.NOIMP,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.NOIMPMU,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(DSORG=PS,LRECL=400,RECFM=FB,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE13P02),DISP=SHR                   00710000
//*
//*--------------------------------------------------------------------*
//* PASO       : ZUE13P03.                                             *
//* UTILERIA   : IKJEFT01/ZM4MU518                                     *
//* OBJETIVO   : GENERA ARCHIVOS DE BANCA PATRIMONIAL CON FORMATO      *
//*              PARA MEDC                                             *
//*--------------------------------------------------------------------*
//ZUE13P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//E1SIIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.SIIMPMU,DISP=SHR
//E2NOIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.NOIMPMU,DISP=SHR
//*FS-01.14.01-I
//E3DETRET DD DSN=MXCP.ZM.WKF.BCUENR13.DETALLE.EDIMPUE.SORT,DISP=SHR
//*FS-01.14.01-F
//S1SIIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.SIIMP.PIPESM,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=450,BLKSIZE=0)
//S2NOIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.NOIMP.PIPESM,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//           DCB=(RECFM=FB,LRECL=450,BLKSIZE=0)
//S1ESIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.SIIMPES.PIPESM,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=45,BLKSIZE=0)
//S2ESIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.NOIMPES.PIPESM,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//           DCB=(RECFM=FB,LRECL=45,BLKSIZE=0)
//*FS-0.0.0-01-I
//*S3EGRSO  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.MUESTRA.EGRESO,
//*            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*            SPACE=(CYL,(500,250),RLSE),
//*            DCB=(RECFM=FB,LRECL=95,BLKSIZE=0)
//*FS-0.0.0-01-F
//* FS-0.0.0-02-I
//S4TOTAL  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.MUESTRA.TOTALES,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=66,BLKSIZE=0)
//* FS-0.0.0-02-F
//*FS-1.0.0-04-I
//S5RFCGE  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.RFCMUE.CVEG02,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=202,BLKSIZE=0)
//*FS-1.0.0-04-F
//QRLSDB2  DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE13P03),DISP=SHR                   00710000
//*--------------------------------------------------------------------*
//* PASO       : ZUE13P04.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : REALIZA SORT PARA ORDENAR EL ARCHIVO DE BANCA         *
//*              PATRIMONIAL DE SI IMPRESION POR CUENTA, SEGMENTO Y    *
//*              SECUENCIA                                             *
//*--------------------------------------------------------------------*
//ZUE13P04 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.SIIMP.PIPESM,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.SIIMP.PISORM,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(DSORG=PS,LRECL=450,RECFM=FB,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE13P04),DISP=SHR                   00710000
//*
//*--------------------------------------------------------------------*
//* PASO       : ZUE13P05.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : REALIZA SORT-OUTREC PARA DEJAR EL ARCHIVO DE BANCA    *
//*              PATRIMONIAL DE SI IMPRESION EN EL FORMATO FINAL       *
//*--------------------------------------------------------------------*
//ZUE13P05 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.SIIMP.PISORM,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.SIIMP.PISOR2M,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1500,250),RLSE),
//            DCB=(DSORG=PS,LRECL=427,RECFM=FB,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE13P05),DISP=SHR                   00710000
//*
//*--------------------------------------------------------------------*
//* PASO       : ZUE13P06.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : REALIZA SORT PARA ORDENAR EL ARCHIVO DE BANCA         *
//*              PATRIMONIAL DE NO IMPRESION POR CUENTA, SEGMENTO      *
//*              Y SECUENCIA                                           *
//*--------------------------------------------------------------------*
//ZUE13P06 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.NOIMP.PIPESM,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.NOIMP.PISORM,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(DSORG=PS,LRECL=450,RECFM=FB,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE13P06),DISP=SHR                   00710000
//*
//*--------------------------------------------------------------------*
//* PASO       : ZUE13P07.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : REALIZA SORT-OUTREC PARA DEJAR EL ARCHIVO DE BANCA    *
//*              PATRIMONIAL DE NO IMPRESI N EN EL FORMATO FINAL       *
//*--------------------------------------------------------------------*
//ZUE13P07 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.NOIMP.PISORM,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.NOIMP.PISOR2M,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1000,500),RLSE),
//            DCB=(DSORG=PS,LRECL=427,RECFM=FB,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE13P07),DISP=SHR                   00710000
//*
//*--------------------------------------------------------------------*
//* PASO       : ZUE13P08.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : REALIZA SORT PARA EXTRAER LAS CUENTAS MUESTRA         *
//*--------------------------------------------------------------------*
//ZUE13P08 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.SIIMP,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.SIIMPMU,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(DSORG=PS,LRECL=400,RECFM=FB,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE13P08),DISP=SHR                   00710000
//*
//*--------------------------------------------------------------------*
//* PASO       : ZUE13P09.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : REALIZA SORT PARA EXTRAER LAS CUENTAS MUESTRA         *
//*--------------------------------------------------------------------*
//ZUE13P09 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.NOIMP,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.NOIMPMU,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(DSORG=PS,LRECL=400,RECFM=FB,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE13P09),DISP=SHR                   00710000
//*
//*--------------------------------------------------------------------*
//* PASO       : ZUE13P10.                                             *
//* UTILERIA   : IKJEFT01/ZM4MU518                                     *
//* OBJETIVO   : GENERA ARCHIVO DE BANCA PRIVADA CON FORMATO PARA MEDC *
//*--------------------------------------------------------------------*
//ZUE13P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//E1SIIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.SIIMPMU,DISP=SHR
//E2NOIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.NOIMPMU,DISP=SHR
//*FS-01.14.01-I
//E3DETRET DD DSN=MXCP.ZM.WKF.BCUENR13.DETALLE.EDIMPUE.SORT,DISP=SHR
//*FS-01.14.01-F
//S1SIIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.SIIMP.PIPESM,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=450,BLKSIZE=0)
//S2NOIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.NOIMP.PIPESM,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=450,BLKSIZE=0)
//S1ESIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.SIIMPES.PIPESM,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(RECFM=FB,LRECL=45,BLKSIZE=0)
//S2ESIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.NOIMPES.PIPESM,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(RECFM=FB,LRECL=45,BLKSIZE=0)
//*FS-0.0.0-01-I
//*S3EGRSO  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.MUESTRA.EGRESO,
//*            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*            SPACE=(CYL,(500,250),RLSE),
//*            DCB=(RECFM=FB,LRECL=95,BLKSIZE=0)
//* FS-0.0.0-01
//* FS-0.0.0-02-I
//S4TOTAL  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.MUESTRA.TOTALES,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=66,BLKSIZE=0)
//* FS-0.0.0-02-F
//*FS-1.0.0-04-I
//S5RFCGE  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.RFCMUE.CVEG02,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=202,BLKSIZE=0)
//*FS-1.0.0-04-F
//QRLSDB2  DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE13P10),DISP=SHR                   00710000
//*
//*--------------------------------------------------------------------*
//* PASO       : ZUE13P11.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   :REALIZA SORT PARA ORDENAR EL ARCHIVO DE BANCA          *
//*             PRIVADA DE SI IMPRESION POR CUENTA, SEGMENTO Y         *
//*             SECUENCIA                                              *
//*--------------------------------------------------------------------*
//ZUE13P11 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.SIIMP.PIPESM,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.SIIMP.PISORM,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(DSORG=PS,LRECL=450,RECFM=FB,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE13P11),DISP=SHR                   00710000
//*
//*--------------------------------------------------------------------*
//* PASO       : ZUE13P12.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   :REALIZA SORT-OUTREC PARA DEJAR EL ARCHIVO DE BANCA     *
//*             PRIVADA DE SI IMPRESION EN EL FORMATO FINAL            *
//*--------------------------------------------------------------------*
//ZUE13P12 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.SIIMP.PISORM,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.SIIMP.PISOR2M,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(DSORG=PS,LRECL=427,RECFM=FB,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE13P12),DISP=SHR                   00710000
//*
//*--------------------------------------------------------------------*
//* PASO       : ZUE13P13.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO :  REALIZA SORT PARA ORDENAR EL ARCHIVO DE BANCA          *
//*             PRIVADA DE NO IMPRESION POR CUENTA, SEGMENTO           *
//*             Y SECUENCIA                                            *
//*--------------------------------------------------------------------*
//ZUE13P13 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.NOIMP.PIPESM,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.NOIMP.PISORM,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(DSORG=PS,LRECL=450,RECFM=FB,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE13P13),DISP=SHR                   00710000
//*
//*--------------------------------------------------------------------*
//* PASO       : ZUE13P14.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO :  REALIZA SORT-OUTREC PARA DEJAR EL ARCHIVO DE BANCA     *
//*             PRIVADA DE NO IMPRESION EN EL FORMATO FINAL            *
//*--------------------------------------------------------------------*
//ZUE13P14 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.NOIMP.PISORM,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.NOIMP.PISOR2M,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(DSORG=PS,LRECL=427,RECFM=FB,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE13P14),DISP=SHR                   00710000
//*
//*--------------------------------------------------------------------*
//* PASO       : ZUE13P15.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO :  REALIZA SORT PARA EXTRAER LAS CUENTAS MUESTRA          *
//*--------------------------------------------------------------------*
//ZUE13P15 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.SIIMP,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.SIIMP.MU,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(DSORG=PS,LRECL=400,RECFM=FB,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE13P15),DISP=SHR                   00710000
//*
//*--------------------------------------------------------------------*
//* PASO       : ZUE13P16.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO :  REALIZA SORT PARA EXTRAER LAS CUENTAS MUESTRA          *
//*--------------------------------------------------------------------*
//ZUE13P16 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.NOIMP,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.NOIMP.MU,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(DSORG=PS,LRECL=400,RECFM=FB,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE13P16),DISP=SHR                   00710000
//*
//*--------------------------------------------------------------------*
//* PASO       : ZUE13P17.                                             *
//* UTILERIA   : IKJEFT01/ZM4MU518                                     *
//* OBJETIVO    : GENERA ARCHIVOS DE BANCA UHN CON FORMATO PARA MEDC   *
//*--------------------------------------------------------------------*
//ZUE13P17 EXEC PGM=IKJEFT01,COND=(4,LT)
//E1SIIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.SIIMP.MU,DISP=SHR
//E2NOIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.NOIMP.MU,DISP=SHR
//*FS-01.14.01-I
//E3DETRET DD DSN=MXCP.ZM.WKF.BCUENR13.DETALLE.EDIMPUE.SORT,DISP=SHR
//*FS-01.14.01-F
//S1SIIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.SIIMP.PIPESM,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=450,BLKSIZE=0)
//S2NOIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.NOIMP.PIPESM,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=450,BLKSIZE=0)
//S1ESIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.SIIMPES.PIPESM,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(RECFM=FB,LRECL=45,BLKSIZE=0)
//S2ESIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.NOIMPES.PIPESM,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(RECFM=FB,LRECL=45,BLKSIZE=0)
//* FS-0.0.0-01
//*S3EGRSO  DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.MUESTRA.EGRESO,
//*            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*            SPACE=(CYL,(500,250),RLSE),
//*            DCB=(RECFM=FB,LRECL=95,BLKSIZE=0)
//* FS-0.0.0-01
//* FS-0.0.0-02-I
//S4TOTAL  DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.MUESTRA.TOTALES,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=66,BLKSIZE=0)
//* FS-0.0.0-02-F
//*FS-1.0.0-04-I
//S5RFCGE  DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.RFCMUE.CVEG02,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=202,BLKSIZE=0)
//*FS-1.0.0-04-F
//QRLSDB2  DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE13P17),DISP=SHR                   00710000
//*
//*--------------------------------------------------------------------*
//* PASO       : ZUE13P18.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO :  REALIZA SORT PARA ORDENAR EL ARCHIVO DE BANCA          *
//*             PRIVADA DE SI IMPRESION POR CUENTA, SEGMENTO Y         *
//*             SECUENCIA                                              *
//*--------------------------------------------------------------------*
//ZUE13P18 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.SIIMP.PIPESM,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.SIIMP.PISORM,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(DSORG=PS,LRECL=450,RECFM=FB,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE13P18),DISP=SHR                   00710000
//*
//*--------------------------------------------------------------------*
//* PASO       : ZUE13P19.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO :  REALIZA SORT-OUTREC PARA DEJAR EL ARCHIVO DE BANCA     *
//*             PRIVADA DE SI IMPRESION EN EL FORMATO FINAL            *
//*--------------------------------------------------------------------*
//ZUE13P19 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.SIIMP.PISORM,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.SIIMP.PISOR2M,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(DSORG=PS,LRECL=427,RECFM=FB,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE13P19),DISP=SHR                   00710000
//*
//*--------------------------------------------------------------------*
//* PASO       : ZUE13P20.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO :  REALIZA SORT PARA ORDENAR EL ARCHIVO DE BANCA          *
//*             PRIVADA DE NO IMPRESION POR CUENTA, SEGMENTO           *
//*             Y SECUENCIA                                            *
//*--------------------------------------------------------------------*
//ZUE13P20 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.NOIMP.PIPESM,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.NOIMP.PISORM,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(DSORG=PS,LRECL=450,RECFM=FB,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE13P20),DISP=SHR                   00710000
//*
//*--------------------------------------------------------------------*
//* PASO       : ZUE13P21.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO :  REALIZA SORT-OUTREC PARA DEJAR EL ARCHIVO DE BANCA     *
//*             PRIVADA DE NO IMPRESION EN EL FORMATO FINAL            *
//*--------------------------------------------------------------------*
//ZUE13P21 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.NOIMP.PISORM,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.NOIMP.PISOR2M,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(DSORG=PS,LRECL=427,RECFM=FB,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE13P21),DISP=SHR                   00710000
//*
//*--------------------------------------------------------------------*
//* PASO       : ZUE13P22.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO :  REALIZA SORT-OUTREC PARA DEJAR EL ARCHIVO DE BANCA     *
//*             PRIVADA DE NO IMPRESION EN EL FORMATO FINAL            *
//*--------------------------------------------------------------------*
//ZUE13P22 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.SIIMP.PISOR2M,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.SIIMP.PISOR2M,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.SIIMP.PISOR2M,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.NOIMP.PISOR2M,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.NOIMP.PISOR2M,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.NOIMP.PISOR2M,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.SIIMP.MUESTRA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(DSORG=PS,LRECL=427,RECFM=FB,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE13P22),DISP=SHR                   00710000
//*
//*--------------------------------------------------------------------*
//* PASO       : ZUE13P23.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO : REALIZA SORT-OUTREC PARA DEJAR EL ARCHIVO DE BANCA      *
//*             RIVADA DE NO IMPRESION EN EL FORMATO FINAL             *
//*--------------------------------------------------------------------*
//ZUE13P23 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.NOIMP.PISOR2M,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.NOIMP.PISOR2M,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.NOIMP.PISOR2M,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.NOIMP.MUESTRA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(DSORG=PS,LRECL=427,RECFM=FB,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE13P23),DISP=SHR                   00710000
//*
//*--------------------------------------------------------------------*
//*                   FIN DE PROCESO ZMUEPR13                          *
//*--------------------------------------------------------------------*
