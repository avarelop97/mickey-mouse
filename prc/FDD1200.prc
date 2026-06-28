//FDD1200 PROC
//*
//**********************************************************************
//*    G R U P O - F I N A N C I E R O - P R O B U R S A   (B B V)     *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  PFDFDD12                                         *
//*                   FIN DE DIA DEL SIVA.                             *
//*                                                                    *
//* OBJETIVO       :  REALIZAR LA INTERFASE DE FIN DE DIA DEL SIVA.    *
//*                   - INTERFASES BATCH (TSO)                         *
//*                                                                    *
//*   7MA. PARTE   :  TERMINAR LA CORRIDA DEL FINDIA                   *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  PROCESOS POSTERIORES AL FIN DE DIA               *
//*                                                                    *
//* DESPUES DE     :  PFDFDD01, PFDFDD02,PFDFDD05,PFDFDD07,PFDFDD08    *
//*                   PFDFDD10, PFDFDD11                               *
//*                                                                    *
//* REALIZO        :  JOEL GONZALEZ MARTINEZ                           *
//* FECHA          :  FEBRERO DE 1991                                  *
//*                                                                    *
//* OBSERVACION    :  EL PROCESO FINDIA SE DIVIDIO EN 12 SUBPROCESOS   *
//*                   A MANERA DE OPTIMIZAR EL TIEMPO TOTAL DE EJECU - *
//*                   CION LOS CUALES SERAN SUBMITIDOS POR DISPARADOR  *
//*                   Y NO POR CONSOLA                                 *
//*                                                                    *
//* MODIFICACION   :  SE LE AGREGO UN PASO MAS, EL VOB809O QUE         *
//*                   CORRIA ANTERIORMENTE EN EL PFDFDD11, DEL         *
//*                   CUAL SE ELIMINO.                                 *
//*                                    A.T.T.E. J.G.M. 23/MAYO/91      *
//*                                    SOPORTE A PRODUCCION            *
//*                                                                    *
//* MODIFICACION   :  SE LE AGREGO UN PASO MAS, EL QMF QUE CORRIA      *
//*                   ANTERIORMENTE EN EL PFDFDD11, DEL CUAL ----      *
//*                   SE ELIMINO.                                      *
//*                                    A.T.T.E. R.A.T. 13/ABR/93       *
//*                                    SOPORTE A PRODUCCION            *
//*                                                                    *
//* MODIFICACION   : TEMPORAL Y SIN ESTANDARES, SE INSERTA EL PASO     *
//*                  IDD0506A QUE CORRIA EN EL IDT0700, MIENTRAS       *
//*                  NO SE CONFIRME CON FEDERICO DOMINGUEZ Y           *
//*                  ARTURO OCHOA QUE SU INSERCION ES DEFINITIVA.      *
//*                                                                    *
//*                                    A.T.T.E. R.A.T. 14/ABR/93       *
//*                                    SOPORTE A PRODUCCION            *
//**********************************************************************
//**********************************************************************
//*                            === IDCAMS  ===                         *
//*                                                                    *
//* OBJETIVO : BORRAR ARCHIVO  UTILIZADO  EN PROCESO.                  *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//*
//FDD1214 EXEC PGM=IDCAMS,REGION=4M,COND=(0,NE)
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=SIVA.CARDS(FDD1214),DISP=SHR
//*********************************************************************
//*                       === VOBU96D ===                             *
//* OBJETIVO: DEPURADOR DE ORDENES HECHOS Y AHECHOR                   *
//*********************************************************************
//FDD1213  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,
//        TIME=100,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD1213),DISP=SHR
//**********************************************************************
//*                        -- VIBF51M --                               *
//*                                                                    *
//* OBJETIVO:  GENERAR REPORTE DE CANCELACION DE SOLICITUDES DE SALDO  *
//*            DEUDOR RECHAZADAS POR TESORERIA.                        *
//*             ****  NO ACTUALIZA ****                                *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//*                   NOVIEMBRE 24 DE 1992.       *** TESORERIA        *
//**********************************************************************
//FDD1212 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,
//        TIME=100,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//*VIBF51R1 DD SYSOUT=(V,,TT34)
//VIBF51R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD1212),DISP=SHR
//**********************************************************************
//*                        -- VIB181D --                               *
//*                                                                    *
//* OBJETIVO:  GENERAR REPORTE DE OPERACIONES REALIZADAS DURANTE EL DIA*
//*            CON CIFRAS POR SUCURSAL Y EMISORA.                      *
//*             ****  NO ACTUALIZA ****                                *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                   *** SOC. INVERS.    *
//**********************************************************************
//FDD1211 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,
//        TIME=100,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//*VIB181R1 DD SYSOUT=(V,,TI08)
//VIB181R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//VIB181R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//VIB181R3 DD SYSOUT=*
//VIB181R4 DD DSN=SIVA.SIN.WKF.VIB181A1,DISP=(NEW,CATLG,DELETE),
//            UNIT=SYSDA,SPACE=(CYL,(15,2),RLSE),
//            DCB=(RECFM=FB,LRECL=132,BLKSIZE=13200,DSORG=PS)
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD1211),DISP=SHR
//**********************************************************************
//*                        -- VIB182D --                               *
//*                                                                    *
//* OBJETIVO: GENERAR REPORTE DE OPERACIONES REALIZADAS DURANTE EL DIA *
//*           CON CIFRAS POR DIRECCION Y EMISORA.                      *
//*             ****  NO ACTUALIZA ****                                *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                 ***SOC. INVERS.       *
//**********************************************************************
//FDD1210 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//         TIME=100
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//*VIB182R1 DD SYSOUT=(V,,TI09),COPIES=2
//VIB182R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD1210),DISP=SHR
//**********************************************************************
//*                           -- VOBF18M --                            *
//*  OBJETIVO : DEPURAR TABLAS DE CARGOS VARIOS                        *
//*            OPERIND, RAZCOPE, RAZCSOL, ASOLCST, SOLICTD, MOVIND     *
//*                                                                    *
//*  PASO REINICIABLE POR RESTART                 *** PROC.ESTADISTICO *
//**********************************************************************
//FDD1207 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),
//             TIME=100
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN DD DSN=SIVA.CARDS(FDD1207),DISP=SHR
//*
//**********************************************************************
//*                           -- VOB179D --                            *
//*  OBJETIVO : GENERA INDICATIVOS DE COMPRA VENTA                     *
//*            (ACTUALIZA OPERIND ULTOPIN RAZCOPE AOPECST CARTERA)     *
//*                                                                    *
//*  PASO REINICIABLE POR RESTART                    ***SOC. INVERS.   *
//**********************************************************************
//FDD1206A EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),
//            TIME=100
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT  DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN DD DSN=SIVA.CARDS(FDD1206A),DISP=SHR
//*
//**********************************************************************
//*                           -- VOB809O --                            *
//*  OBJETIVO : DEPURAR TABLAS OPERASI, OPERATE, OPERTET               *
//*            (ACTUALIZA OPERASI, OPERATE, OPERTET)                   *
//*                                                                    *
//*  PASO REINICIABLE POR RESTART                  ***SOC. INVERS.     *
//**********************************************************************
//FDD1206 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),
//            TIME=100
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT  DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN DD DSN=SIVA.CARDS(FDD1206),DISP=SHR
//*
//**********************************************************************
//*                           -- PSUMCV  --                            *
//*  OBJETIVO : PROCEDIMIENTO PARA CORRER REPORTE DE QMF EN BATCH      *
//*             REPORTE CIFRAS RESUMEN DE PROCESO MENSUAL CARGOS VARIO *
//*                             CARGOS VARIOS                          *
//*                                                                    *
//*  PASO REINICIABLE POR RESTART              *** PROC. ESTADISTICO   *
//**********************************************************************
//FDD1205 EXEC PGM=IKJEFT01,COND=(4,LT),DYNAMNBR=25,REGION=4M
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSQLOAD,DISP=SHR * QMF MODULES  *
//         DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR * DB2 MODULES  *
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//         DD  DSN=GDDM.SADMMOD,DISP=SHR       * GDDM MODULES *
//SYSPROC  DD  DSN=LDB2MXP1.DBP1.SDSQCLTE,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSQEXCE,DISP=SHR
//SYSPRINT DD  TERM=TS,SYSOUT=Z
//ISPPLIB  DD  DSN=LDB2MXP1.DBP1.SDSQPLBE,DISP=SHR
//         DD  DSN=ISF.SISFPLIB,DISP=SHR     * ERA ISRPLIB
//         DD  DSN=ISP.SISPPENU,DISP=SHR     * ERA ISPPLIB
//         DD  DSN=LDB2MXP1.DBP1.SDSNSPFP,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNPFPE,DISP=SHR
//ISPMLIB  DD  DSN=LDB2MXP1.DBP1.SDSQMLBE,DISP=SHR
//         DD  DSN=ISF.SISFMLIB,DISP=SHR     * ERA ISRMLIB
//         DD  DSN=ISP.SISPMENU,DISP=SHR     * ERA ISPMLIB
//         DD  DSN=LDB2MXP1.DBP1.SDSNSPFM,DISP=SHR
//ISPSLIB  DD  DSN=LDB2MXP1.DBP1.SDSQSLBE,DISP=SHR
//         DD  DSN=ISP.SISPSLIB,DISP=SHR
//ISPTLIB  DD  DSN=ISP.SISPTENU,DISP=SHR     * ERA ISPTLIB
//         DD  DSN=ISF.SISFTLIB,DISP=SHR
//ISPPROF  DD  UNIT=SYSDA,SPACE=(TRK,(9,1,4)),
//         DCB=(LRECL=80,BLKSIZE=0,RECFM=FB,DSORG=PO)
//ADMGGMAP  DD  DSN=LDB2MXP1.DBP1.DSQMAPE,DISP=SHR
//ADMCFORM  DD  DSN=LDB2MXP1.DBP1.DSQCHART,DISP=SHR
//DSQPNLE   DD  DSN=LDB2MXP1.DBP1.DSQPNLE,DISP=SHR
//*DSNPRINT  DD  SYSOUT=(V,,TQ02),DCB=(RECFM=FBA,LRECL=133,BLKSIZE=0)
//DSQPRINT  DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD'),
//             DCB=(RECFM=FBA,LRECL=133,BLKSIZE=0)
//DSQDEBUG  DD  SYSOUT=X,DCB=(RECFM=FBA,LRECL=121,BLKSIZE=0)
//DSQEDIT   DD  UNIT=VIO,DCB=(RECFM=FBA,LRECL=79,BLKSIZE=0),
//  DISP=NEW,SPACE=(CYL,(1,1))
//DSQUDUMP  DD  SYSOUT=X,DCB=(RECFM=VBA,LRECL=125,BLKSIZE=0)
//SYSUDUMP DD DUMMY
//DSQSPILL  DD  DSN=&&SPILL,DISP=(NEW,DELETE),
//  UNIT=VIO,SPACE=(CYL,(1,1),RLSE),
//  DCB=(RECFM=F,LRECL=4096,BLKSIZE=0)
//SYSTSPRT  DD  SYSOUT=X
//SYSTSIN DD DSN=SIVA.CARDS(FDD1205),DISP=SHR
//*
//**********************************************************************
//*                           -- PCONTAB --                            *
//*  OBJETIVO : PROCEDIMIENTO PARA CORRER REPORTE DE QMF EN BATCH      *
//*             REPORTE AFECTACIONES CONTABLES ENVIADO EN TABLA MOVIND *
//*                      CARGOS   VARIOS                               *
//*                                                                    *
//*  PASO REINICIABLE POR RESTART                                      *
//**********************************************************************
//FDD1202 EXEC PGM=IKJEFT01,COND=(4,LT),DYNAMNBR=25,REGION=4M
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSQLOAD,DISP=SHR * QMF MODULES  *
//         DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR * DB2 MODULES  *
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//         DD  DSN=GDDM.SADMMOD,DISP=SHR       * GDDM MODULES *
//SYSPROC  DD  DSN=LDB2MXP1.DBP1.SDSQCLTE,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSQEXCE,DISP=SHR
//SYSPRINT DD  TERM=TS,SYSOUT=Z
//ISPPLIB  DD  DSN=LDB2MXP1.DBP1.SDSQPLBE,DISP=SHR
//         DD  DSN=ISF.SISFPLIB,DISP=SHR     * ERA ISRPLIB
//         DD  DSN=ISP.SISPPENU,DISP=SHR     * ERA ISPPLIB
//         DD  DSN=LDB2MXP1.DBP1.SDSNSPFP,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNPFPE,DISP=SHR
//ISPMLIB  DD  DSN=LDB2MXP1.DBP1.SDSQMLBE,DISP=SHR
//         DD  DSN=ISF.SISFMLIB,DISP=SHR     * ERA ISRMLIB
//         DD  DSN=ISP.SISPMENU,DISP=SHR     * ERA ISPMLIB
//         DD  DSN=LDB2MXP1.DBP1.SDSNSPFM,DISP=SHR
//ISPSLIB  DD  DSN=LDB2MXP1.DBP1.SDSQSLBE,DISP=SHR
//         DD  DSN=ISP.SISPSLIB,DISP=SHR
//ISPTLIB  DD  DSN=ISP.SISPTENU,DISP=SHR     * ERA ISPTLIB
//         DD  DSN=ISF.SISFTLIB,DISP=SHR
//ISPPROF  DD  UNIT=SYSDA,SPACE=(TRK,(9,1,4)),
//         DCB=(LRECL=80,BLKSIZE=0,RECFM=FB,DSORG=PO)
//ADMGGMAP  DD  DSN=LDB2MXP1.DBP1.DSQMAPE,DISP=SHR
//ADMCFORM  DD  DSN=LDB2MXP1.DBP1.DSQCHART,DISP=SHR
//DSQPNLE   DD  DSN=LDB2MXP1.DBP1.DSQPNLE,DISP=SHR
//*DSNPRINT  DD  SYSOUT=(V,,TQ01),DCB=(RECFM=FBA,LRECL=133,BLKSIZE=0)
//DSQPRINT DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD'),
//            DCB=(RECFM=FBA,LRECL=133,BLKSIZE=0)
//DSQDEBUG  DD  SYSOUT=X,DCB=(RECFM=FBA,LRECL=121,BLKSIZE=0)
//DSQEDIT   DD  UNIT=VIO,DCB=(RECFM=FBA,LRECL=79,BLKSIZE=0),
//  DISP=NEW,SPACE=(CYL,(1,1))
//DSQUDUMP  DD  SYSOUT=X,DCB=(RECFM=VBA,LRECL=125,BLKSIZE=0)
//SYSUDUMP DD DUMMY
//DSQSPILL  DD  DSN=&&SPILL,DISP=(NEW,DELETE),
//  UNIT=VIO,SPACE=(CYL,(1,1),RLSE),
//  DCB=(RECFM=F,LRECL=4096,BLKSIZE=0)
//SYSTSPRT  DD  SYSOUT=X
//SYSTSIN DD DSN=SIVA.CARDS(FDD1202),DISP=SHR
//**********************************************************************
//** PEND         FIN DEL PROCEDIMIENTO FDD1200                        *
//**********************************************************************
