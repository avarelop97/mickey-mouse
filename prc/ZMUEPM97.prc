//ZMUEPM97 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                 <<  ESTADOS DE CUENTA MENSUAL >>                   *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  CBUENM97 (SUBMITIDOR)                            *
//*                   ZMUEPM97 (PROCEDIMIENTO)                         *
//*                                                                    *
//* OBJETIVO       :  TRANSFIERE A SERVIDOR LOS ARCHIVOS GENERADOS     *
//*                   MEDIANTE EL JCL CBUENM98 DE LA CADENA MENSUAL    *
//*                   DE ESTADOS DE CUENTA DE BANCA PATRIMONIAL        *
//*                                                                    *
//*                   (TRANSFERENCIA DE MUV  A SERVIDOR )              *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  NINGUNO                                          *
//*                                                                    *
//* DESPUES DE     :  CBUENM98                                         *
//*                                                                    *
//* PERIODICIDAD   :  MENSUAL                                          *
//*                                                                    *
//**********************************************************************
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//**********************************************************************
//*
//**********************************************************************
//*                        == DMBATCH  ==                              *
//* OBJETIVO :   TRANSFERENCIA DEL ARCHIVOS HOST A SERVIDOR            *
//**********************************************************************
//PUE97P01 EXEC PGM=DMBATCH,PARM=(YYSLYNN),COND=(4,LT)
//*
//STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//DMPRINT   DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//NDMCMDS   DD SYSOUT=*
//SYSUDUMP  DD DUMMY
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZUE97T01),DISP=SHR
//*
//**********************************************************************
//*                 F I N   Z M U E P M 9 7                            *
//**********************************************************************
