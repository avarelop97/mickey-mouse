//ZMJTPD02 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     << SOCIEDADES DE INV. >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMJTPD02                                            *
//*                                                                    *
//*   OBJETIVO  :  REALIZA TRANSFERENCIA DE ARCHIVO DE PRECIOS DE      *
//*                RENTA VARIABLE A SIVA.                              *
//*                                                                    *
//*                (TRANSFERENCIA DE SERVIDOR AL SIVA)                 *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    :  DIARIA                                        *
//*                                                                    *
//*   ELABORADO POR   : ERNESTO MANUEL CUAUTLE MARTINEZ                *
//*                                                                    *
//*   FECHA           : 4 DE MARZO DE 2004                             *
//*                                                                    *
//*   ACTUALIZA       : NINGUNA TABLA                                  *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//*-------------------------------------------------------------------**
//*                                                                    *00020000
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA  *00030000
//*  PJT02P02     EN ARCHIVO SECUENCIAL.                               *00040000
//*                                                         ZM3DG001   *00020000
//*-------------------------------------------------------------------**
//PJT02P02 EXEC PGM=ZM3DG001,REGION=0M,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765  DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMJTPD02,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//*                                                                    *00020000
//*  PASO:  2     REALIZA LA TRANSFERENCIA DEL ARCHIVO INDEVAL DEL SER-*00030000
//*  PJT01P01     VIDOR AL SIVA.                                       *00040000
//*                                                                    *00020000
//**********************************************************************
//PJT02P01 EXEC PGM=DMBATCH,REGION=0M,PARM=(YYSLYNQ)
//*
//STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//DMPRINT   DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//NDMCMDS   DD SYSOUT=*
//SYSUDUMP  DD DUMMY
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZJT01T02),DISP=SHR
//*
//**********************************************************************00010000
//*                 F I N   Z M J T P D 0 2                            *00020000
//**********************************************************************00010000
