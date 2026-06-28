//ZMUEPRII PROC
//*--------------------------------------------------------------------*
//* PROYECTO    :  ZM - DIGITALIZACION DE ESTADOS DE CUENTA BANCA      *
//*                BANCA PATRIMONIAL                                   *
//* PROCESO     :  ZMUEPR12                                            *
//* PERIODICIDAD:  MENSUAL                                             *
//* OBJETIVO    :  GENERAR LOS ARCHIVOS PARA IMPRIMIR LOS ESTADOS DE   *
//*                CUENTA , ESTOS SE ENVIAN A  INDRA                   *
//* REALIZO      : FABRICA DE SOFTWARE CAPGEMINI.                      *
//* FECHA       :  NOVIEMBRE 2013                                      *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*        L O G    D E   M O D I F I C A C I O N E S                  *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//* FS-1.0.0-01  XMBB157 21DIC18 SE INCLUYE EL ARCHIVO DE RETENCIONES  *
//*                              EN EL PROCESAMIENTO DE COLTOMEX.      *
//*--------------------------------------------------------------------*
//*FS-1.0.0-01-INI
//*--------------------------------------------------------------------*
//* PASO       : ZUE12P96                                              *
//* UTILERIA   : IKJEFT01/ZM4MU310                                     *
//* OBJETIVO   : REASIGNA EL NUMERO DE CONTRATO DE LA TABLA ZMDT609    *
//*              Y ZMDT608.                                            *
//*--------------------------------------------------------------------*
//ZUE12P96 EXEC PGM=IKJEFT01
//*
//E1DQ0001 DD DSN=MXCP.ZM.FIX.CBUENM44.DETALLE.EDIMPUE.SORT,
//            DISP=SHR
//*
//S1DQ0001 DD DSN=MXCP.ZM.WKF.BCUENII.DETALLE.EDIMPUE,
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
//* PASO       : ZUE12P95                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : SE ORDENA EL ARCHIVO DEL DETALLE DE RETENCIONES POR   *
//*              EL NUEVO CONTRATO, EMISORA, SERIE Y TIPO DE MERCADO.  *
//*--------------------------------------------------------------------*
//ZUE12P95 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.WKF.BCUENII.DETALLE.EDIMPUE,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.WKF.BCUENII.DETALLE.EDIMPUE.SORT,
//            DISP=(NEW,CATLG,CATLG),
//            UNIT=3390,SPACE=(CYL,(1000,500),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=88,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE12P95),
//            DISP=SHR
//*
//*FS-1.0.0-01-FIN
//*--------------------------------------------------------------------*
//* PASO       : ZUE12P90.                                             *
//* UTILERIA   : ZM3MU519                                              *
//* OBJETIVO :  GENERA ARCHIVOS DE BANCA PATRIMONIAL CON FORMATO       *
//*             PARA INDRA                                             *
//*--------------------------------------------------------------------*
//ZUE12P90 EXEC PGM=ZM3MU519,COND=(4,LT)
//E1SIIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.SIIMPMX,DISP=SHR
//E2NOIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.NOIMPMX,DISP=SHR
//*FS-1.0.0-01-INI
//E3DETRET DD DSN=MXCP.ZM.WKF.BCUENII.DETALLE.EDIMPUE.SORT,DISP=SHR
//*FS-1.0.0-01-FIN
//S1SIIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.SIIMP.INDRA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=400,BLKSIZE=0)
//S2NOIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.NOIMP.INDRA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=400,BLKSIZE=0)
//S1ESIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.SIIMPES.INDRA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(RECFM=FB,LRECL=45,BLKSIZE=0)
//S2ESIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.NOIMPES.INDRA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(RECFM=FB,LRECL=45,BLKSIZE=0)
//SYSIN    DD DUMMY
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO     :  ZUE12P85                                               *
//* PROGRAMA :  ICEMAN                                                 *
//* OBJETIVO :  REALIZA SORT PARA ORDENAR EL ARCHIVO DE BANCA          *
//*             PATRIMONIAL DE SI IMPRESION POR CUENTA, SEGMENTO Y     *
//*             SECUENCIA                                              *
//*--------------------------------------------------------------------*
//ZUE12P85 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.SIIMP.INDRA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.SIIMP.INSOR,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=400,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(500,250),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE12P85),DISP=SHR                   00710000
//*
//*--------------------------------------------------------------------*
//* PASO     :  ZUE12P80                                               *
//* PROGRAMA :  ICEMAN                                                 *
//* OBJETIVO :  REALIZA SORT-OUTREC PARA DEJAR EL ARCHIVO DE BANCA     *
//*             PATRIMONIAL DE SI IMPRESION EN EL FORMATO FINAL        *
//*--------------------------------------------------------------------*
//ZUE12P80 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.SIIMP.INSOR,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.SIIMP.INSOR2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=379,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(500,250),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE12P80),DISP=SHR                   00710000
//*
//*--------------------------------------------------------------------*
//* PASO     :  ZUE12P75                                               *
//* PROGRAMA :  ICEMAN                                                 *
//* OBJETIVO :  REALIZA SORT PARA ORDENAR EL ARCHIVO DE BANCA          *
//*             PATRIMONIAL DE NO IMPRESION POR CUENTA, SEGMENTO       *
//*             Y SECUENCIA                                            *
//*--------------------------------------------------------------------*
//ZUE12P75 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.NOIMP.INDRA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.NOIMP.INSOR,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=400,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(500,250),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE12P85),DISP=SHR                   00710000
//*
//*--------------------------------------------------------------------*
//* PASO     :  ZUE12P70                                               *
//* PROGRAMA :  ICEMAN                                                 *
//* OBJETIVO :  REALIZA SORT-OUTREC PARA DEJAR EL ARCHIVO DE BANCA     *
//*             PATRIMONIAL DE NO IMPRESION EN EL FORMATO FINAL        *
//*--------------------------------------------------------------------*
//ZUE12P70 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.NOIMP.INSOR,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.NOIMP.INSOR2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=379,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(500,250),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE12P80),DISP=SHR                   00710000
//*
//*--------------------------------------------------------------------*
//* PASO     :  ZUE12P65                                               *
//* PROGRAMA :  ZM3MU519                                               *
//* OBJETIVO :  GENERA ARCHIVOS DE BANCA PRIVADA CON FORMATO           *
//*             PARA INDRA                                             *
//*--------------------------------------------------------------------*
//ZUE12P65 EXEC PGM=ZM3MU519,COND=(4,LT)
//E1SIIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.SIIMPMX,DISP=SHR
//E2NOIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.NOIMPMX,DISP=SHR
//*FS-1.0.0-01-INI
//E3DETRET DD DSN=MXCP.ZM.WKF.BCUENII.DETALLE.EDIMPUE.SORT,DISP=SHR
//*FS-1.0.0-01-FIN
//S1SIIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.SIIMP.INDRA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=400,BLKSIZE=0)
//S2NOIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.NOIMP.INDRA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=400,BLKSIZE=0)
//S1ESIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.SIIMPES.INDRA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(RECFM=FB,LRECL=45,BLKSIZE=0)
//S2ESIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.NOIMPES.INDRA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(RECFM=FB,LRECL=45,BLKSIZE=0)
//SYSIN    DD DUMMY
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO     :  ZUE12P60                                               *
//* PROGRAMA :  ICEMAN                                                 *
//* OBJETIVO :  REALIZA SORT PARA ORDENAR EL ARCHIVO DE BANCA          *
//*             PRIVADA DE SI IMPRESION POR CUENTA, SEGMENTO Y         *
//*             SECUENCIA                                              *
//*--------------------------------------------------------------------*
//ZUE12P60 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.SIIMP.INDRA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.SIIMP.INSOR,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=400,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(500,250),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE12P85),DISP=SHR                   00710000
//*
//*--------------------------------------------------------------------*
//* PASO     :  ZUE12P55                                               *
//* PROGRAMA :  ICEMAN                                                 *
//* OBJETIVO :  REALIZA SORT-OUTREC PARA DEJAR EL ARCHIVO DE BANCA     *
//*             PRIVADA DE SI IMPRESION EN EL FORMATO FINAL            *
//*--------------------------------------------------------------------*
//ZUE12P55 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.SIIMP.INSOR,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.SIIMP.INSOR2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=379,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(500,250),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE12P80),DISP=SHR                   00710000
//*
//*--------------------------------------------------------------------*
//* PASO     :  ZUE12P50                                               *
//* PROGRAMA :  ICEMAN                                                 *
//* OBJETIVO :  REALIZA SORT PARA ORDENAR EL ARCHIVO DE BANCA          *
//*             PRIVADA DE NO IMPRESION POR CUENTA, SEGMENTO           *
//*             Y SECUENCIA                                            *
//*--------------------------------------------------------------------*
//ZUE12P50 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.NOIMP.INDRA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.NOIMP.INSOR,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=400,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(500,250),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE12P85),DISP=SHR                   00710000
//*
//*--------------------------------------------------------------------*
//* PASO     :  ZUE12P45                                               *
//* PROGRAMA :  ICEMAN                                                 *
//* OBJETIVO :  REALIZA SORT-OUTREC PARA DEJAR EL ARCHIVO DE BANCA     *
//*             PRIVADA DE NO IMPRESION EN EL FORMATO FINAL            *
//*--------------------------------------------------------------------*
//ZUE12P45 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.NOIMP.INSOR,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.NOIMP.INSOR2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=379,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(500,250),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE12P80),DISP=SHR                   00710000
//*
//*--------------------------------------------------------------------*
//* PASO     :  ZUE12P40                                               *
//* PROGRAMA :  ZM3MU519                                               *
//* OBJETIVO :  GENERA ARCHIVOS DE U H N         CON FORMATO           *
//*             PARA INDRA                                             *
//*--------------------------------------------------------------------*
//ZUE12P40 EXEC PGM=ZM3MU519,COND=(4,LT)
//E1SIIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.SIIMP.MX,DISP=SHR
//E2NOIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.NOIMP.MX,DISP=SHR
//*FS-1.0.0-01-INI
//E3DETRET DD DSN=MXCP.ZM.WKF.BCUENII.DETALLE.EDIMPUE.SORT,DISP=SHR
//*FS-1.0.0-01-FIN
//S1SIIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.SIIMP.INDRA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=400,BLKSIZE=0)
//S2NOIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.NOIMP.INDRA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=400,BLKSIZE=0)
//S1ESIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.SIIMPES.INDRA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(RECFM=FB,LRECL=45,BLKSIZE=0)
//S2ESIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.NOIMPES.INDRA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(RECFM=FB,LRECL=45,BLKSIZE=0)
//SYSIN    DD DUMMY
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO     :  ZUE12P35                                               *
//* PROGRAMA :  ICEMAN                                                 *
//* OBJETIVO :  REALIZA SORT PARA ORDENAR EL ARCHIVO DE                *
//*             U H N   DE SI IMPRESION POR CUENTA, SEGMENTO Y         *
//*             SECUENCIA                                              *
//*--------------------------------------------------------------------*
//ZUE12P35 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.SIIMP.INDRA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.SIIMP.INSOR,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=400,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(500,250),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE12P85),DISP=SHR                   00710000
//*
//*--------------------------------------------------------------------*
//* PASO     :  ZUE12P30                                               *
//* PROGRAMA :  ICEMAN                                                 *
//* OBJETIVO :  REALIZA SORT-OUTREC PARA DEJAR EL ARCHIVO              *
//*             U H N   DE SI IMPRESION EN EL FORMATO FINAL            *
//*--------------------------------------------------------------------*
//ZUE12P30 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.SIIMP.INSOR,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.SIIMP.INSOR2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=379,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(500,250),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE12P80),DISP=SHR                   00710000
//*
//*--------------------------------------------------------------------*
//* PASO     :  ZUE12P25                                               *
//* PROGRAMA :  ICEMAN                                                 *
//* OBJETIVO :  REALIZA SORT PARA ORDENAR EL ARCHIVO DE                *
//*             U H N   DE NO IMPRESION POR CUENTA, SEGMENTO           *
//*             Y SECUENCIA                                            *
//*--------------------------------------------------------------------*
//ZUE12P25 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.NOIMP.INDRA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.NOIMP.INSOR,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=400,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(500,250),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE12P85),DISP=SHR                   00710000
//*
//*--------------------------------------------------------------------*
//* PASO     :  ZUE12P20                                               *
//* PROGRAMA :  ICEMAN                                                 *
//* OBJETIVO :  REALIZA SORT-OUTREC PARA DEJAR EL ARCHIVO DE           *
//*             U H N   DE NO IMPRESION EN EL FORMATO FINAL            *
//*--------------------------------------------------------------------*
//ZUE12P20 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.NOIMP.INSOR,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.NOIMP.INSOR2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=379,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(500,250),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE12P80),DISP=SHR                   00710000
//*
//*--------------------------------------------------------------------*
//*                   FIN DE PROCESO ZMUEPR12                          *
//*--------------------------------------------------------------------*
