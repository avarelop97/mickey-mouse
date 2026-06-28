//ZMULPZ07 PROC
//*--------------------------------------------------------------------*
//*                                                                    *
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<  C O N T R A T O S  >>                      *
//*                                                                    *
//*   APLICACION       : SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *
//*                                                                    *
//*   PROCEDIMIENTO    : ZMULPZ07                                      *
//*                                                                    *
//*   OBJETIVO         : REPORTE DE CONTRATOS CON CANDADO Y DESCRIPCION*
//*                      ( OPCION 241 )                                *
//*                                                                    *
//*   CORRE ANTES DE   : NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE : NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD     : CORRE A SOLICITUD DEL USUARIO                 *
//*                                                                    *
//*   FECHA            : JUNIO 24, 2003                                *
//*                                                                    *
//*   AUTOR            : GETRONICS - MEXICO                            *
//*                                                                    *
//*--------------------------------------------------------------------*
//* PROGRAMA: ZM4DG629                                                 *
//* FUNCION:  REPORTE DE CONTRATOS CON CANDADO Y DESCRIPCIONES         *
//*--------------------------------------------------------------------*
//PUL07P01 EXEC PGM=IKJEFT01
//*
//ZMG629A1 DD DSN=MXCP.ZM.TMP.CON.EMP.SUC.ZMULPE07,DISP=SHR
//*
//ZMG629R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUL07T01),DISP=SHR
//*
//**********************************************************************
//*        TERMINA PROCESO ZMULPZ07 SIVA MULTIEMPRESA                  *
//**********************************************************************
