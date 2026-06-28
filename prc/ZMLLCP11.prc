//ZMLLCP11 PROC                                                         00010002
//**********************************************************************00020000
//*                          ==========                                *00030000
//*                           ZMLLCP11                                 *00040002
//*                          ==========                                *00050000
//*-- OBJETIVO  : LIQUIDACION DE PAGOS PENDIENTES DE AMORTIZAR         *00060000
//*                                                                    *00080000
//*-- REALIZO   : CAPGEMINI ARGENTINA                                  *00090000
//*                                                                    *00120000
//*--------------------------------------------------------------------*00130000
//*         L O G     D E     M O D I F I C A C I O N E S              *00140000
//*--------------------------------------------------------------------*00150000
//*   MARCA       AUTOR    FECHA    DESCRIPCION                         00160000
//*--------------------------------------------------------------------*00170000
//*CALIDAD-DELDATO XM010ZL 101019  SE INCLUYE ARCHIVO SALIDA -> ENTRADA*00180000
//*                                PARA BLOQUEO DE CONTRASTOS QUE PAGAN*00180100
//*                                GARANTIAS.                          *00180200
//*--------------------------------------------------------------------*00190000
//*                                                                     00390000
//**********************************************************************00400000
//*                                                                     00410000
//*- PASO     : PLC11P40                                                00420000
//*- PROGRAMA : IKJEFT01 (ZM4DLX28)                                     00430000
//*- DESCRIPC : GENERA LIQUIDACION DE PAGOS PENDIENTES DE AMORTIZAR     00440000
//*                                                                     00460000
//**********************************************************************00470000
//PLC11P40 EXEC PGM=IKJEFT01,COND=(4,LT)                                00480000
//*                                                                     00480100
//*CALIDAD-DELDATO-I                                                    00480200
//ZMLX28S1 DD  DSN=MXCP.ZM.FIX.MDD.ECBP.SZPR.ZMLX28S1,                  00480300
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,                       00480400
//             SPACE=(CYL,(20,10),RLSE),                                00480500
//             DCB=(DSORG=PS,LRECL=10,BLKSIZE=0,RECFM=FB)               00480600
//*CALIDAD-DELDATO-F                                                    00480700
//SYSOUT   DD  SYSOUT=*                                                 00510000
//SYSPRINT DD  SYSOUT=*                                                 00520000
//SYSTSPRT DD  SYSOUT=*                                                 00530000
//SYSDBOUT DD  SYSOUT=*                                                 00540000
//SYSABOUT DD  SYSOUT=*                                                 00550000
//SYSUDUMP DD  SYSOUT=*                                                 00560000
//SYSIN    DD  DUMMY                                                    00570000
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLP11T40),DISP=SHR                  00580000
//*                                                                     00590000
//*CALIDAD-DELDATO-I                                                    00590100
//**********************************************************************00590200
//*  PROGRAMA: ZM4DLX31                                                 00590300
//*  FUNCION:  ACTUALIZA LA TABLA CUENTA Y CAUSCAN CANDADO 1 PARA       00590400
//*            GARANTIAS DE AMORTIZACION                                00590500
//**********************************************************************00590600
//PLC41P04 EXEC PGM=IKJEFT01,COND=(4,LT)                                00590700
//*                                                                     00590800
//ENTRADA  DD DSN=MXCP.ZM.FIX.MDD.ECBP.SZPR.ZMLX28S1,DISP=SHR           00590900
//*                                                                     00591000
//SYSTSPRT DD  SYSOUT=*                                                 00591100
//SYSPRINT DD  SYSOUT=*                                                 00591200
//SYSOUT   DD  SYSOUT=*                                                 00591300
//SYSDBOUT DD  SYSOUT=*                                                 00591400
//SYSABOUT DD  DUMMY                                                    00591500
//SYSUDUMP DD  DUMMY                                                    00591600
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLC41T01),DISP=SHR                  00591700
//*CALIDAD-DELDATO-F                                                    00591800
//**********************************************************************00600000
//*                                                                     00610000
//*- PASO     : PLC11P30                                                00620000
//*- PROGRAMA : IKJEFT01 (ZM4DLD59)                                     00630000
//*- DESCRIPC : GENERACION DE REPORTES POR AMORTIZACION DE EMISORAS.    00640000
//*                                                                     00650000
//**********************************************************************00660000
//PLC11P30 EXEC PGM=IKJEFT01,COND=(4,LT)                                00670000
//*                                                                     00680000
//ZMLH59A1 DD DSN=MXCP.ZM.FIX.MDD.ECBP.SZPR.ZXLLPC11,DISP=SHR           00690002
//*                                                                     00690100
//ZMLH59R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00691000
//ZMLH59R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00692000
//*                                                                     00693000
//ZMLH59F1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00694000
//ZMLH59F2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00700000
//*                                                                     00700100
//ZMLH59A2 DD DSN=MXCP.ZM.FIX.MDD.ECBP.SZPR.AMORT,                      00700200
//            DISP=(NEW,CATLG,DELETE),                                  00700400
//            DCB=(DSORG=PS,RECFM=FB,LRECL=268,BLKSIZE=0),              00700500
//            UNIT=3390,                                                00700600
//            SPACE=(CYL,(6,3),RLSE)                                    00700700
//*                                                                     00701000
//SYSOUT   DD  SYSOUT=*                                                 00720000
//SYSPRINT DD  SYSOUT=*                                                 00730000
//SYSTSPRT DD  SYSOUT=*                                                 00740000
//SYSDBOUT DD  SYSOUT=*                                                 00750000
//SYSABOUT DD  SYSOUT=*                                                 00760000
//SYSUDUMP DD  SYSOUT=*                                                 00770000
//SYSIN    DD  DUMMY                                                    00780000
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLC11T30),DISP=SHR                  00790000
//*                                                                     00800000
//**********************************************************************00810000
//*                                                                     00820000
//*- PASO     : PLC11P20                                                00830000
//*- PROGRAMA : IKJEFT01 (ZM4DLE11)                                     00840000
//*- DESCRIPC : ACTUALIZA EL FINAL DEL PROCESO DE LIQUIDACION EN LINEA  00850000
//*-            DE CORTE DE CUPON. (ACT EN "F" EL EVENTO LIQ).          00851000
//*                                                                     00860000
//**********************************************************************00870000
//PLC11P20 EXEC PGM=IKJEFT01,COND=(4,LT)                                00880000
//*                                                                     00910000
//ZMLE11A1 DD DSN=MXCP.ZM.FIX.MDD.ECBP.SZPR.ZXLLPC11,DISP=SHR           00920002
//*                                                                     00921001
//SYSOUT   DD  SYSOUT=*                                                 00930000
//SYSPRINT DD  SYSOUT=*                                                 00940000
//SYSTSPRT DD  SYSOUT=*                                                 00950000
//SYSDBOUT DD  SYSOUT=*                                                 00960000
//SYSABOUT DD  SYSOUT=*                                                 00970000
//SYSUDUMP DD  SYSOUT=*                                                 00980000
//SYSIN    DD  DUMMY                                                    00990000
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLP08T20),DISP=SHR                  01000000
//*                                                                     01001000
//**********************************************************************01002000
