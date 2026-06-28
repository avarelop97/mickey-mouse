//ZMHLPZ33 PROC
//**********************************************************************
//*                                                                    *
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<  MERCADO DE VALORES >>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIMI.:  ZMHLPZ33                                            *
//*                                                                    *
//*   OBJETIVO  :  REPORTE DE MANTENIMIENTO DE PRECIOS                 *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *
//*                                                                    *
//*   FECHA     :  ABRIL  2003                                         *
//*                                                                    *
//*   AUTOR     :  (ATK) ALVAREZ  MELGAR  NOE                          *
//*                                                                    *
//**********************************************************************
//*---------------------------------------------------------------
//*   REPORTE DEL MANTENIMIENTO DE PRECIOS
//*   PROGRAMA ZM4EH921
//*---------------------------------------------------------------
//PHL33P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//ZMH921A1 DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMHLPE33,
//            DISP=SHR
//ZMH921R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMH921RX DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL33T01),DISP=SHR
//*
