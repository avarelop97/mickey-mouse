//ZMPPGD19 PROC
//*                                                                   **
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - BCPPGD19.                                      *
//* PROCESO      : ZMPPGD19.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : INSERTA INFORMACION EN TABLA ZMDT834 ESTATUS-REC.   *
//* REALIZO      : TECNOINDRA                                         *
//* FECHA        : MARZO DEL 2018.                                     *
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*--------------------------------------------------------------------*
//* PASO       : ZPP19T01.                                             *
//* UTILERIA   : IKJEFT01/ZM4PPG41                                     *
//* OBJETIVO   : INSERTA INFORMACION EN LA TABLA ZMDT834 POR ALTER.    *
//*--------------------------------------------------------------------*
//*
//ZPP19T01 EXEC PGM=IKJEFT01
//*
//ZM1993E1 DD DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4EHO82.DESC,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZPP19T01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                       FIN PROCESO ZMPPGD19                         *
//*--------------------------------------------------------------------*
