//ZMJLPZ11 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  T E S O R E R I A >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   DISPARADOR:  CBJLPZ11                                            *
//*   PROCEDIM. :  ZMJLPZ11 (OPC. T60)                                 *
//*                                                                    *
//*   OBJETIVO  :   GENERA REPORTE DE EMISION T+1                      *
//*                 PRODUCCION TESORERIA GENERACION DE REPORTE DE      *
//*                 OPERACION T+1 (PTERT100).                          *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  SIVAXRT1                                      *
//*                                                                    *
//*   PERIODICIDAD    :  EVENTUAL                                      *
//*                                                                    *
//*   MULTIEMPRESA : ASATECK.                                          *
//*                                                                    *
//*   FECHA:  JUNIO  2002                                              *
//*                                                                    *
//**********************************************************************
//*--------------------------------------------------------------------
//* MODIFICA       :  OSCAR URBANO F. (AZERTIA).
//* FECHA          :  NOVIEMBRE 2008. CONVERSION DE SUBMITIDORES
//*-------------------------------------------------------------------*
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  2     GENERACION DEL REPORTE DE OPERACION T + 1.           *00030000
//*  PJL11P06                                                          *00040000
//*                                                         ZM4EGG86   *00020000
//**********************************************************************00060000
//PJL11P03 EXEC PGM=IKJEFT01
//*
//ZMGG86A1 DD DSN=MXCP.ZM.TMP.TES.EMP.SUC.ZMJLPE11,DISP=SHR
//*
//ZMGG86R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL11T01),DISP=SHR
//*
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  3     GRABAR LOS PARAMETROS RECIBIDOS EN LINEA EN LA PARAM *00030000
//*  PJL11P04     'T54' PARA PERMITIR CONTROLAR CONTENCION (-911) EN EL*00040000
//*                PROC Y RESUBMITIR Y ASI GENERAR REP.  EMISION T+1.  *00020000
//*                                                       ZM4DG001     *00020000
//**********************************************************************00060000
//PJL11P02 EXEC PGM=IKJEFT01,COND=(20,NE,PJL11P03)
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.EMP.SUC.ZMJLPE11,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL11T02),DISP=SHR
//*
//**********************************************************************00010000
//*                  F I N      Z M J L P Z 1 1                        *00020000
//**********************************************************************00060000
