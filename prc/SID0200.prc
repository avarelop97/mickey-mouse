//SID0200 PROC                                                          00010000
//**********************************************************************00020000
//* SISTEMA        :  SOCIEDADES DE INVERSION                          *00030000
//* PROCESO        :  PINSID02   (DISPARADOR)                          *00040000
//*                   SID0200    PROCEDIMIENTO                         *00050000
//* OBJETIVO       :  CORRER LA INTERFASE DEL SISTEMA DE ADMON. Y      *00060000
//*                   CONTROL DE SOCIEDADES DE INVERSION.              *00070000
//* CINTAS         :  SOCIN1                                           *00080000
//* REALIZO        :  EDUARDO RAMOS CAMARILLO.  (DDEMESIS)             *00090000
//**********************************************************************00100000
//*                                                                    *00110000
//* MODIFICADO POR :  LIZBETH RODRIGUEZ CASTILLA  -  DAYSOFT.          *00120000
//*                   MIGRACION DE IBM A BMC. DICIEMBRE DEL 2002       *00130000
//*                                                               OSCT *00140000
//**********************************************************************00150000
//* EJECUTA    PROGRAMA VOB329D                                        *00160000
//* GENERA EVENTO DE INICIO EN CTLPROC 'APR 20JUN01'                   *00170000
//**********************************************************************00180000
//SID0217  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=0M,COND=(4,LT)          00190000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00210000
//SYSPRINT DD SYSOUT=*                                                  00220000
//SYSOUT   DD SYSOUT=*                                                  00230000
//SYSDBOUT DD SYSOUT=*                                                  00240000
//SYSABOUT DD DUMMY                                                     00250000
//SYSUDUMP DD DUMMY                                                     00260000
//SYSTSIN  DD DSN=SIVA.CARDS(SID0218),DISP=SHR                          00270000
//*                                                                     00280000
//**********************************************************************00290000
//*                       -- IMAGE COPY --                             *00300000
//*                                                                    *00310000
//*  OBJETIVO :   REALIZA BACKUP DE LA TABLA PRODUSVN.CARTERA          *00320000
//*               POR TABLESPACE                                       *00330000
//*  NOTA     :   ESTE RESPALDO FUE SOLICITADO POR M.RUBIO 12-07-95     00340000
//* PASO REINICIABLE POR RESTART                                       *00350000
//**********************************************************************00360000
//SID0216  EXEC PGM=ACPMAIN,REGION=0M,COND=(4,LT),                      00370000
//*                                                                     00380000
//    PARM='MXP1,PINSID0201,NEW/RESET,MSGLEVEL(1)'                      00390000
//*                                                                     00400000
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR                            00410005
//         DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//*                                                                     00440000
//CO001    DD  DISP=(NEW,KEEP),
//             UNIT=FJVTP,
//             DSN=BKPP.DIA.IMAGCOPY.D&DATE..SCARTERA.PINSID02,
//             LABEL=(,SL,,,EXPDT=99000)
//SYSPRINT DD SYSOUT=*                                                  00480000
//VTPRINT  DD SYSOUT=*                                                  00490000
//SYSUDUMP DD DUMMY                                                     00500000
//*                                                                     00510000
//SYSIN    DD DSN=SIVA.CARDS(SID0216),DISP=SHR                          00520000
//*                                                                     00530000
//**********************************************************************00540000
//*                                                                     00550000
//* OBJETIVO : BORRA LOS ARCHIVOS DE TRABAJO                           *00560000
//**********************************************************************00570000
//SID0215  EXEC PGM=IDCAMS,COND=(4,LT)                                  00580000
//SYSPRINT DD SYSOUT=*                                                  00590000
//SYSIN    DD DSN=SIVA.CARDS(SID0215),DISP=SHR                          00600000
//*                                                                     00610000
//**********************************************************************00620000
//* EJECUTA     VOB201D                                                *00630000
//* PASO REQUERIDO POR MAURICIO RUBIO OMITIR EN CASO DE REPROCESO SACSI*00640000
//**********************************************************************00650000
//SID0214  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=0M,         00660000
//             TIME=100                                                 00670000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//VOB201R1 DD SYSOUT=(V,,TQ11)                                          00690000
//VOB201R2 DD SYSOUT=(V,,TQ11)                                          00700000
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00710000
//SYSPRINT DD  SYSOUT=*                                                 00720000
//FOLCTRL  DD  DSN=MXCP.ZM.VSL.FOLCTRL,DISP=SHR                         00730000
//SYSOUT   DD  SYSOUT=*                                                 00740000
//SYSDBOUT DD  SYSOUT=*                                                 00750000
//SYSABOUT DD  DUMMY                                                    00760000
//SYSUDUMP DD  DUMMY                                                    00770000
//SYSTSIN  DD  DSN=SIVA.CARDS(SID0214),DISP=SHR                         00780000
//*                                                                     00790000
//**********************************************************************00800000
//* EJECUTA    PROGRAMA VIB228D                                        *00810000
//* TRANSFIERE MOVIMIENTOS DE "SIVAVA" MERCADO DE VALORES              *00820000
//**********************************************************************00830000
//SID0212  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=0M,COND=(4,LT)          00840000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00860000
//SYSPRINT DD SYSOUT=*                                                  00870000
//PSOCIN   DD DSN=SIVA.SIN.WKF.OPESOCIN,DISP=(NEW,CATLG,DELETE),        00880000
//            UNIT=SYSDA,SPACE=(CYL,(15,2),RLSE),                       00890000
//            DCB=(RECFM=FB,LRECL=94,BLKSIZE=0,DSORG=PS)                00900000
//VIB228R1 DD SYSOUT=(V,,TQ22)                                          00910000
//SYSOUT   DD SYSOUT=*                                                  00920000
//SYSDBOUT DD SYSOUT=*                                                  00930000
//SYSABOUT DD DUMMY                                                     00940000
//SYSUDUMP DD DUMMY                                                     00950000
//SYSTSIN  DD DSN=SIVA.CARDS(SID0212),DISP=SHR                          00960000
//*                                                                     00970000
//**********************************************************************00980000
//*                    * IDCAMS  *                                      00990000
//* OBJETIVO : BORRA ARCHIVOS DE TRABAJO                                01000000
//*                                                                     01010000
//* PASO REINICIABLE POR RESTART.                                       01020000
//**********************************************************************01030000
//*                                                                     01040000
//SID0212A EXEC PGM=IDCAMS,COND=(4,LT)                                  01050000
//SYSPRINT DD SYSOUT=*                                                  01060000
//SYSIN    DD DSN=SIVA.CARDS(SID0212A),DISP=SHR                         01070000
//*                                                                     01080000
//**********************************************************************01090000
//*                    * VOB328D *                                      01100000
//* OBJETIVO : GENERAR ARCHIVO PARA COVAF                               01110000
//*                                                                     01120000
//* PASO REINICIABLE POR RESTART.                                       01130000
//**********************************************************************01140000
//*                                                                     01150000
//SID0212B EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),                   01160000
//             REGION=0M,TIME=100                                       01170000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=1320                                01190000
//OPESOCIN DD  DSN=SIVA.SIN.WKF.OPESOCIN,DISP=SHR                       01200000
//VOB328DO DD  DSN=SIVA.SIN.WKF.COVAF.CAPITAL,                          01210000
//             DISP=(NEW,CATLG,DELETE),                                 01220000
//             UNIT=SYSDA,SPACE=(CYL,(10,1),RLSE),                      01230000
//             DCB=(LRECL=172,RECFM=FBA,BLKSIZE=17200)                  01240000
//VOB328CC DD  DSN=SIVA.SIN.WKF.VOB328D.CC1,                            01250000
//             DISP=(NEW,CATLG,DELETE),                                 01260000
//             UNIT=SYSDA,SPACE=(CYL,(10,1),RLSE),                      01270000
//             DCB=(LRECL=133,RECFM=FBA,BLKSIZE=13300)                  01280000
//SYSPRINT DD  SYSOUT=X                                                 01290000
//SYSINT   DD  SYSOUT=X                                                 01300000
//SYSOUT   DD  SYSOUT=X                                                 01310000
//PRINT    DD  SYSOUT=X                                                 01320000
//SYSDBOUT DD  SYSOUT=X                                                 01330000
//SYSABOUT DD  SYSOUT=X                                                 01340000
//SYSUDUMP DD  DUMMY                                                    01350000
//SYSTSIN  DD  DSN=SIVA.CARDS(SID0212B),DISP=SHR                        01360000
//*                                                                     01370000
//**********************************************************************01380000
//* EJECUTA    PROGRAMA VIB230D                                        *01390000
//* TRANSFIERE MOVIMIENTOS DE "OPERDIN" MERCADO DE DINERO              *01400000
//**********************************************************************01410000
//SID0211  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=0M,COND=(4,LT)          01420000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    01440000
//SYSPRINT DD SYSOUT=*                                                  01450000
//PSOCIN   DD DSN=SIVA.SIN.WKF.OPESOCIN,DISP=MOD                        01460000
//VIB230R1 DD SYSOUT=(V,,TQ23)                                          01470000
//SYSOUT   DD SYSOUT=*                                                  01480000
//SYSDBOUT DD SYSOUT=*                                                  01490000
//SYSABOUT DD DUMMY                                                     01500000
//SYSUDUMP DD DUMMY                                                     01510000
//SYSTSIN  DD DSN=SIVA.CARDS(SID0211),DISP=SHR                          01520000
//*                                                                     01530000
//**********************************************************************01540000
//* EJECUTA    PROGRAMA VIB232D                                        *01550000
//* TRANSFIERE MOVIMIENTOS DE "SIVASI" SOCIEDADES DE INVERSION         *01560000
//**********************************************************************01570000
//SID0210  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=0M,COND=(4,LT)          01580000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    01600000
//SYSPRINT DD SYSOUT=*                                                  01610000
//PSOCIN   DD DSN=SIVA.SIN.WKF.OPESOCIN,DISP=MOD                        01620000
//VIB232R1 DD SYSOUT=(V,,TQ24)                                          01630000
//SYSOUT   DD SYSOUT=*                                                  01640000
//SYSDBOUT DD SYSOUT=*                                                  01650000
//SYSABOUT DD DUMMY                                                     01660000
//SYSUDUMP DD DUMMY                                                     01670000
//SYSTSIN  DD DSN=SIVA.CARDS(SID0210),DISP=SHR                          01680000
//*                                                                     01690000
//**********************************************************************01700000
//* EJECUTA    PROGRAMA VIB226D                                        *01710000
//* TRANSFIERE MOVIMIENTOS DE "SIVA" PARA EL SISTEMA DE SOC. INV.      *01720000
//**********************************************************************01730000
//SID0209  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=0M,COND=(4,LT)          01740000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    01760000
//SYSABEND DD DUMMY                                                     01770000
//SYSPRINT DD SYSOUT=*                                                  01780000
//SYSOUT   DD SYSOUT=*                                                  01790000
//PRINT    DD SYSOUT=*                                                  01800000
//VIB226A1 DD DSN=SIVA.SIN.WKF.OPESOCIN,DISP=MOD                        01810000
//VIB226R1 DD SYSOUT=(V,,TQ25)                                          01820000
//SYSDBOUT DD SYSOUT=*                                                  01830000
//SYSABOUT DD DUMMY                                                     01840000
//SYSUDUMP DD DUMMY                                                     01850000
//SYSTSIN  DD DSN=SIVA.CARDS(SID0209),DISP=SHR                          01860000
//*                                                                     01870000
//**********************************************************************01880000
//* ---------------------------                                         01890000
//* $$$$$$$$$$$$$$$$ PASOS AGREGADOS DE EMISORAS $$$$$$$$$$$$$$$$$$$$$$$01900000
//* ---------------------------                                         01910000
//**********************************************************************01920000
//* EJECUTA    PROGRAMA VIB246D                                        *01930000
//* TRANSFIERE MOVIMIENTOS DE "EMISMDD" EMISORAS MERCADO DE DINERO     *01940000
//**********************************************************************01950000
//SID0208  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=0M,COND=(8,LT)          01960000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//VENSOCIN DD DSN=SIVA.SIN.WKF.VENSOCIN,DISP=(NEW,CATLG,DELETE),        01980000
//            UNIT=SYSDA,SPACE=(CYL,(1,1),RLSE),                        01990000
//            DCB=(RECFM=FB,LRECL=35,BLKSIZE=0)                         02000000
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    02010000
//SYSPRINT DD SYSOUT=X                                                  02020000
//SYSOUT   DD SYSOUT=X                                                  02030000
//SYSDBOUT DD SYSOUT=X                                                  02040000
//SYSABOUT DD DUMMY                                                     02050000
//SYSUDUMP DD DUMMY                                                     02060000
//SYSTSIN  DD DSN=SIVA.CARDS(SID0208),DISP=SHR                          02070000
//*                                                                     02080000
//**********************************************************************02090000
//* EJECUTA    PROGRAMA VIB248D                                        *02100000
//* TRANSFIERE MOVIMIENTOS DE "CONCEPT" Y "TASASRF" EMISORAS           *02110000
//**********************************************************************02120000
//SID0207  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=0M,COND=(4,LT)          02130000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    02150000
//SYSPRINT DD SYSOUT=*                                                  02160000
//VENSOCIN DD DSN=SIVA.SIN.WKF.VENSOCIN,DISP=MOD                        02170000
//VIB228R1 DD SYSOUT=1                                                  02180000
//SYSOUT   DD SYSOUT=*                                                  02190000
//SYSDBOUT DD SYSOUT=*                                                  02200000
//SYSABOUT DD DUMMY                                                     02210000
//SYSUDUMP DD DUMMY                                                     02220000
//SYSTSIN  DD DSN=SIVA.CARDS(SID0207),DISP=SHR                          02230000
//*                                                                     02240000
//**********************************************************************02250000
//**********************************************************************02260000
//* EJECUTA    PROGRAMA VIB234D                                        *02270000
//* TRANSFIERE PRECIOS DE ULTIMO HECHO DE LA BMV                       *02280000
//**********************************************************************02290000
//SID0206   EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=0M,COND=(4,LT)         02300000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    02320000
//SYSABEND DD DUMMY                                                     02330000
//SYSPRINT DD SYSOUT=*                                                  02340000
//VIB234A1 DD DSN=SIVA.SIN.WKF.PRESOCIN,DISP=(NEW,CATLG,DELETE),        02350000
//            UNIT=SYSDA,SPACE=(CYL,(5,2),RLSE),                        02360000
//            DCB=(RECFM=FB,LRECL=40,BLKSIZE=0,DSORG=PS)                02370000
//VIB234R1 DD SYSOUT=(V,,TQ26)                                          02380000
//SYSOUT   DD SYSOUT=*                                                  02390000
//SYSDBOUT DD SYSOUT=*                                                  02400000
//SYSABOUT DD DUMMY                                                     02410000
//SYSUDUMP DD DUMMY                                                     02420000
//SYSTSIN  DD DSN=SIVA.CARDS(SID0206),DISP=SHR                          02430000
//*                                                                     02440000
//**********************************************************************02450000
//* EJECUTA    PROGRAMA VIB236D                                        *02460000
//* TRANSFIERE EL ARCHIVO DE EMISORAS "CONCEPT"                        *02470000
//**********************************************************************02480000
//SID0205  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=0M,COND=(4,LT)          02490000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    02510000
//SYSPRINT DD SYSOUT=*                                                  02520000
//EMISORA  DD DSN=SIVA.SIN.WKF.EMISOCIN,DISP=(NEW,CATLG,DELETE),        02530000
//            UNIT=SYSDA,SPACE=(CYL,(5,2),RLSE),                        02540000
//            DCB=(RECFM=FB,LRECL=158,BLKSIZE=0,DSORG=PS)               02550000
//VIB236R1 DD SYSOUT=(V,,TQ27)                                          02560000
//SYSOUT   DD SYSOUT=*                                                  02570000
//SYSDBOUT DD SYSOUT=*                                                  02580000
//SYSABOUT DD DUMMY                                                     02590000
//SYSUDUMP DD DUMMY                                                     02600000
//SYSTSIN  DD DSN=SIVA.CARDS(SID0205),DISP=SHR                          02610000
//*                                                                     02620000
//**********************************************************************02630000
//* EJECUTA    PROGRAMA VIB240D                                        *02640000
//* TRANSFIERE MOVIMIENTOS DE "SIVATE" TESORERIA                       *02650000
//**********************************************************************02660000
//SID0204  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=0M,COND=(4,LT)          02670000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    02690000
//SYSPRINT DD SYSOUT=*                                                  02700000
//PSOCIN   DD DSN=SIVA.SIN.WKF.OPESOCIN,DISP=MOD                        02710000
//VIB240R1 DD SYSOUT=(V,,TQ28)                                          02720000
//SYSOUT   DD SYSOUT=*                                                  02730000
//SYSDBOUT DD SYSOUT=*                                                  02740000
//SYSABOUT DD DUMMY                                                     02750000
//SYSUDUMP DD DUMMY                                                     02760000
//SYSTSIN  DD DSN=SIVA.CARDS(SID0204),DISP=SHR                          02770000
//*                                                                     02780000
//**********************************************************************02790000
//* EJECUTA    PROGRAMA VIB233D                                        *02800000
//* TRANSFIERE PARAMETROS   "PARAM"                                    *02810000
//**********************************************************************02820000
//SID0203  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=0M,COND=(4,LT)          02830000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    02850000
//SYSPRINT DD SYSOUT=*                                                  02860000
//PARSOCIN DD DSN=SIVA.SIN.WKF.PARSOCIN,DISP=(NEW,CATLG,DELETE),        02870000
//            UNIT=SYSDA,SPACE=(CYL,(1,1),RLSE),                        02880000
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)                02890000
//VIB242R1 DD SYSOUT=V                                                  02900000
//SYSOUT   DD SYSOUT=*                                                  02910000
//SYSDBOUT DD SYSOUT=*                                                  02920000
//SYSABOUT DD DUMMY                                                     02930000
//SYSUDUMP DD DUMMY                                                     02940000
//SYSTSIN  DD DSN=SIVA.CARDS(SID0203),DISP=SHR                          02950000
//*                                                                     02960000
//**********************************************************************02970000
//* ---------------------------                                         02980000
//* $$$$$$$$$$$$$$$$ PASOS AGREGADOS DE EMISORAS $$$$$$$$$$$$$$$$$$$$$$$02990000
//* ---------------------------                                         03000000
//**********************************************************************03010000
//**********************************************************************03020000
//* EJECUTA     VIB238D                                                *03030000
//* APAGA EL RENGLON DE INTERFACES DE SOC. INV. EN CTLPROC             *03040000
//**********************************************************************03050000
//SID0202  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=0M,         03060000
//             TIME=100                                                 03070000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   03090000
//SYSPRINT DD  SYSOUT=*                                                 03100000
//SYSOUT   DD  SYSOUT=*                                                 03110000
//SYSDBOUT DD  SYSOUT=*                                                 03120000
//SYSABOUT DD  DUMMY                                                    03130000
//SYSUDUMP DD  DUMMY                                                    03140000
//SYSTSIN  DD  DSN=SIVA.CARDS(SID0202),DISP=SHR                         03150000
//*                                                                     03160000
//**********************************************************************03170000
//* EJECUTA     VIB244D                                                *03180000
//* AVISA EN EL PARAMETRO 'P92' QUE LA INTERFASE TERMINO ANORMALMENTE  *03190000
//**********************************************************************03200000
//SID0201  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(8,GE),REGION=0M,         03210000
//             TIME=100                                                 03220000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   03240000
//SYSPRINT DD  SYSOUT=*                                                 03250000
//SYSOUT   DD  SYSOUT=*                                                 03260000
//SYSDBOUT DD  SYSOUT=*                                                 03270000
//SYSABOUT DD  DUMMY                                                    03280000
//SYSUDUMP DD  DUMMY                                                    03290000
//SYSTSIN  DD  DSN=SIVA.CARDS(SID0201),DISP=SHR                         03300000
//*                                                                     03310000
//**********************************************************************03320000
//* EJECUTA    PROGRAMA DURA1MIN                                       *03330000
//*           RETRAZA 1 MINUTO LA EJECUCION DEL SIGUIENTE PASO         *03340000
//**********************************************************************03350000
//SID020A  EXEC  PGM=DURA1MIN,COND=(4,LT)                               03360000
//STEPLIB  DD   DSN=SIVA.BIB.CARGA,DISP=SHR                             03370000
//**********************************************************************03380000
//* EJECUTA    PROGRAMA VIB234D                                        *03390000
//* TRANSFIERE PRECIOS DE ULTIMO HECHO DE LA BMV                       *03400000
//**********************************************************************03410000
//SID020B   EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=0M,COND=(4,LT)         03420000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    03440000
//SYSABEND DD DUMMY                                                     03450000
//SYSPRINT DD SYSOUT=*                                                  03460000
//VIB234A1 DD DSN=SIVA.SIN.WKF.PRESOCIN.NVO,DISP=(NEW,CATLG,DELETE),    03470000
//            UNIT=SYSDA,SPACE=(CYL,(5,2),RLSE),                        03480000
//            DCB=(RECFM=FB,LRECL=40,BLKSIZE=0,DSORG=PS)                03490000
//VIB234R1 DD SYSOUT=(V,,TQ26)                                          03500000
//SYSOUT   DD SYSOUT=*                                                  03510000
//SYSDBOUT DD SYSOUT=*                                                  03520000
//SYSABOUT DD DUMMY                                                     03530000
//SYSUDUMP DD DUMMY                                                     03540000
//SYSTSIN  DD DSN=SIVA.CARDS(SID020A),DISP=SHR                          03550000
//*                                                                     03560000
//**********************************************************************03570000
//* EJECUTA    PROGRAMA VOB329D                                        *03580000
//* GENERA EVENTO DE FINAL EN CTLPROC 'APR 20JUN01'                    *03590000
//**********************************************************************03600000
//SID020C  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=0M,COND=(4,LT)          03610000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    03630000
//SYSPRINT DD SYSOUT=*                                                  03640000
//SYSOUT   DD SYSOUT=*                                                  03650000
//SYSDBOUT DD SYSOUT=*                                                  03660000
//SYSABOUT DD DUMMY                                                     03670000
//SYSUDUMP DD DUMMY                                                     03680000
//SYSTSIN  DD DSN=SIVA.CARDS(SID020C),DISP=SHR                          03690000
//*                                                                     03700000
