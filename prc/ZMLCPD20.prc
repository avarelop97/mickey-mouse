//ZMLCPD20 PROC
//*
//*--------------------------------------------------------------------*
//*                                                                    *
//* APLICACION       : ZM - MODULO DE SIVA MULTI EMPRESA ALTAMIRIZADO  *
//*                                                                    *
//* NOMBRE DEL PROC  : ZMLCPD20                                        *
//*                                                                    *
//* NOMBRE DEL JCL   : CBLCCD20                                        *
//*                                                                    *
//* OBJETIVO         : EJECUTA PROGRAMA QUE LEE ARCHIVO DE HERRAMIENTA *
//*                    DE GESTION, INSERTA OPERACIONES A ASIGNAR EN BUC*
//*                                                                    *
//* FECHA DE CREACION: 01 DE OCTUBRE DE 2012.                          *
//*                                                                    *
//* TIPO             : HJ1 - PROCLIB.                                  *
//*                                                                    *
//* &AMB             : PREFIJO DEL ENTORNO DE EJECUCION.               *
//*                                                                    *
//* &FECHA           : FECHA DE PROCESAMIENTO DEL ENTORNO (AAMMDD).    *
//*                                                                    *
//* AUTOR            : FABRICA DE SW INDRA / XM02880.                  *
//*                                                                    *
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//*             L O G   D E    M O D I F I C A C I O N E S             *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA   DESCRIPCION                         *
//* -----------  -------  -------  ----------------------------------- *
//* FS-1.0.0-01  XXXXXXX  DDMMMAA  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//* PASO    : PLC20P01                                                 *
//* PROGRAMA: IKJEFT01 / ZM4EHB96                                      *
//* OBJETIVO: PROGRAMA QUE INSERTA EN TABLA ZMDT790 OPERACIONES APLICAR*
//*           EN BUC.                                                  *
//*--------------------------------------------------------------------*
//*
//PLC20P01 EXEC PGM=IKJEFT01
//*
//ZMHB92A1 DD DSN=MXCP.ZM.FIX.GESTION.D&FECHA,
//            DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL20P01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                       FIN DEL PROC ZMLCPD20                        *
//*--------------------------------------------------------------------*
