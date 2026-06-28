//ZMLLPZ28 PROC                                                         00001000
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  MERCADO DE DINERO >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMLLPZ28 CBLLPZ28                                   *
//*                                                                    *
//*   OBJETIVO  :  GENERA REPORTE DE ASIGNACION AUTOMATICA             *
//*                DEMANDA NO CUBIERTA.                                *
//*                                                                    *
//*   CORRE ANTES DE  : NINGUNO                                        *
//*                                                                    *
//*   CORRE DESPUES DE: SIVAXD77                                       *
//*                                                                    *
//*   PERIODICIDAD    :  CORRE A PETICION DEL USUARIO.                 *
//*                                                                    *
//*   ELABORADO POR: ASATECK.                                          *
//*                                                                    *
//*   FECHA:  JULIO  2002.                                             *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//* MODIFICA       :  OSCAR URBANO F. (AZERTIA).                       *
//* FECHA          :  NOVIEMBRE 2008.                                  *
//**********************************************************************
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  2     GENERA EL REPORTE DE ASIGNACION AUTOMATICA "DEMANDA  *00030000
//*  PLL28P02     NO CUBIERTA" Y "POSICICION DE OFERTA" NO AFECTA      *00040000
//*               TABLAS.                                   ZM4DLD77   *00020000
//**********************************************************************00060000
//PLL28P02 EXEC PGM=IKJEFT01                                            00060000
//*
//ZMLD77A1 DD  DSN=MXCP.ZM.TMP.MDC.EMP.SUC.ZMLLPE28,DISP=SHR
//*
//ZMLD77R1 DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*                                                                     00240000
//ZMLD77R3 DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*                                                                     00300000
//SYSTSPRT DD  SYSOUT=*                                                 00110000
//SYSPRINT DD  SYSOUT=*                                                 00120000
//SYSOUT   DD  SYSOUT=*                                                 00130000
//SYSDBOUT DD  SYSOUT=*                                                 00140000
//SYSABOUT DD  DUMMY                                                    00150000
//SYSUDUMP DD  DUMMY                                                    00160000
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL28T02),DISP=SHR                  00170035
//*                                                                     00180000
//**********************************************************************00060000
//*                   F I N    Z M L L P Z 2 8                         *00020000
//**********************************************************************00060000
