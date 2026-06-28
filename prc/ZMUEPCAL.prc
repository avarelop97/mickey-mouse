//ZMUEPCAL PROC
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*                               XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE80CAL                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : GENERA REPRO DE CALYPSO A MUV PROC                    *
//*--------------------------------------------------------------------*
//PUE80CAL EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD  DSN=MXCP.ZM.FIX.CALYPSO.PLIMPIO.D&FECHA,
//             DISP=SHR
//*
//SORTOUT  DD  DSN=MXCP.ZM.FIX.CALYPSO.PLIMPIO.RECIBIDO,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(50,20),RLSE),
//             DCB=(DSORG=PS,RECFM=FB,LRECL=138,BLKSIZE=0)
//*
//SYSOUT   DD  SYSOUT=*
//*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(CAL03T20),
//             DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE10CAL.                                             *
//* UTILERIA   : IKJEFT01 / ZM4FSL32.                                  *
//* OBJETIVO   : RECIBE ARCHIVO DE CALIPSO                             *
//*              INSERTA REGISTROS EN OPERDIN O ACTUALIZA SI YA EXISTEN*
//*--------------------------------------------------------------------*
//PUE10CAL EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//ZMEL01E1 DD DSN=MXCP.ZM.FIX.CALYPSO.PLIMPIO.RECIBIDO,
//*ZMEL01E1 DD DSN=MXCP.ZM.FIX.CALYPSO.PLIMPIO.D&FECHA,
//            DISP=SHR
//*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(CAL03T80),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                     FIN DEL PROCESO ZMUEPCAL                       *
//*--------------------------------------------------------------------*
