//ZMHLPE68 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<<   V A L O R E S   >>>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMHLPE68.                                           *
//*                                                                    *
//*   OBJETIVO  :  APAGAR EL EVENTO DE TRANSMISION DE ARCHIVO BANXICO. *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  CBHTNE62 (ZMHTPE62)                          *
//*                                                                    *
//*   PERIODICIDAD    :  A SOLICITUD DE USUARIO (POR PANTALLA)         *
//*                                                                    *
//*   ELABORADO POR   :  SOFTTEK                                       *
//* *
//*   FECHA: JUNIO 2004.                                               *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*MODXXX|0001-01-01|USUARIO|PASO    |DESCRIPCION DE LA MODIFICACION   *
//*      |          |       |        |                                 *
//*-------------------------------------------------------------------*
//* PROGRAMA: SORT                                                    *
//* FUNCION:  GENERA ARCHIVO BANXICO 274 A 242 .                      *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL68P03 EXEC PGM=ICEMAN
//*
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.E&EMP..S&SUC..ZMHLPE62.BANXI274,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMHLPE62.BANXICO,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=242,BLKSIZE=0)
//*SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL68T03),DISP=SHR                   00183716
//*                                                                     00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: ICEGENER                                                *
//* FUNCION:  GENERA ARCHIVO BANXICO  TMP A FIX                       *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL68P02 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD  DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMHLPE62.BANXICO,DISP=SHR
//SYSUT2   DD  DSN=MXCP.ZM.FIX.E&EMP..S&SUC..ZMHLPE62.BANXICO,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(20,10),RLSE),
//             DCB=(RECFM=FB,DSORG=PS,LRECL=242,BLKSIZE=0)
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSIN    DD  DUMMY
//*
//**********************************************************************
//* PROGRAMA: ZM4EH013                                                *
//* FUNCION:  ACTUALIZA EVENTOS                                       *
//*-------------------------------------------------------------------*
//PHL68P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZME013A1 DD DSN=MXCP.ZM.WKF.E&EMP..S&SUC..ZMHLPE62.BXICO.OPC,
//            DISP=SHR
//ZME013A2 DD DSN=MXCP.ZM.FIX.E&EMP..S&SUC..ZMHLPE62.BANXICO,
//            DISP=SHR
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL68T01),DISP=SHR
