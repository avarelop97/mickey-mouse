//ZMUEPR45 PROC
//**********************************************************************
//* PROYECTO     : ZM - (SIVA).                                        *
//* PROCESO      : ZMUEPR45                                            *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : GENERA REPORTE DE MOVIMIENTOS DE PP BANCO           *
//* REALIZO      : DYD SIVA-MUV                                        *
//* FECHA        : MAYO 2021                                           *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*                                                                    *
//*-------------------------------------------------------------------**
//**********************************************************************
//* PASO       : ZMPR4510.                                             *
//* UTILERIA   : IKJEFT01/ZM4MU555                                     *
//* OBJETIVO   : GENERA REPORTE DE MOVIMIENTOS DE PP BANCO             *
//**********************************************************************
//ZMPR4510 EXEC PGM=IKJEFT01
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.EBCM.ZM4MU555.MOVPP.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=138,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZMPR4510),DISP=SHR
//*
