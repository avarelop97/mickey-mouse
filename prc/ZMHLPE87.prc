//ZMHLPE87 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     << SOCIEDADES DE INV. >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMHLPE87                                            *
//*                                                                    *
//*   OBJETIVO  :  CARGA DE PRECIOS DE AFORE DE SOCIEDADES DE          *
//*                INVERSION Y TRANSFIERE ARCHIVO DE ERROR.            *
//*                (TRANSFERENCIA DE SIVA A SERVIDOR SBBV04).          *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  CBHLPD86                                      *
//*                                                                    *
//*   PERIODICIDAD    :  DIARIA                                        *
//*                                                                    *
//*   ELABORADO POR   : OSCAR URBANO F.(AZERTIA).                      *
//*                                                                    *
//*   FECHA           : SEPTIEMBRE 2009.                               *
//*                                                                    *
//*   ACTUALIZA       : TABLAS ZMDT618, ZMDT644                        *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*********************************************************************
//*                                                                   *
//*  PASO:  2    COPIA ARCHIVO DE PRECIOS DE SOCIEDADES DE INVERSION  *
//*              DELIMITA LA ESTRUCUTURA.                             *
//*  SECUENCIA: 2                                                     *
//*                                                                   *
//*********************************************************************
//PHL86P02 EXEC PGM=ICEGENER
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//SYSUT1   DD DSN=MXCP.ZM.FIX.ECBP.SZPR.PSIRF.ZMHLPE86,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.ECBP.SZPR.PSIRF,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=196,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)
//*
//*********************************************************************
//*                                                                   *
//*  PASO:  1    EJECUTA PROGRAMA QUE CARGA PRECIOS PARA SOC. INV.    *
//*                                                                   *
//*  SECUENCIA: 1   EN TABLA ZMDT618                   PGM.(ZM4DJ812) *
//*                                                                   *
//*********************************************************************
//PHL86P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJ812SI DD DSN=MXCP.ZM.FIX.ECBP.SZPR.PSIRF,DISP=SHR
//ZMJ812A3 DD DSN=MXCP.ZM.FIX.ECBP.SZPR.ZMHLPE85,DISP=SHR
//ZMERROR  DD DSN=MXCP.ZM.FIX.ECBP.SZPR.ZMHLPE87.ERROR,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=196,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL87T01),DISP=SHR
//*
//**********************************************************************
//*                                                                    *00020000
//*  PASO:  0     REALIZA LA TRANSFERENCIA DEL ARCHIVO DE ERROR DE     *00030000
//*  PHL86P00     PRECIOS AL SERVIDOR SBBV04.                          *00040000
//*                                                                    *00020000
//**********************************************************************
//PHL87P00 EXEC PGM=DMBATCH,COND=(4,LT)
//*
//STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//DMPRINT   DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//NDMCMDS   DD SYSOUT=*
//SYSUDUMP  DD DUMMY
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZHL87T00),DISP=SHR
//*
//**********************************************************************00010000
//*                 F I N   Z M J T P D 3 3                            *00020000
//**********************************************************************00010000
