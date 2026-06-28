//ZMHLPZ28 PROC
//**********************************************************************
//*                                                                    *
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<  MERCADO DE VALORES >>                      *
//*                                                                    *
//*   APLICACION       : SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *
//*                                                                    *
//*   PROCEDIMIENTO    : ZMHLPZ28                                      *
//*                                                                    *
//*   OBJETIVO         : MOSTRAR EL RESULTADO PRELIMINAR DE            *
//*                      AMORTIZACION DE ACCIONES ( OPCION 823 )       *
//*                                                                    *
//*   CORRE ANTES DE   : NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE : NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD     : CORRE A SOLICITUD DEL USUARIO.                *
//*                                                                    *
//*   FECHA            : MARZO    03, 2003                             *
//*                                                                    *
//*   AUTOR            : MARCOS VARELA  (ASATECK)                      *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//**********************************************************************
//* PROGRAMA: ZM4EH935                                                 *
//* FUNCION:  MOSTRAR EL RESULTADO PRELIMINAR O DEFINITIVO             *
//*           (SEGUN SEA EL CASO)  DE UNA AMORTIZACION DE ACCIONES     *
//**********************************************************************
//PHL28P03 EXEC PGM=IKJEFT01
//ZMH935A1 DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMHLPE28,DISP=SHR
//ZMH935R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL28T01),DISP=SHR
//*
