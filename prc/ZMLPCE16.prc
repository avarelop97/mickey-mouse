//ZMLPCE16 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : BACK-OFFICE.                                        *
//* PROCESO      : ZMLPCE16.                                           *
//* PERIODICIDAD : MENSUALMENTE.                                       *
//* OBJETIVO     : IDENTIFICACION DE CLIENTES CON W-8  PERSONAS  í     *
//*                PROXIMO A VENCER_SIVA                               *
//* REALIZO      : GONET                                               *
//* FECHA        : 27 DE OCTUBRE 2014.                                 *
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
//* UTILERIA   : IKJEFT01/ZM4DFA16.                                    *
//* OBJETIVO   : GENERAR ARCHIVO CON LOS REGISTROS.                    *
//*--------------------------------------------------------------------*
//PHC06P01 EXEC PGM=IKJEFT01
//*
//ZMOH76A1 DD DSN=MXCP.ZM.FIX.FAT.W8XVE.BACK.D&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=288,BLKSIZE=0,RECFM=FB),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC05P16),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMLPCE16                        *
//*--------------------------------------------------------------------*
