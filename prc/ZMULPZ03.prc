//ZMULPZ03 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                         <<< CONTRATOS >>>                          *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMULPZ03                                            *
//*                                                                    *
//*   OBJETIVO  :  REPORTE DE CUENTAS CONEXAS  (OPCION: 489)           *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *
//*                                                                    *
//**********************************************************************
//*
//*********************************************************************
//*                      ZM4EU634
//*            REPORTE DE CUENTAS CONEXAS
//*********************************************************************
//PUL03P03 EXEC PGM=IKJEFT01
//*
//ZMU634A1 DD DSN=MXCP.ZM.TMP.CON.EMP.SUC.ZMULPE03,DISP=SHR
//*
//ZMU634R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUL03T01),DISP=SHR
//*
