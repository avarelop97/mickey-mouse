//ZMHFPD08 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                   << MODULO UNICO DE VALORES >>                    *
//*                                                                    *
//*   APLICACION:  MODULO UNICO DE VALORES ANTES (S.I.V.A)             *
//*                                                                    *
//*   PROCEDIM. :  ZMHFPD08                                            *
//*                                                                    *
//*   OBJETIVO  :  REALIZA TRANSFERENCIA DE LOS ARCHIVOS PARA          *
//*                HECTOR LEON                                         *
//*                                                                    *
//*   MODIFICACION: REALIZA TRANSFERENCIA A SERVIDORES BLADE           *
//*                 CBNOCFS03\C_CB003                                  *
//*                                                                    *
//*   CORRE ANTES DE  :                                                *
//*                                                                    *
//*   CORRE DESPUES DE: BCHFND04 GENERACION DE CONTABILIDAD MV3        *
//*                                                                    *
//*   PERIODICIDAD    : DIARIO                                         *
//*                                                                    *
//*-------------------------------------------------------------------**
//*-------------------------------------------------------------------**
//*  PASO: 3      REALIZA LA TRANSFERENCIA DEL ARCHIVO DE PRODUCTIVIDAD*
//*               MV3 AL SERVIDOR BLADE CBNOCFS03\C_CB003              *
//*                                                                    *
//*  TRANSMITE :  &DSN1='MXCP.ZM.FIX.ECO.INTFAZ.PRODEDIT'              *
//*               &DSN2='\\CBNOCFS03\C_CB003\ZM\CUSTODIA\PRODEDIT.TXT' *
//*-------------------------------------------------------------------**
//PHF08P03 EXEC PGM=DMBATCH,PARM=(YYSLYNN)
//*
//STEPLIB   DD DISP=SHR,DSN=SYS3.CONNECT.TGT.LINKLIB
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.NETMAP
//DMPUBLIB  DD DISP=SHR,DSN=MBVP.ALTAMIRA.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.MSG
//DMPRINT   DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//NDMCMDS   DD SYSOUT=*
//SYSUDUMP  DD DUMMY
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZHF08T03),DISP=SHR
//*
//*-------------------------------------------------------------------**
//*  PASO: 2      REALIZA LA TRANSFERENCIA DEL ARCHIVO DE CONTABILIDAD *
//*               MV3 AL SERVIDOR BLADE CBNOCFS03\C_CB003              *
//*                                                                    *
//*  TRANSMITE :  &DSN1='MXCP.ZM.FIX.ECO.INEDIT.ACECMV3'               *
//*               &DSN2='\\CBNOCFS03\C_CB003\ZM\CUSTODIA\CMV3EDIT.TXT' *
//*-------------------------------------------------------------------**
//PHF08P02 EXEC PGM=DMBATCH,PARM=(YYSLYNN),COND=(4,LT)
//*
//STEPLIB   DD DISP=SHR,DSN=SYS3.CONNECT.TGT.LINKLIB
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.NETMAP
//DMPUBLIB  DD DISP=SHR,DSN=MBVP.ALTAMIRA.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.MSG
//DMPRINT   DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//NDMCMDS   DD SYSOUT=*
//SYSUDUMP  DD DUMMY
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZHF08T01),DISP=SHR
//*
//*-------------------------------------------------------------------**
//*  PASO: 1      REALIZA LA TRANSFERENCIA DEL ARCHIVO DE CONTABILIDAD *
//*               MV3 AL SERVIDOR BLADE CBNOCFS03\C_CB003              *
//*                                                                    *
//*  TRANSMITE :  &DSN1='MXCP.ZM.FIX.ECO.INEDIT.VALMDD'                *
//*               &DSN2='\\CBNOCFS03\C_CB003\ZM\CUSTODIA\VMDDEDIT.TXT' *
//*-------------------------------------------------------------------**
//PHF08P01 EXEC PGM=DMBATCH,PARM=(YYSLYNN),COND=(4,LT)
//*
//STEPLIB   DD DISP=SHR,DSN=SYS3.CONNECT.TGT.LINKLIB
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.NETMAP
//DMPUBLIB  DD DISP=SHR,DSN=MBVP.ALTAMIRA.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.MSG
//DMPRINT   DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//NDMCMDS   DD SYSOUT=*
//SYSUDUMP  DD DUMMY
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZHF08T02),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                 F I N   ZMHFPD08                                   *
//*--------------------------------------------------------------------*
