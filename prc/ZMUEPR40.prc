//ZMUEPR40 PROC
//**********************************************************************
//* PROYECTO     : ZM - (SIVA).                                        *
//* PROCESO      : ZMUEPR40                                            *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : GENERACION DE RENDIMIENTOS PROYECTO PDV             *
//* REALIZO      : FSW INDRA.                                          *
//* FECHA        : SEPTIEMBRE 2016.                                    *
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
//* PASO       : ZMU40P50.                                             *
//* UTILERIA   : IKJEFT01/ZM4MU540                                     *
//* OBJETIVO   : PROGRAMA QUE DESCARGA LA TABLA EDCUENTA SOLO CUENTAS  *
//*              BANCA PATRIMONIAL (BCM).                              *
//**********************************************************************
//ZMU40P50 EXEC PGM=IKJEFT01
//*
//S1DES150 DD DSN=MXCP.ZM.FIX.REC.ZM4MU540.DESCA150,
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
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZMU40T50),DISP=SHR
//*
//**********************************************************************
//* PASO       : ZMU40P40.                                             *
//* UTILERIA   : IKJEFT01/ZM4MU541                                     *
//* OBJETIVO   : PROGRAMA DESCARGA DEPOSITOS Y RETIROS EFECTIVO SOLO   *
//*              DE BANCA PATRIMONIAL BCM                              *
//**********************************************************************
//ZMU40P40 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//S1DED151 DD DSN=MXCP.ZM.FIX.REC.ZM4MU541.DEREMOVE,
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
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZMU40T40),DISP=SHR
//*
//**********************************************************************
//* PASO       : ZMU40P30.                                             *
//* UTILERIA   : IKJEFT01/ZM4MU542                                     *
//* OBJETIVO   : CALCULA RENDIMIENTO BRUTOS PDV (BCM)                  *
//**********************************************************************
//ZMU40P30 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA1 DD  DSN=MXCP.ZM.FIX.REC.ZM4MU540.DESCA150,
//             DISP=SHR
//ENTRADA3 DD  DSN=MXCP.ZM.FIX.REC.ZM4MU541.DEREMOVE,
//             DISP=SHR
//S1SALIDA DD  DSN=MXCP.ZM.FIX.REC.ZM4MU542.SAL.D,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(200,100),RLSE),
//             DCB=(RECFM=FB,LRECL=200,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZMU40T30),DISP=SHR
//*
//**********************************************************************
//* PASO       : ZMU40P20.                                             *
//* UTILERIA   : IKJEFT01/ZM4MU543                                     *
//* OBJETIVO   : CALCULA RENDIMIENTO NETO PDV (BCM).                   *
//**********************************************************************
//ZMU40P20 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA1 DD  DSN=MXCP.ZM.FIX.REC.ZM4MU540.DESCA150,
//             DISP=SHR
//ENTRADA3 DD  DSN=MXCP.ZM.FIX.REC.ZM4MU541.DEREMOVE,
//             DISP=SHR
//S1SALIDA DD  DSN=MXCP.ZM.FIX.REC.ZM4MU543.SAL.D,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(200,100),RLSE),
//             DCB=(RECFM=FB,LRECL=200,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZMU40T20),DISP=SHR
//*
//**********************************************************************
//*                     FIN PROCESO ZMUEPR40                           *
//**********************************************************************
