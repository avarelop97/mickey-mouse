//ZMUENE03 PROC
//*--------------------------------------------------------------------*
//* PROCESO      : CBUENE03                                            *
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
//* UTILERIA   : ZM4CBD07                                              *
//* OBJETIVO   : REALIZA CARGA DE UUID DE COMPROBANTE DE EGRESOS       *
//*--------------------------------------------------------------------*
//ZMNE0350 EXEC PGM=IKJEFT01
//*
//ZMCBD7E1 DD DSN=MXCP.ZM.FIX.ECBP.EGRESOS.SELLOS,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMUENE62),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                   FIN DE PROCESO ZMUENE03                          *
//*--------------------------------------------------------------------*
//*
