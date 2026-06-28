//ZMUERM01 PROC
//*                                                                   **
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - CBUENR01.                                      *
//* PROCESO      : ZMUERM01.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : REPROCESO RENDIMIENTOS ESTADO DE CUENTA CBP         *
//* REALIZO      : FSW INDRA.                                          *
//* FECHA        : 14 DE JULIOX DE 2015.                               *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*                                                                    *
//*-------------------------------------------------------------------**
//* PASO       : ZUR01T30.                                             *
//* UTILERIA   : IKJEFT01/ZM4MU192                                     *
//* OBJETIVO   : EDCUENTA REPROCESO CBP                                *
//*--------------------------------------------------------------------*
//ZUR01T36 EXEC PGM=IKJEFT01
//*
//S1DES150 DD DSN=MXCP.ZM.FIX.REC.ZM4MU192.DESCA150,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=13,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZUR01T33),DISP=SHR
//*-------------------------------------------------------------------**
//* PASO       : ZUR01T25.                                             *
//* UTILERIA   : IKJEFT01/ZM4MU193                                     *
//* OBJETIVO   : FLUJO EFECTIVO REND                                   *
//*------------------------------------------------------------------- *
//ZUR01T35 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//S1DED151 DD DSN=MXCP.ZM.FIX.REC.ZM4MU193.DEREMOVE,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=33,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZUR01T34),DISP=SHR
//*
//*-------------------------------------------------------------------
//* PASO       : ZUR01T20.
//* UTILERIA   : IKJEFT01/ZM4MU194
//* OBJETIVO   : REND REPROCESO ESTADO DE CUENTA CBP
//*-------------------------------------------------------------------
//ZUR01T34 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA1 DD  DSN=MXCP.ZM.FIX.REC.ZM4MU192.DESCA150,
//             DISP=SHR
//ENTRADA3 DD  DSN=MXCP.ZM.FIX.REC.ZM4MU193.DEREMOVE,
//             DISP=SHR
//S1SALIDA DD  DSN=MXCP.ZM.FIX.REC.ZM4MU194.SAL.D,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(200,100),RLSE),
//             DCB=(RECFM=FB,LRECL=163,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZUR01T35),DISP=SHR
//*
//*-------------------------------------------------------------------
//* PASO       : ZUR01T15.
//* UTILERIA   : IKJEFT01/ZM4MU195
//* OBJETIVO   : REND NETO REPRO EDC CBP
//*-------------------------------------------------------------------
//ZUR01T33 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA1 DD  DSN=MXCP.ZM.FIX.REC.ZM4MU192.DESCA150,
//             DISP=SHR
//ENTRADA3 DD  DSN=MXCP.ZM.FIX.REC.ZM4MU193.DEREMOVE,
//             DISP=SHR
//S1SALIDA DD  DSN=MXCP.ZM.FIX.REC.ZM4MU195.SAL.D,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(200,100),RLSE),
//             DCB=(RECFM=FB,LRECL=163,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZUR01T36),DISP=SHR
//*
//*-------------------------------------------------------------------
//* FIN PROCESO ZMUERM01
//*-------------------------------------------------------------------
