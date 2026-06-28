//ZMJCPZ01 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  T E S O R E R I A >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*                                                                    *
//*   DISPARADOR:  SIVAXMNC (OPC. 603ZREP)                             *
//*   PROCEDIM. :  ZMJCPZ01                                            *
//*                                                                    *
//*   OBJETIVO  :   REPORTE DE MOVIMIENTOS NO CONFIRMADOS AL           *
//*                 MOMENTO DE CIERRE DE TESORERIA                     *
//*                                                                    *
//*   CORRE ANTES DE  :  CIERRE DE SIVAERIA OPCIONALMENTE              *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    :  DIARIO   (A SOLICITUD DEL USUARIO)            *
//*                                                                    *
//**********************************************************************
//*
//**********************************************************************
//*                         -- ZM4EJ792 --                             *
//* OBJETIVO:     REPORTE DE MOVIMIENTOS NO CONFIRMADOS                *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PJC01P02 EXEC PGM=IKJEFT01
//*
//ZMJ792A1 DD DSN=MXCP.ZM.TMP.TES.EMP.ZMJCPD01,DISP=SHR
//*
//ZMJ792R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJC01T01),DISP=SHR
//*
//**********************************************************************
//*        TERMINA PROCESO ZMJCPD01 SIVA MULTIEMPRESA                  *
//**********************************************************************
