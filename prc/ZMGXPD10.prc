//ZMGXPD10 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                   >>>>  SOCIEDADES DE INVERSION  <<<<              *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   DISPARADOR:  SIVAXPEM                                            *
//*                                                                    *
//*   PROCEDIM. :  ZMGXPD10     OPC. XXX                               *
//*                                                                    *
//*   OBJETIVO  :  GENERA ARCHIVO DE WARRANT                           *
//*                                                                    *
//*   CORRE ANTES DE  : A PETICION DEL USUARIO                         *
//*                                                                    *
//*   CORRE DESPUES DE: A PETICION DEL USUARIO                         *
//*                                                                    *
//**********************************************************************
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//*---------------------------------------------------------------
//* PROGRAMA: ZM4DHA16
//* FUNCION:  EMITE REPORTE DE EMISORAS SIN PRECIO WARRANT
//*---------------------------------------------------------------
//PHL32P03 EXEC PGM=IKJEFT01
//ZMHA16A1 DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMHLPE44,
//            DISP=SHR
//ZMHA16R1 DD SYSOUT=*
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL32T01),DISP=SHR
//*
//**********************************************************************
//*        PROCESA ARCHIVO SECUENCIAL SOLICITADO POR USUARIO           *
//**********************************************************************
//*PHC23P01 EXEC PGM=IKJEFT01,COND=(0,NE)
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD SYSOUT=*
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE46T01),DISP=SHR
//*SYSIN    DD DSN=MXCP.ZM.FIX.REPORTES,
//*         DISP=SHR
//*
//**********************************************************************
//*        TERMINA PROCESO CBHLPZ44 SIVA MULTIEMPRESA                ***
//**********************************************************************
//*
