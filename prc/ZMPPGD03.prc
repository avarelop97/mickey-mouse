//ZMPPGD03 PROC
//*                                                                   **
//*--------------------------------------------------------------------*
//*                PRESTAMO PATRIMONIAL GARANTIZADO                    *
//* PROYECTO     : ZM - BCPPGD03.                                      *
//* PROCESO      : ZMPPGD03.                                           *
//* PERIODICIDAD : MENSUAL                                             *
//* OBJETIVO     : ACTUALIZACION BATCH DE GARANTIAS.                   *
//* REALIZO      : FSW INDRA                                           *
//* FECHA        : SEPTIEMBRE 2015.                                    *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//* PASO       : ZPP03T50.                                             *
//* UTILERIA   : IKJEFT01/ZM4PPG02                                     *
//* OBJETIVO   : GENERA ARCHIVO PARA ACTUALIZAR GARANTIAS EN UG        *
//*--------------------------------------------------------------------*
//ZPP03T50 EXEC PGM=IKJEFT01
//*
//ZM02PPS1 DD  DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4PPG02.ACTGARAN,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(100,050),RLSE),
//             DCB=(RECFM=FB,LRECL=046,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZPP03T50),DISP=SHR
//**********************************************************************
//*                          ===   COPIA  ===                          *
//*                                                                    *
//* OBJETIVO : COPIAR ARCHIVO CON ACTUALIZACION DE GARANTIAS PPG       *
//*            MXCP.ZM.FIX.PPG.EBCM.ZM4PPG0W.ACTGARAN                  *
//*  A ===>    MBVP.UG.FVM06.F&FECHA..PPGDEMUV.ACTSALDS                *
//**********************************************************************
//ZPP03T45 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4PPG02.ACTGARAN,DISP=SHR
//*SYSUT2   DD DSN=MXCP.ZM.FIX.F&FECHA..PPGDEMUV.ACTSALDS,
//SYSUT2   DD DSN=MBVP.UG.FVM06.F&FECHA..PPGDEMUV.ACTSALDS,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,050),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=046,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DUMMY
//*
//*-------------------------------------------------------------------
//* FIN PROCESO ZMPPGD03
//*-------------------------------------------------------------------
