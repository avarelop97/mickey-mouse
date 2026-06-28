//ZMUEPR1M PROC
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
//S4TOTAL  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.MUESTRA.TOTEG02,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=66,BLKSIZE=0)
//S5RFCGE  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.RFCMUE.CVEG04,
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
//*--------------------------------------------------------------------*
//*                   FIN DE PROCESO ZMUEPR11                          *
//*--------------------------------------------------------------------*
