//ZMSTPD03 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     << SISTEMAS ESTDISTCOS >>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMSTPD03                                            *
//*                                                                    *
//*   OBJETIVO  :  REALIZA TRANSFERENCIA DE ARCHIVO DE MONITOR DE      *
//*                SIASTMNG.                                           *
//*                                                                    *
//*                (TRANSFERENCIA DE SERVIDOR AL SIVA)                 *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  PTEPED07                                      *
//*                                                                    *
//*   PERIODICIDAD    :  DIARIA                                        *
//*                                                                    *
//*   ELABORADO POR   : J LEONARDO MERCADO AZPITARTE (ROJO CONSULTING) *
//*                                                                    *
//*   FECHA           : 10 DE MAYO DEL 2004                            *
//*                                                                    *
//*   ACTUALIZA       : NINGUNA TABLA                                  *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//**********************************************************************
//**********************************************************************
//*                                                                    *00020000
//*  PASO:  1     REALIZA LA TRANSFERENCIA DEL ARCHIVO MONITOR DE SIVA *00030000
//*  PST03P01     AL SERVIDOR.                                         *00040000
//*                                                                    *00020000
//**********************************************************************
//PST03P01 EXEC PGM=DMBATCH,REGION=0M,PARM=(YYSLYNN)
//*
//STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//DMPRINT   DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//NDMCMDS   DD SYSOUT=*
//SYSUDUMP  DD DUMMY
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZST03T01),DISP=SHR
//*
//**********************************************************************00010000
//*                 F I N   Z M J T P D 0 3                            *00020000
//**********************************************************************00010000
