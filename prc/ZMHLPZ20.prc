//ZMHLPZ20 PROC
//**********************************************************************
//*                                                                    *
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<  MERCADO DE VALORES >>                      *
//*                                                                    *
//*   APLICACION       : SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *
//*                                                                    *
//*   PROCEDIMIENTO    : ZMHLPZ20                                      *
//*                                                                    *
//*   OBJETIVO         : CREACION DE REGISTRO DE SUSCRIPTORES POR      *
//*                      AMORTIZACION DE ACCIONES   ( OPCION 821 )     *
//*                                                                    *
//*   CORRE ANTES DE   : NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE : NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD     : CORRE A SOLICITUD DEL USUARIO.                *
//*                                                                    *
//*   FECHA            : ENERO  07, 2003                               *
//*                                                                    *
//*   AUTOR            :  MARCOS VARELA PEREZ  (ASATECK)               *
//*                                                                    *
//**********************************************************************
//* PROGRAMA: ZM4EH939                                                 *
//* FUNCION:  ACTUALIZACION DE TABLAS PARA LA CONVERSION DE            *
//*           OBLIGACIONES EJERCICIO DE DERECHOS, (MODULO DE VALORES)  *
//**********************************************************************
//PHL20P04 EXEC PGM=IKJEFT01
//ZMH939A1 DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMHLPE20,DISP=SHR
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL20T01),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ZM4EH431                                                 *
//* FUNCION:  REPORTE DE LAS ORDENES CANCELADAS POR CORTE DE CUPON     *
//*           MERCADO DE CAPITALES                                     *
//**********************************************************************
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*PHL20P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*ZMH431A1 DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMHLPE20,DISP=SHR
//*ZMH431R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZMH431R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD SYSOUT=*
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL20T02),DISP=SHR
//**
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
