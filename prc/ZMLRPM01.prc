//ZMLRPM01 PROC
//*                                                                    *
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM                                                  *
//* PROCESO      : ZMLRPM01.                                           *
//* PERIODICIDAD : MENSUAL.                                            *
//* OBJETIVO     : RESPALDO DE LAS TABLAS                              *
//* REALIZO      : XMK0524 GUILLERMO COLON ROJAS  INDRA                *
//* FECHA        : 15-NOV-2024                                         *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO       : PLR01P40.                                             *
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : REALIZA DESCARGA DE LA TABLA DE LOGERR (RENTA FIJA)   *
//*--------------------------------------------------------------------*
//PLR01P40 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,ZFM20P40,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FVM03.ZMLRPM01.FIJA.LOGERR.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLR01T04),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PLR01P30.                                             *
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : REALIZA DESCARGA DE LA TABLA DE ZMDTLOG (RENTA FIJA)  *
//*--------------------------------------------------------------------*
//PLR01P30 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZFM20P30,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FVM03.ZMLRPM01.FIJA.ZMDTLOG.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLR01T03),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : PLR01P20.                                               *
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : REALIZA DESCARGA DE LA TABLA DE LOGERR (RENTA VARIABLE) *
//*--------------------------------------------------------------------*
//PLR01P20 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZFM20P20,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FVM03.ZMLRPM01.VARIA.LOGERR.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLR01T02),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : PLR01P10.                                               *
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : REALIZA DESCARGA DE LA TABLA DE ZMDTLOG (RENTA VARIABLE)*
//*--------------------------------------------------------------------*
//PLR01P10 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZFM20P10,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FVM03.ZMLRPM01.VARIA.ZMDTLOG.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLR01T01),
//            DISP=SHR
//*
//*
