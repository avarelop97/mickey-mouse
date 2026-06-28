//ZMLTPZ02 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<<   V A L O R E S   >>>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMLTPZ02.                                           *
//*                                                                    *
//*   OBJETIVO  :  REALIZA TRANSFERENCIA DEL ARCHIVO  DE DEMANDAS CB   *
//*                AL SERVIDOR  PLANAS1F1                              *
//*                                                                    *
//*   OPCION LINEA     = 37, TRANSACCION = ZZ44, PREFIJO = SIVAXQZ2    *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    :  A SOLICITUD DE USUARIO (POR OPC. 37 )         *
//*                                                                    *
//*   ELABORADO POR: GETRONICS S.A DE C.V.                             *
//*                                                                    *
//*   FECHA:  JULIO 2009                                               *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*MODXXX|0001-01-01|USUARIO|PASO    |DESCRIPCION DE LA MODIFICACION   *
//*      |          |       |        |                                 *
//*-------------------------------------------------------------------*
//* PROGRAMA: DMBATCH                                                 *
//* FUNCION:  TRANSEFERIR ARCHIVO DEMANDAS CB                         *
//*-------------------------------------------------------------------*
//PLT02T01 EXEC PGM=DMBATCH,COND=(4,LT)
//*
//STEPLIB   DD DISP=SHR,DSN=SYS3.CONNECT.TGT.LINKLIB
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//DMPRINT   DD SYSOUT=*
//SYSDUMP   DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//SYSUDUMP  DD DUMMY
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZLT02T01),DISP=SHR
//*
