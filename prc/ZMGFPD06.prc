//ZMGFPD06 PROC                                                         00010000
//*                                                                     00020000
//**********************************************************************00030000
//*                     C A S A   D E   B O L S A                      *00040000
//*                     =========================                      *00050000
//*                    << MERCADO DE CAPITALES >>                      *00060000
//*                                                                    *00070000
//*   APLICACION   : SISTEMA INTEGRAL DE VALORES (SIVA)                *00080000
//*                                                                    *00090000
//*   JCL          : BCGFCD06 (CKDS)                                   *00100000
//*                                                                    *00110000
//*   OBJETIVO     : EJECUTAR REPROCESO DE CAPAS PARA DESPUES DE       *00120000
//*                  ALGUNA CANCELACION: ZM4DHV10                      *00130000
//*                                                                    *00140000
//*   ELABORADO POR: BBVA BANCOMER SISTEMAS BANCA PATRIMONIAL          *00150000
//*                                                                    *00160000
//*   FECHA        : 10/DIC/2015                                       *00170000
//*                                                                    *00180000
//**********************************************************************00190000
//**********************************************************************00200000
//*  PASO    : 01                                                      *00210000
//*  PROGRAMA: ZM4DHV10                                                *00220000
//*  OBJETIVO: REPROCESA LAS CAPAS A PATIR DE ALGUNA CANCELACION       *00230000
//**********************************************************************00240000
//PGF06P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00250000
//*                                                                     00260000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00280000
//SYSPRINT DD SYSOUT=*                                                  00290000
//SYSOUT   DD SYSOUT=*                                                  00300000
//SYSDBOUT DD SYSOUT=*                                                  00310000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGF06T01),DISP=SHR                   00320000
//*                                                                     00330000
//********************************************************************* 00340000
//*                           FIN ZMGFPD05                            * 00350000
//********************************************************************* 00360000
