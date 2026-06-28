//ZMHCPD03 PROC                                                         00010000
//*                                                                     00020000
//**********************************************************************00030000
//*                                                                    *00040000
//*                   <<   V A L O R E S   >>                          *00050000
//*                                                                    *00060000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00070000
//*                                                                    *00080000
//* PROCESO        :  ZMHCPD03   ANTES = PCIVAD01                      *00090000
//*                   CIERRE DE DIA DEL MODULO DE VALORES              *00100000
//*                                                                    *00110000
//* OBJETIVO       :  CERRAR LA OPERACION DEL DIA DE VALORES, ENVIADO  *00120000
//*                   POR EL USUARIO                                   *00130000
//* CORRE                                                              *00140000
//* ANTES DE       :  FINDIA.                                          *00150000
//*                                                                    *00160000
//* DESPUES DE     :  OPERACION DIARIA EN EL SIVA                      *00170000
//*                                                                    *00180000
//* REALIZO        :  DAVID GUTIERREZ CASILLAS     (ASATECK)           *00190000
//*                                                                    *00200000
//* FECHA          :  MAYO 2003                                        *00210000
//*                                                                    *00220000
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA EN FORMA DIARIA    *00230000
//*                                                                    *00240000
//**********************************************************************00250000
//*                       ¢¢¢  ZM4DH028  !!!                           *00520000
//* PASO  11 : PHC03P11                                                *00540000
//*                                                                    *00550000
//* OBJETIVO : LIQUIDACION DE PRESTAMOS EN AUTOMATICO CON FECHA        *00560000
//*            DE VENCIEMIENTO DE LA P05.                              *00570000
//*                                                                    *00580000
//* PASO REINICIABLE POR RESTART.                                      *00590000
//**********************************************************************00600000
//PHC03P11 EXEC PGM=IKJEFT01                                            00610000
//ZMH028A1 DD DSN=SIVA.VAL.WKF.E&EMP..ZMHCPD03,DISP=SHR                 00611000
//SYSTSPRT DD SYSOUT=*                                                  00620000
//SYSPRINT DD SYSOUT=*                                                  00630000
//SYSOUT   DD SYSOUT=*                                                  00640000
//SYSDBOUT DD SYSOUT=*                                                  00650000
//SYSABOUT DD DUMMY                                                     00660000
//SYSUDUMP DD DUMMY                                                     00670000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC02T11),DISP=SHR                   00680000
//**********************************************************************00680100
//*                       ¢¢¢  ZM4DH029  !!!                           *00680200
//* PASO  10 : PHC03P10                                                *00680300
//*                                                                    *00680400
//* OBJETIVO : LIQUIDACION DE GARANTIAS EN AUTOMATICO CON FECHA        *00680500
//*            DE VENCIEMIENTO DE LA P05.                              *00680600
//*                                                                    *00680700
//* PASO REINICIABLE POR RESTART.                                      *00680800
//**********************************************************************00680900
//*OTM *  SE ELIMINA PASO POR OPTIMIZACION EN TRX                      *00681000
//**********************************************************************00681001
//*PHC03P10 EXEC PGM=IKJEFT01,COND=(4,LT)                               00681002
//*ZMH029A1 DD DSN=SIVA.VAL.WKF.E&EMP..ZMHCPD03,DISP=SHR                00681100
//*SYSTSPRT DD SYSOUT=*                                                 00681302
//*SYSPRINT DD SYSOUT=*                                                 00681402
//*SYSOUT   DD SYSOUT=*                                                 00681502
//*SYSDBOUT DD SYSOUT=*                                                 00681602
//*SYSABOUT DD DUMMY                                                    00681702
//*SYSUDUMP DD DUMMY                                                    00681802
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC02T10),DISP=SHR                  00681902
//*                                                                     00681903
//*                                                                     00681904
//**********************************************************************00682002
//*                       ¢¢¢  ZM4DGU27  !!!                           *00682102
//* PASO  09 : PHC03P09                                                *00683000
//*                                                                    *00684000
//* OBJETIVO : ACTUALIZA CONCEPT DE PRESTAMO DE VALORES (TITPRES Y     *00685000
//*            TITSOLI).                                               *00686000
//*                                                                    *00687000
//* PASO REINICIABLE POR RESTART.                                      *00688000
//**********************************************************************00689000
//PHC03P09 EXEC PGM=IKJEFT01,COND=(4,LT)                                00689101
//SYSTSPRT DD SYSOUT=*                                                  00689300
//SYSPRINT DD SYSOUT=*                                                  00689400
//SYSOUT   DD SYSOUT=*                                                  00689500
//SYSDBOUT DD SYSOUT=*                                                  00689600
//SYSABOUT DD DUMMY                                                     00689700
//SYSUDUMP DD DUMMY                                                     00689800
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC02T09),DISP=SHR                   00689900
//**********************************************************************00690000
//*                       ¢¢¢  ZM4DHB46  !!!                           *00700000
//* PASO: 08  PHC03P08                                                 *00720000
//*                                                                    *00730000
//* OBJETIVO : CONVERSION DE OPERAVA A SIVA                            *00740000
//*                                                                    *00750000
//* PASO REINICIABLE POR RESTART                                       *00760000
//**********************************************************************00770000
//PHC03P08 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780000
//ZMHB46A1 DD DSN=SIVA.VAL.WKF.E&EMP..ZMHCPD03,DISP=SHR                 00800000
//SYSTSPRT DD SYSOUT=*                                                  00810000
//SYSPRINT DD SYSOUT=*                                                  00820000
//SYSOUT   DD SYSOUT=*                                                  00830000
//SYSDBOUT DD SYSOUT=*                                                  00840000
//SYSABOUT DD DUMMY                                                     00850000
//SYSUDUMP DD DUMMY                                                     00860000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC02T08),DISP=SHR                   00870000
//**********************************************************************00880000
//*                       ¢¢¢  ZM4DH461  !!!                           *00890000
//*                                                                    *00900000
//* PASO  07 : PHC03P07                                                *00910000
//*                                                                    *00920000
//* OBJETIVO : GENERA WARCONF Y AGPOCTA A PARTIR DE SIVA    (WARRANTS) *00930000
//*                                                                    *00940000
//* PASO REINICIABLE POR RESTART                                       *00950000
//**********************************************************************00960000
//PHC03P07 EXEC PGM=IKJEFT01,COND=(4,LT)                                00970000
//ZMH461A1 DD DSN=SIVA.VAL.WKF.E&EMP..ZMHCPD03,DISP=SHR                 00980000
//SYSTSPRT DD SYSOUT=*                                                  00990000
//SYSPRINT DD SYSOUT=*                                                  01000000
//SYSOUT   DD SYSOUT=*                                                  01010000
//SYSDBOUT DD SYSOUT=*                                                  01020000
//SYSABOUT DD DUMMY                                                     01030000
//SYSUDUMP DD DUMMY                                                     01040000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC02T07),DISP=SHR                   01050000
//**********************************************************************01060000
//*                       ¢¢¢  ZM4MGF28  !!!                           *01070000
//*                                                                    *01080000
//* PASO  06 : PHC03P06                                                *01090000
//*                                                                    *01100000
//* OBJETIVO : CAMBIA DE ITIPOTEN DE 'I' POR 'D'                       *01110000
//*            A LOS INTERESES INDICATIVOS DE C.VARIOS                 *01120000
//*            SOLO EN PROCESO MENSUAL DE CARGOS VARIOS                *01130000
//*                                                                    *01140000
//* PASO REINICIABLE POR RESTART                                       *01150000
//**********************************************************************01160000
//PHC03P06 EXEC PGM=IKJEFT01,COND=(4,LT)                                01170000
//SYSTSPRT DD SYSOUT=*                                                  01180000
//SYSPRINT DD SYSOUT=*                                                  01190000
//SYSOUT   DD SYSOUT=*                                                  01200000
//SYSDBOUT DD SYSOUT=*                                                  01210000
//SYSABOUT DD DUMMY                                                     01220000
//SYSUDUMP DD DUMMY                                                     01230000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC02T06),DISP=SHR                   01240000
//**********************************************************************01250000
//*                       ¢¢¢  ZM4DHA79  !!!                           *01260000
//*                                                                    *01270000
//* PASO  05 : PHC03P05                                                *01280000
//*                                                                    *01290000
//* OBJETIVO : CALCULO DE LOS CARGOS POR CUSTODIA                      *01300000
//*                                                                    *01310000
//* PASO REINICIABLE POR RESTART                                       *01320000
//**********************************************************************01330000
//PHC03P05 EXEC PGM=IKJEFT01,COND=(4,LT)                                01340000
//ZMHA79A1 DD DSN=SIVA.VAL.WKF.E&EMP..ZMHCPD03,DISP=SHR                 01350000
//SYSTSPRT DD SYSOUT=*                                                  01360000
//SYSPRINT DD SYSOUT=*                                                  01370000
//SYSOUT   DD SYSOUT=*                                                  01380000
//SYSDBOUT DD SYSOUT=*                                                  01390000
//SYSABOUT DD DUMMY                                                     01400000
//SYSUDUMP DD DUMMY                                                     01410000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC02T05),DISP=SHR                   01420000
//**********************************************************************01430000
//*                       ¢¢¢  ZM4DGJ75  !!!                           *01440000
//*                                                                    *01450000
//* PASO  04 : PHC03P04                                                *01460000
//*                                                                    *01470000
//* OBJETIVO : ACTUALIZA MOPEACT DE TABLA OPERES                       *01480000
//*                                                                    *01490000
//* PASO REINICIABLE POR RESTART                                       *01500000
//**********************************************************************01510000
//PHC03P04 EXEC PGM=IKJEFT01,COND=(4,LT)                                01520000
//SYSTSPRT DD SYSOUT=*                                                  01530000
//SYSPRINT DD SYSOUT=*                                                  01540000
//SYSOUT   DD SYSOUT=*                                                  01550000
//SYSDBOUT DD SYSOUT=*                                                  01560000
//SYSABOUT DD DUMMY                                                     01570000
//SYSUDUMP DD DUMMY                                                     01580000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC02T04),DISP=SHR                   01590000
//**********************************************************************01600000
//*                       ¢¢¢  ZM4DHB71  !!!                           *01610000
//*                                                                    *01620000
//* PASO  03 : PHC03P03                                                *01630000
//*                                                                    *01640000
//* OBJETIVO : ACTUALIZA BURSATILIDAD EN CONCEPT Y TV3 EN PARAM        *01650000
//*                                                                    *01660000
//* PASO REINICIABLE POR RESTART.                                      *01670000
//**********************************************************************01680000
//PHC03P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                01690000
//SYSTSPRT DD SYSOUT=*                                                  01700000
//SYSPRINT DD SYSOUT=*                                                  01710000
//SYSOUT   DD SYSOUT=*                                                  01720000
//SYSDBOUT DD SYSOUT=*                                                  01730000
//SYSABOUT DD DUMMY                                                     01740000
//SYSUDUMP DD DUMMY                                                     01750000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC02T03),DISP=SHR                   01760000
//**********************************************************************01770000
//*                       ¢¢¢  ZM4DH252  !!!                           *01780000
//*                                                                    *01790000
//* PASO  02 : PHC03P02                                                *01800000
//*                                                                    *01810000
//* OBJETIVO : GENERACION DE ARCHIVO CON INFORMACION DE ACCIONES       *01820000
//*            PROPIAS -SISASI-***SOC. INVERS.                         *01830000
//*                                                                    *01840000
//* ESTE PROCESO SE MOVIO DEL CIERRE DE SOCIEDADES A ESTE PASO- IEF    *01850000
//* PORQUE EN OCACIONES NO GENERABA INFORMACION                        *01860000
//**********************************************************************01870000
//PHC03P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                01880000
//ZMH252A1 DD DSN=SIVA.VAL.WKF.E&EMP..ZMHCPD03,DISP=SHR                 01900000
//ZMH252A3 DD DSN=SIVA.SIN.FIX.SISAAP,                                  01910000
//         DISP=(NEW,CATLG,DELETE),                                     01920000
//         SPACE=(CYL,(500,250),RLSE),                                  01930000
//         DCB=(LRECL=252,BLKSIZE=0,RECFM=FB,DSORG=PS),                 01940000
//         UNIT=3390                                                    01950000
//SYSTSPRT DD SYSOUT=*                                                  01960000
//SYSPRINT DD SYSOUT=*                                                  01970000
//SYSOUT   DD SYSOUT=*                                                  01980000
//SYSDBOUT DD SYSOUT=*                                                  01990000
//SYSABOUT DD DUMMY                                                     02000000
//SYSUDUMP DD DUMMY                                                     02010000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC02T02),DISP=SHR                   02020000
//**********************************************************************02030000
//*                       ¢¢¢  ZM4DG875  !!!                           *02040000
//*                                                                    *02050000
//* PASO  01 : PHC03P01                                                *02060000
//*                                                                    *02070000
//* OBJETIVO : MARCA EL CIERRE DE VALORES                              *02080000
//*                                                                    *02090000
//* PASO REINICIABLE POR RESTART                                       *02100000
//**********************************************************************02110000
//PHC03P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                02120000
//ZMG875A1 DD DSN=SIVA.VAL.WKF.E&EMP..ZMHCPD03,DISP=SHR                 02130000
//SYSTSPRT DD SYSOUT=*                                                  02140000
//SYSPRINT DD SYSOUT=*                                                  02150000
//SYSOUT   DD SYSOUT=*                                                  02160000
//SYSDBOUT DD SYSOUT=*                                                  02170000
//SYSABOUT DD DUMMY                                                     02180000
//SYSUDUMP DD DUMMY                                                     02190000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC02T01),DISP=SHR                   02200000
//**********************************************************************02210000
//*                       ¢¢¢  ZM4DH027  !!!                           *02220000
//* PASO  00 : PHC03P00                                                *02240000
//* OBJETIVO : DA DE BAJA LAS @'S PENDIENTES POR LIQUIDACION DE        *02260000
//*            DERECHOS SIN POSICION DE RV Y RF MUV.                   *02261000
//* PASO REINICIABLE POR RESTART                                       *02280000
//**********************************************************************02290000
//PHC03P00 EXEC PGM=IKJEFT01,COND=(4,LT)                                02300000
//ZMH027A1 DD DSN=SIVA.VAL.WKF.E&EMP..ZMHCPD03,DISP=SHR                 02310000
//SYSTSPRT DD SYSOUT=*                                                  02320000
//SYSPRINT DD SYSOUT=*                                                  02330000
//SYSOUT   DD SYSOUT=*                                                  02340000
//SYSDBOUT DD SYSOUT=*                                                  02350000
//SYSABOUT DD DUMMY                                                     02360000
//SYSUDUMP DD DUMMY                                                     02370000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC03T00),DISP=SHR                   02380000
//**********************************************************************02380100
//*                       ¢¢¢  ZM4REAR1  !!!                           *02380200
//* PASO  0A : PHC03P0A                                                *02380300
//* OBJETIVO : GENERA REPORTE DE  @'S CON CORTE PENDIENTES DE PAGO     *02380400
//**********************************************************************02380700
//PHC03P0A EXEC PGM=IKJEFT01                                            02380800
//*                                                                     02380900
//ARROBAS  DD DSN=MXCP.ZM.FIX.REPORTE.CORTE.ARROBAS,                    02381000
//            DISP=(NEW,CATLG,DELETE),                                  02381100
//            DCB=(DSORG=PS,RECFM=FB,LRECL=500,BLKSIZE=0),              02381200
//            UNIT=3390,                                                02381300
//            SPACE=(CYL,(1000,1000),RLSE)                              02381400
//*                                                                     02381500
//SYSTSPRT DD SYSOUT=*                                                  02381600
//SYSPRINT DD SYSOUT=*                                                  02381700
//SYSOUT   DD SYSOUT=*                                                  02381800
//SYSDBOUT DD SYSOUT=*                                                  02381900
//SYSABOUT DD DUMMY                                                     02382000
//SYSUDUMP DD DUMMY                                                     02382100
//*                                                                     02382200
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMIREAR1),DISP=SHR                   02382300
//*                                                                     02382400
//**********************************************************************02382500
//*                       ¢¢¢  ZM4REAR2  !!!                           *02382600
//* PASO  0A : PHC03P0B                                                *02382700
//* OBJETIVO : GENERA REPORTE DE  EMISORAS BLOQUEADAS                  *02382800
//**********************************************************************02382900
//PHC03P0B EXEC PGM=IKJEFT01                                            02383000
//*                                                                     02383100
//BLQEADAS DD DSN=MXCP.ZM.FIX.REPORTE.EMSRAS.BLQEADAS,                  02383200
//            DISP=(NEW,CATLG,DELETE),                                  02383300
//            DCB=(DSORG=PS,RECFM=FB,LRECL=100,BLKSIZE=0),              02383400
//            UNIT=3390,                                                02383500
//            SPACE=(CYL,(05,05),RLSE)                                  02383600
//*                                                                     02383700
//SYSTSPRT DD SYSOUT=*                                                  02383800
//SYSPRINT DD SYSOUT=*                                                  02383900
//SYSOUT   DD SYSOUT=*                                                  02384000
//SYSDBOUT DD SYSOUT=*                                                  02384100
//SYSABOUT DD DUMMY                                                     02384200
//SYSUDUMP DD DUMMY                                                     02384300
//*                                                                     02384400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMIREAR2),DISP=SHR                   02384500
//*                                                                     02384600
