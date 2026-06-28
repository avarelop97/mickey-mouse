//ZMGFPD07 PROC                                                         00010001
//*                                                                     00020000
//**********************************************************************00030000
//*                     C A S A   D E   B O L S A                      *00040000
//*                     =========================                      *00050000
//*                    << MERCADO DE CAPITALES >>                      *00060000
//*                                                                    *00070000
//*   APLICACION   : SISTEMA INTEGRAL DE VALORES (SIVA)                *00080000
//*                                                                    *00090000
//*   JCL          : BCGFCD07                                          *00100001
//*                                                                    *00110000
//*   OBJETIVO     : ACTUALIZA LOS TITULOS, IMPORTE Y GANANCIA         *00120001
//*                  ACUMULADA DE LA TABLA ZMDT108 PARA EMISORAS       *00121001
//*                  WARRANTS                                          *00122001
//*                                                                    *00130000
//**********************************************************************00180000
//**********************************************************************00190000
//*  PASO    : 01                                                      *00200000
//*  PROGRAMA: ZM4DHV07                                                *00210001
//**********************************************************************00230000
//PGF07P01 EXEC PGM=IKJEFT01                                            00240001
//*                                                                     00250000
//SYSTSPRT DD SYSOUT=*                                                  00260001
//SYSPRINT DD SYSOUT=*                                                  00270000
//SYSOUT   DD SYSOUT=*                                                  00280000
//SYSDBOUT DD SYSOUT=*                                                  00290000
//SYSABOUT DD SYSOUT=*                                                  00300001
//SYSUDUMP DD DUMMY                                                     00301001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGF07T01),DISP=SHR                   00302001
//*                                                                     00310000
//**********************************************************************00310100
//*  PASO    : 02                                                      *00310200
//*  PROGRAMA: ZM4DHV06                                                *00310300
//**********************************************************************00310400
//PGF07P02 EXEC PGM=IKJEFT01,COND=(04,LT)                               00310500
//*                                                                     00310600
//SYSTSPRT DD SYSOUT=*                                                  00310700
//SYSPRINT DD SYSOUT=*                                                  00310800
//SYSOUT   DD SYSOUT=*                                                  00310900
//SYSDBOUT DD SYSOUT=*                                                  00311000
//SYSABOUT DD SYSOUT=*                                                  00311100
//SYSUDUMP DD DUMMY                                                     00311200
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGF07T02),DISP=SHR                   00311300
//*                                                                     00311400
//********************************************************************* 00320000
//*                           FIN ZMGFPD07                            * 00330001
//********************************************************************* 00340000
