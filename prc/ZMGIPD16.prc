//ZMGIPD16 PROC
//*
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<    P    L    D     >>                       *
//*                                                                    *
//* SISTEMA        : SISTEMA INTEGRAL DE VALORES (S.I.V.A)             *
//*                                                                    *
//*                                                                    *
//* APLICACION     : MODULO DE PREVENSION LAVADO DE DINERO             *
//*                  (CONTRALORIA)                                     *
//*                                                                    *
//* PROCESO        : CBGICD16                                          *
//*                                                                    *
//*                                                                    *
//* OBJETIVO       : CARGA INFORMACION A LA TABLA ZMDT646 Y ZMDT647.   *
//*                  LOS SALDOS PROMEDIO.                              *
//* CORRE                                                              *
//* ANTES DE       : CBLIND23                                          *
//*                                                                    *
//* CORRE                                                              *
//* DESPUES DE     : NINGUNO                                           *
//*                                                                    *
//* REALIZO        : ARACELI SALAZAR PEREZ            (GETRONICS)      *
//*                                                                    *
//* FECHA          : JUNIO    2005                                     *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO | PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//* ASP  |14-08-2005| IDCEX08| P02   | CARGA INFORMACION ZMDT647       *
//*      |          |        | P01   | Y DEPURACION ZMDT646            *
//**********************************************************************
//*                          -- ZM4DGV46 --                            *
//* OBJETIVO    :  INSERTA Y ACTUALIZA EL SALDO PROMEDIO.              *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                 ***PROC. PLD.         *
//**********************************************************************
//PGI16P03 EXEC PGM=IKJEFT01
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZGI16T03),DISP=SHR
//**********************************************************************
//*                          -- ZM4MGV47 --                            *
//* OBJETIVO    :  INSERTA REGISTRO EN LA TABLA HISTORICA ZMDT647      *
//*                EL SALDO PROMEDIO GLOBAL.                           *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                 ***PROC. PLD.         *
//**********************************************************************
//PGI16P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZGI16T02),DISP=SHR
//**********************************************************************
//*                          -- ZM4MGV48 --                            *
//* OBJETIVO    :  BORRA REGISTRO EN LA TABLA ZMDT646.                 *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                 ***PROC. PLD.         *
//**********************************************************************
//PGI16P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZGI16T01),DISP=SHR
//**********************************************************************
//*                      F I N   Z M G I P D 1 6                       *
//**********************************************************************
