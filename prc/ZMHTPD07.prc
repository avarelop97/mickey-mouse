//ZMHTPD07 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<<     CAPITALES     >>>                      *
//*                                                                    *
//*   APLICACION:  MODULO UNICO DE VALORES  (M.U.V.)                   *
//*                                                                    *
//*   PROCEDIM. :  ZMHTPD07.                                           *
//*                                                                    *
//*   OBJETIVO  :  TRANSMITIR EL ARCHIVO SUMARIO DE LA ASIGNACION Y    *
//*                PRECIO PROMEDIO (SILOX) AL SERVIDOR BLADE.          *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  CBHCND06                                      *
//*                                                                    *
//*   PERIODICIDAD    :  DIARIO.                                       *
//*                                                                    *
//*   ELABORADO POR   :  GETRONICS /  ALFOSNO DAMIAN E.                *
//*                                                                    *
//*   FECHA:  FEBRERO/2006.                                            *
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
//* FUNCION:  TRANSFERIR ARCHIVO DE HOST  SERVIDOR BLADE               *
//*--------------------------------------------------------------------*
//PHT07P01 EXEC PGM=DMBATCH,PARM=(YYSLYNN)
//*
//STEPLIB   DD DISP=SHR,DSN=SYS3.CONNECT.TGT.LINKLIB
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.NETMAP
//DMPUBLIB  DD DISP=SHR,DSN=MBVP.ALTAMIRA.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.MSG
//DMPRINT   DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//NDMCMDS   DD SYSOUT=*
//SYSUDUMP  DD DUMMY
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZHT07T01),DISP=SHR
//*
