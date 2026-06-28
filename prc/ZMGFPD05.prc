//ZMGFPD05 PROC                                                         00010004
//*                                                                     00020000
//**********************************************************************00030000
//*                     C A S A   D E   B O L S A                      *00040000
//*                     =========================                      *00050000
//*                    << MERCADO DE CAPITALES >>                      *00060000
//*                                                                    *00070000
//*   APLICACION   : SISTEMA INTEGRAL DE VALORES (SIVA)                *00080000
//*                                                                    *00090000
//*   JCL          : BCGFCD05                                          *00100004
//*                                                                    *00110000
//*   OBJETIVO     : EJECUTAR REPROCESO DE CAPAS PARA DESPUES DE       *00120004
//*                  ALGUNA CANCELACION: ZM4DHV09                      *00130005
//*                                                                    *00140000
//*   ELABORADO POR: BBVA BANCOMER SISTEMAS BANCA PATRIMONIAL          *00150004
//*                                                                    *00160000
//*   FECHA        : 10/DIC/2015                                       *00170003
//*                                                                    *00180000
//**********************************************************************00190000
//**********************************************************************00200000
//*  PASO    : 01                                                      *00210002
//*  PROGRAMA: ZM4DHV09                                                *00220005
//*  OBJETIVO: REPROCESA LAS CAPAS A PATIR DE ALGUNA CANCELACION       *00230001
//**********************************************************************00240000
//PGF05P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00250004
//*                                                                     00260000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00280000
//SYSPRINT DD SYSOUT=*                                                  00290000
//SYSOUT   DD SYSOUT=*                                                  00300000
//SYSDBOUT DD SYSOUT=*                                                  00310000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGF05T01),DISP=SHR                   00320004
//*                                                                     00330000
//********************************************************************* 00340000
//*                           FIN ZMGFPD05                            * 00350004
//********************************************************************* 00360000
