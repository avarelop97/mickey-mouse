//ZMLNTS01 PROC
//*--------------------------------------------------------------------*
//*                                                                    *
//*               C A S A  D E  B O L S A                              *
//*                                                                    *
//* SISTEMA       : SISTEMA INTEGRAL DE VALORES (S.I.V.A)              *
//*                                                                    *
//* PROCESO       : ZMLNTS01                                           *
//* OBJETIVO      : GENERA EL ARCHIVO DE NOTAS ESTRUCTURADAS           *
//* PERIODICIDAD  : DIARIO                                             *
//* ELABORADO POR : ALEJANDRO GARCIA MORALES                           *
//*                                                                    *
//*--------------------------------------------------------------------*
//*            L O G    D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA     AUTOR    FECHA   DESCRIPCION                          *
//* ---------- --------- ------- ------------------------------------- *
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO       : ZMLNTS01                                              *
//* UTILERIA   : IKJEFT1A/ZM4CNW00                                     *
//* OBJETIVO   : GENERA ARCHIVO DE NOTAS ESTRUCTURADAS                 *
//*--------------------------------------------------------------------*
//ZMCNW010 EXEC PGM=IKJEFT1A,COND=(04,LT)
//*
//ZMNOTAS  DD DSN=MXCP.ZM.FIX.NOTAS.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=295,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCNTS01),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//*               F I N  D E L  P R O C L I B                          *
//*--------------------------------------------------------------------*
