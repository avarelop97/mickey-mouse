//ZMLPCE17 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : BACK-OFFICE                                         *
//* PROCESO      : ZMLPCE17.                                           *
//* PERIODICIDAD : SEMANALMENTE.                                       *
//* OBJETIVO     : IDENTIFICACION DE CONTROLADORES.              í     *
//* REALIZO      : GONET                                               *
//* FECHA        : 31 DE AGOSTO 2016.                                  *
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
//* UTILERIA   : IKJEFT01/ZM4DFA17.                                    *
//* OBJETIVO   : GENERAR ARCHIVO CON LOS REGISTROS.                    *
//*--------------------------------------------------------------------*
//PHC06P01 EXEC PGM=IKJEFT01
//*
//FDSALIDA DD DSN=MXCP.ZM.FIX.FAT.CTROLA.BACK.D&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=494,BLKSIZE=0,RECFM=FB),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC05P17),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMLPCE17                        *
//*--------------------------------------------------------------------*
