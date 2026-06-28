//ZMUQD108 PROC                                                         00010800
//*                                                                     00020000
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  CRUCE DE ARCHIVOS >>                       *
//*                                                                    *
//*   APLICACION:  S I S T E M A   M U L T I E M P R E S A             *
//*                                                                    *
//*   PROCEDIM. :  ZMUQD108.                                           *
//*                                                                    *
//*   OBJETIVO  :  INSERTAR DATOS EN LA TABLA ZMDT108                  *
//*                                                                    *
//*                                                                    *
//*   PERIODICIDAD : MENSUAL                                           *
//*                                                                    *
//*   ELABORADO POR:                                                   *
//*                                                                    *
//*   FECHA:  OCTUBRE    2020-11-03.                                   *
//*                                                                    *
//*--------------------------------------------------------------------*
//* OBJETIVO : INSERTA EN ZMDT108 DEPOSITOS EN LA COLUMNA ZM108_ICONDER*
//*--------------------------------------------------------------------*
//PLS10802 EXEC PGM=IKJEFT01
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLUQD108),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* OBJETIVO : INSERTA EN ZMDT108 RETIROS EN LA COLUMNA ZM108_ICONDER  *
//*--------------------------------------------------------------------*
//PLS10801 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLUQR108),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                                                                    *
//*                                                                    *
//*--------------------------------------------------------------------*
