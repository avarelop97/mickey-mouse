//ZMUENE13 PROC
//*--------------------------------------------------------------------*
//* PROCESO      : BCUENE03                                            *
//* PERIODICIDAD : MENSUAL                                             *
//* OBJETIVO     : RESPALDA INFORMACION DE SELLOS EGRESOS              *
//* FECHA        : JULIO 2018                                          *
//*                                                                    *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//*--------------------------------------------------------------------*
//* PASO       : ZMNE0350                                              *
//* UTILERIA   : ZM4MU546                                              *
//* OBJETIVO   : REALIZA CARGA DE UUID DE COMPROBANTE DE EGRESOS       *
//*--------------------------------------------------------------------*
//ZMNE0350 EXEC PGM=IKJEFT01
//*
//ZMMU46E1 DD DSN=MXCP.ZM.FIX.EBCM.EGRESOS.SELLOS,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMNE1147),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                   FIN DE PROCESO ZMUENE13                          *
//*--------------------------------------------------------------------*
//*
