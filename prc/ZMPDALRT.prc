//ZMPDALRT PROC
//*====================================================================*
//* OBJETIVO.: GEN. ARCHIVOS QUE CONTIENEN INFORMACION DE LOS PREAVISOS*
//*            QUE VENCEN AL DIA PARA ENVIO DE ALERTAS.        -DIARIO-*
//* AUTOR....: J&B.                                                    *
//* FECHA....: 15 DICIEMBRE 2017.                                      *
//*====================================================================*
//*           L O G    D E   M O D I F I C A C I O N E S               *
//*--------------------------------------------------------------------*
//*   MARCA       AUTOR    FECHA   DESCRIPCION                         *
//* -----------  -------  -------  ------------------------------------*
//* FS-0.0.0-00  XXXXXXX  DDMMMAA  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*
//* -----------  -------  -------  ------------------------------------*
//* JB-1.0.0-00    J&B    24JUL18  SE AGREGA EL USUARIO QUE OPERA.     *
//*                                                                    *
//*====================================================================*
//* PROGRAMA: ADUUMAIN                                                 *00022600
//* OBJETIVO: DESCARGA DATOS NECESARIOS PARA GENERAR EL ARCHIVO        *00022700
//*--------------------------------------------------------------------*00022800
//ZMALRT95 EXEC PGM=ADUUMAIN,                                           00022900
//          PARM='MXP1,ZMALRT95,NEW,,MSGLEVEL(1)'                       00023000
//*                                                                     00023400
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMALRT95),DISP=SHR
//*
//SYSREC   DD DSN=MXC&AMB..ZM.TMP.BCJDALRT.UNLOAD01,
//            DISP=(NEW,CATLG,DELETE),                                  00023900
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390,                      00024000
//*           DCB=(DSORG=PS,RECFM=FB,LRECL=62,BLKSIZE=0)     JB-1.0.0-00
//            DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0)
//*                                                                     00024200
//UTPRINT  DD SYSOUT=*                                                  00024500
//SYSPRINT DD SYSOUT=*                                                  00024600
//SYSUDUMP DD SYSOUT=*                                                  00024700
//*
//*--------------------------------------------------------------------*00075700
//* PROGRAMA: ICEMAN                                                   *00022600
//* OBJETIVO: RECORTA EL ARCHIVO, ELIMINA LOS VALORES NULOS.           *00022700
//*--------------------------------------------------------------------*
//ZMALRT90 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXC&AMB..ZM.TMP.BCJDALRT.UNLOAD01,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXC&AMB..ZM.TMP.BCJDALRT.SORT01,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390,
//*           DCB=(DSORG=PS,RECFM=FB,LRECL=59,BLKSIZE=0)     JB-1.0.0-00
//            DCB=(DSORG=PS,RECFM=FB,LRECL=67,BLKSIZE=0)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMALRT90),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* OBJETIVO : PROCESA LAS ALERTAS QUE SERAN ENVIADAS A GESTOR         *
//*--------------------------------------------------------------------*
//ZMALRT85 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMENT001 DD DSN=MXC&AMB..ZM.TMP.BCJDALRT.SORT01,
//            DISP=SHR
//*
//ZMSAL001 DD DSN=MXC&AMB..ZM.TMP.BCJDALRT.PREAV.SMSPUSH,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=2700,BLKSIZE=0)
//*
//ZMSAL002 DD DSN=MXC&AMB..ZM.TMP.BCJDALRT.PREAV.EMAIL,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=2700,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMALRT85),DISP=SHR
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO       : ZMALRT80.                                             *
//* UTILERIA   : IOACND.                                               *
//* OBJETIVO   : AGREGAR CONDICION PARA PU                             *
//*--------------------------------------------------------------------*
//ZMALRT80 EXEC PGM=IOACND,COND=(4,LT),PARM='ADD COND &IN    &FECH1'
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
