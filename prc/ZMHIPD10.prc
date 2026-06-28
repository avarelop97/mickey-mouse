//ZMHIPD10 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<<   V A L O R E S   >>>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMHIPD10.                                           *
//*                                                                    *
//*   OBJETIVO  :  ACTUALIZAR LAS TABLAS DE CAPAS DE LAS OPERACIONES   *
//*                QUE LIQUIDARON EL DIA ANTERIOR.                     *
//*                                                                    *
//*   CORRE ANTES DE  :                                                *
//*                                                                    *
//*   CORRE DESPUES DE:  CBHIND10 (ZMHIPD10)                           *
//*                                                                    *
//*   PERIODICIDAD    :  DIARIO                                        *
//*                                                                    *
//*   ELABORADO POR: SOFTTEK                                           *
//*                                                                    *
//*   FECHA:  OCTUBRE  2005.                                           *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//**********************************************************************
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4DG015                                                *
//* FUNCION: AFECTAR CAPAS DE OPERACIONES PENDIENTES QUE LIQUIDARON   *
//*          EL DIA ANTERIOR                                          *
//*-------------------------------------------------------------------*
//*-------------------------------------------------------------------*
//*          REPORTE CON LAS ACTUALIZACIONES REALIZADAS               *
//*-------------------------------------------------------------------*
//PHI10P01 EXEC PGM=IKJEFT01
//*
//ZM4DG0R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*-------------------------------------------------------------------*
//*      REPORTE QUE SE GENERA CUANDO EXISTEN INCIDENCIAS             *
//*-------------------------------------------------------------------*
//ZM4DG0R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI10T01),DISP=SHR
