//ZMGFPD04 PROC                                                         00010000
//*                                                                     00020000
//**********************************************************************00030000
//*                     C A S A   D E   B O L S A                      *00040000
//*                     =========================                      *00050000
//*                    << MERCADO DE CAPITALES >>                      *00060000
//*                                                                    *00070000
//*   APLICACION   : SISTEMA INTEGRAL DE VALORES (SIVA)                *00080000
//*                                                                    *00090000
//*   JCL          : BCGFCD04                                          *00100000
//*                                                                    *00110000
//*   OBJETIVO     : EJECUTAR EL PROCESO DE CARGA INICIAL ZM4DHV08     *00120000
//*                                                                    *00130000
//*   ELABORADO POR: BBVA BANCOMER SISTEMAS BANCA PATRIMONIAL          *00140000
//*                                                                    *00150000
//*   FECHA        : 10/DIC/2015                                       *00160000
//*                                                                    *00170000
//**********************************************************************00180000
//**********************************************************************00190000
//*  PASO    : 01                                                      *00200000
//*  PROGRAMA: ZM4DHV08                                                *00210000
//*  OBJETIVO: REALIZA PROCESO DE CARGA INICIAL DE CAPAS               *00220000
//**********************************************************************00230000
//PGF04P01 EXEC PGM=IKJEFT01                                            00240000
//*                                                                     00250000
//SYSTSPRT DD SYSOUT=*                                                  00260000
//SYSPRINT DD SYSOUT=*                                                  00270000
//SYSOUT   DD SYSOUT=*                                                  00280000
//SYSDBOUT DD SYSOUT=*                                                  00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGF04T01),DISP=SHR                   00300000
//*                                                                     00310000
//**********************************************************************00310100
//*  PASO    : 00                                                      *00310200
//*  PROGRAMA: ZM4DHR08                                                *00310300
//*  OBJETIVO: REALIZA PROCESO DE CARGA INICIAL DE CAPAS               *00310400
//**********************************************************************00310500
//PGF04P00 EXEC PGM=IKJEFT01,COND=(4,LT)                                00310600
//*                                                                     00310700
//SYSTSPRT DD SYSOUT=*                                                  00310800
//SYSPRINT DD SYSOUT=*                                                  00310900
//SYSOUT   DD SYSOUT=*                                                  00311000
//SYSDBOUT DD SYSOUT=*                                                  00311100
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGF04T00),DISP=SHR                   00311200
//*                                                                     00311300
//********************************************************************* 00320000
//*                           FIN ZMGFPD04                            * 00330000
//********************************************************************* 00340000
