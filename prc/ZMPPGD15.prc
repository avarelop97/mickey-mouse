//ZMPPGD15 PROC
//*                                                                   **
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - BCPPGD15.                                      *
//* PROCESO      : ZMPPGD15.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : PROCESA LOS VALORES EXPONENCIALES PARA OBTENER LOS  *
//*                PLAZOS DE LOS INSTRUMENTOS.                         *
//* REALIZO      : FSW INDRA                                           *
//* FECHA        : 25 DE ENERO DE 2017.                                *
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*--------------------------------------------------------------------*
//* PASO       : ZPP15T20.                                             *
//* UTILERIA   : IKJEFT01/ZM4PPG3I                                     *
//* OBJETIVO   : PROCESA VALORES EXPONENCIALES PARA OBTENER LOS PLAZOS *
//*              POR INSTRUMENTOS.                                     *
//*--------------------------------------------------------------------*
//*
//ZPP15T20 EXEC PGM=IKJEFT01
//*
//ZM1993E1 DD DSN=MXCP.ZM.FIX.PPG.ZM4PPG39.CARGA39,
//            DISP=SHR
//*
//QRLSDB2  DD SYSOUT=*
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZPP15T20),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                       FIN PROCESO ZMPPGD15                         *
//*--------------------------------------------------------------------*
