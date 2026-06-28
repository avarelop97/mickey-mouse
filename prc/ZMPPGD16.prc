//ZMPPGD16 PROC
//*                                                                   **
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - BCPPGD16.                                      *
//* PROCESO      : ZMPPGD16.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : VALIDACION DEL WATCH LIST PARA HACER ADMISIBLE O NO *
//*                LOS INSTRUMENTOS.                                   *
//* REALIZO      : FSW INDRA                                           *
//* FECHA        : 14 DE MARZO 2017.                                   *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*--------------------------------------------------------------------*
//* PASO       : ZPP16T95.                                             *
//* UTILERIA   : IKJEFT01/ZM4PPG40                                     *
//* OBJETIVO   : VALIDACION DEL WATCH LIST PARA HACER ADMISIBLE O NO   *
//*              LOS INSTUMENTOS DE LA TABLA ZMDT834                   *
//*--------------------------------------------------------------------*
//*
//ZPP16T95 EXEC PGM=IKJEFT01
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZPP16T01),DISP=SHR
//*
//**********************************************************************
//*                   FIN   ZMPPGD16                                   *
//**********************************************************************
