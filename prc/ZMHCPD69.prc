//ZMHCPD69  PROC                                                        00010004
//**********************************************************************00020004
//*                                                                    *00030004
//*                   C A S A   D E  B O L S A                         *00030004
//*                   ========================                         *00030004
//*                   <<  C A P I T A L E S  >>                        *00030004
//*                                                                    *00030004
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00120004
//*                                                                    *00130004
//* PROCESO        :  ZMHCPD69                                         *00140004
//*                   CALCULO DE COSTO ACTUALIZADO, INTERES REAL,      *00150004
//*                   AJUSTE POR INFLACION Y DEFLACION.                *00150004
//*                                                                    *00160004
//* OBJETIVO       :  REALIZAR CALCULOS DE DATOS DE CKDS EN UN RANGO   *00170004
//*                   DE FECHAS CAPTURADO                              *00180004
//*                                                                    *00190004
//* DESPUES DE     :  CBHCND66(CARGA DE INPC DIARIO).                  *00230004
//*                                                                    *00240004
//* PERIODICIDAD   :  A PETICION DE USUARIO                            *00240004
//*                                                                    *00240004
//* ELABORADO POR  :                                                   *00240004
//*                                                                    *00240004
//*--------------------------------------------------------------------*
//*            L O G    D E    M O D I F I C A C I O N E S             *
//*--------------------------------------------------------------------*
//*                                                                    *
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//*  PASO:  1     EJECUCION DEL PROGRAMA ZM4CKD02                      *
//*  PHC69P01     CALCULA DATOS DE OPERACIONES DE CKDS EN UN RANGO DE  *
//*               FECHAS.                                              *
//**********************************************************************
//PHC69P01 EXEC PGM=IKJEFT01
//*
//ZMHCKDA1 DD DSN=MXCP.ZM.FIX.FECHAS.INPC,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC69T01),DISP=SHR
//*
