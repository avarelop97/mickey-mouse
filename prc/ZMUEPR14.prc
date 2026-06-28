//ZMUEPR14 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - BCUENR14.                                      *
//* PROCESO      : ZMUEPR14.                                           *
//* PERIODICIDAD : MENSUAL                                             *
//* OBJETIVO     : GENERA ARCHIVOS CON LA INFORMACION DE ESTADOS DE    *
//*                CUENTA INTEGRADOS CON EL SELLO FISCAL               *
//* REALIZO      : FABRICA DE SOFTWARE CAPGEMINI.                      *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-01 CAPGEMINI 05AGO14 SE ELIMINAN LOS PASOS DEL ZUE14T10   *
//*                               AL ZUE14T27                          *
//* FS-0.0.0-02           20JUN16 SE MODIFICA LONGITUD DE SELLOS FISCA-*
//*                               LES                                  *
//* FS-0.0.0-03 XMA3149   19JUN18 CAMBIA LONGITUD DE ARCHIVO DE SELLOS *
//*--------------------------------------------------------------------*
//* PASO       : ZUE14T01.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : SORT AL ARCHIVO DE SELLOS FISCALES DE B.PRIVADA       *
//*--------------------------------------------------------------------*
//ZUE14T01 EXEC PGM=ICEMAN
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.PRIVSI.SELLOS.D&FECHA,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.PRIVSI.SELLOS.SORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*FS-1.0.0-02-INI
//*           DCB=(DSORG=PS,LRECL=879,RECFM=FB,BLKSIZE=0),
//*FS-0.0.0-03-INI
//*           DCB=(DSORG=PS,LRECL=1553,RECFM=FB,BLKSIZE=0),
//            DCB=(DSORG=PS,LRECL=1563,RECFM=FB,BLKSIZE=0),
//*FS-0.0.0-03-FIN
//*FS-1.0.0-02-FIN
//            SPACE=(CYL,(200,100),RLSE)
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE14T01),DISP=SHR                   00710000
//*--------------------------------------------------------------------*
//* PASO     :  ZUE14T02                                               *
//* PROGRAMA :  ICEMAN                                                 *
//* OBJETIVO :  SORT AL ARCHIVO DE SELLOS FISCALES DE B.PATRIMONIAL    *
//*--------------------------------------------------------------------*
//ZUE14T02 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.PATRSI.SELLOS.D&FECHA,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.PATRSI.SELLOS.SORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*FS-1.0.0-02-INI
//*           DCB=(DSORG=PS,LRECL=879,RECFM=FB,BLKSIZE=0),
//*FS-0.0.0-03-INI
//*           DCB=(DSORG=PS,LRECL=1553,RECFM=FB,BLKSIZE=0),
//            DCB=(DSORG=PS,LRECL=1563,RECFM=FB,BLKSIZE=0),
//*FS-0.0.0-03-FIN
//*FS-1.0.0-02-FIN
//            SPACE=(CYL,(200,100),RLSE)
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE14T01),DISP=SHR                   00710000
//*--------------------------------------------------------------------*
//* PASO     :  ZUE14T03                                               *
//* PROGRAMA :  ICEMAN                                                 *
//* OBJETIVO :  SORT AL ARCHIVO DE SELLOS FISCALES DE B. U. H . N.     *
//*--------------------------------------------------------------------*
//ZUE14T03 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.UHNSI.SELLOS.D&FECHA,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.UHNSI.SELLOS.SORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*FS-1.0.0-02-INI
//*           DCB=(DSORG=PS,LRECL=879,RECFM=FB,BLKSIZE=0),
//*FS-0.0.0-03-INI
//*           DCB=(DSORG=PS,LRECL=1553,RECFM=FB,BLKSIZE=0),
//            DCB=(DSORG=PS,LRECL=1563,RECFM=FB,BLKSIZE=0),
//*FS-0.0.0-03-FIN
//*FS-1.0.0-02-FIN
//            SPACE=(CYL,(200,100),RLSE)
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE14T01),DISP=SHR                   00710000
//*--------------------------------------------------------------------*
//* PASO     :  ZUE14T04                                               *
//* PROGRAMA :  ICEMAN                                                 *
//* OBJETIVO :  SORT AL ARCHIVO DE INDRA POR CUENTA Y SEGMENTO         *
//*--------------------------------------------------------------------*
//ZUE14T04 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.SIIMP.INDRA,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.SIIMP.INSOR2O,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=400,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(500,250),RLSE)
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE14T04),DISP=SHR                   00710000
//*--------------------------------------------------------------------*
//* PASO     :  ZUE14T05                                               *
//* PROGRAMA :  ICEMAN                                                 *
//* OBJETIVO :  SORT AL ARCHIVO DE INDRA POR CUENTA Y SEGMENTO         *
//*--------------------------------------------------------------------*
//ZUE14T05 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.SIIMP.INDRA,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.SIIMP.INSOR2O,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=400,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(500,250),RLSE)
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE14T04),DISP=SHR                   00710000
//*--------------------------------------------------------------------*
//* PASO     :  ZUE14T06                                               *
//* PROGRAMA :  ICEMAN                                                 *
//* OBJETIVO :  SORT AL ARCHIVO DE INDRA POR CUENTA Y SEGMENTO         *
//*--------------------------------------------------------------------*
//ZUE14T06 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.SIIMP.INDRA,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.SIIMP.INSOR2O,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=400,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(500,250),RLSE)
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE14T04),DISP=SHR                   00710000
//*--------------------------------------------------------------------*
//* PASO     :  ZUE14T07                                               *
//* PROGRAMA :  IKJEFT01/ZM4MU519                                      *
//* OBJETIVO :  REALIZA MATCH ENTRE LOS ARCHIVOS DE BANCA PATRIMONIAL  *
//*             BANCA PRIVADA Y BANCA ULTRA HIGH NETWORTH              *
//*             CON EL ARCHIVO DE SELLOS FISCALES                      *
//*--------------------------------------------------------------------*
//ZUE14T07 EXEC PGM=IKJEFT01,COND=(4,LT)
//E1EDCTA  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.SIIMP.INSOR2O,DISP=SHR
//*
//E2SELLO  DD DSN=MXCP.ZM.FIX.REC.PRIVSI.SELLOS.SORT,DISP=SHR
//*
//S1ECSEL  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.SIIMP.INSOR3,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            RECFM=FB,LRECL=379,BLKSIZE=0
//*
//S1ESIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.SIIMPEM,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            RECFM=FB,LRECL=50,BLKSIZE=0
//*
//S1ESIM2  DD SYSOUT=*
//*
//S2ECIFP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.SIIMREP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            RECFM=FB,LRECL=1500,BLKSIZE=0
//*
//S2ECIF2  DD SYSOUT=*
//*
//SYSOUT   DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE14T07),DISP=SHR                   00710000
//*
//*--------------------------------------------------------------------*
//* PASO     :  ZUE14T08                                               *
//* PROGRAMA :  IKJEFT01/ZM4MU519                                      *
//* OBJETIVO :  REALIZA MATCH ENTRE LOS ARCHIVOS DE BANCA PATRIMONIAL  *
//*             BANCA PRIVADA Y BANCA ULTRA HIGH NETWORTH              *
//*             CON EL ARCHIVO DE SELLOS FISCALES.                     *
//*--------------------------------------------------------------------*
//ZUE14T08 EXEC PGM=IKJEFT01,COND=(4,LT)
//E1EDCTA  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.SIIMP.INSOR2O,DISP=SHR
//*
//E2SELLO  DD DSN=MXCP.ZM.FIX.REC.PATRSI.SELLOS.SORT,DISP=SHR
//*
//S1ECSEL  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.SIIMP.INSOR3,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            RECFM=FB,LRECL=379,BLKSIZE=0
//*
//S1ESIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.SIIMPEM,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            RECFM=FB,LRECL=50,BLKSIZE=0
//*
//S1ESIM2  DD SYSOUT=*
//*
//S2ECIFP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.SIIMREP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            RECFM=FB,LRECL=1500,BLKSIZE=0
//*
//S2ECIF2  DD SYSOUT=*
//*
//SYSOUT   DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE14T07),DISP=SHR                   00710000
//*
//*--------------------------------------------------------------------*
//* PASO     :  ZUE14T09                                               *
//* PROGRAMA :  IKJEFT01/ZM4MU519                                      *
//* OBJETIVO :  REALIZA MATCH ENTRE LOS ARCHIVOS DE BANCA PATRIMONIAL  *
//*             BANCA PRIVADA Y BANCA ULTRA HIGH NETWORTH              *
//*             CON EL ARCHIVO DE SELLOS FISCALES.                     *
//*--------------------------------------------------------------------*
//ZUE14T09 EXEC PGM=IKJEFT01,COND=(4,LT)
//E1EDCTA  DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.SIIMP.INSOR2O,DISP=SHR
//*
//E2SELLO  DD DSN=MXCP.ZM.FIX.REC.UHNSI.SELLOS.SORT,DISP=SHR
//*
//S1ECSEL  DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.SIIMP.INSOR3,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            RECFM=FB,LRECL=379,BLKSIZE=0
//*
//S1ESIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.SIIMPEM,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            RECFM=FB,LRECL=50,BLKSIZE=0
//*
//S1ESIM2  DD SYSOUT=*
//*
//S2ECIFP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.SIIMREP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            RECFM=FB,LRECL=1500,BLKSIZE=0
//*
//S2ECIF2  DD SYSOUT=*
//*
//SYSOUT   DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE14T07),DISP=SHR                   00710000
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//*                   FIN DE PROCESO ZMUEPR14                          *
//*--------------------------------------------------------------------*
