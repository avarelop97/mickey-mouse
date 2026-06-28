//FDD3100 PROC
//*
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  PFDFDD31                                         *
//*                   FIN DE DIA DEL SIVA.                             *
//*                                                                    *
//* OBJETIVO       :                                                   *
//*                                                                    *
//*                                                                    *
//* DESPUES DE     :  PFDFDD08,PFDFDD29,PFDFDD30.                      *
//*                                                                    *
//*                                                                    *
//* OBSERVACION    :  EL PROCESO FINDIA SE DIVIDIO EN    SUBPROCESOS   *
//*                   A MANERA DE OPTIMIZAR EL TIEMPO TOTAL DE EJECU - *
//*                   CION LOS CUALES SERAN SUBMITIDOS POR DISPARADOR  *
//*                   Y NO POR CONSOLA                                 *
//*                                                                    *
//*                                                                    *
//*                                                                    *
//**********************************************************************
//**********************************************************************00133000
//*                       -- VOBB50D --                                *00134000
//* OBJETIVO : OBTIENE LA POSICION DE LA CASA PARA CONCILIACION        *00135000
//*            (ACTUALIZA      CTLPROC, CCONIND)                       *00136000
//*                                                                    *00137000
//* PASO REINICIABLE POR RESTART                        ***M. DINERO   *00138000
//**********************************************************************00139000
//FDD3107 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)           00140000
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    00150000
//SYSPRINT DD SYSOUT=X                                                  00160000
//SYSOUT   DD SYSOUT=X                                                  00170000
//SYSDBOUT DD SYSOUT=X                                                  00180000
//SYSABOUT DD DUMMY                                                     00190000
//SYSUDUMP DD DUMMY                                                     00200000
//SYSTSIN  DD DSN=SIVA.CARDS(FDD3107),DISP=SHR                          00210000
//*                                                                     00430000
//*-------------------------------------------------------------------
//*    BORRADO DE ARCHIVOS         == IDCAMS ==
//*-------------------------------------------------------------------
//FDD3106 EXEC  PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=SIVA.CARDS(FDD3106),DISP=SHR
//**********************************************************************00230000
//*                       -- VIBJ81O --                                *00240000
//* OBJETIVO : REPORTEADOR.                                            *00250000
//*                                                                    *00260000
//*                                                                    *00270000
//* PASO REINICIABLE POR RESTART                         *** CAPITALES *00280000
//**********************************************************************00290000
//FDD0809 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)           00310000
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    00320000
//SYSPRINT DD SYSOUT=X                                                  00330000
//SYSOUT   DD SYSOUT=X                                                  00340000
//SYSDBOUT DD SYSOUT=X                                                  00350000
//SYSABOUT DD DUMMY                                                     00360000
//SYSUDUMP DD DUMMY                                                     00370000
//VIBJ81T1 DD DSN=SIVA.MDC.WKF.VIBJ81T1,                                00380000
//            DISP=(NEW,CATLG,DELETE),UNIT=SYSDA,                       00380000
//            DCB=(RECFM=FB,LRECL=120,BLKSIZE=0,DSORG=PS),
//            SPACE=(TRK,(30,5))
//*VIBJ81R1 DD SYSOUT=(O,,TG14)                                         00390000
//VIBJ81R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SORTWK01 DD UNIT=SYSDA,SPACE=(CYL,(2))                                00400000
//SORTWK02 DD UNIT=SYSDA,SPACE=(CYL,(2))                                00410000
//SORTWK03 DD UNIT=SYSDA,SPACE=(CYL,(2))                                00410000
//SYSTSIN  DD DSN=SIVA.CARDS(FDD0809),DISP=SHR                          00420000
//**********************************************************************00230000
//*                       -- VOBJ82O --                                *00240000
//* OBJETIVO : REPORTEADOR.                                            *00250000
//*                                                                    *00260000
//*                                                                    *00270000
//* PASO REINICIABLE POR RESTART                     *** CAPITALES     *00280000
//**********************************************************************00290000
//*FDD0808 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00310000
//*YSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    00320000
//*YSPRINT DD SYSOUT=X                                                  00330000
//*YSOUT   DD SYSOUT=X                                                  00340000
//*YSDBOUT DD SYSOUT=X                                                  00350000
//*YSABOUT DD DUMMY                                                     00360000
//*YSUDUMP DD DUMMY                                                     00370000
//*OBJ82T1 DD DSN=SIVA.MDC.WKF.VOBJ82T1,                                00380000
//*           DISP=(NEW,CATLG,DELETE),UNIT=SYSDA,                       00380000
//*           DCB=(RECFM=FB,LRECL=51,BLKSIZE=0,DSORG=PS),
//*           SPACE=(TRK,(90,5))
//*OBJ82R1 DD SYSOUT=(O,,TG15)                                          00390000
//*ORTWK01 DD UNIT=SYSDA,SPACE=(CYL,(12))                               00400000
//*ORTWK02 DD UNIT=SYSDA,SPACE=(CYL,(12))                               00410000
//*ORTWK03 DD UNIT=SYSDA,SPACE=(CYL,(12))                               00410000
//*YSTSIN  DD DSN=SIVA.CARDS(FDD0808),DISP=SHR                          00420000
//**********************************************************************00230000
//*                       -- VOBJ83O --                                *00240000
//* OBJETIVO : REPORTEADOR.                                            *00250000
//*                                                                    *00260000
//*                                                                    *00270000
//* PASO REINICIABLE POR RESTART                        *** CAPITALES  *00280000
//**********************************************************************00290000
//FDD3105 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)           00310000
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    00320000
//SYSPRINT DD SYSOUT=X                                                  00330000
//SYSOUT   DD SYSOUT=X                                                  00340000
//SYSDBOUT DD SYSOUT=X                                                  00350000
//SYSABOUT DD DUMMY                                                     00360000
//SYSUDUMP DD DUMMY                                                     00370000
//*VOBJ83R1 DD SYSOUT=(O,,TG16)                                         00390000
//VOBJ83R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSTSIN  DD DSN=SIVA.CARDS(FDD3105),DISP=SHR                          00420000
//*                                                                     00480000
//**********************************************************************00490000
//*                           -- VOB772D --                            *00500000
//* OBJETIVO : ACTUALIZA EFECTIVO DE TESORERIA                         *00510000
//*            (ACTUALIZA CARTES, CARTERA)                             *00520000
//*                                                                    *00530000
//* PASO REINICIABLE POR RESTART                      *** TESORERIA    *00540000
//**********************************************************************00550000
//FDD3104 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)           00560000
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    00570000
//SYSPRINT DD SYSOUT=X                                                  00580000
//SYSOUT   DD SYSOUT=X                                                  00590000
//SYSDBOUT DD SYSOUT=X                                                  00600000
//SYSABOUT DD SYSOUT=X                                                  00610000
//SYSUDUMP DD DUMMY                                                     00620000
//SYSTSIN  DD DSN=SIVA.CARDS(FDD3104),DISP=SHR                          00630000
//*                                                                     00640000
//**********************************************************************00810000
//*                           -- VOB225D --                            *00820000
//* OBJETIVO : ACTUALIZAR FECHAS DE CARTERA.                           *00830000
//*            (ACTUALIZA CARTAUX)                                     *00840000
//*                                                                    *00850000
//* PASO REINICIABLE POR RESTART                       *** TESORERIA   *00860000
//**********************************************************************00870000
//FDD3103 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),                    00880000
//             REGION=4M,TIME=100                                       00890000
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    00900000
//SYSPRINT DD SYSOUT=X                                                  00910000
//SYSOUT   DD SYSOUT=X                                                  00920000
//PRINT    DD SYSOUT=X                                                  00930000
//*VOB225R1 DD SYSOUT=(O,,ZF06),DCB=BLKSIZE=0                           00940000
//VOB225R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSDBOUT DD SYSOUT=X                                                  00950000
//SYSABOUT DD DUMMY                                                     00960000
//SYSUDUMP DD DUMMY                                                     00970000
//SYSTSIN  DD DSN=SIVA.CARDS(FDD3103),DISP=SHR                          00980000
//*                                                                     00990000
//**********************************************************************01000000
//*                           -- VOB100D --                            *01010000
//* OBJETIVO : CALCULO, REPORTE Y ACUMULADO DEL ISR DIARIO S.I.        *01020000
//*            (ACTUALIZA RISRSOC)                                     *01030000
//*                                                                    *01040000
//* PASO NO REINICIABLE : RESTAURAR EL RESPALDO DE LA TABLA DB2        *01050000
//*                       DE RISRSOC Y REINICIAR EN ESTE PASO POR      *01060000
//*                       RESTART                                      *01070000
//*                                                                    *01080000
//* NOTOTA:   ESTE PASO DEBE DE CORRER DIARIA E INVARIABLEMENTE Y      *01090000
//*          NUNCA MAS DE 1 VEZ AL DIA.                                *01100000
//*                                                 *** SOC. INVERS.   *01110000
//**********************************************************************01120000
//FDD3102 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,                      01130000
//             COND=(4,LT),TIME=100                                     01140000
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    01150000
//SYSPRINT DD SYSOUT=X                                                  01160000
//SYSOUT   DD SYSOUT=X                                                  01170000
//PRINT    DD SYSOUT=X                                                  01180000
//SYSDBOUT DD SYSOUT=X                                                  01190000
//SYSABOUT DD SYSOUT=X                                                  01200000
//SYSUDUMP DD DUMMY                                                     01210000
//VOB100A1 DD DSN=SIVA.SIN.WKF.RISRSOC.PASO,                            01220000
//         UNIT=SYSDA,DISP=(NEW,PASS),                                  01230000
//         SPACE=(CYL,(5,9),RLSE),                                      01240000
//         DCB=(LRECL=080,BLKSIZE=0,RECFM=FB,DSORG=PS)                  01250000
//*VOB100R1 DD SYSOUT=(V,,ZF07),DCB=BLKSIZE=0                           01260000
//VOB100R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSTSIN  DD DSN=SIVA.CARDS(FDD3102),DISP=SHR                          01270000
//*                                                                     01280000
//**********************************************************************01290000
//*                           -- VOB110D --                            *01300000
//* OBJETIVO : ACTUALIZAR TABLA RISRSOC CON CARTERA INICIAL DEL DIA    *01310000
//*            (ACTUALIZA RISRSOC)                                     *01320000
//*                                                                    *01330000
//* PASO REINICIABLE POR RESTART                                       *01340000
//*                                                                    *01350000
//* NOTOTA:   ESTE PASO DEBE DE CORRER DIARIA E INVARIABLEMENTE Y      *01360000
//*          NUNCA MAS DE 1 VEZ AL DIA Y SIEMPRE DESPUES DEL PROGRAMA  *01370000
//*          VOB100D                                                   *01380000
//*                                                *** SOC. INVERS.    *01390000
//**********************************************************************01400000
//FDD3101 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,TIME=100,             01410000
//            COND=((0,NE,FDD3102),(4,LT))                              01420000
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    01430000
//SYSPRINT DD SYSOUT=X                                                  01440000
//SYSOUT   DD SYSOUT=X                                                  01450000
//PRINT    DD SYSOUT=X                                                  01460000
//SYSDBOUT DD SYSOUT=X                                                  01470000
//SYSABOUT DD SYSOUT=X                                                  01480000
//SYSUDUMP DD DUMMY                                                     01490000
//*VOB100R1 DD SYSOUT=(O,,ZF08),DCB=BLKSIZE=0                           01500000
//VOB100R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSTSIN  DD DSN=SIVA.CARDS(FDD3101),DISP=SHR                          01510000
//*                                                                     01520000
