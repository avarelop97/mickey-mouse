//ZMLPCD12 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM FATCA.                                           *
//* PROCESO      : ZMLPCD12.                                           *
//* PERIODICIDAD : DIARIA.                                             *
//* OBJETIVO     : GENERA EL ARCHIVO CORRESPONDIENTE A PM REPORTABLE.  *
//* REALIZO      : FABRICA DE SOFTWARE CAPGEMINI.                      *
//* FECHA        : 24 DE MAYO DE 2014.                                 *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO       : PHC06P01.                                             *
//* UTILERIA   : IKJEFT01/ZM4DFA09.                                    *
//* OBJETIVO   : GENERAR ARCHIVO CON LOS REGISTROS PM REPORTABLE.      *
//*--------------------------------------------------------------------*
//PHC06P01 EXEC PGM=IKJEFT01
//*
//ZMOH76A1 DD DSN=MXCP.ZM.FIX.FAT.PMREPORT.D&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=275,BLKSIZE=0,RECFM=FB),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC05P05),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMLPCD12                        *
//*--------------------------------------------------------------------*
