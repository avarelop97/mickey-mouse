//ZMULPZ28 PROC
//* * ******************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                      << T E S O R E R I A >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                  MODULO DE INTERNET                                *
//*                                                                    *
//*   PROCEDIM. :  SIVAXINP  ( PERMISOS INTERNET ) (OPC. 471)          *
//*                                                                    *
//*   OBJETIVO  :  PROCEDIMIENTO DE GENERACION DE REPORTE ESTADISTICO  *
//*                DE PERMISOS A CUENTAS DE BANCA PRIVADA PARA NAVEGAR *
//*                EN INTERNET                                         *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    :  CORRE A PETICION DEL USUARIO                  *
//*                                                                    *
//*   ELABORADO POR   : AXITY MEXICO                                   *
//*                                                                    *
//*   FECHA           : AGOSTO 2020                                    *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//**********************************************************************00010000
//*  PASO:  1     REPORTE DE PERMISOS DE NAVEGACION EN INTERNET PARA   *00030000
//*  PUL08P01     CUENTAS DE BANCA PRIVADA                             *00040000
//*                                                         ZM4EU001   *00020000
//**********************************************************************00060000
//PUL28P02 EXEC PGM=IKJEFT01
//PI601765 DD DUMMY
//VOB754A1 DD DUMMY
//*
//ZM4EU011 DD DSN=MXCP.ZM.TMP.CON.EBCM.S000.ZMULPP28,
//            DISP=SHR
//ZM4EU012 DD DSN=MXCP.ZM.FIX.CON.EBCM.S000.CTOINTE.ZMULPP28,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=133,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(6,3),RLSE)
//*
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD SYSOUT=X
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUL08T01),DISP=SHR
//*
//**********************************************************************
//* ICEGENER : ENVIA A CTL-D  REPORTE GENERADO EN EL PASO ANTERIOR
//* REPORTE  : REPORTE CONTRATOS POSICION PROPIA BANCO
//**********************************************************************
//PUL28P01 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.CON.EBCM.S000.CTOINTE.ZMULPP28,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                 F  I  N                                            *
//**********************************************************************
