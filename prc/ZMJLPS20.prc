//ZMJLPS20 PROC EMP=,SUC=,INT1=,INT2=
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                 <<  SOCIEDADES DE INVERSION   >>                   *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  SIVAXSI3 (SUBMITIDOR)                            *
//*                   ZMJLPS20 (PROCEDIMIENTO)                         *
//*                   OPCION SIVA : 631 OPCION 1 .- CASA DE BOLSA      *
//*                                                                    *
//* OBJETIVO       :  GENERA Y TRANSFIERE A SERVIDOR EL ARCHIVO DEL    *
//*                   ANEXO 3 DE SOCIEDADES DE INVERSION ASI COMO EL   *
//*                   REPORTE PARA EXCEL DE CASA DE BOLSA (SIVA)       *
//*                                                                    *
//*                   (TRANSFERENCIA DE SIVA A SERVIDOR )              *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  NINGUNO                                          *
//*                                                                    *
//* DESPUES DE     :  NINGUNO                                          *
//*                                                                    *
//* PERIODICIDAD   :  A PETICION DEL USUARIO                           *
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
//* PROGRAMA: ZM3DG001                                                 *
//* FUNCION:  RECIBE LOS PARAMETROS ENVIADOS POR EL SUBMITIDOR         *
//* NO ACTUALIZA TABLAS.                                               *
//**********************************************************************
//PJL20P03 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//ZMG001A1 DD  DSN=MXCP.ZM.TMP.ECBP.ZMJLPS20,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(2,1),RLSE),
//             DCB=(RECFM=FB,DSORG=PS,LRECL=96,BLKSIZE=0)
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSUDUMP DD  DUMMY
//*
//**********************************************************************
//* PROGRAMA: ZM4DJ129                                    (SIVA)       *
//* FUNCION:  GEN. ARCHIVO DEL ANEXO 3 CON INFORMACION DE CASA DE BOLSA*
//**********************************************************************
//PJL20P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMG001A1 DD  DSN=MXCP.ZM.TMP.ECBP.ZMJLPS20,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  DUMMY
//SYSABEND DD  DUMMY
//SYSDBOUT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//PRINT    DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//*
//ZMJ129A1 DD  DSN=MXCP.ZM.FIX.ECBP.ANEXO.SIVA1,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(20,10),RLSE),
//             DCB=(RECFM=FB,LRECL=400,BLKSIZE=0)
//*
//ZMJ129R1 DD  DSN=MXCP.ZM.FIX.ECBP.ANEXO.SIVA2,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(20,10),RLSE),
//             DCB=(RECFM=FB,LRECL=462,BLKSIZE=0)
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZSF28T04),DISP=SHR
//*
//**********************************************************************
//*                        == DMBATCH  ==                              *
//* OBJETIVO :   TRANSFERENCIA DEL ARCHIVOS HOST A SERVIDOR            *
//**********************************************************************
//PJL20P01 EXEC PGM=DMBATCH,PARM=(YYSLYNQ),COND=(4,LT)
//*
//STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//DMPRINT   DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//NDMCMDS   DD SYSOUT=*
//SYSUDUMP  DD DUMMY
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZJT20T01),DISP=SHR
//*
//**********************************************************************
//*                 F I N   Z M J L P S 2 0                            *
//**********************************************************************
