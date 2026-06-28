//ZMHFPD11 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     << SISTEMA DE VALORES >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMHFPD11                                            *
//*                                                                    *
//*   OBJETIVO  :  REALIZA TRANSFERENCIA DE LOS ARCHIVOS PARA          *
//*                HECTOR LEON                                         *
//*                                                                    *
//*   MODIFICACION: REALIZA TRANSFERENCIA A SERVIDORES BLADE           *
//*                 CBNOCFS03\C_CB003                                  *
//*                                                                    *
//*   CORRE ANTES DE  :                                                *
//*                                                                    *
//*   CORRE DESPUES DE:                                                *
//*                                                                    *
//*   PERIODICIDAD    : DIARIO                                         *
//*                                                                    *
//*-------------------------------------------------------------------**
//*  PASO: 3      RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA  *
//*  PUI02P02     EN ARCHIVO SECUENCIAL.                    ZM3DG001   *
//*-------------------------------------------------------------------**
//PHF06P03 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','    ','     ','     ',)
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.ECO.E&EMP..ZMHFPD06,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*-------------------------------------------------------------------**
//*  PASO: 2      REALIZA LA TRANSFERENCIA DE LOS ARCHIVOS DE CONTAB   *
//*               MV4 Y VALUACION CUSTODIA  AL SERVIDOR BLADE.         *
//*  TRANSMITE :  &DSN1='\\CBNOCFS03\C_CB003\ZM\CUSTODIA\CMV4EDIT.TXT' *
//*               &DSN2='MXCP.ZM.FIX.ECO.INEDIT.ACECMV4'               *
//*-------------------------------------------------------------------**
//PHF06P02 EXEC PGM=DMBATCH,PARM=(YYSLYNN),COND=(4,LT)
//*
//STEPLIB   DD DISP=SHR,DSN=SYS3.CONNECT.TGT.LINKLIB
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.NETMAP
//DMPUBLIB  DD DISP=SHR,DSN=MBVP.ALTAMIRA.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.MSG
//DMPRINT   DD SYSOUT=*
//SYSDUMP   DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZHF11T02),DISP=SHR
//*
//*-------------------------------------------------------------------**
//*  PASO: 1      REALIZA LA TRANSFERENCIA DEL ARCHIVO DE VALUACION    *
//*               CUSTODIA INTERNACIONAL AL SERVIDOR BLADE.            *
//*  TRANSMITE :  &DSN1='\\CBNOCFS03\C_CB003\ZM\CUSTODIA\VCTDEDIT.TXT' *
//*               &DSN2='MXCP.ZM.FIX.ECO.INEDIT.VALUCTD'               *
//*-------------------------------------------------------------------**
//PHF06P01 EXEC PGM=DMBATCH,PARM=(YYSLYNN),COND=(4,LT)
//*
//STEPLIB   DD DISP=SHR,DSN=SYS3.CONNECT.TGT.LINKLIB
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.NETMAP
//DMPUBLIB  DD DISP=SHR,DSN=MBVP.ALTAMIRA.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.MSG
//DMPRINT   DD SYSOUT=*
//SYSDUMP   DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZHF11T01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                 F I N   ZMHFPD11                                   *
//*--------------------------------------------------------------------*
