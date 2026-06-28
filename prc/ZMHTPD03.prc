//ZMHTPD03 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<< CALIDAD DE DATOS  >>>                      *
//*                                                                    *
//*   APLICACION:  MODULO UNICO DE VALORES  (M.U.V.)                   *
//*                                                                    *
//*   PROCEDIM. :  ZMHTPD03.                                           *
//*                                                                    *
//*   OBJETIVO  :  TRANSMITIR LOS ARCHIVOS DE CALIDA DE DATOS A        *
//*                SERVIDOR.                                           *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  CBJCDP05                                      *
//*                                                                    *
//*   PERIODICIDAD    :  A SOLICITUD DE USUARIO.                       *
//*                                                                    *
//*   ELABORADO POR   :  GETRONICS /  ALFOSNO DAMIAN E.                *
//*
//*   FECHA:  JUNIO/2005.                                              *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//**********************************************************************
//*-------------------------------------------------------------------*
//* PROGRAMA: DMBATCH                                                 *
//* FUNCION:  TRANSFERIR ARCHIVO DE HOST AL SERVIDOR (TITULARES)      *
//*-------------------------------------------------------------------*
//PHT03P03 EXEC PGM=DMBATCH
//*
//STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//DMPRINT   DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//NDMCMDS   DD SYSOUT=*
//SYSUDUMP  DD DUMMY
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZHT03T03),DISP=SHR
//*
//*-------------------------------------------------------------------*
//* PROGRAMA: DMBATCH                                                 *
//* FUNCION:  TRANSFERIR UN ARCHIVO DE HOST A SERVIDOR (BENEFICIARIOS)*
//*-------------------------------------------------------------------*
//PHT03P02 EXEC PGM=DMBATCH,COND=(4,LT)
//*
//STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//DMPRINT   DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//NDMCMDS   DD SYSOUT=*
//SYSUDUMP  DD DUMMY
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZHT03T02),DISP=SHR
//*
//*-------------------------------------------------------------------*
//* PROGRAMA: DMBATCH                                                 *
//* FUNCION:  TRANSFERIR UN ARCHIVO DE HOST A SERVIDOR (COTITULARES)  *
//*-------------------------------------------------------------------*
//PHT03P01 EXEC PGM=DMBATCH,COND=(4,LT)
//*
//STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//DMPRINT   DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//NDMCMDS   DD SYSOUT=*
//SYSUDUMP  DD DUMMY
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZHT03T01),DISP=SHR
//*
