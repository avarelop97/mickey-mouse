//ZMJLPZ29 PROC                                                         00010000
//*                                                                     00020000
//**********************************************************************00030000
//*                     C A S A   D E   B O L S A                      *00040000
//*                     =========================                      *00050000
//*                   <<< CONCILIACION BANCARIA >>>                    *00060000
//*                                                                    *00070000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00080000
//*                                                                    *00090000
//*   DISPARADOR:  SIVAXPIM                                            *00100000
//*   PROCEDIM. :  ZMJLPZ29  (OPC. 668)                                *00110000
//*                                                                    *00120000
//*   OBJETIVO  :  CONCILIAR Y REPORTAR LOS DEPOSITOS POR LINEA Y      *00130000
//*                SPEUA, DIVERSOS CONCEPTOS Y T + 1 RECIBIDO          *00131000
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
//* ZM4OJ585 - REALIZA LA CONCILIACION AUTOMATICA DE LOS            *   00420000
//*            DEPOSITOS POR LINEA.                                 *   00421000
//*******************************************************************   00430000
//PJL29P05 EXEC PGM=IKJEFT01                                            00440000
//*                                                                     00450000
//ZMJ585AP DD DSN=MXCP.ZM.TMP.TES.EMP.SUC.ZMJLPE29,DISP=SHR             00460000
//*                                                                     00470000
//ZMJ585R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00480000
//*                                                                     00490000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00500000
//SYSPRINT DD SYSOUT=*                                                  00510000
//SYSOUT   DD SYSOUT=*                                                  00520000
//SYSDBOUT DD SYSOUT=*                                                  00530000
//SYSABOUT DD DUMMY                                                     00540000
//SYSUDUMP DD DUMMY                                                     00550000
//*                                                                     00560000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL29T05),DISP=SHR                   00570000
//*                                                                     00580000
//*******************************************************************   00590000
//* ZM4OJ586 - REALIZA LA CONCILIACION AUTOMATICA DE LOS                00600000
//*            DEPOSITOS POR DIVERSOS CONCEPTOS.                        00601000
//*******************************************************************   00610000
//PJL29P04 EXEC PGM=IKJEFT01,COND=(4,LT)                                00620000
//*                                                                     00630000
//ZMJ586AP DD DSN=MXCP.ZM.TMP.TES.EMP.SUC.ZMJLPE29,DISP=SHR             00640000
//*                                                                     00650000
//ZMJ586R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00660000
//*                                                                     00670000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00680000
//SYSPRINT DD SYSOUT=*                                                  00690000
//SYSOUT   DD SYSOUT=*                                                  00700000
//SYSABOUT DD DUMMY                                                     00710000
//SYSUDUMP DD DUMMY                                                     00720000
//*                                                                     00730000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL29T04),DISP=SHR                   00740000
//*                                                                     00750000
//*******************************************************************   00760000
//* ZM4OJ587 - REALIZA LA CONCILIACION AUTOMATICA DE LOS                00770000
//*            DEPOSITOS T + 1 RECIBIDO.                                00771000
//*******************************************************************   00780000
//PJL29P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                00790000
//*                                                                     00800000
//ZMJ587AP DD DSN=MXCP.ZM.TMP.TES.EMP.SUC.ZMJLPE29,DISP=SHR             00810000
//*                                                                     00820000
//ZMJ587R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00830000
//*                                                                     00840000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00850000
//SYSPRINT DD SYSOUT=*                                                  00860000
//SYSOUT   DD SYSOUT=*                                                  00870000
//SYSABOUT DD DUMMY                                                     00880000
//SYSUDUMP DD DUMMY                                                     00890000
//*                                                                     00900000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL29T03),DISP=SHR                   00910000
//*                                                                     01090000
//**********************************************************************01520000
//*        TERMINA PROCESO ZMJLPZ29 SIVA MULTIEMPRESA                  *01530000
//**********************************************************************01540000
