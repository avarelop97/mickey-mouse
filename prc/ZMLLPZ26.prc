//ZMLLPZ26 PROC
//**********************************************************************00003000
//*                     C A S A   D E   B O L S A                      *00003000
//*                     =========================                      *00003000
//*                     <<< MERCADO DE DINERO >>>                      *00003000
//*                                                                    *00003000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00003000
//*                                                                    *00003000
//*   PROCEDIM. :  ZMLLPZ26 CBLLPZ26                                   *00003000
//*                                                                    *00003000
//*   OBJETIVO  :  EJECUTAR LA CARGA DE LA DEMANDA E INVENTARIO PARA   *00003000
//*                LA ASIGNACIóN PREVIA DE MDD.                        *00003000
//*                                                                    *00003000
//*   CORRE ANTES DE  :  ASIGNACIóN PREVIA                             *00003000
//*                                                                    *00003000
//*   CORRE DESPUES DE:  SIVAXD71                                      *00003000
//*                                                                    *00003000
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *00003000
//*                                                                    *00003000
//**********************************************************************00003000
//**                      LOG DE MODIFICACIONES                        *00003000
//**********************************************************************00003000
//**********************************************************************00003000
//* MODIFICA       :  OSCAR URBANO F. (AZERTIA).                       *00003000
//* FECHA          :  NOVIEMBRE 2008.                                  *00003000
//**********************************************************************00003000
//*---------------------------------------------------------------------
//* OBJETIVO:   REALIZAR LA CARGA DE DEMANDA Y MDD A LAS TABLAS
//*           DEMASAU Y OFERTA PARA COMIENZO DE ASIGNACION    M D D
//*---------------------------------------------------------------------
//*---------------------------------------------------------------------
//* PROGRAMA:  ZM4DLN26.
//* FUNCION:   ACTUALIZA PRECIOS DE MDD EN TABLA DE PRECIOS
//*---------------------------------------------------------------------
//PLL26P06 EXEC PGM=IKJEFT01                                            00070000
//*
//ZMLN26A1 DD  DSN=MXCP.ZM.TMP.MDD.EMP.SUC.ZMLLPE26,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*                                                 00090000
//SYSPRINT DD  SYSOUT=*                                                 00100000
//SYSOUT   DD  SYSOUT=*                                                 00110000
//SYSDBOUT DD  SYSOUT=*                                                 00160000
//SYSABOUT DD  DUMMY                                                    00170000
//SYSUDUMP DD  DUMMY                                                    00180000
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL26T06),DISP=SHR                  00190006
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DLD71.
//* FUNCION:  PREPARAR CARGA DE LA DEMANDA E INVENTARIO PARA ASIGNACION
//*---------------------------------------------------------------------
//PLL26P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLD71PM DD  DSN=MXCP.ZM.TMP.MDD.EMP.SUC.ZMLLPE26,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL26T05),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DLD83.
//* FUNCION:  EMITIR REPORTE DE DEMANDAS DUPLICADAS.
//*---------------------------------------------------------------------
//PLL26P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLD83A1 DD  DSN=MXCP.ZM.TMP.MDD.EMP.SUC.ZMLLPE26,DISP=SHR
//*
//ZMLD83DR DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL26T04),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DLD77.
//* FUNCION:  REPORTE: DEMANDA NO CUBIERTA.
//*                    POSICION DE OFERTA.
//*---------------------------------------------------------------------
//PLL26P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLD77A1 DD  DSN=MXCP.ZM.TMP.MDD.EMP.SUC.ZMLLPE26,DISP=SHR
//*
//ZMLD77R1 DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//ZMLD77R3 DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL26T03),DISP=SHR
//*
//*---------------------------------------------------------------------
//*                  -- ZM4DLE11 --
//* FUNCION:  ACTUALIZA LA FINALIZACION DEL PROCESO DE LA CARGA DE
//*           LAS TABLAS (ACT EN "F" EL EVENTO PD6).                    KF.
//*           PARA DAR INICIO A LA ASIGNACION PREVIA DE MDD             KF.
//*---------------------------------------------------------------------
//PLL26P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLE11A1 DD  DSN=MXCP.ZM.TMP.MDD.EMP.SUC.ZMLLPE26,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL26T02),DISP=SHR
//*
