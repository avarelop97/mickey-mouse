//ZMHLPZ06 PROC
//**********************************************************************00003000
//*                     C A S A   D E   B O L S A                      *00003000
//*                     =========================                      *00003000
//*                     <<< MERCADO DE CAPITALES >>>                   *00003000
//*                                                                    *00003000
//*   APLICACION:       SISTEMA INTEGRAL DE VALORES (S.I.V.A)          *00003000
//*                                                                    *00003000
//*   PROCEDIM. :       ZMHLPZ06                                       *00003000
//*                                                                    *00003000
//*   OBJETIVO  :       ASIGNACION AUTOMATICA                          *00003000
//*                                                                    *00003000
//*   CORRE ANTES DE  : NINGUNO                                        *00003000
//*                                                                    *00003000
//*   CORRE DESPUES DE: NINGUNO                                        *00003000
//*                                                                    *00003000
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *00003000
//*                                                                    *00003000
//*   ELABORO         : ERNESTO MANUEL CUAUTLE MARTINEZ                *00003000
//*                                                                    *00003000
//*                                                                    *00003000
//**********************************************************************00003000
//**                      LOG DE MODIFICACIONES                        *00003000
//**********************************************************************00003000
//**MODIF ³  FECHA   ³USUARIO³  PASO  ³DESCRIPCION                     *00003000
//**-------------------------------------------------------------------*00003000
//**      ³          ³       ³        ³                                *00003000
//**      ³          ³       ³        ³                                *00003000
//**********************************************************************00003000
//*                                                                    *00003000
//**********************************************************************
//*        -- ZM4DH506 --                                              *
//*        ASIGNACION AUTOMATICA                                       *
//**********************************************************************
//PHL06P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMH506A1 DD DSN=MXCP.ZM.WKF.MDC.EMP.SUC.ZMHLPE06,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL06T01),DISP=SHR
//*
