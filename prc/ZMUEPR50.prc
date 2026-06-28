//ZMUEPR50 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - ZMUEPR50.                                      *
//* PROCESO      : ZMUEPR50.                                           *
//* PERIODICIDAD : MENSUAL                                             *
//* OBJETIVO     : INSERTA PARAMETRO PARA NO CARGAR TABLA ZMDT895      *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*--------------------------------------------------------------------*
//* PASO       : ZUE50T01.                                             *
//* UTILERIA   : IKJEFT01/ZM4MED10                                     *
//* OBJETIVO   : INSERTA PARAMETRO PARA NO CARGAR TABLA ZMDT895 DE EDC *
//*              NOMBRES FISCALES                                      *
//*--------------------------------------------------------------------*
//ZUE50T01 EXEC PGM=IKJEFT01
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZUE50P01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//*                   FIN DE PROCESO ZMUEPR50                          *
//*--------------------------------------------------------------------*
