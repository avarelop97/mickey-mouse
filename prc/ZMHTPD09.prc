//ZMHTPD09 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<  BANCA PATRIMONIAL  >>                      *
//*                                                                    *
//*   APLICACION:  M U V    BONY CUSTODIA INTERNACIONAL.               *
//*                                                                    *
//*   PROCEDIM. :  ZMHTPD09.                                           *
//*                                                                    *
//*   OBJETIVO  :  TRANSMITE ARCHIVO DE ASIGNACIONES O REASIGNACIONES  *
//*                DE OPERACIONES DE MERCADO DE DINERO AL E-GUARD.     *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  BCLLPC09                                      *
//*                                                                    *
//*   PERIODICIDAD    :  A SOLICITUD DE USUARIO.                       *
//*                                                                    *
//*   ELABORADO POR   :  A.J.S.       GETRONICS                        *
//*                                                                    *
//*   FECHA           :  JULIO 2007.                                   *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//**********************************************************************
//*-------------------------------------------------------------------*
//* PROGRAMA: ASIGNACION.                                             *
//* FUNCION:  TRANSFERIR UN ARCHIVO DEL HOST AL SERVIDOR.             *
//*-------------------------------------------------------------------*
//PHT09P01 EXEC PGM=DMBATCH
//*
//STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//DMPRINT   DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//NDMCMDS   DD SYSOUT=*
//SYSUDUMP  DD DUMMY
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZHT09T01),DISP=SHR
//*
//**********************************************************************
//*                      F I N   Z M H T P D 0 9                       *
//**********************************************************************
