//ZMHIPM01 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<<   V A L O R E S   >>>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMHIPM01.                                           *
//*                                                                    *
//*   OBJETIVO  :  DEPURAR EMISCAP Y PARAM BX3.                        *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  PBDDEM01                                      *
//*                                                                    *
//*   PERIODICIDAD    :  MENSUAL                                       *
//*                                                                    *
//*   ELABORADO POR: SOFTTEK                                           *
//*                                                                    *
//*   FECHA: JUNIO  2004.                                              *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//* ACV  |          |       |        |                              .  *
//**********************************************************************
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4MH001                                                *
//* FUNCION:  DEPURA LAS EMISORAS VENCIDAS 3 MESES ATRAS DE EMISCAP.  *
//*-------------------------------------------------------------------*
//PHI01P02 EXEC PGM=IKJEFT01
//PI601765 DD DUMMY
//ZM4MH0A1 DD DSN=MXCP.ZM.FIX.E&EMP..S&SUC..ZM4MH001.EMISCAP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=100,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHM01T02),DISP=SHR
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4MH002                                                *
//* FUNCION:  DEPURA PARAM BX3 DE LAS EMISORAS QUE YA NO EXISTAN EN   *
//*           EMISCAP.                                                *
//*-------------------------------------------------------------------*
//PHI01P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZM4MH0A1 DD DSN=MXCP.ZM.FIX.E&EMP..S&SUC..ZM4MH001.PARBX3,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=100,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHM01T01),DISP=SHR
//*
