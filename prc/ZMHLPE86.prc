//ZMHLPE86 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     << SOCIEDADES DE INV. >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  CBHLPD86                                            *
//*                                                                    *
//*   OBJETIVO  :  REALIZA TRANSFERENCIA DE ARCHIVO DE PRECIOS         *
//*                AFORE SOC.INV.                                      *
//*                                                                    *
//*                (TRANSFERENCIA DE SERVIDOR AL SIVA)                 *
//*                                                                    *
//*   CORRE ANTES DE  :  CBHLPD87                                      *
//*                                                                    *
//*   CORRE DESPUES DE:  SIVAXRNA                                      *
//*                                                                    *
//*   PERIODICIDAD    :  DIARIA                                        *
//*                                                                    *
//*   ELABORADO POR   : OSCAR URBANO FDZ.(AZERTIA).                    *
//*                                                                    *
//*   FECHA           : SEPTIEMBRE 2009.                               *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//**********************************************************************
//*                                                                    *00020000
//*  PASO:  1     REALIZA LA TRANSFERENCIA DEL ARCHIVO DE PRECIOS DE   *00030000
//*  PHL86P01     AFORES SOC. INV. DE SERVIDOR A SIVA.                 *00040000
//*                                                                    *00020000
//**********************************************************************
//PHL86P01 EXEC PGM=DMBATCH
//STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//DMPRINT   DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//NDMCMDS   DD SYSOUT=*
//SYSUDUMP  DD DUMMY
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZHL86T01),DISP=SHR
//*--------------------------------------------------------------------*
//*                 F I N   Z M H L P E 8 6                            *
//*--------------------------------------------------------------------*
