//ZMLPCE15 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : BACK-OFFICE                                         *
//* PROCESO      : ZMLPCE15.                                           *
//* PERIODICIDAD : SEMANALMENTE.                                       *
//* OBJETIVO     : IDENTIFICAR EL ESTATUS FATCA DE LAS PERSONAS  í     *
//*                MORALES CON ALGUN INDICIO DE RESPONSABILIDAD        *
//*                FISCAL EN EE.UU..                                   *
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
//* UTILERIA   : IKJEFT01/ZM4DFA15.                                    *
//* OBJETIVO   : GENERAR ARCHIVO CON LOS REGISTROS.                    *
//*--------------------------------------------------------------------*
//PHC06P01 EXEC PGM=IKJEFT01
//*
//ZMOH76A1 DD DSN=MXCP.ZM.FIX.FAT.PERMO.BACK.D&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//*CRS        DCB=(DSORG=PS,LRECL=372,BLKSIZE=0,RECFM=FB),
//            DCB=(DSORG=PS,LRECL=651,BLKSIZE=0,RECFM=FB),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC05P15),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMLPCE15                        *
//*--------------------------------------------------------------------*
