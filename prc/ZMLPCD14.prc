//ZMLPCD14 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM FATCA.                                           *
//* PROCESO      : ZMLPCD14.                                           *
//* PERIODICIDAD : DIARIA.                                             *
//* OBJETIVO     : GENERA EL ARCHIVO PM REPORTABLE CRS.                *
//*                PM.                                                 *
//* REALIZO      : ROG.                                                *
//* FECHA        : 24 DE AGOSTO DE 2016.                               *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO       : PHC14P01.                                             *
//* UTILERIA   : IKJEFT01/ZM4DFA27.                                    *
//* OBJETIVO   : GENERA ARCHIVO PM REPORTABLE CRS                      *
//*--------------------------------------------------------------------*
//PHC14P01 EXEC PGM=IKJEFT01
//*
//FDSALIDA DD DSN=MXCP.ZM.FIX.CRSFATM.PMREPCRS.D&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=276,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC14P07),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMLPCD14                        *
//*--------------------------------------------------------------------*
//*
