//ZMLFP001 PROC                                                         00010003
//*                                                                     00020000
//**********************************************************************00030000
//*                     C A S A   D E  B O L S A                       *00040000
//*                     ========================                       *00050000
//*                    <<     V A L O R E S    >>                      *00060000
//*                                                                    *00070000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00080000
//*                                                                    *00090000
//*   PROCEDIM. :  ZMLFP001                                            *00100003
//*                                                                    *00110000
//*   OBJETIVO  :  DEPURA MDDCST                                       *00120000
//*                                                                    *00130000
//*   CORRE DESPUES DE:                                                *00140000
//*                                                                    *00150000
//*   PERIODICIDAD    : ESPECIAL                                       *00160003
//*                                                                    *00170000
//*   ELABORADO POR: DAVID GUTIERREZ CASILLAS     GETRONICS.           *00180003
//*                                                                    *00190000
//*   FECHA:  JULIO DE 2003.                                           *00200000
//*                                                                    *00210000
//**********************************************************************00220000
//*                      LOG DE MODIFICACIONES                         *00230000
//**********************************************************************00240000
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *00250000
//*--------------------------------------------------------------------*00260000
//*      |          |       |        |                                 *00270000
//**********************************************************************00280000
//*                        -  ZM4DLH36  -                              *00290000
//*                                                                    *00300000
//*  PASO:  1     OBTIENE ULTIMAS CAPAS DE POSICION Y DEPURA LA        *00310000
//*               TABLA MDDCST                                         *00320000
//*  PLU01P01                                                          *00330004
//*       NOTA :                                            ZLFU1T01   *00340005
//**********************************************************************00350000
//PLU01P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00360004
//*                                                                     00370000
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00380000
//SYSPRINT DD  SYSOUT=*                                                 00390000
//SYSOUT   DD  SYSOUT=*                                                 00400000
//SYSDBOUT DD  SYSOUT=*                                                 00410000
//SYSABOUT DD  SYSOUT=*                                                 00420000
//SYSUDUMP DD  DUMMY                                                    00430000
//*                                                                     00440000
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLFU1T01),DISP=SHR                  00450005
