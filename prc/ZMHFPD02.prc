//ZMHFPD02 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     << SISTEMA DE VALORES >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMHFPD02                                            *
//*                                                                    *
//*   OBJETIVO  :  REALIZA TRANSFERENCIA DE LOS ARCHIVOS DE CONTAB     *
//*                PARA HECTOR LEON AL SERVIDOR CBNOCFS03\C_CB003\     *
//*                (TRANSFERENCIA DEL SIVA AL SERVIDOR)                *
//*                                                                    *
//*   MODIFICACION: REALIZA TRANSFERENCIA A SERVIDOR BLADE             *
//*   OCTUBRE 2005.   GETRONICS                                        *
//*                                                                    *
//*   CORRE ANTES DE  :                                                *
//*                                                                    *
//*   CORRE DESPUES DE: CBHFPD01                                       *
//*                                                                    *
//*   PERIODICIDAD    : DIARIO                                         *
//*                                                                    *
//*   ELABORADO POR: MARCIAL ROSALES RUIZ (GCII)                       *
//*                                                                    *
//*   FECHA:  FEBRERO DE 2005.                                         *
//*                                                                    *
//*   ACTUALIZA : NINGUNA TABLA                                        *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//**********************************************************************
//*  PASO:  3     RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA  *
//*               EN ARCHIVO SECUENCIAL.                               *
//*                                                         ZM3DG001   *
//*-------------------------------------------------------------------**
//PHF02P03 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','    ','     ','     ',)
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.SIE.E&EMP..ZMHFPD02,
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
//*--------------------------------------------------------------------*
//*  PASO: 2      REALIZA LA TRANSFERENCIA DE LOS ARCHIVOS ESTADISTICOS*
//*               AL SERVIDOR BLADE CBNOCFS03\C_CB003\                 *
//*--------------------------------------------------------------------*
//PHF02P02 EXEC PGM=DMBATCH,PARM=(YYSLYNN),COND=(4,LT)
//*
//STEPLIB   DD DISP=SHR,DSN=SYS3.CONNECT.TGT.LINKLIB
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.NETMAP
//DMPUBLIB  DD DISP=SHR,DSN=MBVP.ALTAMIRA.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.MSG
//DMPRINT   DD SYSOUT=*
//SYSDUMP   DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZHF02T02),DISP=SHR
//*
//*-------------------------------------------------------------------**
//*  PASO: 1      REALIZA LA TRANSFERENCIA DE LOS ARCHIVOS ESTADISTICOS*
//*               AL SERVIDOR BLADE CBNOCFS03\C_CB003\                 *
//*-------------------------------------------------------------------**
//PHF02P01 EXEC PGM=DMBATCH,PARM=(YYSLYNN),COND=(4,LT)
//*
//STEPLIB   DD DISP=SHR,DSN=SYS3.CONNECT.TGT.LINKLIB
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.NETMAP
//DMPUBLIB  DD DISP=SHR,DSN=MBVP.ALTAMIRA.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.MSG
//DMPRINT   DD SYSOUT=*
//SYSDUMP   DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZHF02T01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                 F I N   Z M H F P D 0 2                            *
//*--------------------------------------------------------------------*
