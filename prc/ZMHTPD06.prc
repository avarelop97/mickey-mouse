//ZMHTPD06 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<  BANCA PATRIMONIAL  >>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMHTPD06.                                           *
//*                                                                    *
//*   OBJETIVO  :  TRANSMITE ARCHIVO DE CONCILIACION DE MONTOS         *
//*                BUC VS. MUV (PARA LA CONSULTA DE REPORTOS)          *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  BCLLPC06                                      *
//*                                                                    *
//*   PERIODICIDAD    :  A SOLICITUD DE USUARIO.                       *
//*                                                                    *
//*   ELABORADO POR   :  AZERTIA   /  J. JAIME FLORES ESTRADA          *
//*                                                                    *
//*   FECHA:  MARZO 2007.                                              *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//**********************************************************************
//*-------------------------------------------------------------------*
//* PROGRAMA: REPOR743.                                               *
//* FUNCION:  TRANSFERIR UN ARCHIVO DEL HOST AL SERVIDOR.             *
//*-------------------------------------------------------------------*
//PHT06P01 EXEC PGM=DMBATCH
//*
//STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//DMPRINT   DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//NDMCMDS   DD SYSOUT=*
//SYSUDUMP  DD DUMMY
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZHT06T01),DISP=SHR
//*
//**********************************************************************
//*                      F I N   Z M H T P D 0 6                       *
//**********************************************************************
