//ZMHTPD08 PROC
//*====================================================================*
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<<   V A L O R E S   >>>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :                                                      *
//*                                                                    *
//*   OBJETIVO  :                                                      *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    :  A SOLICITUD DE USUARIO (POR PANTALLA)         *
//*                                                                    *
//*   ELABORADO POR:                                                   *
//*                                                                    *
//*   FECHA:  JUNIO  2002                                              *
//*                                                                    *
//*====================================================================*
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*-------------------------------------------------------------------*
//* PROGRAMA: CTAGLOBO.                                               *
//* FUNCION:  TRANSFERIR UN ARCHIVO DEL HOST AL SERVIDOR.             *
//*-------------------------------------------------------------------*
//*PHT08P01 EXEC PGM=DMBATCH,COND=(4,LT)
//**
//*STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR
//*DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//*DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//*DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//*DMPRINT   DD SYSOUT=*
//*SYSPRINT  DD SYSOUT=*
//*NDMCMDS   DD SYSOUT=*
//*SYSUDUMP  DD DUMMY
//*SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZHT08T01),DISP=SHR
//*
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM3DG001                                                *
//* FUNCION:  RECIBE LOS PARAMETROS ENVIADOS POR EL SUBMITIDOR        *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL01P17 EXEC PGM=ZM3DG001,COND=(4,LT),
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765 DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..OPCCN0,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=96,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4MJ179                                                *
//* FUNCION:  ACTUALIZA OPERATE, OPERASI, ZMDT633                     *
//*-------------------------------------------------------------------*
//PHL01P16 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM4MJ179 DD  DSN=MXCP.ZM.FIX.REPOABON.DTCART01,
//             DISP=(NEW,CATLG,DELETE),
//             DCB=(DSORG=PS,RECFM=FB,LRECL=115,BLKSIZE=0),
//             UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL01T00),DISP=SHR
//*
//**********************************************************************
//*                      F I N   Z M H T P D 0 8                       *
//**********************************************************************
