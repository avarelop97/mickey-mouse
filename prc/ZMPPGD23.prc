//ZMPPGD23 PROC
//*                                                                   **
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - BCPPGD23.                                      *
//* PROCESO      : ZMPPGD23                                            *
//* PERIODICIDAD : QUINCENAL                                           *
//* OBJETIVO     : CARGA DE TIPOS VALOR                                *
//* REALIZO      : XMY9154                                             *
//* FECHA        : SEP 2018.                                           *
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*--------------------------------------------------------------------*
//* PASO       : ZPP23T01.                                             *
//* UTILERIA   : IKJEFT01/ZM4PPG46                                     *
//* OBJETIVO   : CARGA DE TIPOS VALOR                                  *
//*--------------------------------------------------------------------*
//*
//ZPP23T01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMPPG4E1 DD DSN=MXCP.ZM.FIX.PPG.DOLA.ZM4PPG46.TIPOS,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZPP23T01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                       FIN PROCESO ZMPPGD23                         *
//*--------------------------------------------------------------------*
