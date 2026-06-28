//ZMLDPV01 PROC                                                         00010011
//*                                                                     00020000
//**********************************************************************00030000
//*                     C A S A   D E  B O L S A                       *00040000
//*                     ========================                       *00050000
//*                    <<     V A L O R E S    >>                      *00060000
//*                                                                    *00070000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00080000
//*                                                                    *00090000
//*   PROCEDIM. :  ZMLDPV01                                            *00100011
//*                                                                    *00110000
//*   OBJETIVO  :  DEPURA MDDCST. CREA CAPAS A PARTIR DE LA MISMA      *00120009
//*                TABLA Y DE CARTERA                                  *00130009
//*                                                                    *00140000
//*   CORRE DESPUES DE:                                                *00150000
//*                                                                    *00160000
//*   PERIODICIDAD    : EVENTUAL                                       *00170009
//*                                                                    *00180000
//*   ELABORADO POR: DAVID GUTIERREZ CASILLAS     GETRONICS.           *00190009
//*                                                                    *00200000
//*   FECHA:  14 DE OCTUBRE DE 2003                                    *00210009
//*                                                                    *00220000
//**********************************************************************00230000
//*                      LOG DE MODIFICACIONES                         *00240000
//**********************************************************************00250000
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *00260000
//*--------------------------------------------------------------------*00270000
//*      |          |       |        |                                 *00280000
//**********************************************************************00290007
//*  PASO:  2     DEPURAR MDDCST. BUSCA EN CARTERA EMISORAS Y CUADRA   *00300009
//*               POSICION CON CAPAS EN MDDCST. SI NO ENCUENTRA EL     *00310007
//*               REGISTRO EN MDDCST LO INSERTA CON INFO. DE CONCEPT   *00320007
//*  PLD01P02                                                          *00330011
//*       NOTA :                                            ZM4VL001   *00340007
//**********************************************************************00350007
//PLD01P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00360011
//*                                                                     00370007
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00380007
//SYSPRINT DD  SYSOUT=*                                                 00390007
//SYSOUT   DD  SYSOUT=*                                                 00400007
//SYSDBOUT DD  SYSOUT=*                                                 00410007
//SYSABOUT DD  DUMMY                                                    00420007
//SYSUDUMP DD  DUMMY                                                    00430007
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLD01T02),DISP=SHR                  00440011
//**********************************************************************00450008
//*  PASO:  1     DEPURAR MDDCST. BUSCAR EN MDDCST Y CUADRA LAS CAPAS  *00460010
//*               CON LA POSICION DE CARTERA.                          *00470008
//*  PLD01P01                                                          *00480011
//*       NOTA :                                            ZM4VL002   *00490010
//**********************************************************************00500008
//PLD01P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00510011
//*                                                                     00520008
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00530008
//SYSPRINT DD  SYSOUT=*                                                 00540008
//SYSOUT   DD  SYSOUT=*                                                 00550008
//SYSDBOUT DD  SYSOUT=*                                                 00560008
//SYSABOUT DD  DUMMY                                                    00570008
//SYSUDUMP DD  DUMMY                                                    00580008
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLD01T01),DISP=SHR                  00590011
//                                                                      00600008
