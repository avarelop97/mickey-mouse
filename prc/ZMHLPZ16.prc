//ZMHLPZ16 PROC
//*--------------------------------------------------------------------*
//*                                                                    *
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<  MERCADO DE VALORES >>                      *
//*                                                                    *
//*   APLICACION       : SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *
//*                                                                    *
//*   PROCEDIMIENTO    : ZMHLPZ16                                      *
//*                                                                    *
//*   OBJETIVO         : REPORTE PRELIMINAR DE SUSCRIPTORES            *
//*                      ( OPCION 784 )                                *
//*                                                                    *
//*   CORRE ANTES DE   : NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE : NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD     : CORRE A SOLICITUD DEL USUARIO                 *
//*                                                                    *
//*   FECHA            : ENERO 09, 2002                                *
//*                                                                    *
//*   AUTOR            : GETRONICS - MEXICO                            *
//*                                                                    *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//* PROGRAMA: ZM4EHA04                                                 *
//* FUNCION:  REPORTE PRELIMINAR DE REGISTRO DE SUSCRIPTORES           *
//*--------------------------------------------------------------------*
//PJH16P03 EXEC PGM=IKJEFT01
//*
//ZMHA04A1 DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMHLPE16,DISP=SHR
//*
//ZMHA04R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL16T03),DISP=SHR
//*
