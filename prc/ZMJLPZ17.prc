//ZMJLPZ17 PROC                                                         00010000
//*                                                                     00020000
//**********************************************************************00030000
//*                     C A S A   D E   B O L S A                      *00040000
//*                     =========================                      *00050000
//*                     <<< MERCADO DE TESORERIA >>>                   *00060000
//*                                                                    *00070000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00080000
//*                                                                    *00090000
//*   DISPARADOR:  SIVAXNET                                            *00100000
//*   PROCEDIM. :  ZMJLPZ17  (OPC. 605)                                *00110000
//*                                                                    *00120000
//*   OBJETIVO  :  NETEO DE SUCURSALES AUNTOMATICO                     *00130000
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
//* ZM4DGG00 - REL. INGRESOS,EGRESOS, SALDOS                            00420000
//*******************************************************************   00430000
//PJL17P07 EXEC PGM=IKJEFT01                                            00440000
//*                                                                     00450000
//ZMGG00A1 DD DSN=MXCP.ZM.TMP.TES.EMP.SUC.ZMJLPE17,DISP=SHR             00460000
//*                                                                     00470000
//ZMGG00R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00480000
//*                                                                     00490000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00500000
//SYSPRINT DD SYSOUT=*                                                  00510000
//SYSOUT   DD SYSOUT=*                                                  00520000
//SYSDBOUT DD SYSOUT=*                                                  00530000
//SYSABOUT DD DUMMY                                                     00540000
//SYSUDUMP DD DUMMY                                                     00550000
//*                                                                     00560000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL17T01),DISP=SHR                   00570000
//*                                                                     00580000
//*******************************************************************   00590000
//* ZM4DGG01 -REL. DE RETIRO A SUCURSALES POR LINEA                     00600000
//*******************************************************************   00610000
//PJL17P06 EXEC PGM=IKJEFT01,COND=(4,LT)                                00620000
//*                                                                     00630000
//ZMGG01A1 DD DSN=MXCP.ZM.TMP.TES.EMP.SUC.ZMJLPE17,DISP=SHR             00640000
//*                                                                     00650000
//ZMGG01R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00660000
//*                                                                     00670000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00680000
//SYSPRINT DD SYSOUT=*                                                  00690000
//SYSOUT   DD SYSOUT=*                                                  00700000
//SYSABOUT DD DUMMY                                                     00710000
//SYSUDUMP DD DUMMY                                                     00720000
//*                                                                     00730000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL17T02),DISP=SHR                   00740000
//*                                                                     00750000
//*******************************************************************   00760000
//* ZM4DGG02 -REL. DE ENVIO A SUCURSALES                                00770000
//*******************************************************************   00780000
//PJL17P05 EXEC PGM=IKJEFT01,COND=(4,LT)                                00790000
//*                                                                     00800000
//ZMGG02A1 DD DSN=MXCP.ZM.TMP.TES.EMP.SUC.ZMJLPE17,DISP=SHR             00810000
//*                                                                     00820000
//ZMGG02R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00830000
//*                                                                     00840000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00850000
//SYSPRINT DD SYSOUT=*                                                  00860000
//SYSOUT   DD SYSOUT=*                                                  00870000
//SYSABOUT DD DUMMY                                                     00880000
//SYSUDUMP DD DUMMY                                                     00890000
//*                                                                     00900000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL17T03),DISP=SHR                   00910000
//*                                                                     00920000
//*******************************************************************   00930000
//* ZM4DGG03  -REL. DE INGRESOS Y EGRESOS CON BANCOS                    00940000
//*******************************************************************   00950000
//PJL17P04 EXEC PGM=IKJEFT01,COND=(4,LT)                                00960000
//*                                                                     00970000
//ZMGG03A1 DD DSN=MXCP.ZM.TMP.TES.EMP.SUC.ZMJLPE17,DISP=SHR             00980000
//*                                                                     00990000
//ZMGG03R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     01000000
//*                                                                     01010000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    01020000
//SYSPRINT DD SYSOUT=*                                                  01030000
//SYSOUT   DD SYSOUT=*                                                  01040000
//SYSABOUT DD DUMMY                                                     01050000
//SYSUDUMP DD DUMMY                                                     01060000
//*                                                                     01070000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL17T04),DISP=SHR                   01080000
//*                                                                     01090000
//*******************************************************************   01100000
//* ZM4DGG05 - NETEO AUTOMATICO A SUCURSALES                            01110000
//*******************************************************************   01120000
//*                                                                     01130000
//PJL17P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                01140000
//*                                                                     01150000
//ZMGG05A1 DD DSN=MXCP.ZM.TMP.TES.EMP.SUC.ZMJLPE17,DISP=SHR             01160000
//*                                                                     01170000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    01190000
//SYSPRINT DD SYSOUT=*                                                  01200000
//SYSOUT   DD SYSOUT=*                                                  01210000
//SYSABOUT DD DUMMY                                                     01220000
//SYSUDUMP DD DUMMY                                                     01230000
//*                                                                     01240000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL17T05),DISP=SHR                   01250000
//*                                                                     01260000
//**********************************************************************01520000
//*        TERMINA PROCESO ZMJLPZ17 SIVA MULTIEMPRESA                  *01530000
//**********************************************************************01540000
