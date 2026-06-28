//ZMPPGD09 PROC
//*                                                                    *
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - PPG.                                           *
//* PROCESO      : ZMPPGD09.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : CARGA DE LA TABLA ZMDT837.                          *
//* REALIZO      : FSW INDRA                                           *
//* FECHA        : 26 DE OCTUBRE DEL 2015                              *
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//* PASO       : ZPP09T10.                                             *
//* UTILERIA   : IKJEFT01/ZM4PPG28                                     *
//* OBJETIVO   : CARGA DE LA TABLA ZMDT837.                            *
//*--------------------------------------------------------------------*
//*
//ZPP09T10 EXEC PGM=IKJEFT01
//*
//ZM09PPE1 DD DSN=MXCP.ZM.FIX.PPG.ZM4PPG28.CARGA,DISP=SHR
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZPP09T10),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                     FIN PROCESO ZMPPGD09                           *
//*--------------------------------------------------------------------*
