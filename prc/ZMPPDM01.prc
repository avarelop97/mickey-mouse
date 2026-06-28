//ZMPPDM01 PROC
//*====================================================================*
//*    NOMBRE            : ZMPPDM01.                                   *
//*    APLICATIVO        : ZM@.                                        *
//*    PROYECTO          : SDM CROSS DOMAINS INGESTION FASE II         *
//*    OBJETIVO          : FORMATEO PARA DATIO                         *
//*    AUTOR             : RUBEN J RIVERA                              *
//*    FECHA DE CREACION : MARZO 2025                                  *
//*====================================================================*
//*
//*--------------------------------------------------------------------*
//*           L O G    D E   M O D I F I C A C I O N E S               *
//*--------------------------------------------------------------------*
//*     MARCA      AUTOR    FECHA     DESCRIPCION                      *
//*   ---------   -------  --------   -------------------------------  *
//*                                                                    *
//*                                                                    *
//*--------------------------------------------------------------------*
//*====================================================================*
//* PASO    : ZMPDM025                                                 *
//* PROGRAMA: ADUUMAIN                                                 *
//* OBJETIVO: DESCARGA DE LA TABLA ZMDT608 Y ZMDT800                   *
//*--------------------------------------------------------------------*
//ZMPDM025 EXEC PGM=ADUUMAIN,
//          PARM='MXP1,ZMPDM025,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.DOMAINS.SZM60800.D&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(400,200),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=14,BLKSIZE=0)
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO    : ZMPDM020.                                                *
//* PROGRAMA: ZM3CG365.                                                *
//* OBJETIVO: GENERACION DE ARCHIVO PARA GESTOR DE EVENTOS             *
//*--------------------------------------------------------------------*
//*ZMPDM020 EXEC PGM=ZM3CGD01,COND=(4,LT)
//*
//*ENTRADA1 DD DSN=MXCP.ZM.FIX.DOMAINS.SZM60800.D&FECHA,
//*            DISP=SHR
//*
//*SALIDA01 DD DSN=MXCP.ZM.FIX.GEVE.F&FECHA..EM011823,
//*            DISP=(NEW,CATLG,DELETE),
//*            SPACE=(CYL,(5,2),RLSE),UNIT=3390,
//*            DCB=(RECFM=FB,LRECL=2700,BLKSIZE=0,DSORG=PS)
//*
//*SYSOUT   DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSTSPRT DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD SYSOUT=*
//*SYSUDUMP DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO    : ZMPDM015.                                                *
//* PROGRAMA: ICEMAN                                                   *
//* OBJETIVO: SORT COPY DE INTERFAZ DE ENTRADA                         *
//*--------------------------------------------------------------------*
//ZMPDM015 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.DOMAINS.SZM60800.D&FECHA,
//            DISP=SHR
//*
//ARCH1    DD DSN=MXCP.ZM.FIX.SORT.SZM60800.SAL.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(1000,500),RLSE),UNIT=3390,
//            DCB=(LRECL=115,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//ARCH2    DD DSN=MXCP.ZM.FIX.BCJPDM01.CIFRAS.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(5,1),RLSE),
//            DCB=(RECFM=FB,LRECL=115,BLKSIZE=0,DSORG=PS)
//*
//SYSIN    DD DUMMY
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO    : ZMPDM010.                                                *
//* PROGRAMA: ZM3C0365.                                                *
//* OBJETIVO: FORMATEO PARA DATIO                                      *
//*--------------------------------------------------------------------*
//ZMPDM010 EXEC PGM=ZM3CDM01,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.DOMAINS.SZM60800.D&FECHA,
//            DISP=SHR
//*
//SALIDA01 DD DSN=MXCP.ZM.FIX.FORM.SZM60800.SAL.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(1000,500),RLSE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=019,BLKSIZE=0,DSORG=PS)
//*
//* CIFRAS DE CONTROL
//*
//SALIDA02 DD DSN=MXCP.ZM.FIX.BCJPDM01.CCTRL.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,250),RLSE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=080,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO    : ZMPDM005.                                                *
//* PROGRAMA: ICEMAN.                                                  *
//* OBJETIVO: LIMPIA DATOS DE CARACTERES ESPECIALES DE CONTROL DE DB2. *
//*--------------------------------------------------------------------*
//ZMPDM005 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.FORM.SZM60800.SAL.F&FECHA,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.DOMAINS.SZM60800.SAL.D&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(1000,500),RLSE),DSNTYPE=LARGE,
//            UNIT=3390,BUFNO=30,
//            DCB=(RECFM=FB,LRECL=019,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPDM000),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO    : ZMPDM000.                                                *
//* PROGRAMA: IOACND.                                                  *
//* OBJETIVO: LEVANTA CONDICION PARA DISTRIBUIDO                       *
//*--------------------------------------------------------------------*
//ZMPDM000 EXEC  PGM=IOACND,COND=(4,LT),
//         PARM='ADD COND MX2CRX_BCJPDM0100 &FEC'
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
//*                  F I N   D E   P R O C E S O                       *
//*--------------------------------------------------------------------*
