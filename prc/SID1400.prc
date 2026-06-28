//SID1400  PROC
//**********************************************************************
//* SISTEMA        :  SOCIEDADES DE INVERSION                          *
//* PROCESO        :  PINSID02   (DISPARADOR)                          *
//*                   SIDOUF2    PROCEDIMIENTO                         *
//* OBJETIVO       :  CORRER LA INTERFASE DEL SISTEMA DE ADMON. Y      *
//*                   CONTROL DE SOCIEDADES DE INVERSION.              *
//* CINTAS         :  SOCIN1                                           *
//* REALIZO        :  OSCAR URBANO FERNANDEZ.  (ASATECK).              *
//**********************************************************************
//**********************************************************************
//*
//* OBJETIVO : BORRA LOS ARCHIVOS DE TRABAJO                           *
//**********************************************************************
//SID1411  EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=SIVA.CARDS(SID1411),DISP=SHR
//*
//**********************************************************************
//* EJECUTA    PROGRAMA VIB228D                                        *
//* TRANSFIERE MOVIMIENTOS DE "OPERAVA" MERCADO DE VALORES             *
//**********************************************************************
//SID1410  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//PSOCIN   DD DSN=SIVA.SIN.WKF.OPESOMDF,DISP=(NEW,CATLG,DELETE),
//            UNIT=SYSDA,SPACE=(CYL,(15,2),RLSE),
//            DCB=(RECFM=FB,LRECL=94,BLKSIZE=0,DSORG=PS)
//*VIB228R1 DD SYSOUT=(O,,TQ22)
//VIB228R1 DD SUBSYS=(C600,'SYSOUT=O,PREFIX=CDAMD')
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(SID1410),DISP=SHR
//*
//**********************************************************************00011010
//*                    * IDCAMS  *                                      00012010
//* OBJETIVO : BORRA ARCHIVOS DE TRABAJO                                00013010
//*                                                                     00014010
//* PASO REINICIABLE POR RESTART.                                       00015010
//**********************************************************************00016010
//*                                                                     00017010
//SID1410A EXEC PGM=IDCAMS,COND=(4,LT)                                  00018010
//SYSPRINT DD SYSOUT=*                                                  00019010
//SYSIN    DD DSN=SIVA.CARDS(SID1410A),DISP=SHR                         00019110
//*                                                                     00020000
//**********************************************************************00030010
//*                    * VOB328D *                                      00030110
//* OBJETIVO : GENERAR ARCHIVO PARA COVAF                               00030210
//*                                                                     00030310
//* PASO REINICIABLE POR RESTART.                                       00030410
//**********************************************************************00030510
//SID1410B EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),                   00031010
//             REGION=4096K,TIME=100                                    00050010
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=1320                                00090000
//OPESOCIN DD  DSN=SIVA.SIN.WKF.OPESOMDF,DISP=SHR                       00094006
//VOB328DO DD  DSN=SIVA.SIN.WKF.COVAF.MDINERO,                          00100110
//             DISP=(NEW,CATLG,DELETE),                                 00101000
//             UNIT=SYSDA,SPACE=(CYL,(10,1),RLSE),                      00101100
//             DCB=(LRECL=172,RECFM=FBA,BLKSIZE=17200)                  00102000
//VOB328CC DD  DSN=SIVA.SIN.WKF.VOB328D.CC2,                            00103010
//             DISP=(NEW,CATLG,DELETE),                                 00104000
//             UNIT=SYSDA,SPACE=(CYL,(10,1),RLSE),                      00105000
//             DCB=(LRECL=133,RECFM=FBA,BLKSIZE=13300)                  00105100
//SYSPRINT DD  SYSOUT=X                                                 00106000
//SYSINT   DD  SYSOUT=X                                                 00107000
//SYSOUT   DD  SYSOUT=X                                                 00107100
//PRINT    DD  SYSOUT=X                                                 00108000
//SYSDBOUT DD  SYSOUT=X                                                 00109000
//SYSABOUT DD  SYSOUT=X                                                 00110000
//SYSUDUMP DD  DUMMY                                                    00120000
//SYSTSIN  DD  DSN=SIVA.CARDS(SID1410B),DISP=SHR                        00131010
//*
//**********************************************************************
//* EJECUTA    PROGRAMA VIB230D                                        *
//* TRANSFIERE MOVIMIENTOS DE "OPERDIN" MERCADO DE DINERO              *
//**********************************************************************
//SID1409  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//PSOCIN   DD DSN=SIVA.SIN.WKF.OPESOMDF,DISP=MOD
//*VIB230R1 DD SYSOUT=(O,,TQ23)
//VIB230R1 DD SUBSYS=(C600,'SYSOUT=O,PREFIX=CDAMD')
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(SID1409),DISP=SHR
//*
//**********************************************************************
//* EJECUTA    PROGRAMA VIB232D                                        *
//* TRANSFIERE MOVIMIENTOS DE "SIVASI" SOCIEDADES DE INVERSION         *
//**********************************************************************
//SID1408  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//PSOCIN   DD DSN=SIVA.SIN.WKF.OPESOMDF,DISP=MOD
//*VIB232R1 DD SYSOUT=(O,,TQ24)
//VIB232R1 DD SUBSYS=(C600,'SYSOUT=O,PREFIX=CDAMD')
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(SID1408),DISP=SHR
//*
//**********************************************************************
//* EJECUTA    PROGRAMA VIB226D                                        *
//* TRANSFIERE MOVIMIENTOS DE "SIVA" PARA EL SISTEMA DE SOC. INV.      *
//**********************************************************************
//SID1407  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSABEND DD DUMMY
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//PRINT    DD SYSOUT=*
//VIB226A1 DD DSN=SIVA.SIN.WKF.OPESOMDF,DISP=MOD
//*VIB226R1 DD SYSOUT=(O,,TQ25)
//VIB226R1 DD SUBSYS=(C600,'SYSOUT=O,PREFIX=CDAMD')
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(SID1407),DISP=SHR
//*
//**********************************************************************
//* ---------------------------
//* $$$$$$$$$$$$$$$$ PASOS AGREGADOS DE EMISORAS $$$$$$$$$$$$$$$$$$$$$$$
//* ---------------------------
//**********************************************************************
//* EJECUTA    PROGRAMA VIB246D                                        *
//* TRANSFIERE MOVIMIENTOS DE "EMISMDD" EMISORAS MERCADO DE DINERO     *
//**********************************************************************
//SID1406  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(8,LT)
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//VENSOCIN DD DSN=SIVA.SIN.WKF.VENSOMDF,DISP=(NEW,CATLG,DELETE),
//            UNIT=SYSDA,SPACE=(CYL,(1,1),RLSE),
//            DCB=(RECFM=FB,LRECL=35,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(SID1406),DISP=SHR
//*
//**********************************************************************
//* EJECUTA    PROGRAMA VIB248D                                        *
//* TRANSFIERE MOVIMIENTOS DE "CONCEPT" Y "TASASRF" EMISORAS           *
//**********************************************************************
//SID1405  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//VENSOCIN DD DSN=SIVA.SIN.WKF.VENSOMDF,DISP=MOD
//VIB228R1 DD SYSOUT=1
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(SID1405),DISP=SHR
//*
//**********************************************************************
//**********************************************************************
//* EJECUTA    PROGRAMA VIB234D                                        *
//* TRANSFIERE PRECIOS DE ULTIMO HECHO DE LA BMV                       *
//**********************************************************************
//SID1404   EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSABEND DD DUMMY
//SYSPRINT DD SYSOUT=*
//VIB234A1 DD DSN=SIVA.SIN.WKF.PRESOMDF,DISP=(NEW,CATLG,DELETE),
//            UNIT=SYSDA,SPACE=(CYL,(5,2),RLSE),
//            DCB=(RECFM=FB,LRECL=40,BLKSIZE=0,DSORG=PS)
//*VIB234R1 DD SYSOUT=(O,,TQ26)
//VIB234R1 DD SUBSYS=(C600,'SYSOUT=O,PREFIX=CDAMD')
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(SID1404),DISP=SHR
//*
//**********************************************************************
//* EJECUTA    PROGRAMA VIB236D                                        *
//* TRANSFIERE EL ARCHIVO DE EMISORAS "CONCEPT"                        *
//**********************************************************************
//SID1403  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//EMISORA  DD DSN=SIVA.SIN.WKF.EMISOMDF,DISP=(NEW,CATLG,DELETE),
//            UNIT=SYSDA,SPACE=(CYL,(5,2),RLSE),
//            DCB=(RECFM=FB,LRECL=158,BLKSIZE=0,DSORG=PS)
//*VIB236R1 DD SYSOUT=(O,,TQ27)
//VIB236R1 DD SUBSYS=(C600,'SYSOUT=O,PREFIX=CDAMD')
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(SID1403),DISP=SHR
//*
//**********************************************************************
//* EJECUTA    PROGRAMA VIB240D                                        *
//* TRANSFIERE MOVIMIENTOS DE "OPERATE" TESORERIA                      *
//**********************************************************************
//SID1402  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//PSOCIN   DD DSN=SIVA.SIN.WKF.OPESOMDF,DISP=MOD
//*VIB240R1 DD SYSOUT=(O,,TQ28)
//VIB240R1 DD SUBSYS=(C600,'SYSOUT=O,PREFIX=CDAMD')
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(SID1402),DISP=SHR
//*
//**********************************************************************
//* EJECUTA    PROGRAMA VIB233D                                        *
//* TRANSFIERE PARAMETROS   "PARAM"                                    *
//**********************************************************************
//SID1401  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//PARSOCIN DD DSN=SIVA.SIN.WKF.PARSOMDF,DISP=(NEW,CATLG,DELETE),
//            UNIT=SYSDA,SPACE=(CYL,(1,1),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//VIB242R1 DD SYSOUT=V
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(SID1401),DISP=SHR
//*
//*
//*
