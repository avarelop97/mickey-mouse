//ZMJLPZ31 PROC                                                         00010000
//*                                                                     00020000
//**********************************************************************00030000
//*                     C A S A   D E   B O L S A                      *00040000
//*                     =========================                      *00050000
//*                   <<< CONCILIACION BANCARIA >>>                    *00060000
//*                                                                    *00070000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00080000
//*                                                                    *00090000
//*   DISPARADOR:  SIVAXDMP                                            *00100000
//*   PROCEDIM. :  ZMJLPZ31  (OPC. 671)                                *00110000
//*                                                                    *00120000
//*   OBJETIVO  :  EMITIR REPORTE DE LA DEPURACION DE MOVIMIENTOS      *00130000
//*                PENDIENTES.                                         *00131000
//*                                                                    *00140000
//*   CORRE ANTES DE  :  NINGUNO                                       *00150000
//*                                                                    *00160000
//*   CORRE DESPUES DE:  NINGUNO                                       *00170000
//*                                                                    *00180000
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *00190000
//*                                                                    *00200000
//**********************************************************************00210000
//*                                                                     00220000
//*******************************************************************   00410000
//* ZM4IJ589 - GENERA REPORTE DE LA DEPURACION DE MOVIMIENTOS       *   00420000
//*            PENDIENTES.                                          *   00421000
//*******************************************************************   00430000
//PJL31P03 EXEC PGM=IKJEFT01                                            00440000
//*                                                                     00450000
//ZMJ589AP DD DSN=MXCP.ZM.TMP.TES.EMP.SUC.ZMJLPE31,DISP=SHR             00460000
//*                                                                     00470000
//ZMJ589R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00480000
//*                                                                     00490000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00500000
//SYSPRINT DD SYSOUT=*                                                  00510000
//SYSOUT   DD SYSOUT=*                                                  00520000
//SYSDBOUT DD SYSOUT=*                                                  00530000
//SYSABOUT DD DUMMY                                                     00540000
//SYSUDUMP DD DUMMY                                                     00550000
//*                                                                     00560000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL31T03),DISP=SHR                   00570000
//*                                                                     00580000
//**********************************************************************01520000
//*        TERMINA PROCESO ZMJLPZ31 SIVA MULTIEMPRESA                  *01530000
//**********************************************************************01540000
