//ZMHLPD88 PROC
//*-------------------------------------------------------------------**
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  MERCADO DE DINERO >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  CBHLPD88  /  ZMHLPD88                               *
//*                                                                    *
//*   OBJETIVO  : GENERA LA CARGA DE CUOTAS EN BASE AL DIA ANTERIOR    *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    :  DIARIO                                        *
//*                                                                    *
//*   ELABORADO POR: FABRICA DE SOFTWARE DGCM.                         *
//*                                                                    *
//*   FECHA:  ENERO 2015                                               *
//*                                                                    *
//*-------------------------------------------------------------------**
//*                      LOG DE MODIFICACIONES                         *
//*-------------------------------------------------------------------**
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//*-------------------------------------------------------------------**
//*                                                                    *
//*--------------------------------------------------------------------*
//*                                                                    *
//*  PASO:  1     GENERA REPLICA DE CUOTAS DEL DIA ANTERIOR            *
//*  PHL88P01     PROGRAMA ZM4OJ088                                    *
//*                                                                    *
//*--------------------------------------------------------------------*
//*                                                                    *
//PHL88P01 EXEC PGM=IKJEFT01                                            00070000
//*                                                                     00090000
//SYSTSPRT DD SYSOUT=*                                                  00230000
//SYSPRINT DD SYSOUT=*                                                  00250000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSIN    DD DUMMY                                                     00310000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL88T01),DISP=SHR                   00300000
//*                                                                     00310000
//*--------------------------------------------------------------------*
//*                 FIN    ZMHLPD88                                    *
//*--------------------------------------------------------------------*
