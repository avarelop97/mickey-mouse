//ZMHTPD04 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<<   M . D I N E R O >>>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMHTPD04.                                           *
//*                                                                    *
//*   OBJETIVO  :  TRANSMITIR LOS ARCHIVOS DE CONCILIACION MDD DE      *
//*                HOST A SERVIDOR, CONCITIT, CONXISIN Y BUCVSMUV.
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  BCLLPC02                                      *
//*                                                                    *
//*   PERIODICIDAD    :  A SOLICITUD DE USUARIO.                       *
//*                                                                    *
//*   ELABORADO POR   :  GETRONICS /  J. JAIME FLORES ESTRADA          *
//*
//*   FECHA:  DICIEMBRE 2005.                                          *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*MUVCB |2007-06-21|IDCEX31|PHT04P04|  SE ENVIA BUC.VS.MUV PLANO      *
//**********************************************************************
//*-------------------------------------------------------------------*
//* PROGRAMA: CONCITIT DIRECTOS                                       *
//* FUNCION:  TRANSFERIR UN ARCHIVO DEL HOST AL SERVIDOR.             *
//*-------------------------------------------------------------------*
//PHT04P05 EXEC PGM=DMBATCH
//*
//STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//DMPRINT   DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//NDMCMDS   DD SYSOUT=*
//SYSUDUMP  DD DUMMY
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZHT04T05),DISP=SHR
//*
//*-------------------------------------------------------------------*
//* FUNCION:  TRANSFERIR BUCVSMUV.  PLANO                             *
//*-------------------------------------------------------------------*
//PHT04P04 EXEC PGM=DMBATCH,COND=(4,LT)
//*
//STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//DMPRINT   DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//NDMCMDS   DD SYSOUT=*
//SYSUDUMP  DD DUMMY
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZHT04T04),DISP=SHR
//*
//*-------------------------------------------------------------------*
//* PROGRAMA: BUCVSMUV.                                               *
//* FUNCION:  TRANSFERIR UN ARCHIVO DEL HOST AL SERVIDOR.             *
//*-------------------------------------------------------------------*
//PHT04P03 EXEC PGM=DMBATCH,COND=(4,LT)
//*
//STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//DMPRINT   DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//NDMCMDS   DD SYSOUT=*
//SYSUDUMP  DD DUMMY
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZHT04T03),DISP=SHR
//*
//*-------------------------------------------------------------------*
//* PROGRAMA: CONXISIN                                                *
//* FUNCION:  TRANSFERIR UN ARCHIVO DEL HOST AL SERVIDOR.             *
//*-------------------------------------------------------------------*
//PHT04P02 EXEC PGM=DMBATCH,COND=(4,LT)
//*
//STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//DMPRINT   DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//NDMCMDS   DD SYSOUT=*
//SYSUDUMP  DD DUMMY
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZHT04T02),DISP=SHR
//*
//*-------------------------------------------------------------------*
//* PROGRAMA: CONCITIT REPORTOS                                       *
//* FUNCION:  TRANSFERIR UN ARCHIVO DEL HOST AL SERVIDOR.             *
//*-------------------------------------------------------------------*
//PHT04P01 EXEC PGM=DMBATCH,COND=(4,LT)
//*
//STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//DMPRINT   DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//NDMCMDS   DD SYSOUT=*
//SYSUDUMP  DD DUMMY
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZHT04T01),DISP=SHR
//*
