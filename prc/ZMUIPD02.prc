//ZMUIPD02 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                  << MODULO UNICO  DE VALORES >>                    *
//*                                                                    *
//*   APLICACION:  MODULO UNICO DE VALORES (MUV) ANTES (SIVA)          *
//*                                                                    *
//*   PROCEDIM. :  ZMUIPD02                                            *
//*                                                                    *
//*   OBJETIVO  :  REALIZA TRANSFERENCIA DE LOS ARCHIVOS PARA          *
//*                HECTOR LEON AL SERVIDOR BLADE CBNOCFS03\C_CB003     *
//*                (TRANSFERENCIA DEL MUV  AL SERVIDOR)                *
//*                                                                    *
//*   MODIFICACION: REALIZA TRANSMISION A SERVIDOR BLADE:              *
//*                 CBNOCFS03\C_CB003                                  *
//*                                                                    *
//*   CORRE ANTES DE  :                                                *
//*                                                                    *
//*   CORRE DESPUES DE: CBUIND01                                       *
//*                                                                    *
//*   PERIODICIDAD    : DIARIO                                         *
//*                                                                    *
//*   ELABORADO POR: MARCIAL ROSALES (GRUPO CII).                      *
//*                                                                    *
//*   FECHA:  MARZO DEL 2005.                                          *
//*                                                                    *
//*   ACTUALIZA : NINGUNA TABLA                                        *
//**********************************************************************
//*  PASO:  3     RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA  *
//*  PUI02P03     EN ARCHIVO SECUENCIAL.                               *
//*                                                         ZM3DG001   *
//*-------------------------------------------------------------------**
//PUI02P03 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','    ','     ','     ',)
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.ECO.E&EMP..ZMUIPD02,
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
//*  PASO: 2  REALIZA LA TRANSFERENCIA DE LA INTERFAZ CONTABLE MV1     *
//*           AL SERVIDOR BLADE.                                       *
//*           &DSN1='MXCP.ZM.FIX.ECO.INEDIT.ACECMV1'                   *
//*           &DSN2='\\CBNOCFS03\C_CB003\ZM\CUSTODIA\CMV1EDIT.TXT'     *
//*-------------------------------------------------------------------**
//PUI02P02 EXEC PGM=DMBATCH,PARM=(YYSLYNN),COND=(4,LT)
//*
//STEPLIB   DD DISP=SHR,DSN=SYS3.CONNECT.TGT.LINKLIB
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.NETMAP
//DMPUBLIB  DD DISP=SHR,DSN=MBVP.ALTAMIRA.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.MSG
//DMPRINT   DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//NDMCMDS   DD SYSOUT=*
//SYSUDUMP  DD DUMMY
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZUT02T01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                 F I N   Z M U I P D 0 2                            *
//*--------------------------------------------------------------------*
