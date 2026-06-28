//ZMPPGU33 PROC
//*--------------------------------------------------------------------*
//* PROCESO.: ZMPPGU33                                                 *
//* OBJETIVO: DESCARGAR INFORMACION PRODUCTIVA DE LA TABLA ZMDT833     *
//*           REALIZA FORMATEO PARA TRANSMISION DATA X                 *
//* REALIZO: ANGEL SANCHEZ OSORNO                                      *
//* FECHA  : MAYO   2025                                               *
//*====================================================================*
//*        L O G    D E   M O D I F I C A C I O N E S                  *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//* FS-1.0.0-00  XXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*                                                                    *
//*====================================================================*
//* PROGRAMA: ADUUMAIN                                                 *
//* OBJETIVO: DESCARGA TABLA ZMDT833                                   *
//*--------------------------------------------------------------------*
//ZMPPG250 EXEC PGM=ADUUMAIN,
//          PARM='MXP1,ZMPPG0833,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.LOMBARDO.ZMDT833.D&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,250),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=84,BLKSIZE=0)
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PROGRAMA: IKJEFT01/ZM4PPG83                                        *
//* OBJETIVO: RECIBE ARCHIVO CON LA DESCARGA DE LA TABLA ZMDT833       *
//*           LE DA FORMATO ALFANUMERICO                               *
//*--------------------------------------------------------------------*
//ZMPPG200 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM4PPGE1 DD DSN=MXCP.ZM.FIX.LOMBARDO.ZMDT833.D&FECHA,DISP=SHR
//*
//ZM4PPGS1 DD DSN=MXCP.ZM.FIX.LOMBARDO.FORMAT.ZMDT833.D&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,200),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=VB,LRECL=120,BLKSIZE=0)
//ZM4PPGS2 DD DSN=MXCP.ZM.FIX.LOMBARDO.VACIO.ZMDT833.D&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(TRK,(1,1),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=VB,LRECL=120,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZPP05T33),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO    : ZMPPG150                                                 *
//* PROGRAMA: IOACND.                                                  *
//* OBJETIVO: LEVANTA CONDICION PARA DISTRIBUIDO                       *
//*--------------------------------------------------------------------*
//ZMPPG150 EXEC  PGM=IOACND,COND=(4,LT),
//         PARM='ADD COND MX2CRX_BCPPGU3300 &FEC'
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
//*--------------------------------------------------------------------*
//*                     FIN DEL PRC ZMPPGU33                           *
//*--------------------------------------------------------------------*
