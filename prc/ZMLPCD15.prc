//ZMLPCD15 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM FATCA.                                           *
//* PROCESO      : ZMLPCD15                                            *
//* PERIODICIDAD : DIARIA.                                             *
//* OBJETIVO     : GENERA EL ARCHIVO CORRESPONDIENTE A CONTROLADORES.  *
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
//* PASO       : PHC15P01.                                             *
//* UTILERIA   : IKJEFT01/ZM4DFA28.                                    *
//* OBJETIVO   : GENERA ARCHIVO DE CONTROLADORES PM                    *
//*--------------------------------------------------------------------*
//PHC15P01 EXEC PGM=IKJEFT01
//*
//FDSALIDA DD DSN=MXCP.ZM.FIX.CRSFATM.CONTROLA.D&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=239,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC15P08),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMLPCD15                        *
//*--------------------------------------------------------------------*
//*
