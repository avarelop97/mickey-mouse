//FDD1000 PROC
//*
//**********************************************************************
//*    G R U P O - F I N A N C I E R O - P R O B U R S A   (B B V)     *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  PFDFDD10                                         *
//*                   FIN DE DIA DEL SIVA.                             *
//*                                                                    *
//* OBJETIVO       :  REALIZAR LA INTERFASE DE FIN DE DIA DEL SIVA.    *
//*                   - INTERFASES BATCH (TSO)                         *
//*                                                                    *
//*   6TA. PARTE   :  GENERACION DE REPORTES                           *
//*                   (TESORERIA)                                      *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  PFDFDD12                                         *
//*                                                                    *
//* DESPUES DE     :  PFDFDD01, PFDFDD02, PFDFDD05,PFDFDD07,PFDFDD08   *
//*                                                                    *
//* REALIZO        :  JOEL GONZALEZ MARTINEZ                           *
//* FECHA          :  FEBRERO DE 1991                                  *
//*                                                                    *
//* OBSERVACION    :  EL PROCESO FINDIA SE DIVIDIO EN 12 SUBPROCESOS   *
//*                   A MANERA DE OPTIMIZAR EL TIEMPO TOTAL DE EJECU - *
//*                   CION LOS CUALES SERAN SUBMITIDOS POR DISPARADOR  *
//*                   Y NO POR CONSOLA                                 *
//*                                                                    *
//* NOTA           :  ESTE PROCESO PUEDE CORRER EN PARALELO CON EL     *
//*                   PFDFDD11                                         *
//*                                                                    *
//* MODIFICACION   :  SE INSERTARON 2 PASOS, IDCAMS Y EL VIB359D       *
//*                   AL PRINCIPIO DEL PROC (FDD1013 Y FDD1012)        *
//*                                                A.T.T.E.  SOPPROD   *
//*                                                    17/JUN/91       *
//*                                                                    *
//*                                                                    *
//* MODIFICACION   :  SE AGREGARON 2 PASOS DEPURADORES DE TABLAS DE    *
//*                   CONTRATOS                                        *
//*                                                A.T.T.E.  RZV       *
//*                                                    07/MAR/95       *
//*                                                                    *
//**********************************************************************
//**********************************************************************
//*                            --- VOBK71O ---                         *
//* OBJETIVO : DEPURAR LA TABLA CAMTMEC                                *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                        *** CONTRATOS  *
//**********************************************************************
//FDD1016  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,TIME=100
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD SYSOUT=X
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD1016),DISP=SHR
//**********************************************************************
//*                            --- VOBK72O ---                         *
//* OBJETIVO : DEPURAR LA TABLA CAMBCO                                 *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                       *** CONTRATOS   *
//**********************************************************************
//FDD1015  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,TIME=100
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//PRINT    DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD SYSOUT=X
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD1015),DISP=SHR
//********************************************************************* 00040000
//*                       VIBG66D
//* OBJETIVO : GENERAR REPORTE DE MOVIMIENTOS DE CONTRALORIA DEL DIA   *
//*                                                                    *
//*    EN CASO DE CANCELACION AVISARLE A PAUL CARDENAS                 *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                      *** TESORERIA    *
//********************************************************************* 00060000
//FDD1015A EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,         00070000
//        PARM='/DEBUG',TIME=100                                        00090000
//*                                                                     00130000
//VIBG66A1 DD DSN=SIVA.CON.WKF.VIBG66A1,                                00140027
//           DISP=(NEW,PASS,DELETE),                                    00151028
//           DCB=(DSORG=PS,LRECL=111,RECFM=FB,BLKSIZE=0),               00160026
//           UNIT=SYSDA,                                                00170028
//           SPACE=(CYL,(10,5),RLSE)                                    00180028
//*                                                                     00181000
//VIBG66R1  DD SYSOUT=(O,,TT32)                                         00240000
//VIBG66R2  DD SYSOUT=(O,,TT32)                                         00240000
//SORTWK01  DD UNIT=SYSDA,SPACE=(CYL,(5,1))                             00200021
//SORTWK02  DD UNIT=SYSDA,SPACE=(CYL,(5,1))                             00210021
//SORTWK03  DD UNIT=SYSDA,SPACE=(CYL,(5,1))                             00220021
//SORTWK04  DD UNIT=SYSDA,SPACE=(CYL,(5,1))                             00221021
//SORTWK05  DD UNIT=SYSDA,SPACE=(CYL,(5,1))                             00222021
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    00230000
//SYSPRINT DD SYSOUT=X                                                  00240000
//SYSOUT   DD SYSOUT=X                                                  00250000
//SYSDBOUT DD SYSOUT=X                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=SIVA.CARDS(FDD1015A),DISP=SHR                         00160000
//*                                                                     00310000
//**********************************************************************
//*                            --- IDCAMS  ---                         *
//* OBJETIVO : BORRAR ARCHIVO UTILIZADO EN EL VIB359D                  *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//FDD1013 EXEC PGM=IDCAMS,REGION=4M
//SYSPRINT DD SYSOUT=X
//SYSIN    DD DSN=SIVA.CARDS(FDD1013),DISP=SHR
//*
//**********************************************************************
//*                          === VIB359D ===                           *
//* OBJETIVO : REPORTE DEL I.V.A. RETENIDO POR LA CASA                 *
//*                                                                    *
//* PASO NO REINICIABLE :   VOLVER A MANDAR A PARTIR DEL PASO FDD1013  *
//*                         POR RESTARR              *** SOC. INVERS.  *
//**********************************************************************
//FDD1012 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),
//            REGION=4M,TIME=100
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//PRINT    DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD SYSOUT=X
//SYSUDUMP DD DUMMY
//*VIB359R1 DD SYSOUT=V,DCB=BLKSIZE=133
//VIB359R1 DD SYSOUT=(O,,TT26),DCB=BLKSIZE=0,FCB=CD03
//VIB359A1 DD DSN=SIVA.SIN.WKF.DETALLE.IVACASA,
//            UNIT=SYSDA,DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(5,9),RLSE),
//            DCB=(LRECL=54,BLKSIZE=0,RECFM=FB,DSORG=PS)
//SYSTSIN  DD DSN=SIVA.CARDS(FDD1012),DISP=SHR
//*
//**********************************************************************
//*                           -- IDCAMS --                             *
//* OBJETIVO : GENERAR ARCHIVO PARA IMPRESION DEL REPORTE DE SOLICI-   *
//*            TUDES PENDIENTES (DIAS POSTERIORES)                     *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//FDD1011 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD SYSOUT=X
//ARCH     DD DSN=&&VIB747R,DISP=(NEW,PASS),
//            UNIT=SYSDA,
//            DCB=(LRECL=132,RECFM=FBA,BLKSIZE=0),
//            SPACE=(6336,(80,30),RLSE)
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                           -- VIB747R --                            *
//* OBJETIVO : REPORTAR SOLICITUDES PENDIENTES (DIAS POSTERIORES)      *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                     *** TESORERIA     *
//**********************************************************************
//FDD1010 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//VTB798A1 DD DSN=&&VIB747R,DISP=(OLD,PASS)
//VIB747R1 DD DUMMY
//AGS798R1 DD SYSOUT=(O,,AT12),DCB=RECFM=FBA
//CDJ798R1 DD SYSOUT=(O,,BT12),DCB=RECFM=FBA
//CHI798R1 DD SYSOUT=(O,,CT12),DCB=RECFM=FBA
//GUA798R1 DD SYSOUT=(O,,DT12),DCB=RECFM=FBA
//HER798R1 DD SYSOUT=(O,,ET12),DCB=RECFM=FBA
//JAL798R1 DD SYSOUT=(O,,FT12),DCB=RECFM=FBA
//JER798R1 DD SYSOUT=(O,,GT12),DCB=RECFM=FBA
//KRO798R1 DD SYSOUT=(O,,HT12),DCB=RECFM=FBA
//LEO798R1 DD SYSOUT=(O,,IT12),DCB=RECFM=FBA
//MAZ798R1 DD SYSOUT=(O,,JT12),DCB=RECFM=FBA
//MER798R1 DD SYSOUT=(O,,KT12),DCB=RECFM=FBA
//MOR798R1 DD SYSOUT=(O,,LT12),DCB=RECFM=FBA
//MTY798R1 DD SYSOUT=(O,,MT12),DCB=RECFM=FBA
//PDR798R1 DD SYSOUT=(O,,NT12),DCB=RECFM=FBA
//POL798R1 DD SYSOUT=(O,,OT12),DCB=RECFM=FBA
//PUE798R1 DD SYSOUT=(O,,PT12),DCB=RECFM=FBA
//SAT798R1 DD SYSOUT=(O,,QT12),DCB=RECFM=FBA
//SLP798R1 DD SYSOUT=(O,,RT12),DCB=RECFM=FBA,FCB=CD03
//TAM798R1 DD SYSOUT=(O,,ST12),DCB=RECFM=FBA
//TIJ798R1 DD SYSOUT=(O,,UT12),DCB=RECFM=FBA
//TOL798R1 DD SYSOUT=(O,,VT12),DCB=RECFM=FBA
//TOR798R1 DD SYSOUT=(O,,WT12),DCB=RECFM=FBA,FCB=CD03
//VER798R1 DD SYSOUT=(O,,XT12),DCB=RECFM=FBA
//ZAC798R1 DD SYSOUT=(O,,YT12),DCB=RECFM=FBA
//ZPR798R1 DD SYSOUT=(O,,TT12),DCB=RECFM=FBA,FCB=CD03
//MMU798R1 DD SYSOUT=(O,,1T12),DCB=RECFM=FBA
//CUL798R1 DD SYSOUT=(O,,2T12),DCB=RECFM=FBA
//MMP798R1 DD SYSOUT=(O,,3T12),DCB=RECFM=FBA
//SAN798R1 DD SYSOUT=(O,,4T12),DCB=RECFM=FBA
//ZZZ798R1 DD SYSOUT=(O,,5T12),DCB=RECFM=FBA
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD SYSOUT=X
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD1010),DISP=SHR
//*
//**********************************************************************
//*                           -- IDCAMS --                             *
//* OBJETIVO : GENERAR ARCHIVO PARA IMPRESION DEL REPORTE DE LIBERA-   *
//*            CION DE EFECTIVO COMPROMETIDO                           *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//FDD1009 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD SYSOUT=X
//ARCH     DD DSN=&&VIB750R,DISP=(NEW,PASS),UNIT=SYSDA,
//            DCB=(LRECL=132,RECFM=FBA,BLKSIZE=0),
//            SPACE=(6336,(80,30),RLSE)
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                           -- VIB750R --                            *
//* OBJETIVO : REPORTAR LIBERACION DE EFECTIVO COMPROMETIDO            *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                       *** TESORERIA   *
//**********************************************************************
//FDD1008 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//*
//VTB798A1 DD DSN=&&VIB750R,DISP=(OLD,PASS)
//AGS798R1 DD SYSOUT=(O,,AT12),DCB=RECFM=FBA
//CDJ798R1 DD SYSOUT=(O,,BT12),DCB=RECFM=FBA
//CHI798R1 DD SYSOUT=(O,,CT12),DCB=RECFM=FBA
//GUA798R1 DD SYSOUT=(O,,DT12),DCB=RECFM=FBA
//HER798R1 DD SYSOUT=(O,,ET12),DCB=RECFM=FBA
//JAL798R1 DD SYSOUT=(O,,FT12),DCB=RECFM=FBA
//JER798R1 DD SYSOUT=(O,,GT12),DCB=RECFM=FBA
//KRO798R1 DD SYSOUT=(O,,HT12),DCB=RECFM=FBA
//LEO798R1 DD SYSOUT=(O,,IT12),DCB=RECFM=FBA
//MAZ798R1 DD SYSOUT=(O,,JT12),DCB=RECFM=FBA
//MER798R1 DD SYSOUT=(O,,KT12),DCB=RECFM=FBA
//MOR798R1 DD SYSOUT=(O,,LT12),DCB=RECFM=FBA
//MTY798R1 DD SYSOUT=(O,,MT12),DCB=RECFM=FBA
//PDR798R1 DD SYSOUT=(O,,NT12),DCB=RECFM=FBA
//POL798R1 DD SYSOUT=(O,,OT12),DCB=RECFM=FBA
//PUE798R1 DD SYSOUT=(O,,PT12),DCB=RECFM=FBA
//SAT798R1 DD SYSOUT=(O,,QT12),DCB=RECFM=FBA
//SLP798R1 DD SYSOUT=(O,,RT12),DCB=RECFM=FBA,FCB=CD03
//TAM798R1 DD SYSOUT=(O,,ST12),DCB=RECFM=FBA
//TIJ798R1 DD SYSOUT=(O,,UT12),DCB=RECFM=FBA
//TOL798R1 DD SYSOUT=(O,,VT12),DCB=RECFM=FBA
//TOR798R1 DD SYSOUT=(O,,WT12),DCB=RECFM=FBA,FCB=CD03
//VER798R1 DD SYSOUT=(O,,XT12),DCB=RECFM=FBA
//ZAC798R1 DD SYSOUT=(O,,YT12),DCB=RECFM=FBA
//ZPR798R1 DD SYSOUT=(O,,TT12),DCB=RECFM=FBA,FCB=CD03
//MMU798R1 DD SYSOUT=(O,,1T12),DCB=RECFM=FBA
//CUL798R1 DD SYSOUT=(O,,2T12),DCB=RECFM=FBA
//MMP798R1 DD SYSOUT=(O,,3T12),DCB=RECFM=FBA
//SAN798R1 DD SYSOUT=(O,,4T12),DCB=RECFM=FBA
//ZZZ798R1 DD SYSOUT=(O,,5T12),DCB=RECFM=FBA
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD SYSOUT=X
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD1008),DISP=SHR
//*
//**********************************************************************
//*                           -- VOB774D --                            *
//* OBJETIVO : REPORTAR CANCELACION SALDO DEUDOR VS CENTROS DE COSTO   *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                 ***TESORERIA          *
//**********************************************************************
//FDD1007 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//*VOB774R1 DD SYSOUT=V,FREE=CLOSE
//VOB774R1 DD SYSOUT=(O,,TT22),FCB=CD03
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD SYSOUT=X
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD1007),DISP=SHR
//*
//**********************************************************************
//*                           -- IDCAMS --                             *
//* OBJETIVO : GENERAR ARCHIVO PARA IMPRESION DEL REPORTE DE MOVIMIEN- *
//*            TOS SI-AFECTA BANCOS VS CENTROS DE COSTO                *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                    *** TESORERIA      *
//**********************************************************************
//FDD1006 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD SYSOUT=X
//ARCH     DD DSN=&&VOB773D,DISP=(NEW,PASS),UNIT=SYSDA,
//            DCB=(LRECL=132,RECFM=FBA,BLKSIZE=0),
//            SPACE=(6336,(80,30),RLSE)
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                           -- VOB773R --                            *
//* OBJETIVO : REPORTAR MOVIMIENTOS SI-AFECTA BANCOS VS CENTROS DE     *
//*            COSTOS                                                  *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                    *** TESORERIA      *
//**********************************************************************
//FDD1005 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//*VOB773R1 DD SYSOUT=V,FREE=CLOSE
//VOB773R1 DD SYSOUT=(O,,TT23),FCB=CD03
//VOB773R2 DD SYSOUT=(O,,TT27),FCB=CD03
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD SYSOUT=X
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD1005),DISP=SHR
//*
//**********************************************************************
//*                           -- VOB775D --                            *
//* OBJETIVO : REPORTAR CARGO POR CHEQUE DEVUELTO VS CENTRO DE COSTO   *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                     *** TESORERIA     *
//**********************************************************************
//FDD1004 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//*VOB775R1 DD SYSOUT=V,FREE=CLOSE
//VOB775R1 DD SYSOUT=(O,,TT24),FCB=CD03
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD SYSOUT=X
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD1004),DISP=SHR
//*
//**********************************************************************
//*                          === VIB358D ===                           *
//*                                                                    *
//* OBJETIVO : REPORTE DE BONIFICACIONES Y CARGOS DE IVA AUTOMATICO.   *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                   *** TESORERIA       *
//**********************************************************************
//FDD1003 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,
//         TIME=100,COND=(4,LT)
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//PRINT    DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD SYSOUT=X
//SYSUDUMP DD DUMMY
//*VIB358R1 DD SYSOUT=V,DCB=BLKSIZE=133,FREE=CLOSE
//VIB358R1 DD SYSOUT=(O,,TT25),DCB=BLKSIZE=0,FCB=CD03
//SYSTSIN  DD DSN=SIVA.CARDS(FDD1003),DISP=SHR
//**********************************************************************
//*                       -- VIBK10D --                                *
//*                                                                    *
//* OBJETIVO:     REPORTE DE ALTAS DEL DIA DE CONTRATOS                *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                       *** CONTRATOS   *
//**********************************************************************
//*            PASO PARA CASA DE BOLSA
//**********************************************************************
//FDD1002 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),
//          TIME=100
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//PRINT    DD SYSOUT=X
//SYSDBOUT DD DUMMY
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//VIBK10R1 DD SYSOUT=(O,,TC08),DCB=BLKSIZE=0,FCB=CD03
//SYSTSIN  DD DSN=SIVA.CARDS(FDD1002),DISP=SHR
//*
//*
//**********************************************************************
//*                        -- VIBK11D --                               *
//*                                                                    *
//* OBJETIVO :    REPORTE DE BAJAS DEL DIA DE CONTRATOS                *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                     *** CONTRATOS     *
//**********************************************************************
//*            PASO PARA CASA DE BOLSA
//**********************************************************************
//FDD1001 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),
//         TIME=100
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//PRINT    DD SYSOUT=X
//SYSDBOUT DD DUMMY
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//VIBK11R1 DD SYSOUT=(O,,TC09),DCB=BLKSIZE=0,FCB=CD03
//SYSTSIN  DD DSN=SIVA.CARDS(FDD1001),DISP=SHR
//*
//**********************************************************************
//*            PASO PARA BANCO                        *** CONTRATOS
//**********************************************************************
//FDD1001B EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=1024K,COND=(4,LT),
//         TIME=100
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=2420
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//PRINT    DD SYSOUT=X
//SYSDBOUT DD DUMMY
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//VIBK11R1 DD SYSOUT=(O,,3C09),DCB=BLKSIZE=133,FCB=CD03
//SYSTSIN  DD DSN=SIVA.CARDS(FDD1001B),DISP=SHR
//*
//**********************************************************************
//*                        -- VIBK12D --                               *
//*                                                                    *
//* OBJETIVO:REPORTE DE CAMBIOS DE PROMOTOR DEL DIA / CONTRATOS        *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                      *** CONTRATOS    *
//**********************************************************************
//*            PASO PARA CASA DE BOLSA
//**********************************************************************
//FDD1001A EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),
//        TIME=100
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//PRINT    DD SYSOUT=X
//SYSDBOUT DD DUMMY
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//VIBK12R1 DD SYSOUT=(O,,TC10),DCB=BLKSIZE=0,FCB=CD03
//SYSTSIN  DD DSN=SIVA.CARDS(FDD1001A),DISP=SHR
//*
//**********************************************************************
//*               FIN DEL PROCEDIMIENTO FDD1000                        *
//**********************************************************************
