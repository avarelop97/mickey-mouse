//MZMPPA02 PROC
//*--------------------------------------------------------------------*
//* JOB.....: MZMP0A01                                                 *
//* PROCESO.: MZMPPA02                                                 *
//* OBJETIVO: GEN. UN ARCHIVO CON LA ASIGNACION DE LAS COLOCACIONES DEL*
//*           DIA  QUE GESTOR DE EVENTOS(KZ) ENVIE ALERTAS A CLIENTES  *
//*           DE LAS OPERACIONES REALIZADAS EN SU CONTRATO PATRIMONIAL.*
//* REALIZO: FVI                                                       *
//* FECHA  : 25 NOVIEMBRE 2018                                         *
//*====================================================================*
//*        L O G    D E   M O D I F I C A C I O N E S                  *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//* FS-1.0.0-00  XXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*---------------------------------------------------------------------
//*     MODIFICO:       IGNACIO ESQUIVEL FLORES
//*     FECHA   :       ABRIL 2023
//*     ASUNTO:         INCREMENTO FOLIO CONCEPT
//*     MARCA :         SDATOOL-41254-IEF-INI (INICIO BLOQUE)
//*                     SDATOOL-41254-IEF-FIN (FIN    BLOQUE)
//*--------------------------------------------------------------------*00075700
//* PROGRAMA: IKJEFT01/ZM4ALR05                                        *00022600
//* OBJETIVO: GEN. LOS ARCHIVOS CON LAS ALERTAS QUE SE ENVIARAN A LOS  *00022700
//*           CLIENTES DE LA OPERATIVA DE MDO. DE CAPITALES COLOCACION *00022700
//*--------------------------------------------------------------------*
//ZMPA0180 EXEC PGM=IKJEFT01
//*
//* ARCH. DE ALERTAS SMS/PUSH
//SALIDA1  DD DSN=MXC&AMB..ZM.WKF.MZMP0A02.SMPUSCOL,
//            DISP=(NEW,CATLG,DELETE),
//           SPACE=(CYL,(200,100),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=2700,BLKSIZE=0)
//*
//* ARCH. DE ALERTAS EMAIL
//SALIDA2  DD DSN=MXC&AMB..ZM.WKF.MZMP0A02.EMAILCOL,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(200,100),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=2700,BLKSIZE=0)
//*
//* ARCH. CON ERRORES DE PROCESAMIENTO
//SALIDA3  DD DSN=MXC&AMB..ZM.WKF.MZMP0A02.ERRCOL,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(200,100),RLSE),UNIT=3390,
//*SDATOOL-41254-IEF-INI
//*           DCB=(DSORG=PS,RECFM=FB,LRECL=150,BLKSIZE=0)
//            DCB=(DSORG=PS,RECFM=FB,LRECL=155,BLKSIZE=0)
//*SDATOOL-41254-IEF-FIN
//*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPA0180),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMPA0175.                                             *
//* UTILERIA   : IOACND.                                               *
//* OBJETIVO   : AGREGAR CONDICION PARA PU                             *
//*--------------------------------------------------------------------*
//ZMPA0175 EXEC PGM=IOACND,COND=(4,LT),PARM='ADD COND &IN    &FECH1'
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
//*--------------------------------------------------------------------*
//*                     FIN DEL JCL MZMP0A01                           *
//*--------------------------------------------------------------------*
