//ZMHLPZ49 PROC
//*--------------------------------------------------------------------*
//*                                                                    *
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<  MERCADO DE DINERO  >>                      *
//*                                                                    *
//*   APLICACION       : SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *
//*                                                                    *
//*   PROCEDIMIENTO    : ZMHLPZ49                                      *
//*                                                                    *
//*   OBJETIVO         : ACTUALIZACION DE PRECIOS DE MERCADO DE DINERO *
//*                      ( OPCION 851 )                                *
//*                                                                    *
//*   CORRE ANTES DE   : SIVAXVEG                                      *
//*                                                                    *
//*   CORRE DESPUES DE : SIVAXVED                                      *
//*   CORRE DESPUES DE : SIVAXVEV                                      *
//*                                                                    *
//*   PERIODICIDAD     : CORRE A SOLICITUD DEL USUARIO                 *
//*                                                                    *
//*   FECHA            : AGOSTO 04, 2003                               *
//*                                                                    *
//*   AUTOR            : GETRONICS - MEXICO (VICTOR VARGAS MARTINEZ)   *
//*                                                                    *
//*   OBSERVACION      : ESTE PROCEDIMIENTO SE PUEDE EJECUATAR MAS DE  *
//*                      UNA VEZ DURANTE EL DIA.                       *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------
//* MODIFICA       :  OSCAR URBANO F. (AZERTIA).
//* FECHA          :  NOVIEMBRE 2008. CONVERSION DE SUBMITIDORES
//*-------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//* PROGRAMA: ZM4EHB84                                                 *
//* FUNCION:  ACTUALIZACION DE PRECIOS DE MERCADO DE DINERO            *
//*--------------------------------------------------------------------*
//PHL49P01 EXEC PGM=IKJEFT01
//*
//ZMHB84P1 DD DSN=SIVA.MDD.WKF.EMP.SUC.PMHLPE49,DISP=SHR
//ZMHB84A1 DD DSN=SIVA.VAL.FIX.VECPRE,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL49T01),DISP=SHR
//*
