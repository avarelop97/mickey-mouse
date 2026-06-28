//MZMPPA01 PROC
//*--------------------------------------------------------------------*
//* JOB.....: MZMP0A01                                                 *
//* PROCESO.: MZMPPA01                                                 *
//* OBJETIVO: GEN. UN ARCHIVO CON LA ASIGNACION DE LAS ORDENES DEL DIA *
//*           PARA QUE GESTOR DE EVENTOS(KZ) ENVIE ALERTAS A CLIENTES  *
//*           DE LAS OPERACIONES REALIZADAS EN SU CONTRATO PATRIMONIAL.*
//*           EL PRECIO DE LOS TITULOS QUE SE CALCULA ES EL PECIO PRO- *
//*           MEDIO PONDERADO.                                         *
//* REALIZO: J&B                                                       *
//* FECHA  : 22 AGOSTO 2017                                            *
//*====================================================================*
//*        L O G    D E   M O D I F I C A C I O N E S                  *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//* FS-1.0.0-00  XXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//* JB-1.0.0-00    J&B   27OCT17 SE MOD. LONG. DE SALIDA1 Y SALIDA2 A  *
//*                              2700 POS. --PASO ZMPA0185--           *
//*                J&B   12FEB18 SE MOD. CTC ZMPA0190                  *
//* JB-1.0.0-10    J&B   07MAR18 SE MOD. CTC ZMPA0195 PARA AGREGAR HORA*
//*                              Y ADAPTAR EL PROGRAMA ZM4ALR01.       *
//* JB-1.0.0-11    J&B   08AGO18 SE MOD. CTC ZMPA0195 P/AGREGAR USUARIO*
//* FV-1.0.0-12    FIVI  16NOV18 SE AGREGO OBLIGACIONES Y COLOCACIONES *
//*---------------------------------------------------------------------
//*     MODIFICO:       IGNACIO ESQUIVEL FLORES
//*     FECHA   :       ABRIL 2023
//*     ASUNTO:         INCREMENTO FOLIO CONCEPT
//*     MARCA :         SDATOOL-41254-IEF-INI (INICIO BLOQUE)
//*                     SDATOOL-41254-IEF-FIN (FIN    BLOQUE)
//*---------------------------------------------------------------------
//*====================================================================*
//* PROGRAMA: ADUUMAIN                                                 *00022600
//* OBJETIVO: DESCARGA DATOS NECESARIOS PARA GENERAR EL ARCHIVO        *00022700
//*--------------------------------------------------------------------*00022800
//ZMPA0195 EXEC PGM=ADUUMAIN,                                           00022900
//          PARM='MXP1,ZMPA0195,NEW,,MSGLEVEL(1)'                       00023000
//*                                                                     00023400
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPA0195),DISP=SHR
//*
//SYSREC   DD DSN=MXC&AMB..ZM.WKF.MZMP0A01.UNLOAD01,
//            DISP=(NEW,CATLG,DELETE),                                  00023900
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390,                      00024000
//            DCB=(DSORG=PS,RECFM=FB,LRECL=86,BLKSIZE=0)
//*JB-1.0.0-11DCB=(DSORG=PS,RECFM=FB,LRECL=70,BLKSIZE=0)
//*JB-1.0.0-10DCB=(DSORG=PS,RECFM=FB,LRECL=44,BLKSIZE=0)
//*                                                                     00024200
//UTPRINT  DD SYSOUT=*                                                  00024500
//SYSPRINT DD SYSOUT=*                                                  00024600
//SYSUDUMP DD SYSOUT=*                                                  00024700
//*
//*--------------------------------------------------------------------*00075700
//* PROGRAMA: ICEMAN                                                   *00022600
//* OBJETIVO: ORDENA EL ARCHIVO POR: IORDENES Y STIPOPER               *00022700
//*--------------------------------------------------------------------*
//ZMPA0190 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXC&AMB..ZM.WKF.MZMP0A01.UNLOAD01,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXC&AMB..ZM.WKF.MZMP0A01.SORT01,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=86,BLKSIZE=0)
//*JB-1.0.0-11DCB=(DSORG=PS,RECFM=FB,LRECL=70,BLKSIZE=0)
//*JB-1.0.0-10DCB=(DSORG=PS,RECFM=FB,LRECL=44,BLKSIZE=0)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPA0190),DISP=SHR
//*
//*--------------------------------------------------------------------*00075700
//* PROGRAMA: IKJEFT01/ZM4ALR01                                        *00022600
//* OBJETIVO: GEN. LOS ARCHIVOS CON LAS ALERTAS QUE SE ENVIARAN A LOS  *00022700
//*           CLIENTES DE LA OPERATIVA DE MDO. DE CAPITALES.           *00022700
//*--------------------------------------------------------------------*
//ZMPA0185 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXC&AMB..ZM.WKF.MZMP0A01.SORT01,
//            DISP=SHR
//*
//* ARCH. DE ALERTAS SMS/PUSH
//SALIDA1  DD DSN=MXC&AMB..ZM.WKF.MZMP0A01.SMSPUSH,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(200,100),RLSE),UNIT=3390,
//*           DCB=(DSORG=PS,RECFM=FB,LRECL=360,BLKSIZE=0)
//            DCB=(DSORG=PS,RECFM=FB,LRECL=2700,BLKSIZE=0)
//*
//* ARCH. DE ALERTAS EMAIL
//SALIDA2  DD DSN=MXC&AMB..ZM.WKF.MZMP0A01.EMAIL,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(200,100),RLSE),UNIT=3390,
//*           DCB=(DSORG=PS,RECFM=FB,LRECL=382,BLKSIZE=0)
//            DCB=(DSORG=PS,RECFM=FB,LRECL=2700,BLKSIZE=0)
//*
//* ARCH. CON ERRORES DE PROCESAMIENTO
//SALIDA3  DD DSN=MXC&AMB..ZM.WKF.MZMP0A01.ERROR,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(200,100),RLSE),UNIT=3390,
//*SDATOOL-41254-IEF-INI
//*           DCB=(DSORG=PS,RECFM=FB,LRECL=150,BLKSIZE=0)
//            DCB=(DSORG=PS,RECFM=FB,LRECL=155,BLKSIZE=0)
//*SDATOOL-41254-IEF-FIN
//*
//*FVI-INI-2018-11-16
//* ARCH. DE ALERTAS SMS/PUSH OBLIGACIONES
//SALIDA4  DD DSN=MXC&AMB..ZM.WKF.MZMP0A01.EMAILOBL,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(200,100),RLSE),UNIT=3390,
//*           DCB=(DSORG=PS,RECFM=FB,LRECL=360,BLKSIZE=0)
//            DCB=(DSORG=PS,RECFM=FB,LRECL=2700,BLKSIZE=0)
//*
//* ARCH. DE ALERTAS EMAIL OBLIGACIONES
//SALIDA5  DD DSN=MXC&AMB..ZM.WKF.MZMP0A01.SMPUSOBL,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(200,100),RLSE),UNIT=3390,
//*           DCB=(DSORG=PS,RECFM=FB,LRECL=382,BLKSIZE=0)
//            DCB=(DSORG=PS,RECFM=FB,LRECL=2700,BLKSIZE=0)
//*FVI-FIN-2018-11-16
//*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPA0185),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PJA04P01.                                             *
//* UTILERIA   : IOACND.                                               *
//* OBJETIVO   : AGREGAR CONDICION PARA PU                             *
//*------------------------------------------------------------------- *
//ZMPA0180 EXEC PGM=IOACND,COND=(4,LT),PARM='ADD COND &IN    &FECH1'
//*
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
//*
//*--------------------------------------------------------------------*
//*                     FIN DEL JCL MZMP0A01                           *
//*--------------------------------------------------------------------*
