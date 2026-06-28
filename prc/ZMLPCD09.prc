//ZMLPCD09 PROC                                                         00010001
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM FATCA.                                           *
//* PROCESO      : ZMLPCD09.                                           *
//* PERIODICIDAD : A PETICION DEL USUARIO.                             *
//* OBJETIVO     : GENERA EL ARCHIVO CORRESPONDIENTE A US PM PENDIENTE *
//*                DE DOCUMENTAR.                                      *
//* REALIZO      : FABRICA DE SOFTWARE CAPGEMINI.                      *
//* FECHA        : 23 DE MAYO DE 2014.                                 *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO       : PHC06P01.                                             *
//* UTILERIA   : IKJEFT01/ZM4DFA06.                                    *
//* OBJETIVO   : GENERA ARCHIVO CON LOS REGISTROS US PM PENDIENTE      *
//*              DE DOCUMENTAR.                                        *
//*--------------------------------------------------------------------*
//PHF06P01 EXEC PGM=IKJEFT01                                            00490001
//*                                                                     00500000
//ZMOH76A1 DD  DSN=MXCP.ZM.FIX.FAT.USPMP.DOCU.D&FECHA,                  00501001
//             DISP=(NEW,CATLG,DELETE),                                 00501100
//             DCB=(LRECL=82,RECFM=FB,BLKSIZE=0,DSORG=PS),              00501200
//             UNIT=3390,SPACE=(CYL,(4,2),RLSE)                         00501300
//*                                                                     00501400
//SYSOUT   DD  SYSOUT=*                                                 00502000
//SYSPRINT DD  SYSOUT=*                                                 00503000
//SYSTSPRT DD  SYSOUT=*                                                 00504000
//SYSDBOUT DD  SYSOUT=*                                                 00505000
//SYSABOUT DD  SYSOUT=*                                                 00506000
//SYSUDUMP DD  SYSOUT=*                                                 00507000
//SYSIN    DD  DUMMY                                                    00508000
//*                                                                     00509000
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZHC05P02),DISP=SHR                  00510001
//*                                                                     00520000
//*--------------------------------------------------------------------*
//*                   FIN DEL PROCESO ZMLPCD09.                        *
//*--------------------------------------------------------------------*
