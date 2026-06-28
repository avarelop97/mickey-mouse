//ZMUEPM65  PROC                                                        00010004
//**********************************************************************00020004
//*                                                                    *00030004
//*                   C A S A   D E  B O L S A                         *00030004
//*                   ========================                         *00030004
//*                   <<  C A P I T A L E S  >>                        *00030004
//*                                                                    *00030004
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00120004
//*                                                                    *00130004
//* PROCESO        :  ZMUEPM65                                         *00140004
//*                   CALCULO DE COSTO ACTUALIZADO, INTERES REAL,      *00150004
//*                   AJUSTE POR INFLACION Y DEFLACION.                *00150004
//*                                                                    *00160004
//* OBJETIVO       :  REALIZAR CALCULOS DE DATOS DE CKDS EN UN RANGO   *00170004
//*                   DE FECHAS CAPTURADO                              *00180004
//*                                                                    *00190004
//* DESPUES DE     :  CBUENM66(CARGA DE INPC DIARIO).                  *00230004
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
//*  PASO:  1     EJECUCION DEL PROGRAMA ZM4CKD01                      *
//*  PMC65P01     CALCULA DATOS DE OPERACIONES DE CKDS DEL MES         *
//*               ANTERIOR.                                            *
//**********************************************************************
//PMC65P01 EXEC PGM=IKJEFT01
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMC65T01),DISP=SHR
//*
