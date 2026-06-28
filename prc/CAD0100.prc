//CAD0100   PROC                                                        00010000
//**********************************************************************00020000
//*                                                                    *00030000
//*     BBB  BBB  VV VV    PPPP RRRR OOOO BBB  U  U RRRR SSSS AAAA     *00040000
//*     B BB B BB VV VV    P PP R RR O  O B BB U  U R RR S    A  A     *00050000
//*     BBBB BBBB VV VV @  PPPP RRRR O  O BBBB U  U RRRR SSSS AAAA     *00060000
//*     B BB B BB  VVV     P    RR   O  O B BB U  U RR      S A  A     *00070000
//*     BBB  BBB    V      P    R RR OOOO BBB  UUUU R RR SSSS A  A     *00080000
//*                                                                    *00090000
//**********************************************************************00100000
//**********************************************************************00110000
//*                                                                    *00120000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00130000
//*                                                                    *00140000
//* PROCESO        :  PCICAD01 1RA. PARTE DE 3.                        *00150000
//*                   CIERRE DE DIA DEL MODULO DE CAPITALES            *00160000
//*                                                                    *00170000
//* OBJETIVO       :  CERRAR LA OPERACION DEL DIA DE CAPITALES ENVIADO *00180000
//*                   POR CONTROL-M                                    *00190000
//*                                                                    *00200000
//* CORRE                                                              *00210000
//* ANTES DE       :  PCICAD06 (CIERRE DE CAPITALES 2DA. PARTE).       *00220000
//*                                                                    *00230000
//* DESPUES DE     :  SIVAXDEF Y OPERACION DIARIA EN EL SIVA           *00240000
//*                                                                    *00250000
//* REALIZO        :  JOEL GONZALEZ MARTINEZ                           *00260000
//* FECHA          :  FEBRERO    1992                                  *00270000
//*                                                                    *00280000
//* MODIFICO       :  RUBEN HERNANDEZ ORTIZ.                           *00290000
//* FECHA          :  ABRIL DE 1995.                                   *00300000
//*                                                                    *00310000
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA EN FORMA DIARIA    *00320000
//*                   SIEMPRE ANTES DE LA 2DA. PARTE DEL CIERRE        *00330000
//*                   PCICAD06.                                        *00340000
//**********************************************************************00350000
//* MODIFICACION   : SOFTTEK(RHB) ENE/1999                             *00360000
//*                  SE AGREGO SALIDA DE REPORTE VIB472R4 AL PASO      *00370000
//*   -              CAD0104.                                          *00380000
//**********************************************************************00390000
//* MODIFICACION   : SOFTTEK(RHB) MAR/2000                             *00400000
//*                  SE AUMENTO LA LONGITUD DEL ARCHIVO VIB465A2 EN    *00410000
//*                  7 POSICIONES.                                     *00420000
//**********************************************************************00430000
//**********************************************************************00440000
//* MODIFICACION   : ASATECK(OSCAR URBANO F.) 22/11/2000.              *00450000
//*                  SE INCLUYE PROCES CAD0122 ARCHIVO OPERACIONES     *00460000
//*                  DE HECHOS BP.                                     *00470000
//**********************************************************************00480000
//**********************************************************************00490001
//* OBJETIVO : REPORTE DE SOLICITUD DE ORDENES                         *00520001
//*                        -- VIBU81D --                               *00530001
//* JFE --> REPORTE PARALELO DEL VIBU67D                               *00540001
//**********************************************************************00550001
//CAD0127  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00560001
//VIBU81R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00570001
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(1,1),RLSE)                          00580001
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    00590001
//SYSPRINT DD SYSOUT=X                                                  00600001
//SYSOUT   DD SYSOUT=X                                                  00610001
//SYSDBOUT DD SYSOUT=X                                                  00620001
//SYSABOUT DD DUMMY                                                     00630001
//SYSUDUMP DD DUMMY                                                     00640001
//SYSTSIN  DD DSN=SIVA.CARDS(CAD0127),DISP=SHR                          00650001
//**********************************************************************00660001
//**********************************************************************00661000
//*                        -- VIBU69D --                               *00662000
//*                                                                    *00663000
//* OBJETIVO : REPORTE DE PAQUETES DEL DIA (CONTROL INTERNO)           *00664000
//*                                                                    *00665000
//* PASO REINICIABLE POR RESTART                                       *00666000
//**********************************************************************00667000
//CAD0122  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00668000
//VIBU69R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00669000
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(1,1),RLSE)                          00669100
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    00669200
//SYSPRINT DD SYSOUT=X                                                  00669300
//SYSOUT   DD SYSOUT=X                                                  00669400
//SYSDBOUT DD SYSOUT=X                                                  00669500
//SYSABOUT DD DUMMY                                                     00669600
//SYSUDUMP DD DUMMY                                                     00669700
//SYSTSIN  DD DSN=SIVA.CARDS(CAD0122),DISP=SHR                          00669800
//**********************************************************************00669900
//*                        -- VIBU83D --                               *00670000
//*                                                                    *00670100
//* OBJETIVO : REPORTE DE ORDENES GLOBALES                             *00670200
//* JFE --> REPORTE PARALELO DEL VIBU69D QUE CORRE EN EL CAD0122       *00670300
//*                                                                    *00670400
//* PASO REINICIABLE POR RESTART                                       *00670500
//**********************************************************************00670600
//CAD0122A EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00670700
//VIBU83R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00670800
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(1,1),RLSE)                          00670900
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    00671000
//SYSPRINT DD SYSOUT=X                                                  00671100
//SYSOUT   DD SYSOUT=X                                                  00671200
//SYSDBOUT DD SYSOUT=X                                                  00671300
//SYSABOUT DD DUMMY                                                     00671400
//SYSUDUMP DD DUMMY                                                     00671500
//SYSTSIN  DD DSN=SIVA.CARDS(CAD0122A),DISP=SHR                         00671600
//**********************************************************************00671700
//**********************************************************************00671800
//*                                                                    *00672000
//* OBJETIVO : EJECUTA QUERIES PARA OBTENER LAS ORDENES GLOBALES X HORA*00680000
//*                                                                    *00690000
//*   PASO REINICIABLE                                                 *00700000
//**********************************************************************00710000
//*                                                                     00720000
//CAD0121   EXEC PGM=IKJEFT01,TIME=1440,DYNAMNBR=30,REGION=4M           00730000
//STEPLIB  DD DSN=LDB2MXP1.DBP1.SDSQLOAD,DISP=SHR * QMF MODULES  *      00740000
//         DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR * DB2 MODULES  *
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSPROC  DD DSN=LDB2MXP1.DBP1.SDSQCLTE,DISP=SHR                       00770000
//         DD DSN=LDB2MXP1.DBP1.SDSQEXCE,DISP=SHR                       00780000
//SYSPRINT DD TERM=TS,SYSOUT=Z                                          00790000
//ISPPLIB  DD DSN=LDB2MXP1.DBP1.SDSQPLBE,DISP=SHR                       00800000
//         DD DSN=ISF.SISFPLIB,DISP=SHR     * ERA ISRPLIB               00810000
//         DD DSN=ISP.SISPPENU,DISP=SHR     * ERA ISPPLIB               00820000
//         DD DSN=LDB2MXP1.DBP1.SDSNSPFP,DISP=SHR                       00830000
//         DD DSN=LDB2MXP1.DBP1.SDSNPFPE,DISP=SHR                       00840000
//ISPMLIB  DD DSN=LDB2MXP1.DBP1.SDSQMLBE,DISP=SHR                       00850000
//         DD DSN=ISF.SISFMLIB,DISP=SHR     * ERA ISRMLIB               00860000
//         DD DSN=ISP.SISPMENU,DISP=SHR     * ERA ISPMLIB               00870000
//         DD DSN=LDB2MXP1.DBP1.SDSNSPFM,DISP=SHR                       00880000
//ISPSLIB  DD DSN=LDB2MXP1.DBP1.SDSQSLBE,DISP=SHR                       00890000
//         DD DSN=ISP.SISPSLIB,DISP=SHR                                 00900000
//ISPTLIB  DD DSN=ISP.SISPTENU,DISP=SHR     * ERA ISPTLIB               00910000
//         DD DSN=ISF.SISFTLIB,DISP=SHR                                 00920000
//ISPPROF  DD UNIT=3390,SPACE=(CYL,(9,1,4),RLSE),                       00930000
//         DCB=(LRECL=80,BLKSIZE=0,RECFM=FB,DSORG=PO)                   00940000
//ADMGGMAP DD DSN=LDB2MXP1.DBP1.DSQMAPE,DISP=SHR                        00950000
//ADMCFORM DD DSN=LDB2MXP1.DBP1.DSQCHART,DISP=SHR                       00960000
//DSQPNLE  DD DSN=LDB2MXP1.DBP1.DSQPNLE,DISP=SHR                        00970000
//*DSQPRINT DD SYSOUT=(V,,TP42)                                         00980000
//DSQPRINT DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00990000
//DSQDEBUG DD SYSOUT=X,DCB=(RECFM=FBA,LRECL=121,BLKSIZE=0)              01000000
//DSQEDIT  DD UNIT=VIO,DCB=(RECFM=FBA,LRECL=79,BLKSIZE=0),              01010000
//          DISP=NEW,SPACE=(CYL,(1,1),RLSE)                             01020000
//DSQUDUMP DD SYSOUT=X,DCB=(RECFM=VBA,LRECL=125,BLKSIZE=0)              01030000
//SYSUDUMP DD SYSOUT=X                                                  01040000
//DSQSPILL DD DSN=&&SPILL,DISP=(NEW,DELETE),                            01050000
//          UNIT=VIO,SPACE=(CYL,(1,1),RLSE),                            01060000
//          DCB=(RECFM=F,LRECL=4096,BLKSIZE=0)                          01070000
//SYSTSPRT DD SYSOUT=X                                                  01080000
//SYSTSIN  DD DSN=SIVA.CARDS(CAD0121),DISP=SHR                          01090000
//*--------------------------------------------------------------------*01100000
//*                        -- VOBV19D --                               *01110000
//*                                                                    *01120000
//* OBJETIVO : REGISTRA ORDENES CMD/VMD                                *01130000
//*                                                                    *01140000
//*--------------------------------------------------------------------*01150000
//CAD0120  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          01160000
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    01170000
//SYSPRINT DD SYSOUT=X                                                  01180000
//SYSOUT   DD SYSOUT=X                                                  01190000
//SYSDBOUT DD SYSOUT=X                                                  01200000
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//SYSTSIN  DD DSN=SIVA.CARDS(CAD0120),DISP=SHR                          01230000
//**********************************************************************01240000
//*                        -- VIB568D --                               *01250000
//*                                                                    *01260000
//* OBJETIVO : REPORTE DE PAQUETES DEL DIA (CONTROL INTERNO)           *01270000
//*                                                                    *01280000
//* TABLAS QUE ACCESA: PROMOT,ORDENES,CTLPROC.                         *01290000
//*                                                                    *01300000
//* TABLAS QUE ACTUALIZA: NINGUNA.                                     *01310000
//*                                                                    *01320000
//* PASO REINICIABLE POR RESTART                                       *01330000
//**********************************************************************01340000
//CAD0116  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          01350000
//*VIB568R1 DD SYSOUT=(V,,TP08)                                         01360000
//*VIB568RX DD SYSOUT=(V,,TP08)                                         01370000
//VIB568R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     01380000
//VIB568RX DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     01390000
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(1,1),RLSE)                          01400000
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    01410000
//SYSPRINT DD SYSOUT=X                                                  01420000
//SYSOUT   DD SYSOUT=X                                                  01430000
//SYSDBOUT DD SYSOUT=X                                                  01440000
//SYSABOUT DD DUMMY                                                     01450000
//SYSUDUMP DD DUMMY                                                     01460000
//SYSTSIN  DD DSN=SIVA.CARDS(CAD0116),DISP=SHR                          01470000
//**********************************************************************01480000
//*                        -- VIB498D --                               *01490000
//*                                                                    *01500000
//* OBJETIVO : REPORTE DE PAQUETES NO DISTRIBUIDOS (AUDITORIA)         *01510000
//*                                                                    *01520000
//* TABLAS QUE ACCESA: SUCURSA,ORDENES,PROMOT,CCOSTO.                  *01530000
//*                                                                    *01540000
//* TABLAS QUE ACTUALIZA: NINGUNA.                                     *01550000
//*                                                                    *01560000
//* PASO REINICIABLE POR RESTART                                       *01570000
//**********************************************************************01580000
//CAD0115  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          01590000
//*VIB498R1 DD SYSOUT=(V,,TP12)                                         01600000
//VIB498R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     01610000
//VIB498T1 DD DSN=&&CAD0115,                                            01620000
//        DISP=(,PASS),                                                 01630000
//        DCB=(DSORG=PS,RECFM=FB,LRECL=138,BLKSIZE=0),                  01640000
//        UNIT=3390,                                                    01650000
//        SPACE=(5980,(20,5),RLSE)                                      01660000
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(1,1),RLSE)                          01670000
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    01680000
//SYSPRINT DD SYSOUT=X                                                  01690000
//SYSOUT   DD SYSOUT=X                                                  01700000
//SYSDBOUT DD SYSOUT=X                                                  01710000
//SYSABOUT DD DUMMY                                                     01720000
//SYSUDUMP DD DUMMY                                                     01730000
//SYSTSIN  DD DSN=SIVA.CARDS(CAD0115),DISP=SHR                          01740000
//*-------------------------------------------------------------------  01750000
//*                        -- VOB444D --                               *01760000
//*                                                                    *01770000
//* OBJETIVO : EFECTUA LA ASIGNACION DEFINITIVA A LA CUENTA DE LA CASA *01780000
//*            LOS HECHOS QUE NO PUDIERON SER ASIGNADOS AL CLIENTE.    *01790000
//*                                                                    *01800000
//* TABLAS QUE ACCESA: PARAM,HECHOS,CUENTA,FOLCTRL,ORDENES,AHECHOR.    *01810000
//*                                                                    *01820000
//* TABLAS QUE ACTUALIZA: HECHOS,AHECHOR,ORDENES,FOLCTRL.              *01830000
//*                                                                    *01840000
//*--------------------------------------------------------------------*01850000
//CAD0114  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          01860000
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    01870000
//SYSPRINT DD SYSOUT=X                                                  01880000
//SYSOUT   DD SYSOUT=X                                                  01890000
//SYSDBOUT DD SYSOUT=X                                                  01900000
//SYSABOUT DD DUMMY                                                     01910000
//SYSUDUMP DD DUMMY                                                     01920000
//SYSTSIN  DD DSN=SIVA.CARDS(CAD0114),DISP=SHR                          01930000
//*-------------------------------------------------------------------  01931002
//*        OBTENER LOS LISTADOS DE LA OPERACION DEL DIA                *01933002
//*        DE ORDENES DE POSICION PROPIA                               *01934002
//*                        -- VIBU80D --                               *01935002
//* JFE --> REPORTE PARALELO DEL VIBU66D                               *01936002
//*-------------------------------------------------------------------  01937003
//CAD0113  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          01938002
//VIBU80R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     01939002
//VIBU80T1 DD DSN=SIVA.CARDS(CAD0112D),DISP=SHR                         01939102
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    01939202
//SYSPRINT DD SYSOUT=X                                                  01939302
//SYSOUT   DD SYSOUT=X                                                  01939402
//SYSDBOUT DD SYSOUT=X                                                  01939502
//SYSABOUT DD DUMMY                                                     01939602
//SYSUDUMP DD DUMMY                                                     01939702
//SYSTSIN  DD DSN=SIVA.CARDS(CAD0113D),DISP=SHR                         01939802
//*-------------------------------------------------------------------  01939902
//*-------------------------------------------------------------------  01940000
//*                        -- VIB465D --                               *01950000
//*                                                                    *01960000
//* OBJETIVO : REPORTE DE LA OPERACION DEL DIA,HECHOS POR ASIGNAR,     *01970000
//*            ASIGNACIONES A LA CUENTA DE LA CASA.                    *01980000
//*                                                                    *01990000
//* TABLAS QUE ACCESA: PARAM,PROMOT,CONCEPT,ORDENES,HECHOS,AHECHOR.    *02000000
//*                                                                    *02010000
//* TABLAS QUE ACTUALIZA: NINGUNA.                                     *02020000
//*                                                                    *02030000
//*-------------------------------------------------------------------  02040000
//CAD0112  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          02050000
//*VIB465R1 DD SYSOUT=(V,,TP11)                                         02060000
//*VIB465R2 DD SYSOUT=(V,,TP11)                                         02070000
//*VIB465R3 DD SYSOUT=(V,,TP13)                                         02080000
//*VIB465R4 DD SYSOUT=(V,,TP11)                                         02090000
//VIB465R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     02100000
//VIB465R2 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     02110000
//VIB465R3 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     02120000
//*IB465R4 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     02130000
//VIB465T1 DD DSN=SIVA.CARDS(CAD0112D),DISP=SHR                         02140000
//VIB465A1 DD DSN=SIVA.MDC.FIX.VIB465A1,                                02150000
//        DISP=(NEW,CATLG,DELETE),                                      02160000
//        DCB=(LRECL=132,BLKSIZE=0,RECFM=FBA),                          02170000
//        UNIT=3390,                                                    02180000
//        SPACE=(CYL,(5,1),RLSE)                                        02190000
//VIB465A2 DD DSN=SIVA.MDC.FIX.VIB465A2,                                02200000
//        DISP=(NEW,CATLG,DELETE),                                      02210000
//        DCB=(LRECL=276,BLKSIZE=0,RECFM=FB),                           02220000
//        UNIT=3390,                                                    02230000
//        SPACE=(CYL,(5,1),RLSE)                                        02240000
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    02250000
//SYSPRINT DD SYSOUT=X                                                  02260000
//SYSOUT   DD SYSOUT=X                                                  02270000
//SYSDBOUT DD SYSOUT=X                                                  02280000
//SYSABOUT DD DUMMY                                                     02290000
//SYSUDUMP DD DUMMY                                                     02300000
//SYSTSIN  DD DSN=SIVA.CARDS(CAD0112),DISP=SHR                          02310000
//*-------------------------------------------------------------------  02311000
//*                        -- VIBU85D --                               *02312000
//*                                                                    *02313000
//* OBJETIVO : REPORTE DE LA OPERACION DEL DIA,HECHOS POR ASIGNAR,     *02314000
//*            ASIGNACIONES A LA CUENTA DE LA CASA.                    *02315000
//* JFE --> REPORTE PARALELO DEL VIB465D QUE CORRE EN EL CAD0112       *02316000
//*                                                                    *02316100
//* TABLAS QUE ACCESA: PARAM,PROMOT,CONCEPT,ORDENES,HECHOS,AHECHOR.    *02317000
//*                                                                    *02318000
//* TABLAS QUE ACTUALIZA: NINGUNA.                                     *02319000
//*                                                                    *02319100
//*-------------------------------------------------------------------  02319200
//CAD0112A EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          02319300
//*VIBU85R1 DD SYSOUT=(V,,TP11)                                         02319400
//*VIBU85R2 DD SYSOUT=(V,,TP11)                                         02319500
//*VIBU85R3 DD SYSOUT=(V,,TP13)                                         02319600
//*VIBU85R4 DD SYSOUT=(V,,TP11)                                         02319700
//VIBU85R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     02319800
//VIBU85R2 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     02319900
//VIBU85R3 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     02320000
//*IBU85R4 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     02320100
//VIBU85T1 DD DSN=SIVA.CARDS(CAD0112D),DISP=SHR                         02320200
//VIBU85A1 DD DSN=SIVA.MDC.FIX.VIBU85A1,                                02320300
//        DISP=(NEW,CATLG,DELETE),                                      02320400
//        DCB=(LRECL=132,BLKSIZE=0,RECFM=FBA),                          02320500
//        UNIT=3390,                                                    02320600
//        SPACE=(CYL,(5,1),RLSE)                                        02320700
//VIBU85A2 DD DSN=SIVA.MDC.FIX.VIBU85A2,                                02320800
//        DISP=(NEW,CATLG,DELETE),                                      02320900
//        DCB=(LRECL=276,BLKSIZE=0,RECFM=FB),                           02321000
//        UNIT=3390,                                                    02321100
//        SPACE=(CYL,(5,1),RLSE)                                        02321200
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    02321300
//SYSPRINT DD SYSOUT=X                                                  02321400
//SYSOUT   DD SYSOUT=X                                                  02321500
//SYSDBOUT DD SYSOUT=X                                                  02321600
//SYSABOUT DD DUMMY                                                     02321700
//SYSUDUMP DD DUMMY                                                     02321800
//SYSTSIN  DD DSN=SIVA.CARDS(CAD0112A),DISP=SHR                         02321900
//*-------------------------------------------------------------------  02322000
//*                        -- VIB530D --                               *02330000
//*                                                                    *02340000
//* OBJETIVO : REPORTE DE LA OPERACION DEL DIA,                        *02350000
//*            ASIGNACIONES A LA CUENTA DE LA CASA.((VALORES SIC))     *02360000
//*                                                                    *02370000
//* TABLAS QUE ACCESA: PARAM,PROMOT,CONCEPT,ORDENES,HECHOS,AHECHOR.    *02380000
//*                                                                    *02390000
//* TABLAS QUE ACTUALIZA: NINGUNA.                                     *02400000
//*                                                                    *02410000
//*-------------------------------------------------------------------  02420000
//CAD0111  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          02430000
//*VIB530R1 DD SYSOUT=(V,,TP37)                                         02440000
//*VIB530R3 DD SYSOUT=(V,,TP38)                                         02450000
//*VIB530R4 DD SYSOUT=(V,,TP11)                                         02460000
//VIB530R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     02470000
//VIB530R3 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     02480000
//VIB530R4 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     02490000
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    02500000
//SYSPRINT DD SYSOUT=X                                                  02510000
//SYSOUT   DD SYSOUT=X                                                  02520000
//SYSDBOUT DD SYSOUT=X                                                  02530000
//SYSABOUT DD DUMMY                                                     02540000
//SYSUDUMP DD DUMMY                                                     02550000
//SYSTSIN  DD DSN=SIVA.CARDS(CAD0111),DISP=SHR                          02560000
//*-------------------------------------------------------------------  02570000
//*                        -- VIB468D --                               *02580000
//*                                                                    *02590000
//* OBJETIVO : REPORTE DE HECHOS POR ASIGNAR.                          *02600000
//*                                                                    *02610000
//* TABLAS QUE ACCESA: PARAM,OPERA,HECHOS,OPERAVA,CONCEPT,CTLPROC.     *02620000
//*                                                                    *02630000
//* TABLAS QUE ACTUALIZA: NINGUNA.                                     *02640000
//*                                                                    *02650000
//*-------------------------------------------------------------------  02660000
//*                                                                     02670000
//CAD0110  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          02680000
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    02690000
//SYSPRINT DD SYSOUT=X                                                  02700000
//SYSOUT   DD SYSOUT=X                                                  02710000
//SYSDBOUT DD SYSOUT=X                                                  02720000
//VIB468R1 DD SYSOUT=*                                                  02730000
//*VIB468R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                    02740000
//SYSABOUT DD DUMMY                                                     02750000
//SYSUDUMP DD DUMMY                                                     02760000
//SYSTSIN  DD DSN=SIVA.CARDS(CAD0110),DISP=SHR                          02770000
//*                                                                     02780000
//*-------------------------------------------------------------------- 02790000
//*                        -- VIB544D --                               *02800000
//*                                                                    *02810000
//* OBJETIVO : REPORTE DE ASIGNACIONES A LA CUENTA DE LA CASA.         *02820000
//*                                                                    *02830000
//* TABLAS QUE ACCESA: PARAM,ORDENES.                                  *02840000
//*                                                                    *02850000
//* TABLAS QUE ACTUALIZA: NINGUNA.                                     *02860000
//*                                                                    *02870000
//*-------------------------------------------------------------------- 02880000
//CAD0109  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          02890000
//*VIB544R1 DD SYSOUT=(V,,TP07)                                         02900000
//VIB544R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     02910000
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    02920000
//SYSPRINT DD SYSOUT=X                                                  02930000
//SYSOUT   DD SYSOUT=X                                                  02940000
//SYSDBOUT DD SYSOUT=X                                                  02950000
//SYSABOUT DD DUMMY                                                     02960000
//SYSUDUMP DD DUMMY                                                     02970000
//SYSTSIN  DD DSN=SIVA.CARDS(CAD0109),DISP=SHR                          02980000
//*-------------------------------------------------------------------  02990000
//*        CANCELACION DE ORDENES YA ASIGNADAS O POR VIGENCIA           03000000
//*-------------------------------------------------------------------  03010000
//CAD0107  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          03020000
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    03030000
//SYSPRINT DD SYSOUT=X                                                  03040000
//SYSOUT   DD SYSOUT=X                                                  03050000
//SYSDBOUT DD SYSOUT=X                                                  03060000
//SYSABOUT DD DUMMY                                                     03070000
//SYSUDUMP DD DUMMY                                                     03080000
//SYSTSIN  DD DSN=SIVA.CARDS(CAD0107),DISP=SHR                          03090000
//*-------------------------------------------------------------------  03100000
//*        CANCELACION AUTOMATICA DE SOLICITUDES DE ORDENES             03110000
//*-------------------------------------------------------------------  03120000
//CAD0106 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,          03130000
//        PARM='/DEBUG',TIME=100                                        03140000
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    03150000
//SYSPRINT DD SYSOUT=X                                                  03160000
//SYSOUT   DD SYSOUT=X                                                  03170000
//SYSDBOUT DD SYSOUT=X                                                  03180000
//SYSABOUT DD DUMMY                                                     03190000
//SYSUDUMP DD DUMMY                                                     03200000
//SYSTSIN  DD DSN=SIVA.CARDS(CAD0106),DISP=SHR                          03210000
//*                                                                     03220000
//*-------------------------------------------------------------------  03230000
//*        REPORTES SOLICITUD ORDENES COMPRA VENTA MISMO DIA            03240000
//*-------------------------------------------------------------------  03250000
//CAD0103  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          03260000
//*VIBT30R1 DD SYSOUT=(V,,TV55)                                         03270000
//VIBT30R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     03280000
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    03290000
//SYSPRINT DD SYSOUT=X                                                  03300000
//SYSOUT   DD SYSOUT=X                                                  03310000
//SYSDBOUT DD SYSOUT=X                                                  03320000
//SYSABOUT DD DUMMY                                                     03330000
//SYSUDUMP DD DUMMY                                                     03340000
//SYSTSIN  DD DSN=SIVA.CARDS(CAD0103),DISP=SHR                          03350000
//*------------------------------------------------------------------   03360000
//*        AVISOS DE ORDENES NO REALIZADAS                              03370000
//*------------------------------------------------------------------   03380000
//CAD0102  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          03390000
//*VIB499R1 DD SYSOUT=(V,,AVIS)                                         03400000
//VIB499R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     03410000
//VIB499T1 DD DSN=&&CAD0101,                                            03420000
//        DISP=(NEW,PASS),                                              03430000
//        DCB=(LRECL=206,BLKSIZE=0,RECFM=FB),                           03440000
//        UNIT=3390,                                                    03450000
//        SPACE=(CYL,(5,1),RLSE)                                        03460000
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(5),RLSE)                            03470000
//SORTWK02 DD UNIT=3390,SPACE=(CYL,(5),RLSE)                            03480000
//SORTWK03 DD UNIT=3390,SPACE=(CYL,(5),RLSE)                            03490000
//SORTWK04 DD UNIT=3390,SPACE=(CYL,(5),RLSE)                            03500000
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    03510000
//SYSPRINT DD SYSOUT=X                                                  03520000
//SYSOUT   DD SYSOUT=X                                                  03530000
//SYSDBOUT DD SYSOUT=X                                                  03540000
//SYSABOUT DD DUMMY                                                     03550000
//SYSUDUMP DD DUMMY                                                     03560000
//SYSTSIN  DD DSN=SIVA.CARDS(CAD0102),DISP=SHR                          03570000
//*------------------------------------------------------------------   03580000
//*        PRECIOS PROMEDIOS DE ASIGNACION INTERNACIONAL                03590000
//*------------------------------------------------------------------   03600000
//CAD0101  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          03610000
//*VIB559R1 DD SYSOUT=(V,,TP43)                                         03620000
//VIB559R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     03630000
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    03640000
//SYSPRINT DD SYSOUT=X                                                  03650000
//SYSOUT   DD SYSOUT=X                                                  03660000
//SYSDBOUT DD SYSOUT=X                                                  03670000
//SYSABOUT DD DUMMY                                                     03680000
//SYSUDUMP DD DUMMY                                                     03690000
//SYSTSIN  DD DSN=SIVA.CARDS(CAD0101),DISP=SHR                          03700000
