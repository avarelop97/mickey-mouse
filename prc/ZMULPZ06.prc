//ZMULPZ06 PROC
//*--------------------------------------------------------------------*
//*                                                                    *
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<  C O N T R A T O S  >>                      *
//*                                                                    *
//*   APLICACION       : SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *
//*                                                                    *
//*   PROCEDIMIENTO    : ZMULPZ06                                      *
//*                                                                    *
//*   OBJETIVO         : REPORTE DE BAJAS                              *
//*                      ( OPCION 486 )                                *
//*                                                                    *
//*   CORRE ANTES DE   : NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE : NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD     : CORRE A SOLICITUD DEL USUARIO                 *
//*                                                                    *
//*   FECHA            : JUNIO 30, 2003                                *
//*                                                                    *
//*   AUTOR            : GETRONICS - MEXICO                            *
//*                                                                    *
//*--------------------------------------------------------------------*
//* PROGRAMA: ZM4DG632                                                 *
//* FUNCION:  REPORTE DE BAJAS                                         *
//*--------------------------------------------------------------------*
//PUL06P02 EXEC PGM=IKJEFT01
//*
//ZMG632A1 DD DSN=MXCP.ZM.TMP.CON.EMP.SUC.ZMULPE06,DISP=SHR
//*
//ZMG632R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUL06T01),DISP=SHR
//*
//**********************************************************************
//*                 F I N     Z M J L P Z 0 6                          *
//**********************************************************************
