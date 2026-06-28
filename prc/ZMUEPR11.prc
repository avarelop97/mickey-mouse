//ZMUEPR11 PROC
//*--------------------------------------------------------------------*
//* PROYECTO    :  ZM - YA9BXW - REDISEÑO DE ESTADO DE CUENTA.         *
//* PROCESO     :  ZMUEPR11.                                           *
//* PERIODICIDAD:  MENSUAL.                                            *
//* OBJETIVO    :  GENERAR LOS ARCHIVOS DE BANCA PATRIMONIAL, BANCA    *
//**               PRIVADA Y UHN, PARA EL ENVIO AL APLICATIVO DE MEDC  *
//*                Y GENERAR SELLOS FISCALES PARA LA IMPRESION DE      *
//*                ESTADO DE CUENTA.                                   *
//* REALIZO     :  FABRICA DE SOFTWARE CAPGEMINI.                      *
//* FECHA       :  17 DE SEPTIEMBRE 2013.                              *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- -------------------------------------*
//* FS-0.0.0-01  XM07729 23MAR18  PARA EL PROGRAMA ZM4MU518 SE AGREGAN *
//*                               ARCHIVOS CON CONTRATOS QUE VAN A     *
//*                               GENERAR FACTURA DE EGRESOS           *
//*                               SE MODIFICAN LOS PASOS PARA INCLUIR  *
//*                               LOS ARCHIVOS NUEVOS                  *
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
//* FS-1.0.0-04  M906542 29JUN22  EN EL PROGRAMA ZM4CBD03 SE AGREGA    *
//*                               ARCHIVO DE SALIDA PARA INFORMAR LOS  *
//*                               RFC'S QUE SE CAMBIAN A GENERICO      *
//**********************************************************************
//*FS-0.0.0-03-I
//*--------------------------------------------------------------------*
//* PASO    : ZUR11T98.                                                *
//* PROGRAMA: IDCAMS.                                                  *
//* OBJETIVO: VERIFICA QUE EL ARCHIVO ENVIADO POR PE EXISTA.           *
//*--------------------------------------------------------------------*
//ZUR11T98 EXEC PGM=IDCAMS
//*
//SYSPRINT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZUR11T98),DISP=SHR
//*
// IF ZUR11T98.RC > 0 THEN
//*--------------------------------------------------------------------*
//* PASO    : ZUR11T97.                                                *
//* PROGRAMA: IEFBR14.                                                 *
//* OBJETIVO: GENERA ARCHIVO VACIO DE PE SI NO EXISTE EN PASO ANTERIOR.*
//*------------------------- ------------------------------------------*
//ZUR11T97 EXEC PGM=IEFBR14
//*
//CREARCH1 DD DSN=MBVP.PE.FIX.PEJCPPL2.CORREOS.PAT0003,
//            DISP=(MOD,CATLG,CATLG),UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=98,BLKSIZE=0)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
// ENDIF
//*FS-0.0.0-03-F
//*FS-01.14.01-I
//**********************************************************************
//* PASO       : ZUR11T96                                              *
//* UTILERIA   : IKJEFT01/ZM4MU310                                     *
//* OBJETIVO   : REASIGNA EL NUMERO DE CONTRATO DE LA TABLA ZMDT609    *
//*              Y ZMDT608.                                            *
//**********************************************************************
//ZUR11T96 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E1DQ0001 DD DSN=MXCP.ZM.FIX.CBUENM44.DETALLE.EDIMPUE.SORT,
//            DISP=SHR
//*
//S1DQ0001 DD DSN=MXCP.ZM.WKF.BCUENR11.DETALLE.EDIMPUE,
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
//**********************************************************************
//* PASO       : ZUR11T95                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : SE ORDENA EL ARCHIVO DEL DETALLE DE RETENCIONES POR   *
//*              EL NUEVO CONTRATO, EMISORA, SERIE Y TIPO DE MERCADO.  *
//**********************************************************************
//ZUR11T95 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.WKF.BCUENR11.DETALLE.EDIMPUE,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.WKF.BCUENR11.DETALLE.EDIMPUE.SORT,
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
//*--------------------------------------------------------------------*
//* PASO       : ZUR11T94.                                             *
//* UTILERIA   : IKJEFT01/ZM4CCEM1.                                    *
//* OBJETIVO   : RECIBE ARCHIVO DE PE Y CARGA EMAIL EN LA TABLA ZMDTEML*
//*--------------------------------------------------------------------*
//ZUR11T94 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MBVP.PE.FIX.PEJCPPL2.CORREOS.PAT0003,
//            DISP=SHR
//*
//SALIDA01 DD DSN=MXCP.ZM.FIX.BCUENR11.CORREOS.MUV.PE,
//            DISP=(NEW,CATLG,CATLG),
//            SPACE=(CYL,(100,050),RLSE),
//            UNIT=3390,
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=220)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUR11T94),DISP=SHR
//*FS-0.0.0-03-F
//**********************************************************************
//* PASO       : ZUR11T90.                                             *
//* UTILERIA   : IKJEFT01 / ZM4MU518.                                  *
//* OBJETIVO   : GENERA ARCHIVOS DE BANCA PATRIMONIAL CON FORMATO PARA *
//*              MEDC.                                                 *
//**********************************************************************
//ZUR11T90 EXEC PGM=IKJEFT01,COND=(4,LT)
//E1SIIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.SIIMP,DISP=SHR
//E2NOIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.NOIMP,DISP=SHR
//*FS-01.14.01-I
//E3DETRET DD DSN=MXCP.ZM.WKF.BCUENR11.DETALLE.EDIMPUE.SORT,DISP=SHR
//*FS-01.14.01-F
//S1SIIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.SIIMP.PIPES,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1500,750),RLSE),
//            DCB=(RECFM=FB,LRECL=450,BLKSIZE=0)
//S2NOIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.NOIMP.PIPES,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1500,750),RLSE),
//           DCB=(RECFM=FB,LRECL=450,BLKSIZE=0)
//S1ESIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.SIIMPES.PIPES,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(RECFM=FB,LRECL=45,BLKSIZE=0)
//S2ESIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.NOIMPES.PIPES,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//           DCB=(RECFM=FB,LRECL=45,BLKSIZE=0)
//* FS-0.0.0-01
//*S3EGRSO  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.EGRESOS.PIPES,
//*           DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*           SPACE=(CYL,(500,250),RLSE),
//*           DCB=(RECFM=FB,LRECL=95,BLKSIZE=0)
//* FS-0.0.0-01
//* FS-0.0.0-02
//S4TOTAL  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.TOTALES.PIPES,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=66,BLKSIZE=0)
//* FS-0.0.0-02
//*FS-1.0.0-04-I
//S5RFCGE  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.RFCGEN.CVEGEN,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=202,BLKSIZE=0)
//*FS-1.0.0-04-F
//QRLSDB2  DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUR11T90),DISP=SHR                   00710000
//*
//**********************************************************************
//* PASO     :  ZUR11T85                                               *
//* PROGRAMA :  ICEMAN                                                 *
//* OBJETIVO :  REALIZA SORT PARA ORDENAR EL ARCHIVO DE BANCA          *
//*             PATRIMONIAL DE SI IMPRESION POR CUENTA, SEGMENTO Y     *
//*             SECUENCIA                                              *
//**********************************************************************
//ZUR11T85 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.SIIMP.PIPES,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.SIIMP.PISOR,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1500,750),RLSE),
//            DCB=(DSORG=PS,LRECL=450,RECFM=FB,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR11T85),DISP=SHR                   00710000
//*
//**********************************************************************
//* PASO     :  ZUR11T80                                               *
//* PROGRAMA :  ICEMAN                                                 *
//* OBJETIVO :  REALIZA SORT-OUTREC PARA DEJAR EL ARCHIVO DE BANCA     *
//*             PATRIMONIAL DE SI IMPRESION EN EL FORMATO FINAL        *
//**********************************************************************
//ZUR11T80 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.SIIMP.PISOR,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.SIIMP.PISOR2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1500,750),RLSE),
//            DCB=(DSORG=PS,LRECL=427,RECFM=FB,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR11T80),DISP=SHR                   00710000
//*
//**********************************************************************
//* PASO     :  ZUR11T75                                               *
//* PROGRAMA :  ICEMAN                                                 *
//* OBJETIVO :  REALIZA SORT PARA ORDENAR EL ARCHIVO DE BANCA          *
//*             PATRIMONIAL DE NO IMPRESIÓN POR CUENTA, SEGMENTO       *
//*             Y SECUENCIA                                            *
//**********************************************************************
//ZUR11T75 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.NOIMP.PIPES,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.NOIMP.PISOR,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1500,750),RLSE),
//            DCB=(DSORG=PS,LRECL=450,RECFM=FB,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR11T85),DISP=SHR                   00710000
//*
//**********************************************************************
//* PASO     :  ZUR11T70                                               *
//* PROGRAMA :  ICEMAN                                                 *
//* OBJETIVO :  REALIZA SORT-OUTREC PARA DEJAR EL ARCHIVO DE BANCA     *
//*             PATRIMONIAL DE NO IMPRESIÓN EN EL FORMATO FINAL        *
//**********************************************************************
//ZUR11T70 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.NOIMP.PISOR,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.NOIMP.PISOR2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1500,750),RLSE),
//            DCB=(DSORG=PS,LRECL=427,RECFM=FB,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR11T80),DISP=SHR                   00710000
//*
//**********************************************************************
//* PASO     :  ZUR11T65                                               *
//* PROGRAMA :  IKJEFT01 / ZM4MU518.                                   *
//* OBJETIVO :  GENERA ARCHIVOS DE BANCA PRIVADA CON FORMATO           *
//*             PARA MEDC                                              *
//**********************************************************************
//ZUR11T65 EXEC PGM=IKJEFT01,COND=(4,LT)
//E1SIIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.SIIMP,DISP=SHR
//E2NOIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.NOIMP,DISP=SHR
//*FS-01.14.01-I
//E3DETRET DD DSN=MXCP.ZM.WKF.BCUENR11.DETALLE.EDIMPUE.SORT,DISP=SHR
//*FS-01.14.01-F
//S1SIIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.SIIMP.PIPES,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=450,BLKSIZE=0)
//S2NOIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.NOIMP.PIPES,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=450,BLKSIZE=0)
//S1ESIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.SIIMPES.PIPES,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(RECFM=FB,LRECL=45,BLKSIZE=0)
//S2ESIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.NOIMPES.PIPES,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(RECFM=FB,LRECL=45,BLKSIZE=0)
//* FS-0.0.0-01
//*S3EGRSO  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.EGRESOS.PIPES,
//*           DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*           SPACE=(CYL,(500,250),RLSE),
//*           DCB=(RECFM=FB,LRECL=95,BLKSIZE=0)
//* FS-0.0.0-01
//* FS-0.0.0-02
//S4TOTAL  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.TOTALES.PIPES,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=66,BLKSIZE=0)
//* FS-0.0.0-02
//*FS-1.0.0-04-I
//S5RFCGE  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.RFCGEN.CVEGEN,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=202,BLKSIZE=0)
//*FS-1.0.0-04-F
//QRLSDB2  DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUR11T65),DISP=SHR                   00710000
//*
//**********************************************************************
//* PASO     :  ZUR11T60                                               *
//* PROGRAMA :  ICEMAN                                                 *
//* OBJETIVO :  REALIZA SORT PARA ORDENAR EL ARCHIVO DE BANCA          *
//*             PRIVADA DE SI IMPRESION POR CUENTA, SEGMENTO Y         *
//*             SECUENCIA                                              *
//**********************************************************************
//ZUR11T60 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.SIIMP.PIPES,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.SIIMP.PISOR,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(DSORG=PS,LRECL=450,RECFM=FB,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR11T85),DISP=SHR                   00710000
//*
//**********************************************************************
//* PASO     :  ZUR11T55                                               *
//* PROGRAMA :  ICEMAN                                                 *
//* OBJETIVO :  REALIZA SORT-OUTREC PARA DEJAR EL ARCHIVO DE BANCA     *
//*             PRIVADA DE SI IMPRESION EN EL FORMATO FINAL            *
//**********************************************************************
//ZUR11T55 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.SIIMP.PISOR,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.SIIMP.PISOR2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(DSORG=PS,LRECL=427,RECFM=FB,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR11T80),DISP=SHR                   00710000
//*
//**********************************************************************
//* PASO     :  ZUR11T50                                               *
//* PROGRAMA :  ICEMAN                                                 *
//* OBJETIVO :  REALIZA SORT PARA ORDENAR EL ARCHIVO DE BANCA          *
//*             PRIVADA DE NO IMPRESION POR CUENTA, SEGMENTO           *
//*             Y SECUENCIA                                            *
//**********************************************************************
//ZUR11T50 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.NOIMP.PIPES,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.NOIMP.PISOR,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(DSORG=PS,LRECL=450,RECFM=FB,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR11T85),DISP=SHR                   00710000
//*
//**********************************************************************
//* PASO     :  ZUR11T45                                               *
//* PROGRAMA :  ICEMAN                                                 *
//* OBJETIVO :  REALIZA SORT-OUTREC PARA DEJAR EL ARCHIVO DE BANCA     *
//*             PRIVADA DE NO IMPRESION EN EL FORMATO FINAL            *
//**********************************************************************
//ZUR11T45 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.NOIMP.PISOR,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.NOIMP.PISOR2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(DSORG=PS,LRECL=427,RECFM=FB,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR11T80),DISP=SHR                   00710000
//*
//**********************************************************************
//* PASO     :  ZUR11T35                                               *
//* PROGRAMA :  IKJEFT01 / ZM4MU518                                    *
//* OBJETIVO :  GENERA ARCHIVOS DE BANCA UHN CON FORMATO               *
//*             PARA MEDC                                              *
//**********************************************************************
//ZUR11T35 EXEC PGM=IKJEFT01,COND=(4,LT)
//E1SIIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.SIIMP,DISP=SHR
//E2NOIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.NOIMP,DISP=SHR
//*FS-01.14.01-I
//E3DETRET DD DSN=MXCP.ZM.WKF.BCUENR11.DETALLE.EDIMPUE.SORT,DISP=SHR
//*FS-01.14.01-F
//S1SIIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.SIIMP.PIPES,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=450,BLKSIZE=0)
//S2NOIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.NOIMP.PIPES,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=450,BLKSIZE=0)
//S1ESIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.SIIMPES.PIPES,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(RECFM=FB,LRECL=45,BLKSIZE=0)
//S2ESIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.NOIMPES.PIPES,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(RECFM=FB,LRECL=45,BLKSIZE=0)
//* FS-0.0.0-01
//*S3EGRSO  DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.EGRESOS.PIPES,
//*           DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*           SPACE=(CYL,(500,250),RLSE),
//*           DCB=(RECFM=FB,LRECL=95,BLKSIZE=0)
//* FS-0.0.0-01
//* FS-0.0.0-02
//S4TOTAL  DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.TOTALES.PIPES,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=66,BLKSIZE=0)
//* FS-0.0.0-02
//*FS-1.0.0-04-I
//S5RFCGE  DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.RFCGEN.CVEGEN,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=202,BLKSIZE=0)
//*FS-1.0.0-04-F
//QRLSDB2  DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUR11T35),DISP=SHR                   00710000
//*
//**********************************************************************
//* PASO     :  ZUR11T30                                               *
//* PROGRAMA :  ICEMAN                                                 *
//* OBJETIVO :  REALIZA SORT PARA ORDENAR EL ARCHIVO DE BANCA          *
//*             PRIVADA DE SI IMPRESION POR CUENTA, SEGMENTO Y         *
//*             SECUENCIA                                              *
//**********************************************************************
//ZUR11T30 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.SIIMP.PIPES,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.SIIMP.PISOR,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(DSORG=PS,LRECL=450,RECFM=FB,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR11T85),DISP=SHR                   00710000
//*
//**********************************************************************
//* PASO     :  ZUR11T25                                               *
//* PROGRAMA :  ICEMAN                                                 *
//* OBJETIVO :  REALIZA SORT-OUTREC PARA DEJAR EL ARCHIVO DE BANCA     *
//*             PRIVADA DE SI IMPRESION EN EL FORMATO FINAL            *
//**********************************************************************
//ZUR11T25 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.SIIMP.PISOR,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.SIIMP.PISOR2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(DSORG=PS,LRECL=427,RECFM=FB,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR11T80),DISP=SHR                   00710000
//*
//**********************************************************************
//* PASO     :  ZUR11T20                                               *
//* PROGRAMA :  ICEMAN                                                 *
//* OBJETIVO :  REALIZA SORT PARA ORDENAR EL ARCHIVO DE BANCA          *
//*             PRIVADA DE NO IMPRESION POR CUENTA, SEGMENTO           *
//*             Y SECUENCIA                                            *
//**********************************************************************
//ZUR11T20 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.NOIMP.PIPES,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.NOIMP.PISOR,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(DSORG=PS,LRECL=450,RECFM=FB,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR11T85),DISP=SHR                   00710000
//*
//**********************************************************************
//* PASO     :  ZUR11T15                                               *
//* PROGRAMA :  ICEMAN                                                 *
//* OBJETIVO :  REALIZA SORT-OUTREC PARA DEJAR EL ARCHIVO DE BANCA     *
//*             PRIVADA DE NO IMPRESION EN EL FORMATO FINAL            *
//**********************************************************************
//ZUR11T15 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.NOIMP.PISOR,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.NOIMP.PISOR2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(DSORG=PS,LRECL=427,RECFM=FB,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR11T80),DISP=SHR                   00710000
//*
//*--------------------------------------------------------------------*
//*   PASO    : ZUR11T13                                               *
//*   OBJETIVO: REALIZA CONVERSION DE CARACTER ENIE POR #VARIABLE      *
//*                     -- ZM3CFD02 --                                 *
//*--------------------------------------------------------------------*
//ZUR11T13 EXEC PGM=ZM3CFD02
//*
//ZM3CFDE1 DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.SIIMP.PISOR2,
//            DISP=SHR
//*
//ZM3CFDS1 DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.SIIMP.PISOR2G,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(1500,750),RLSE),
//            DCB=(DSORG=PS,LRECL=427,RECFM=FB,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DUMMY
//*
//*--------------------------------------------------------------------*
//*   PASO    : ZUR11T12                                               *
//*   OBJETIVO: REALIZA CONVERSION DE CARACTER ENIE POR #VARIABLE      *
//*                     -- ZM3CFD02 --                                 *
//*--------------------------------------------------------------------*
//ZUR11T12 EXEC PGM=ZM3CFD02
//*
//ZM3CFDE1 DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.NOIMP.PISOR2,
//            DISP=SHR
//*
//ZM3CFDS1 DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.NOIMP.PISOR2G,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(1500,750),RLSE),
//            DCB=(DSORG=PS,LRECL=427,RECFM=FB,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DUMMY
//*
//*--------------------------------------------------------------------*
//*   PASO    : ZUR11T11                                               *
//*   OBJETIVO: REALIZA CONVERSION DE CARACTER ENIE POR #VARIABLE      *
//*                     -- ZM3CFD02 --                                 *
//*--------------------------------------------------------------------*
//ZUR11T11 EXEC PGM=ZM3CFD02
//*
//ZM3CFDE1 DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.SIIMP.PISOR2,
//            DISP=SHR
//*
//ZM3CFDS1 DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.SIIMP.PISOR2G,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(DSORG=PS,LRECL=427,RECFM=FB,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DUMMY
//*
//*--------------------------------------------------------------------*
//*   PASO    : ZUR11T10                                               *
//*   OBJETIVO: REALIZA CONVERSION DE CARACTER ENIE POR #VARIABLE      *
//*                     -- ZM3CFD02 --                                 *
//*--------------------------------------------------------------------*
//ZUR11T10 EXEC PGM=ZM3CFD02
//*
//ZM3CFDE1 DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.NOIMP.PISOR2,
//            DISP=SHR
//*
//ZM3CFDS1 DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.NOIMP.PISOR2G,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(DSORG=PS,LRECL=427,RECFM=FB,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DUMMY
//*
//*--------------------------------------------------------------------*
//*   PASO    : ZUR11T09                                               *
//*   OBJETIVO: REALIZA CONVERSION DE CARACTER ENIE POR #VARIABLE      *
//*                     -- ZM3CFD02 --                                 *
//*--------------------------------------------------------------------*
//ZUR11T09 EXEC PGM=ZM3CFD02
//*
//ZM3CFDE1 DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.SIIMP.PISOR2,
//            DISP=SHR
//*
//ZM3CFDS1 DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.SIIMP.PISOR2G,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(DSORG=PS,LRECL=427,RECFM=FB,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DUMMY
//*
//*--------------------------------------------------------------------*
//*   PASO    : ZUR11T08                                               *
//*   OBJETIVO: REALIZA CONVERSION DE CARACTER ENIE POR #VARIABLE      *
//*                     -- ZM3CFD02--                                 *
//*--------------------------------------------------------------------*
//ZUR11T08 EXEC PGM=ZM3CFD02
//*
//ZM3CFDE1 DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.NOIMP.PISOR2,
//            DISP=SHR
//*
//ZM3CFDS1 DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.NOIMP.PISOR2G,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(DSORG=PS,LRECL=427,RECFM=FB,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DUMMY
//*
//*********************************************************************
//*   PROGRAMA:    IOACND                                             *
//*   OBJETIVO:    ADICIONA CONDICION PARA QUE SEA TOMADA POR AJ Y    *
//*                EJECUTE AUTOMATICAMENTE EL PROCESO NAJPCOE1.       *
//*********************************************************************
//ZUR11T07 EXEC PGM=IOACND,PARM='ADD COND BCUENR11_OK_PR WDATE',
//         COND=(4,LT)
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD DUMMY
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
//*
//*--------------------------------------------------------------------*
//*                   FIN DE PROCESO BCUENR11                          *
//*--------------------------------------------------------------------*
