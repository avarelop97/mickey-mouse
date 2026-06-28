//ZMHLPZ29 PROC
//**********************************************************************
//*                                                                    *
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<  MERCADO DE VALORES >>                      *
//*                                                                    *
//*   APLICACION       : SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *
//*                                                                    *
//*   PROCEDIMIENTO    : ZMHLPZ29                                      *
//*                                                                    *
//*   OBJETIVO         : MOSTRAR EL RESULTADO PRELIMINAR DE            *
//*                      AMORTIZACION DE ACCIONES   ( OPCION 824 )     *
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
//PHL29P03 EXEC PGM=IKJEFT01
//ZMH935A1 DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMHLPE29,DISP=SHR
//ZMH935R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL29T01),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ZM4EH988                                                 *
//* FUNCION:  ACTUALIZA ESTATUS DE ORDENES CONDICIONADAS EN TABLAS     *
//*           ZMDTCND Y ZMDTEMI ***MERCADO DE CAPITALES***             *
//**********************************************************************
//PHL29P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMH988A1 DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMHLPE29,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL29T02),DISP=SHR
//*
