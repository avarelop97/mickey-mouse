//ZMHTPD10 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<<      AJENOS       >>>                      *
//*                                                                    *
//*   APLICACION:  MODULO UNICO DE VALORES  (M.U.V.)                   *
//*                                                                    *
//*   PROCEDIM. :  ZMHTPD10.                                           *
//*                                                                    *
//*   OBJETIVO  :  TRANSMITIR EL ARCHIVO DE POSICION DE PLAZOS A       *
//*                SERVIDOR.                                           *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  BCJICD10                                      *
//*                                                                    *
//*   PERIODICIDAD    :  DIARIO.                                       *
//*                                                                    *
//*   ELABORADO POR   :  GETRONICS /  ALFOSNO DAMIAN E.                *
//*
//*   FECHA:  ENERO/2006.                                              *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//**********************************************************************
//*--------------------------------------------------------------------*
//* PROGRAMA: DMBATCH                                                  *
//* FUNCION:  TRANSFERIR ARCHIVO DE HOST AL SERVIDOR                   *
//*--------------------------------------------------------------------*
//PHT10P01 EXEC PGM=DMBATCH
//*
//STEPLIB   DD DISP=SHR,DSN=SYS3.CONNECT.TGT.LINKLIB
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.NETMAP
//DMPUBLIB  DD DISP=SHR,DSN=MBVP.ALTAMIRA.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.MSG
//DMPRINT   DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//NDMCMDS   DD SYSOUT=*
//SYSUDUMP  DD DUMMY
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZHT10T01),DISP=SHR
//*
