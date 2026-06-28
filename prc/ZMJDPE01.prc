//ZMJDPE01 PROC
//*
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*---------------------------------------------------------------------00010000
//* PROGRAMA: ZM4MEF18                                                  00020000
//* OBJETIVO: DEPURAR Y ACTUALIZA TABLAS DE CARGOS VARIOS               00030000
//*---------------------------------------------------------------------00060000
//PJE01P01 EXEC PGM=IKJEFT01
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJE01T01),DISP=SHR
//*
//*---------------------------------------------------------------------00010000
//* PROGRAMA: ZM4MFF18                                                  00020000
//* OBJETIVO: CORRIJE LA TABLA DE CARGOS VARIOS                         00030000
//*---------------------------------------------------------------------00060000
//PJE01P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJE01T02),DISP=SHR
//*
