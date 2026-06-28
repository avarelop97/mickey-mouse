//ZMHLPZ32 PROC
//**********************************************************************
//*                                                                    *
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<  MERCADO DE VALORES >>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIMI.:  ZMHLPZ32                                            *
//*                                                                    *
//*   OBJETIVO  :  REPORTE DE EMISORAS SIN PRECIO DE MERCADO           *
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
//*---------------------------------------------------------------
//* PROGRAMA: ZM4DHA16
//* FUNCION:  EMITE REPORTE DE EMISORAS SIN PRECIO
//*---------------------------------------------------------------
//PHL32P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMHA16A1 DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMHLPE32,
//            DISP=SHR
//ZMHA16R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL32T01),DISP=SHR
//*
