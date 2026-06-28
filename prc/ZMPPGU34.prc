//ZMPPGU34 PROC
//*--------------------------------------------------------------------*
//* PROCESO.: ZMPPGU34                                                 *
//* OBJETIVO: DESCARGAR INFORMACION PRODUCTIVA DE LA TABLA ZMDT834     *
//*           REALIZA FORMATEO PARA TRANSMISION DATA X                 *
//* REALIZO: ANGEL SANCHEZ OSORNO                                      *
//* FECHA  : MAYO   2025                                               *
//*====================================================================*
//*        L O G    D E   M O D I F I C A C I O N E S                  *
//*--------------------------------------------------------------------*
//*    MARCA    AUTOR     FECHA   DESCRIPCION                          *
//* ---------- ------- ---------- ------------------------------------ *
//* SDA-53062I EAGC    16-04-2026 SE AGREGA UN PASO PARA LA RECEPCION  *
//* SDA-53062F                    Y CAMBIO DEL CONCEPT DE 10 POSICIONES*
//*                               A 5 POSICIONES                       *
//*--------------------------------------------------------------------*
//*                                                                    *
//*====================================================================*
//* PROGRAMA: ADUUMAIN                                                 *
//* OBJETIVO: DESCARGA TABLA ZMDT834                                   *
//*--------------------------------------------------------------------*
//ZMPPG250 EXEC PGM=ADUUMAIN,
//          PARM='MXP1,ZMPPG0834,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.LOMBARDO.ZMDT834.D&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,250),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0)
//*           DCB=(DSORG=PS,RECFM=FB,LRECL=289,BLKSIZE=0)
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*SDA-53062I
//*--------------------------------------------------------------------*
//* PROGRAMA: ICEMAN                                                   *
//* OBJETIVO: RECIBE ARCHIVO CON LA DESCARGA DE LA TABLA ZMDT834       *
//*           Y REDUCE EL CAMPO DE CONCEPT DE 10 A 5 POSICIONES        *
//*--------------------------------------------------------------------*
//ZMHO0249 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.LOMBARDO.ZMDT834.D&FECHA,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.LOMBARDO.ZMDT834.REDEF.D&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,200),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0)
//*           DCB=(DSORG=PS,RECFM=FB,LRECL=289,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHO01L01),DISP=SHR
//*
//*SDA-53062F
//*--------------------------------------------------------------------*
//* PROGRAMA: IKJEFT01/ZM4PPG94                                        *
//* OBJETIVO: RECIBE ARCHIVO CON LA DESCARGA DE LA TABLA ZMDT834       *
//*           LE DA FORMATO ALFANUMERICO                               *
//*--------------------------------------------------------------------*
//ZMHO0200 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//*SDA-53062I
//*ZM3PPGE1 DD DSN=MXCP.ZM.FIX.LOMBARDO.ZMDT834.D&FECHA,DISP=SHR
//ZM3PPGE1 DD DSN=MXCP.ZM.FIX.LOMBARDO.ZMDT834.REDEF.D&FECHA,DISP=SHR
//*SDA-53062F
//*
//ZM3PPGE2 DD DSN=MXCP.ZM.FIX.LOMBARDO.FIJO.CONCEPT.D&FECHA,DISP=SHR
//*
//ZM3PPGS1 DD DSN=MXCP.ZM.FIX.LOMBARDO.FORMAT.ZMDT834.D&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,200),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=VB,LRECL=508,BLKSIZE=0)
//ZM3PPGS2 DD DSN=MXCP.ZM.FIX.LOMBARDO.VACIO.ZMDT834.D&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(TRK,(1,1),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=VB,LRECL=508,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZPP05T34),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO    : ZMPPG150                                                 *
//* PROGRAMA: IOACND.                                                  *
//* OBJETIVO: LEVANTA CONDICION PARA DISTRIBUIDO                       *
//*--------------------------------------------------------------------*
//ZMPPG150 EXEC  PGM=IOACND,COND=(4,LT),
//         PARM='ADD COND MX2CRX_BCPPGU3400 &FEC'
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
//*--------------------------------------------------------------------*
//*                     FIN DEL PRC ZMPPGU34                           *
//*--------------------------------------------------------------------*
