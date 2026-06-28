//ZMHTBZ70 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<<   V A L O R E S   >>>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMHTBZ70.                                           *
//*                                                                    *
//*   OBJETIVO  :  TRANSMITIR EL ARCHIVO DEL INDEVAL DEL SERVIDOR      *
//*                SBBV04 AL HOST, PREPARARLO PARA LA CONCILIACION     *
//*                 VS. MUV.                                           *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO.                                      *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO.                                      *
//*                                                                    *
//*   PERIODICIDAD    :  A SOLICITUD DE USUARIO (POR PANTALLA)         *
//*                                                                    *
//*   ELABORADO POR: SOFTTEK                                           *
//*                                                                    *
//*   FECHA:  SEPTIEMBRE DE 2004.                                      *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*MODXXX|0001-01-01|USUARIO|PASO    |DESCRIPCION DE LA MODIFICACION   *
//*      |          |       |        |                                 *
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4EH017                                                *
//* FUNCION:  ARMAR PARAMETROS DE TRANSFERENCIA DE ARCHIVO            *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHT70P03 EXEC PGM=IKJEFT01
//*
//ZM4EH1A1 DD DSN=MXCP.ZM.TMP.EBCM.ZMHTPE70.OPC,
//            DISP=SHR
//ZM4EH1S1 DD DSN=MXCP.ZM.FIX.EBCM.ZMHTPE70.TRANSFER,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=80,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHT70T01),DISP=SHR
//*-------------------------------------------------------------------*
//* PROGRAMA: DMBATCH                                                 *
//* FUNCION:  TRANSEFERIR ARCHIVO INDEVAL DEL SERVIDOR DE PC AL HOST  *
//*-------------------------------------------------------------------*
//PHT70P02 EXEC PGM=DMBATCH,COND=(4,LT)
//*
//STEPLIB   DD DISP=SHR,DSN=SYS3.CONNECT.TGT.LINKLIB
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//DMPRINT   DD SYSOUT=*
//SYSDUMP   DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//SYSUDUMP  DD DUMMY
//SYSIN     DD DSN=MXCP.ZM.FIX.EBCM.ZMHTPE70.TRANSFER,
//             DISP=SHR
//*
