//ZMHLPZ50 PROC
//*--------------------------------------------------------------------*
//*                                                                    *
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<     GLOBAL RISK     >>                      *
//*                                                                    *
//*   APLICACION       : SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *
//*                                                                    *
//*   PROCEDIMIENTO    : ZMHLPZ50                                      *
//*                                                                    *
//*   OBJETIVO         : ACTUALIZACION DE BETAS (GLOBAL RISK)          *
//*                      ( OPCION 851 )                                *
//*                                                                    *
//*   CORRE ANTES DE   : NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE : SIVAXVEG                                      *
//*   CORRE DESPUES DE : SIVAXVET                                      *
//*                                                                    *
//*   PERIODICIDAD     : CORRE A SOLICITUD DEL USUARIO                 *
//*                                                                    *
//*   FECHA            : AGOSTO 04, 2003                               *
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
//* PROGRAMA: ZM4EHB85                                                 *
//* FUNCION:  ACTUALIZACION DE BETAS (GLOBLA RISLK)                    *
//*--------------------------------------------------------------------*
//PHL50P01 EXEC PGM=IKJEFT01
//*
//ZMHB85P1 DD DSN=SIVA.VAL.WKF.EMP.SUC.ZMHLPE50,DISP=SHR
//ZMHB85A1 DD DSN=SIVA.VAL.FIX.ECBP.VECBET,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL50T01),DISP=SHR
//*
