//MZMPPA04 PROC
//*--------------------------------------------------------------------*
//* JOB NAME: MZMP0A04                                                 *
//* PRC NAME: MZMPPA04                                                 *
//* OBJETIVO: GENERA LOS ARCHIVOS CON LAS OPERACIONES DE COMPRA/VENTA  *
//*           DE MERCADO DE DINERO: REPORTOS.                          *
//* REALIZO: J&B                                                       *
//* FECHA  : 30 AGOSTO 2018.                                           *
//*====================================================================*
//*             L O G    D E   M O D I F I C A C I O N E S             *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- --------------------------------------*
//* FS-1.0.0-00  XXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*
//*--------------------------------------------------------------------*
//*                                                                    *
//*====================================================================*
//* PROGRAMA: ADUUMAIN                                                 *00022600
//* OBJETIVO: DESCARGA DATOS DE LOS REPORTOS OPERADOS EN EL DIA.       *00022700
//*--------------------------------------------------------------------*00022800
//ZMPA0405 EXEC PGM=ADUUMAIN,                                           00022900
//          PARM='MXP1,ZMPA0405,NEW,,MSGLEVEL(1)'                       00023000
//*                                                                     00023400
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPA0405),DISP=SHR
//*
//SYSREC   DD DSN=MXC&AMB..ZM.WKF.MZMP0A04.UNLOAD01,
//            DISP=(NEW,CATLG,DELETE),                                  00023900
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390,                      00024000
//            DCB=(DSORG=PS,RECFM=FB,LRECL=53,BLKSIZE=0)
//*                                                                     00024200
//UTPRINT  DD SYSOUT=*                                                  00024500
//SYSPRINT DD SYSOUT=*                                                  00024600
//SYSUDUMP DD SYSOUT=*                                                  00024700
//*
//*--------------------------------------------------------------------*00075700
//* PROGRAMA: IKJEFT01/ZM4ALR04                                        *00022600
//* OBJETIVO: GEN. LOS ARCHIVOS CON LAS ALERTAS QUE SE ENVIARAN A LOS  *00022700
//*           CLIENTES DE LA OPERATIVA DE MDO. DE DINERO: REPORTOS.    *00022700
//*--------------------------------------------------------------------*
//ZMPA0410 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMENT001 DD DSN=MXC&AMB..ZM.WKF.MZMP0A04.UNLOAD01,
//            DISP=SHR
//*
//* ARCH. DE ALERTAS SMS/PUSH
//ZMSAL001 DD DSN=MXC&AMB..ZM.TMP.MZMP0A04.SMSPUSH,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=2700,BLKSIZE=0)
//*
//* ARCH. DE ALERTAS EMAIL
//ZMSAL002 DD DSN=MXC&AMB..ZM.TMP.MZMP0A04.EMAIL,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=2700,BLKSIZE=0)
//*
//* ARCH. CON ERRORES DE PROCESAMIENTO
//ZMSALERR DD DSN=MXC&AMB..ZM.FIX.MZMP0A04.ERROR,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=103,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPA0410),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PJA04P01.                                             *
//* UTILERIA   : IOACND.                                               *
//* OBJETIVO   : AGREGAR CONDICION PARA PU                             *
//*--------------------------------------------------------------------*
//ZMPA0415 EXEC PGM=IOACND,COND=(4,LT),PARM='ADD COND &IN    &FECH1'
//*             ,PARM='ADD COND MZMP0A04_OK    &FECH1'
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
//*                     FIN DEL JCL MZMP0A04                           *
//*--------------------------------------------------------------------*
