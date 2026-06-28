//ZMLPCD13 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM FATCA.                                           *
//* PROCESO      : ZMLPCD13.                                           *
//* PERIODICIDAD : DIARIA.                                             *
//* OBJETIVO     : GENERA EL ARCHIVO CORRESPONDIENTE A CONTRATOS PM.   *
//*                CON AUTODECLARACION.                                *
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
//* PASO       : PHC06P01.                                             *
//* UTILERIA   : IKJEFT01/ZM4DFA26.                                    *
//* OBJETIVO   : GENERA ARCHIVO DE CONTRATOS CON AUTODECLARACION.      *
//*--------------------------------------------------------------------*
//PHC06P01 EXEC PGM=IKJEFT01
//*
//FDSALIDA DD DSN=MXCP.ZM.FIX.CRSFATM.AUTODECM.D&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=109,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC05P06),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMLPCD13                        *
//*--------------------------------------------------------------------*
//*
