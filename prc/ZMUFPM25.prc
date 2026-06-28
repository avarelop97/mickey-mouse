//ZMUFPM25 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM RENDIMIENTOS DE INGRESOS SIVA                    *
//* PROCESO      : ZMUFPM25                                            *
//* PERIODICIDAD : EVENTUAL                                            *
//* OBJETIVO     : CARGA TABLA PARAM CON INFORMACION DE FACULTADES DE  *
//*                USUARIO EN SIVA.                                    *
//* REALIZO      : ASP.                                                *
//* FECHA        : NOVIEMBRE 2009.                                     *
//*                                                                    *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//* FS-0.0.0-00  XXXXXXX DDMMMAA  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*
//*--------------------------------------------------------------------*
//*
//**********************************************************************
//* PASO    : PUF25001                                                 *
//* PGM/UTIL: IKJEFT01                                                 *
//* OBJETIVO: CARGA PARAMETROS EN TABLA PARAM                          *
//* CONTROL : ZUF25T01                                                 *
//**********************************************************************
//PUF25001 EXEC PGM=IKJEFT01
//*
//ENTRADA1 DD DISP=SHR,DSN=MXCP.ZM.TMP.EVE.FACULTA.PARAM
//*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF25T01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                           FIN PROCLIB                              *
//*--------------------------------------------------------------------*
