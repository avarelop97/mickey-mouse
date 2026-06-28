//ZMHLPZ25 PROC
//**********************************************************************
//*                                                                    *
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<  MERCADO DE VALORES >>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIMI.:  ZMHLPZ25                                            *
//*                                                                    *
//*   OBJETIVO  :  REPORTE DE VALORES DISPONIBLES DE VENTAS EN CORTO   *
//*                (OPCION 972)                                        *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *
//*                                                                    *
//*   FECHA     :  FEBRERO 21, 2003                                    *
//*                                                                    *
//*   AUTOR     :  (HPI) GUADALUPE OROZCO OROZCO                       *
//*                                                                    *
//**********************************************************************
//**GGGGGGGGGGG*********************************************************
//**********************************************************************
//*                                                                    *
//**********************************************************************
//* PROGRAMA: ZM4EGJ68                                                 *
//* FUNCION:  REPORTE VALORES DISPONIBLES DE VENTAS EN CORTO           *
//**********************************************************************
//PHL25P03 EXEC PGM=IKJEFT01
//PI601765 DD DUMMY
//ZMGJ68A1 DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMHLPE25,
//            DISP=SHR
//ZMGJ68R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL25T01),DISP=SHR
//*
