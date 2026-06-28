//ZMHLPZ48 PROC
//*--------------------------------------------------------------------*
//*                                                                    *
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<  MERCADO DE VALORES >>                      *
//*                                                                    *
//*   APLICACION       : SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *
//*                                                                    *
//*   PROCEDIMIENTO    : PMHLPZ48                                      *
//*                                                                    *
//*   OBJETIVO         : ACTUALIZACION DE PRECIOS DE VALORES/MERCADO DE*
//*                      DINERO                                        *
//*                      ( OPCION 851 )                                *
//*                                                                    *
//*   CORRE ANTES DE   : SIVAXVED                                      *
//*                                                                    *
//*   CORRE DESPUES DE : SIVAXVEV                                      *
//*   CORRE DESPUES DE : SIVAXVET                                      *
//*                                                                    *
//*   PERIODICIDAD     : CORRE A SOLICITUD DEL USUARIO                 *
//*                                                                    *
//*   FECHA            : AGSOTO 04, 2003                               *
//*                                                                    *
//*   AUTOR            : GETRONICS - MEXICO (VICTOR VARGAS MARTINEZ)   *
//*                                                                    *
//*   OBSERVACION      : ESTE PROCEDIMIENTO SE PUEDE EJECUTAR MAS DE   *
//*                      UNA VEZ DURANTE EL DIA.                       *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------
//* MODIFICA       :  OSCAR URBANO F. (AZERTIA).
//* FECHA          :  NOVIEMBRE 2008. CONVERSION DE SUBMITIDORES
//*-------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//* PROGRAMA: ZM4EHB83                                                 *
//* FUNCION:  CARGA PRECIOS DE CAPITALES EN TABLAS VECPRE Y PRECIO.    *
//*--------------------------------------------------------------------*
//PHL48P01 EXEC PGM=IKJEFT01
//*
//ZMHB83P1 DD DSN=SIVA.VAL.WKF.EMP.SUC.ZMHLPE48,DISP=SHR
//ZMHB83A1 DD DSN=SIVA.VAL.FIX.VECPRE,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL48T01),DISP=SHR
//*
