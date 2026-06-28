//ZMUEPRMM PROC
//*--------------------------------------------------------------------*
//* PROYECTO    :  ZM - YA9BXW - REDISEÑO DE ESTADO DE CUENTA.         *
//* PROCESO     :  ZMUEPR11.                                           *
//* PERIODICIDAD:  MENSUAL.                                            *
//* OBJETIVO    :  GENERAR LOS ARCHIVOS DE BANCA PATRIMONIAL, BANCA    *
//**               PRIVADA Y UHN, PARA EL ENVIO AL APLICATIVO DE MEDC  *
//*                Y GENERAR SELLOS FISCALES PARA LA IMPRESION DE      *
//*                ESTADO DE CUENTA.                                   *
//* REALIZO     :  ARMM                                                *
//* FECHA       :  17 DE SEPTIEMBRE 2013.                              *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- -------------------------------------*
//* FS-0.0.0-01 M906542   12092022SE AGREGAN PASOS DE SALIDA PARA      *
//*                               IGUALAR CON LOS PROCESOS ZMUEPR11 Y  *
//*                               ZMUEPR13.                            *
//*--------------------------------------------------------------------*
//* PASO       : ZUE13P01.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : REALIZA SORT PARA EXTRAER LAS CUENTAS MUESTRA         *
//*--------------------------------------------------------------------*
//ZUE13P01 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.SIIMP,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.SIIMPMX,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(DSORG=PS,LRECL=400,RECFM=FB,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE13P01),DISP=SHR                   00710000
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE1MP01),DISP=SHR                  00710000
//*
//*--------------------------------------------------------------------*
//* PASO       : ZUE13P02.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : REALIZA SORT PARA EXTRAER LAS CUENTAS MUESTRA         *
//*--------------------------------------------------------------------*
//ZUE13P02 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.NOIMP,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.NOIMPMX,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(DSORG=PS,LRECL=400,RECFM=FB,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE13P02),DISP=SHR                   00710000
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE1MP02),DISP=SHR                  00710000
//*
//**********************************************************************
//* PASO       : ZUR11T90.                                             *
//* UTILERIA   : IKJEFT01 / ZM4MU518.                                  *
//* OBJETIVO   : GENERA ARCHIVOS DE BANCA PATRIMONIAL CON FORMATO PARA *
//*              MEDC.                                                 *
//**********************************************************************
//ZUR11T90 EXEC PGM=IKJEFT01,COND=(4,LT)
//E1SIIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.SIIMPMX,DISP=SHR
//E2NOIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.NOIMPMX,DISP=SHR
//S1SIIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.SIIMP.PIPES,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=450,BLKSIZE=0)
//S2NOIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.NOIMP.PIPES,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//           DCB=(RECFM=FB,LRECL=450,BLKSIZE=0)
//S1ESIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.SIIMPES.PIPES,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=45,BLKSIZE=0)
//S2ESIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.NOIMPES.PIPES,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//           DCB=(RECFM=FB,LRECL=45,BLKSIZE=0)
//*FS-0.0.0-01-I
//S4TOTAL  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.MUESTRA.TOTEG01,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=66,BLKSIZE=0)
//S5RFCGE  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.RFCMUE.CVEG03,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=202,BLKSIZE=0)
//*FS-0.0.0-01-F
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
//            SPACE=(CYL,(500,250),RLSE),
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
//            SPACE=(CYL,(1500,250),RLSE),
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
//            SPACE=(CYL,(500,250),RLSE),
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
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(DSORG=PS,LRECL=427,RECFM=FB,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR11T80),DISP=SHR                   00710000
//*ERIKA
//*--------------------------------------------------------------------*
//* PASO       : ZUE13P03.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : REALIZA SORT PARA EXTRAER LAS CUENTAS MUESTRA         *
//*--------------------------------------------------------------------*
//ZUE13P03 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.SIIMP,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.SIIMPMX,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(DSORG=PS,LRECL=400,RECFM=FB,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE13P01),DISP=SHR                   00710000
//*ERIKA
//*--------------------------------------------------------------------*
//* PASO       : ZUE13P04.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : REALIZA SORT PARA EXTRAER LAS CUENTAS MUESTRA         *
//*--------------------------------------------------------------------*
//ZUE13P04 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.NOIMP,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.NOIMPMX,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(DSORG=PS,LRECL=400,RECFM=FB,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE13P01),DISP=SHR                   00710000
//*
//**********************************************************************
//* PASO     :  ZUR11T65                                               *
//* PROGRAMA :  IKJEFT01 / ZM4MU518.                                   *
//* OBJETIVO :  GENERA ARCHIVOS DE BANCA PRIVADA CON FORMATO           *
//*             PARA MEDC                                              *
//**********************************************************************
//ZUR11T65 EXEC PGM=IKJEFT01,COND=(4,LT)
//E1SIIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.SIIMPMX,DISP=SHR
//E2NOIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.NOIMPMX,DISP=SHR
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
//*FS-0.0.0-01-I
//S4TOTAL  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.MUESTRA.TOTEG01,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=66,BLKSIZE=0)
//S5RFCGE  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.RFCMUE.CVEG03,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=202,BLKSIZE=0)
//*FS-0.0.0-01-F
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
//*ERIKA
//*--------------------------------------------------------------------*
//* PASO       : ZUE13P15.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO :  REALIZA SORT PARA EXTRAER LAS CUENTAS MUESTRA          *
//*--------------------------------------------------------------------*
//ZUE13P15 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.SIIMP,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.SIIMP.MX,
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
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.NOIMP.MX,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(DSORG=PS,LRECL=400,RECFM=FB,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE13P16),DISP=SHR                   00710000
//*ERIKA
//**********************************************************************
//* PASO     :  ZUR11T35                                               *
//* PROGRAMA :  IKJEFT01 / ZM4MU518                                    *
//* OBJETIVO :  GENERA ARCHIVOS DE BANCA UHN CON FORMATO               *
//*             PARA MEDC                                              *
//**********************************************************************
//ZUR11T35 EXEC PGM=IKJEFT01,COND=(4,LT)
//E1SIIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.SIIMP.MX,DISP=SHR
//E2NOIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.NOIMP.MX,DISP=SHR
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
//*FS-0.0.0-01-I
//S4TOTAL  DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.MUESTRA.TOTEG01,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=66,BLKSIZE=0)
//S5RFCGE  DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.RFCMUE.CVEG03,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=202,BLKSIZE=0)
//*FS-0.0.0-01-F
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
//*                   FIN DE PROCESO ZMUEPR11                          *
//*--------------------------------------------------------------------*
