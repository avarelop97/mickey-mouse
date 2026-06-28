//ZMLPCD11 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM FATCA.                                           *
//* PROCESO      : ZMLPCD11.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : GENERA EL ARCHIVO CORRESPONDIENTE PENDIENTES DE     *
//*                DOCUMENTAR.                                         *
//* REALIZO      : FABRICA DE SOFTWARE CAPGEMINI.                      *
//* FECHA        : 23 DE MAYO DE 2014.                                 *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO     : PHC06P01.                                               *
//* UTILERIA : IKJEFT01 / ZM4DFA08.                                    *
//* OBJETIVO : GENERA ARCHIVO CON LOS REGISTROS PENDIENTES DE          *
//*            DOCUMENTAR.                                             *
//*--------------------------------------------------------------------*
//PHC06P01 EXEC PGM=IKJEFT01
//*
//ZMOH76A1 DD  DSN=MXCP.ZM.FIX.FAT.PEN.DOCU.D&FECHA,
//             DISP=(NEW,CATLG,DELETE),
//             DCB=(LRECL=72,RECFM=FB,BLKSIZE=0,DSORG=PS),
//             UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//SYSOUT   DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSIN    DD  DUMMY
//*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZHC05P04),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMLPCD11                        *
//*--------------------------------------------------------------------*
//*
