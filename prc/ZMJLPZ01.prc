//ZMJLPZ01 PROC                                                         00010002
//**********************************************************************00020000
//*                     C A S A   D E   B O L S A                      *00030000
//*                     =========================                      *00040000
//*                     <<< T E S O R E R I A >>>                      *00050000
//*                                                                    *00060000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00070000
//*                                                                    *00080000
//*   PROCEDIM. :  ZMJLPZ01                                            *00090002
//*                                                                    *00100000
//*   OBJETIVO  :  SITUACION ACTUAL DE TESORERIA. (OPC 581)            *00110002
//*                                                                    *00120000
//*   CORRE ANTES DE  :  NINGUNO                                       *00130000
//*                                                                    *00140000
//*   CORRE DESPUES DE:  NINGUNO                                       *00150000
//*                                                                    *00160000
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *00170000
//*                                                                    *00180000
//**********************************************************************00190000
//*                                                                     00200000
//**********************************************************************00390000
//* PROGRAMA: ZM4EJ742                                                 *00400000
//* FUNCION:  GENERA REPORTE CON LA SITUACION ACTUAL DE TESORERIA      *00410000
//**********************************************************************00420000
//PJL01P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00430000
//*                                                                     00440000
//ZMG742A1 DD DSN=MXCP.ZM.TMP.TES.EMP.SUC.ZMJLPE01,DISP=SHR             00450001
//ZMG798A1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00460000
//*                                                                     00470000
//*                                                                     00480000
//SYSTSPRT DD SYSOUT=*                                                  00490000
//SYSPRINT DD SYSOUT=*                                                  00500000
//SYSOUT   DD SYSOUT=*                                                  00510000
//SYSDBOUT DD SYSOUT=*                                                  00520000
//SYSABOUT DD SYSOUT=*                                                  00530000
//SYSUDUMP DD DUMMY                                                     00540000
//*                                                                     00550000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL01T01),DISP=SHR                   00560000
//*                                                                     00560100
//**********************************************************************00730000
//*        TERMINA PROCESO ZMJLPZ01 SIVA MULTIEMPRESA                  *00740002
//**********************************************************************00750000
