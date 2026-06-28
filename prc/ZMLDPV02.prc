//ZMLDPV02 PROC                                                         00010001
//**********************************************************************00020000
//*                     C A S A   D E  B O L S A                       *00030000
//*                     ========================                       *00040000
//*                    <<     V A L O R E S    >>                      *00050000
//*                                                                    *00060000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00070000
//*                                                                    *00080000
//*   PROCEDIM. :  ZMLDPV02                                            *00090001
//*                                                                    *00100000
//*   OBJETIVO  :  CARGA TABLA ZMDT161 (CAPAS DE CAPITALES)            *00110001
//*                                                                    *00120000
//*   CORRE DESPUES DE:                                                *00130000
//*                                                                    *00140000
//*   PERIODICIDAD    : A PETICION DE SISTEMAS                         *00150001
//*                                                                    *00160000
//*   ELABORADO POR: DAVID GUTIERREZ CASILLAS     GETRONICS.           *00170000
//*                                                                    *00180000
//*   FECHA:  10 DE NOVIEMBRE DE 2003.                                 *00190001
//*                                                                    *00200000
//**********************************************************************00210000
//*                      LOG DE MODIFICACIONES                         *00220000
//**********************************************************************00230000
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *00240000
//*--------------------------------------------------------------------*00250000
//*      |          |       |        |                                 *00260000
//**********************************************************************00270000
//*                       ¢¢¢  ZM4VL003  !!!                           *00280001
//*                                                                    *00290001
//*  PASO   2  : PLD02P02                                              *00300001
//*                                                                    *00310001
//*  OBJETIVO  : CARGA INICIAL DE TABLA ZMDT161.  CAPAS DE CAPITALES   *00320001
//*              BUSCA LA POSICION EN CARTERA Y GENERA UNA CAPA POR    *00330001
//*              LA POSICION.                                          *00340001
//*                                                                    *00350001
//**********************************************************************00360000
//PLD02P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00370001
//*                                                                     00380000
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00390000
//SYSPRINT DD  SYSOUT=*                                                 00400000
//SYSOUT   DD  SYSOUT=*                                                 00410000
//SYSDBOUT DD  SYSOUT=*                                                 00420000
//SYSABOUT DD  DUMMY                                                    00430000
//SYSUDUMP DD  DUMMY                                                    00440000
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLD02T02),DISP=SHR                  00450001
//**********************************************************************00460001
//*                       ¢¢¢  ZM4VL004  !!!                           *00470001
//*                                                                    *00480001
//*  PASO   1  : PLD02P01                                              *00490001
//*                                                                    *00500001
//*  OBJETIVO  : DEPURA TABLA ZMDT161.  CAPAS DE CAPITALES             *00510001
//*              BUSCA MOVIMIENTOS EN OPERA Y CREA CAPAS DESGLOSANDO   *00520001
//*              LA CAPA INICIAL.                                      *00530001
//*                                                                    *00540001
//**********************************************************************00550001
//PLD02P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00560001
//*                                                                     00570001
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00580001
//SYSPRINT DD  SYSOUT=*                                                 00590001
//SYSOUT   DD  SYSOUT=*                                                 00600001
//SYSDBOUT DD  SYSOUT=*                                                 00610001
//SYSABOUT DD  DUMMY                                                    00620001
//SYSUDUMP DD  DUMMY                                                    00630001
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLD02T01),DISP=SHR                  00640001
//                                                                      00650000
