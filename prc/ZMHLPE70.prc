//ZMHLPE70 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<<   V A L O R E S   >>>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMHLPE70.                                           *
//*                                                                    *
//*   OBJETIVO  :  APAGAR EL EVENTO CUANDO TERMINA LA TRANSFERENCIA    *
//*                DEL ARCHIVO INDEVAL.                                *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    :  A SOLICITUD DE USUARIO (POR PANTALLA)         *
//*                                                                    *
//*   ELABORADO POR   :  SOFTTEK                                       *
//* *
//*   FECHA: SEPTIEMBRE 2004.                                          *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*MODXXX|0001-01-01|USUARIO|PASO    |DESCRIPCION DE LA MODIFICACION   *
//*      |          |       |        |                                 *
//**********************************************************************
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4EH016                                                *
//* FUNCION:  ACTUALIZA EVENTOS                                       *
//*-------------------------------------------------------------------*
//PHL70P01 EXEC PGM=IKJEFT01
//*
//ZME016A1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMHTPE70.OPC,
//            DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL70T01),DISP=SHR
//*
