//ZMHLPE37 PROC                                                         00010000
//*--------------------------------------------------------------------*00020000
//*                                                                    *00030000
//*                     C A S A   D E   B O L S A                      *00040000
//*                     =-=-=-=---=-=---=-=-=-=-=                      *00050000
//*                     <<  MERCADO DE VALORES >>                      *00060000
//*                                                                    *00070000
//*   APLICACION       : SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *00080000
//*                                                                    *00090000
//*   PROCEDIMIENTO    : ZMHLPE37              Antes CONPROIN          *00100000
//*                                                                    *00110000
//*   OBJETIVO         : PROCESO DE CONCILIACION CON INDEVAL           *00120000
//*                                                                    *00130000
//*   CORRE ANTES DE   : NINGUNO                                       *00140000
//*                                                                    *00150000
//*   CORRE DESPUES DE : NINGUNO                                       *00160000
//*                                                                    *00170000
//*   PERIODICIDAD     : CORRE A SOLICITUD DEL USUARIO                 *00180000
//*                                                                    *00190000
//*   FECHA            : JUNIO 16, 2003                                *00200000
//*                                                                    *00210000
//*   AUTOR            : NOE ALVAREZ MELGAR                            *00220000
//*                                                                    *00230000
//*--------------------------------------------------------------------*00240000
//*                                                                     00250000
//*==================================================================== 00260000
//*                                 P A S O    P R E L I M I N A R      00270000
//*  Recibe los Parámetros enviados de CICS y los graba en Archivo      00280000
//*==================================================================== 00290000
//PHL37P15 EXEC PGM=ZM3DG001,REGION=0M,COND=(4,LT),                     00300000
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00310000
//PI601765 DD DUMMY                                                     00311000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00320000
//SYSPRINT DD SYSOUT=*                                                  00330000
//SYSOUT   DD SYSOUT=*                                                  00340000
//SYSDBOUT DD SYSOUT=*                                                  00350000
//SYSABOUT DD DUMMY                                                     00360000
//SYSUDUMP DD DUMMY                                                     00370000
//*                                                                     00380000
//ZMG001A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE37,               00390000
//            DISP=(NEW,PASS),                                          00400000
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00410000
//            UNIT=3390,                                                00420000
//            SPACE=(CYL,(1,1),RLSE)                                    00430000
//********************************************************************* 00440000
//*   EJECUCION DEL PROGRAMA:  ZM4DHB51                antes  VOBB51D   00450000
//*   La posición de la casa según INDEVAL para fines de conciliación   00460000
//*   de emisoras de  mercado de capitales y  sociedades de inversión   00470000
//********************************************************************* 00480000
//PHL37P14 EXEC PGM=IKJEFT01,REGION=0M,COND=(4,LT)                      00490000
//PI601765 DD DUMMY                                                     00491000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00500000
//SYSPRINT DD SYSOUT=*                                                  00510000
//*MHB51T0 DD DSN=SIVA.VAL.FIX.INDEVAL,DISP=SHR,UNIT=3390               00520000
//ZMHB51T0 DD DSN=MXCP.ALTAMIRA.ZM.INDEVAL,DISP=SHR,UNIT=3390           00521000
//ZMHB51T1 DD DSN=&&ARCHT1,                                             00530000
//            DISP=(NEW,PASS),                                          00540000
//            DCB=(RECFM=FB,LRECL=146,BLKSIZE=0),                       00550000
//            UNIT=3390,                                                00560000
//            SPACE=(CYL,(100,10),RLSE)                                 00570000
//SORTWK01 DD UNIT=3390,                                                00580000
//            SPACE=(CYL,(5,3),RLSE)                                    00590000
//SORTWK02 DD UNIT=3390,                                                00591000
//            SPACE=(CYL,(5,3),RLSE)                                    00592000
//SORTWK03 DD UNIT=3390,                                                00593000
//            SPACE=(CYL,(5,3),RLSE)                                    00594000
//SORTWK04 DD UNIT=3390,                                                00595000
//            SPACE=(CYL,(5,3),RLSE)                                    00596000
//SORTWK05 DD UNIT=3390,                                                00597000
//            SPACE=(CYL,(5,3),RLSE)                                    00598000
//SORTWK06 DD UNIT=3390,                                                00599000
//            SPACE=(CYL,(5,3),RLSE)                                    00599100
//SORTWK07 DD UNIT=3390,                                                00599200
//            SPACE=(CYL,(5,3),RLSE)                                    00599300
//SORTWK08 DD UNIT=3390,                                                00599400
//            SPACE=(CYL,(5,3),RLSE)                                    00599500
//SORTWK09 DD UNIT=3390,                                                00599600
//            SPACE=(CYL,(5,3),RLSE)                                    00599700
//SORTWK10 DD UNIT=3390,                                                00599800
//            SPACE=(CYL,(5,3),RLSE)                                    00599900
//SYSOUT   DD SYSOUT=*                                                  00600000
//SYSDBOUT DD SYSOUT=*                                                  00610000
//SYSABOUT DD DUMMY                                                     00620000
//SYSUDUMP DD DUMMY                                                     00630000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL37T01),DISP=SHR                   00640000
//********************************************************************* 00650000
//*   EJECUCION DEL PROGRAMA:  ZM4DHB48            antes  VIBB48D       00660000
//*   Emitir el informe de conciliación de valores con el INDEVAL       00670000
//********************************************************************* 00680000
//PHL37P13 EXEC PGM=IKJEFT01,REGION=0M,COND=(4,LT)                      00690000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00700000
//ZMHB48A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE37,               00710001
//            DISP=(OLD,PASS)                                           00711001
//ZMHB48R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00720000
//SYSPRINT DD SYSOUT=*                                                  00730000
//SYSOUT   DD SYSOUT=*                                                  00740000
//SYSDBOUT DD SYSOUT=*                                                  00750000
//SYSABOUT DD SYSOUT=*                                                  00760000
//SYSUDUMP DD DUMMY                                                     00770000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL37T02),DISP=SHR                   00780000
//********************************************************************* 00790000
//*   EJECUCION DEL PROGRAMA:  ZM4DHB49            antes  VIBB49D       00800000
//*   Emitir el informe de conciliación de valores con el INDEVAL       00810000
//********************************************************************* 00820000
//PHL37P12 EXEC PGM=IKJEFT01,REGION=0M,COND=(4,LT)                      00830000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00840000
//ZMHB49A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE37,               00850001
//            DISP=(OLD,PASS)                                           00851001
//ZMHB49R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00860000
//SYSPRINT DD SYSOUT=*                                                  00870000
//SYSOUT   DD SYSOUT=*                                                  00880000
//SYSDBOUT DD SYSOUT=*                                                  00890000
//SYSABOUT DD SYSOUT=*                                                  00900000
//SYSUDUMP DD DUMMY                                                     00910000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL37T03),DISP=SHR                   00920000
//*                                                                     00930000
//*-------------------------------------------------------------------- 00940000
//*        AVISO EN CASO DE ERROR A LA CONSOLA                          00950000
//*-------------------------------------------------------------------- 00960000
//PHL37P11 EXEC PGM=MAILOPER,COND=(4,GE,PHL37P12),                      00970000
//         PARM=('/AVISAR A PRODUCCION QUE PROCESO ',                   00980000
//             'SIVAXCPI(ZMHLPE37) TERMINO MAL.CONTESTAR SI',           00990000
//             'PARA TERMINAR')                                         01000000
//**********************************************************************01010000
//*   EJECUCION DEL PROGRAMA:  ZM4DHB67          antes  VOBB67D         01020000
//*   Generar archivo con la posición de INDEVAL con el tipo de         01030000
//*   valor de "Probursa" para la generación de la conciliación         01040000
//********************************************************************* 01050000
//PHL37P10 EXEC PGM=IKJEFT01,REGION=0M,COND=(4,LT)                      01060000
//PI601765 DD DUMMY                                                     01061000
//SYSTSPRT DD SYSOUT=*                                                  01070000
//*MHB67A1 DD DSN=SIVA.VAL.FIX.INDEVAL,DISP=SHR                         01080000
//ZMHB67A1 DD DSN=MXCP.ALTAMIRA.ZM.INDEVAL,DISP=SHR                     01081000
//ZMHB67S1 DD DSN=SIVA.VAL.FIX.SDOIND,                                  01090000
//            DISP=(NEW,CATLG,DELETE),                                  01100000
//            DCB=(RECFM=FB,LRECL=41,BLKSIZE=0),                        01110000
//            UNIT=3390,                                                01120000
//            SPACE=(CYL,(05,05),RLSE)                                  01130000
//SYSPRINT DD SYSOUT=*                                                  01140000
//SORTWK01 DD UNIT=3390,                                                01150000
//            SPACE=(CYL,(5,3),RLSE)                                    01151000
//SORTWK02 DD UNIT=3390,                                                01152000
//            SPACE=(CYL,(5,3),RLSE)                                    01153000
//SORTWK03 DD UNIT=3390,                                                01154000
//            SPACE=(CYL,(5,3),RLSE)                                    01155000
//SORTWK04 DD UNIT=3390,                                                01156000
//            SPACE=(CYL,(5,3),RLSE)                                    01157000
//SORTWK05 DD UNIT=3390,                                                01158000
//            SPACE=(CYL,(5,3),RLSE)                                    01159000
//SORTWK06 DD UNIT=3390,                                                01159100
//            SPACE=(CYL,(5,3),RLSE)                                    01159200
//SORTWK07 DD UNIT=3390,                                                01159300
//            SPACE=(CYL,(5,3),RLSE)                                    01159400
//SORTWK08 DD UNIT=3390,                                                01159500
//            SPACE=(CYL,(5,3),RLSE)                                    01159600
//SORTWK09 DD UNIT=3390,                                                01159700
//            SPACE=(CYL,(5,3),RLSE)                                    01159800
//SORTWK10 DD UNIT=3390,                                                01159900
//            SPACE=(CYL,(5,3),RLSE)                                    01160000
//SYSOUT   DD SYSOUT=*                                                  01161000
//PRINT    DD SYSOUT=*                                                  01170000
//SYSDBOUT DD SYSOUT=*                                                  01180000
//SYSABOUT DD SYSOUT=*                                                  01190000
//SYSUDUMP DD DUMMY                                                     01200000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL37T04),DISP=SHR                   01210000
//**********************************************************************01220000
//* PROGRAMA: SORT                                                    * 01230000
//* OBJETIVO: Ordenar por emisora, serie y tipo de valor              * 01240000
//*              el archivo generado en el paso anterior              * 01250000
//**********************************************************************01260000
//PHL37P09 EXEC PGM=ICEMAN,COND=(4,LT)                                  01270000
//PI601765 DD DUMMY                                                     01271000
//SORTIN   DD DSN=SIVA.VAL.FIX.SDOIND,                                  01300000
//            DISP=SHR                                                  01310000
//SORTOUT  DD DSN=SIVA.VAL.FIX.SDOIND.ORD,                              01320000
//            DISP=(NEW,CATLG,DELETE),                                  01330000
//            DCB=(RECFM=FB,LRECL=41,BLKSIZE=0),                        01340000
//            UNIT=3390,                                                01350000
//            SPACE=(CYL,(05,5),RLSE)                                   01360000
//SYSOUT   DD SYSOUT=*                                                  01370000
//SYSPRINT DD SYSOUT=*                                                  01380000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL37T05),DISP=SHR                   01390000
//**********************************************************************01400000
//* PROGRAMA:  SORT                                                   * 01410000
//* OBJETIVO:  Ordenar archivo del prog ZM4DHB61 por                  * 01420000
//*            emisora, serie, tipo de valor y monto                  * 01430000
//**********************************************************************01440000
//PHL37P08 EXEC PGM=ICEMAN,COND=(4,LT)                                  01450000
//PI601765 DD DUMMY                                                     01451000
//SORTIN   DD DSN=SIVA.VAL.FIX.SDOPROB,DISP=SHR                         01480000
//SORTOUT  DD DSN=SIVA.VAL.FIX.SDOPROB.ORD,                             01490000
//            DISP=(NEW,CATLG,DELETE),                                  01500000
//            DCB=(RECFM=FB,LRECL=53,BLKSIZE=0),                        01510000
//            UNIT=3390,                                                01520000
//            SPACE=(CYL,(05,5),RLSE)                                   01530000
//SYSOUT   DD SYSOUT=*                                                  01540000
//SYSPRINT DD SYSOUT=*                                                  01550000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL37T06),DISP=SHR                   01560000
//**********************************************************************01570000
//* PROGRAMA:  SORT                                                   * 01580000
//* OBJETIVO:  Ordenar archivo del prog ZM4DHB61 por                  * 01590000
//*            emisora, serie, tipo de valor y monto                  * 01600000
//**********************************************************************01610000
//PHL37P07 EXEC PGM=ICEMAN,COND=(4,LT)                                  01620000
//PI601765 DD DUMMY                                                     01621000
//SORTIN   DD DSN=SIVA.VAL.FIX.SDOEXC,DISP=SHR                          01650000
//SORTOUT  DD DSN=SIVA.VAL.FIX.SDOEXC.ORD,                              01660000
//            DISP=(NEW,CATLG,DELETE),                                  01670000
//            DCB=(RECFM=FB,LRECL=53,BLKSIZE=0),                        01680000
//            UNIT=3390,                                                01690000
//            SPACE=(CYL,(05,5),RLSE)                                   01700000
//SYSOUT   DD SYSOUT=*                                                  01710000
//SYSPRINT DD SYSOUT=*                                                  01720000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL37T06),DISP=SHR                   01730000
//**********************************************************************01740000
//* PROGRAMA:  SORT                                                   * 01750000
//* OBJETIVO:  Ordenar archivo del prog ZM4DHB61 por                  * 01760000
//*            emisora, serie, tipo de valor y monto                  * 01770000
//**********************************************************************01780000
//PHL37P06 EXEC PGM=ICEMAN,COND=(4,LT)                                  01790000
//PI601765 DD DUMMY                                                     01791000
//SORTIN   DD DSN=SIVA.VAL.FIX.SDOPOP.BUENO,DISP=SHR                    01820000
//SORTOUT  DD DSN=SIVA.VAL.FIX.SDOPOP.ORD,                              01830000
//            DISP=(NEW,CATLG,DELETE),                                  01840000
//            DCB=(RECFM=FB,LRECL=53,BLKSIZE=0),                        01850000
//            UNIT=3390,                                                01860000
//            SPACE=(CYL,(05,5),RLSE)                                   01870000
//SYSOUT   DD SYSOUT=*                                                  01880000
//SYSPRINT DD SYSOUT=*                                                  01890000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL37T06),DISP=SHR                   01900000
//**********************************************************************01910000
//*   EJECUCION DEL PROGRAMA:  ZM4DHB66    antes  VIBB66D               01920000
//*   Generar el archivo de conciliación de valores entre               01930000
//*   la posición de INDEVAL y la posición de PROBURSA                  01940000
//**********************************************************************01950000
//PHL37P05 EXEC PGM=IKJEFT01,REGION=0M,COND=(4,LT)                      01960000
//PI601765 DD DUMMY                                                     01961000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    01970000
//ZMHB66A1 DD DSN=SIVA.VAL.FIX.SDOIND.ORD,                              01980000
//            DISP=SHR                                                  01990000
//ZMHB66A2 DD DSN=SIVA.VAL.FIX.SDOPROB.ORD,                             02000000
//            DISP=SHR                                                  02010000
//ZMHB66A3 DD DSN=SIVA.VAL.FIX.CONCILIA,                                02020000
//            DISP=(NEW,CATLG,CATLG),                                   02030000
//            DCB=(RECFM=FB,LRECL=71,BLKSIZE=0),                        02040000
//            UNIT=3390,                                                02050000
//            SPACE=(CYL,(05,10),RLSE)                                  02060000
//SYSPRINT DD SYSOUT=*                                                  02070000
//SORTWK01 DD UNIT=3390,                                                02071000
//            SPACE=(CYL,(5,3),RLSE)                                    02072000
//SORTWK02 DD UNIT=3390,                                                02073000
//            SPACE=(CYL,(5,3),RLSE)                                    02074000
//SORTWK03 DD UNIT=3390,                                                02075000
//            SPACE=(CYL,(5,3),RLSE)                                    02076000
//SORTWK04 DD UNIT=3390,                                                02077000
//            SPACE=(CYL,(5,3),RLSE)                                    02078000
//SORTWK05 DD UNIT=3390,                                                02079000
//            SPACE=(CYL,(5,3),RLSE)                                    02079100
//SORTWK06 DD UNIT=3390,                                                02079200
//            SPACE=(CYL,(5,3),RLSE)                                    02079300
//SORTWK07 DD UNIT=3390,                                                02079400
//            SPACE=(CYL,(5,3),RLSE)                                    02079500
//SORTWK08 DD UNIT=3390,                                                02079600
//            SPACE=(CYL,(5,3),RLSE)                                    02079700
//SORTWK09 DD UNIT=3390,                                                02079800
//            SPACE=(CYL,(5,3),RLSE)                                    02079900
//SORTWK10 DD UNIT=3390,                                                02080000
//            SPACE=(CYL,(5,3),RLSE)                                    02080100
//SYSOUT   DD SYSOUT=*                                                  02090000
//PRINT    DD SYSOUT=*                                                  02100000
//SYSDBOUT DD SYSOUT=*                                                  02110000
//SYSABOUT DD SYSOUT=*                                                  02120000
//SYSUDUMP DD DUMMY                                                     02130000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL37T07),DISP=SHR                   02140000
//**********************************************************************02150000
//*   EJECUCION DEL PROGRAMA:  ZM4DHB74      antes  VIBB74D             02160000
//*   Generar l archivo de conciliaciones entre la posición             02170000
//*   de INDEVAL y la posición de Probursa para Excluyentes             02180000
//**********************************************************************02190000
//PHL37P04 EXEC PGM=IKJEFT01,REGION=0M,COND=(4,LT)                      02200000
//PI601765 DD DUMMY                                                     02201000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    02210000
//ZMHB74A1 DD DSN=SIVA.VAL.FIX.SDOIND.ORD,                              02220000
//            DISP=SHR                                                  02230000
//ZMHB74A2 DD DSN=SIVA.VAL.FIX.SDOEXC.ORD,                              02240000
//            DISP=SHR                                                  02250000
//ZMHB74A3 DD DSN=SIVA.VAL.FIX.CONCILIA.EXCLUC,                         02260000
//            DISP=(NEW,CATLG,CATLG),                                   02270000
//            DCB=(RECFM=FB,LRECL=71,BLKSIZE=0),                        02280000
//            UNIT=3390,                                                02290000
//            SPACE=(CYL,(05,10),RLSE)                                  02300000
//SYSPRINT DD SYSOUT=*                                                  02310000
//SORTWK01 DD UNIT=3390,                                                02311000
//            SPACE=(CYL,(5,3),RLSE)                                    02312000
//SORTWK02 DD UNIT=3390,                                                02313000
//            SPACE=(CYL,(5,3),RLSE)                                    02314000
//SORTWK03 DD UNIT=3390,                                                02315000
//            SPACE=(CYL,(5,3),RLSE)                                    02316000
//SORTWK04 DD UNIT=3390,                                                02317000
//            SPACE=(CYL,(5,3),RLSE)                                    02318000
//SORTWK05 DD UNIT=3390,                                                02319000
//            SPACE=(CYL,(5,3),RLSE)                                    02319100
//SORTWK06 DD UNIT=3390,                                                02319200
//            SPACE=(CYL,(5,3),RLSE)                                    02319300
//SORTWK07 DD UNIT=3390,                                                02319400
//            SPACE=(CYL,(5,3),RLSE)                                    02319500
//SORTWK08 DD UNIT=3390,                                                02319600
//            SPACE=(CYL,(5,3),RLSE)                                    02319700
//SORTWK09 DD UNIT=3390,                                                02319800
//            SPACE=(CYL,(5,3),RLSE)                                    02319900
//SORTWK10 DD UNIT=3390,                                                02320000
//            SPACE=(CYL,(5,3),RLSE)                                    02320100
//SYSOUT   DD SYSOUT=*                                                  02330000
//PRINT    DD SYSOUT=*                                                  02340000
//SYSDBOUT DD SYSOUT=*                                                  02350000
//SYSABOUT DD SYSOUT=*                                                  02360000
//SYSUDUMP DD DUMMY                                                     02370000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL37T08),DISP=SHR                   02380000
//**********************************************************************02390000
//*   EJECUCION DEL PROGRAMA:  ZM4DHB75  antes  VIBB75D                 02400000
//*   Crear archivo de conciliaciones entre la posición                 02410000
//*   de INDEVAL  y la de Probursa para posición propia                 02420000
//**********************************************************************02430000
//PHL37P03 EXEC PGM=IKJEFT01,REGION=0M,COND=(4,LT)                      02440000
//PI601765 DD DUMMY                                                     02441000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    02450000
//ZMHB75A1 DD DSN=SIVA.VAL.FIX.SDOIND.ORD,                              02460000
//            DISP=SHR                                                  02470000
//ZMHB75A2 DD DSN=SIVA.VAL.FIX.SDOPOP.ORD,                              02480000
//            DISP=SHR                                                  02490000
//ZMHB75A3 DD DSN=SIVA.VAL.FIX.CONCILIA.POSPRO,                         02500000
//            DISP=(NEW,CATLG,CATLG),                                   02510000
//            DCB=(RECFM=FB,LRECL=71,BLKSIZE=0),                        02520000
//            UNIT=3390,                                                02530000
//            SPACE=(CYL,(05,10),RLSE)                                  02540000
//SYSPRINT DD SYSOUT=*                                                  02550000
//SORTWK01 DD UNIT=3390,                                                02551000
//            SPACE=(CYL,(5,3),RLSE)                                    02552000
//SORTWK02 DD UNIT=3390,                                                02553000
//            SPACE=(CYL,(5,3),RLSE)                                    02554000
//SORTWK03 DD UNIT=3390,                                                02555000
//            SPACE=(CYL,(5,3),RLSE)                                    02556000
//SORTWK04 DD UNIT=3390,                                                02557000
//            SPACE=(CYL,(5,3),RLSE)                                    02558000
//SORTWK05 DD UNIT=3390,                                                02559000
//            SPACE=(CYL,(5,3),RLSE)                                    02559100
//SORTWK06 DD UNIT=3390,                                                02559200
//            SPACE=(CYL,(5,3),RLSE)                                    02559300
//SORTWK07 DD UNIT=3390,                                                02559400
//            SPACE=(CYL,(5,3),RLSE)                                    02559500
//SORTWK08 DD UNIT=3390,                                                02559600
//            SPACE=(CYL,(5,3),RLSE)                                    02559700
//SORTWK09 DD UNIT=3390,                                                02559800
//            SPACE=(CYL,(5,3),RLSE)                                    02559900
//SORTWK10 DD UNIT=3390,                                                02560000
//            SPACE=(CYL,(5,3),RLSE)                                    02560100
//SYSOUT   DD SYSOUT=*                                                  02570000
//PRINT    DD SYSOUT=*                                                  02580000
//SYSDBOUT DD SYSOUT=*                                                  02590000
//SYSABOUT DD SYSOUT=*                                                  02600000
//SYSUDUMP DD DUMMY                                                     02610000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL37T09),DISP=SHR                   02620000
//****************************************************************      02630000
//*        AVISO EN CASO DE ERROR A LA CONSOLA                          02640000
//****************************************************************      02650000
//PHL37P02 EXEC PGM=MAILOPER,COND=(4,GE),                               02660000
//         PARM=('/AVISAR A SOPROD QUE SIVAXCPI (ZMHLPE37)',            02670000
//             ' TERMINO MAL: CONTESTAR SI PARA TERMINAR')              02680000
//****************************************************************      02700000
//*                SE ADICIONA CONDICION PARA                    *      02710000
//*                 QUE SEA TOMADA POR CTL-D                     *      02720000
//****************************************************************      02730000
//PHL37P01 EXEC PGM=CTMCND,PARM='ADD COND SIVAXCPI_IN_SEP_OK WDATE',    02740000
//             COND=(4,LT)                                              02750000
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   02760000
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   02770000
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 02780000
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   02790000
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   02800000
//PRTDBG   DD SYSOUT=*                                                  02810000
//SYSPRINT DD DUMMY                                                     02820000
//SYSUDUMP DD DUMMY                                                     02830000
//DAPRINT  DD SYSOUT=*                                                  02840000
//DACNDIN  DD DDNAME=SYSIN                                              02850000
//SYSIN    DD DUMMY                                                     02860000
