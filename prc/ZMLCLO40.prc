//ZMLCLO40 PROC
//*--------------------------------------------------------------------*
//* SISTEMA      : ZM -                                                *
//* PROCESO      : ZMLCLO40                                            *
//* PERIODICIDAD : DIARIA                                              *
//* OBJETIVO     : PROCESO DE DESCARGA ZMDT645                         *
//*                ESPEJO DE OPERACIONES DIARIAS EN BIVA               *
//* REALIZO      : GONET                                               *
//* FECHA        : 10 OCT 2017                                         *
//*                                                                    *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//*--------------------------------------------------------------------*
//**********************************************************************
//* PASO     : ZMLO4050                                                *
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE TABLA ZMDT645                               *
//**********************************************************************
//ZMLO4050  EXEC PGM=ADUUMAIN,                                          00022900
//          PARM='MXP1,ZMLO4050,NEW,,MSGLEVEL(1)'                       00023000
//*                                                                     00023400
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*                                                                     00023400
//SYSREC   DD DSN=MXCP.ZM.FIX.CBP.CBJCLO40.UNLOAD.ZMDT645,              00023800
//            UNIT=3390,                                                00023900
//            SPACE=(CYL,(500,250),RLSE),DISP=(NEW,CATLG,DELETE),       00024000
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)                         00024100
//*                                                                     00024200
//SYSCNTL  DD  DUMMY                                                    00024300
//*                                                                     00024400
//UTPRINT  DD SYSOUT=*                                                  00024500
//SYSPRINT DD SYSOUT=*                                                  00024600
//SYSUDUMP DD SYSOUT=*                                                  00024700
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMLO4050),DISP=SHR                   00024800
//*
//**********************************************************************
//* PASO     : ZMLO4048                                                *
//* UTILERIA : ZM3BIV04                                                *
//* OBJETIVO : ALINEA A LA IZQUIERDA SERIE                             *
//**********************************************************************
//ZMLO4048  EXEC PGM=ZM3BIV04,COND=(4,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.CBP.CBJCLO40.UNLOAD.ZMDT645,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.CBP.CBJCLO40.UNLOAD.ZMDT645.ORD,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,500),RLSE),
//            DCB=(LRECL=295,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*                                                  0920002
//SYSOUT   DD SYSOUT=*
//SYSDUMP  DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//**********************************************************************
//* PASO     : ZMLO4045                                                *
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : SEPARAMOS LOS FORMATOS K DK                             *
//**********************************************************************
//ZMLO4045 EXEC PGM=ICEMAN,COND=(4,LT)                                  0920002
//SORTIN   DD DSN=MXCP.ZM.FIX.CBP.CBJCLO40.UNLOAD.ZMDT645.ORD,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.CBP.CBJCLO40.FORMATO.K,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,500),RLSE),
//            DCB=(LRECL=255,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDUMP  DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMLO4045),DISP=SHR
//*
//**********************************************************************
//* PASO     : ZMLO4040                                                *
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : SEPARAMOS LOS FORMATOS P.DP                             *
//**********************************************************************
//ZMLO4040 EXEC PGM=ICEMAN,COND=(4,LT)                                  0920002
//SORTIN   DD DSN=MXCP.ZM.FIX.CBP.CBJCLO40.UNLOAD.ZMDT645.ORD,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.CBP.CBJCLO40.FORMATO.P,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,500),RLSE),
//            DCB=(LRECL=255,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDUMP  DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMLO4040),DISP=SHR
//*
//**********************************************************************
//* PASO     : ZMLO4035                                                *
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : SEPARAMOS LOS FORMATOS IV                               *
//**********************************************************************
//ZMLO4035 EXEC PGM=ICEMAN,COND=(4,LT)                                  0920002
//SORTIN   DD DSN=MXCP.ZM.FIX.CBP.CBJCLO40.UNLOAD.ZMDT645.ORD,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.CBP.CBJCLO40.FORMATO.IV,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,500),RLSE),
//            DCB=(LRECL=255,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDUMP  DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMLO4035),DISP=SHR
//*
