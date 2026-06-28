//ZMPPGD04 PROC
//*                                                                   **
//*--------------------------------------------------------------------*
//*                PRESTAMO PATRIMONIAL GARANTIZADO                    *
//* PROYECTO     : ZM - BCPPGD04.                                      *
//* PROCESO      : ZMPPGD04.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : DESBLOQUEO BATCH DE GARANTIAS.                      *
//* REALIZO      : FSW INDRA                                           *
//* FECHA        : SEPTIEMBRE 2015.                                    *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//* PASO       : ZPP04T50.                                             *
//* UTILERIA   : IKJEFT01/ZM4PPG01                                     *
//* OBJETIVO   : DESBLOQUEAR LAS GARANTIAS POR MEDIO DEL ARCHIVO QUE   *
//*              LLEGA DE UG                                           *
//*--------------------------------------------------------------------*
//ZPP04T50 EXEC PGM=IKJEFT01
//*
//ZM01PPG1 DD  DSN=MXBP.YH.FIX.F&FECHA..PPGSALDO.DESINMUV,
//             DISP=SHR
//*
//ZM01PPS1 DD  DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4PPG01.REPDESBL,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(100,050),RLSE),
//             DCB=(RECFM=FB,LRECL=080,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZPP04T50),DISP=SHR
//*-------------------------------------------------------------------
//* FIN PROCESO ZMPPGD04
//*-------------------------------------------------------------------
