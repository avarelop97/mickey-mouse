//ZMGLPZ01 PROC
//*
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                        <<< TESORERIA  >>>                          *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (SIVA)                  *
//*                                                                    *
//*   PROCEDIM. :  SIVAXCAC                                            *
//*                                                                    *
//*   OBJETIVO  :  GENERA REPORTE DEL CLIENTE CONSULTADO (OPCION 205)  *
//*                                                                    *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*                                                                    *
//*   PERIODICIDAD    :  EVENTUAL                                      *
//*                                                                    *
//*   ELABORADO POR: ASATECK.                                          *
//*                                                                    *
//*   FECHA:  JUNIO  2002                                              *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//**********************************************************************
//**********************************************************************
//*                                                                    *
//*  PASO:  1     EJECUTA PROGRAMA QUE GENRA REPORTE (OPC 205)         *
//*                                                          ZM4EG637  *
//**********************************************************************
//PGL01P01 EXEC PGM=IKJEFT01
//*
//ZMG637A1 DD DSN=MXCP.ZM.TMP.TES.EMP.SUC.ZMGLPE01,DISP=SHR
//*
//ZMG637R  DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=Z,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=Z
//SYSOUT   DD SYSOUT=Z
//SYSDBOUT DD SYSOUT=Z
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGL01T01),DISP=SHR
//*
//**********************************************************************
//*               F I N      Z M G L P Z 0 1                           *
//**********************************************************************
