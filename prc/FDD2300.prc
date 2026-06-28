//FDD2300 PROC
//*
//**********************************************************************
//*    CASA DE BOLSA PROBURSA  -  BILBAO VIZCAYA                       *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        : PFDFDD23.                                         *
//*                  REPORTES DE LA INTERFAZ DE MERCADO DE DINERO      *
//*                                                                    *
//* OBJETIVO: EJECUTAR LOS PROGRAMAS QUE REPRESENTAN LA  FUNCION       *
//*           REPORTEO DE LA INTERFACE DE MERCADO DE DINERO QUE        *
//*           ANTES CORRIAN EN EL PIFMDD08.                            *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  IMAGE COPYS POSTERIORES A FINDIA                 *
//*                                                                    *
//* DESPUES DE     :  PFDFDD22                                         *
//*                                                                    *
//* REALIZO        :  JAVIER AKE CASTILLO                              *
//*                                                                    *
//* FECHA          :  SEPTIEMBRE 1997.                                 *
//*********************************************************************
//*                          === VIBR15D ===
//*      INFORME DIARIO AL BANCO DE MEXICO SOBRE POSICION DE
//*      INSTRUMENTOS GUBERNAMENTALES
//*      PASO PARA CASA DE BOLSA
//*********************************************************************
//FDD2358  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=0M
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//VIBR15R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//VIBR15A1 DD  DSN=SIVA.MDD.FIX.INFORMES.CB,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=SYSDA,SPACE=(CYL,(10,10),RLSE),
//             DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=SIVA.CARDS(FDD2358),DISP=SHR
//**********************************************************************
//*                          === VIBR15D ===                           *
//*      INFORME DIARIO AL BANCO DE MEXICO SOBRE POSICION DE           *
//*      INSTRUMENTOS GUBERNAMENTALES                                  *
//*      PASO PARA BANCO                                               *
//**********************************************************************
//FDD2357  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=0M
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//VIBR15R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//VIBR15A1 DD  DSN=SIVA.MDD.FIX.INFORMES.MMP,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=SYSDA,SPACE=(CYL,(10,10),RLSE),
//             DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=SIVA.CARDS(FDD2357),DISP=SHR
//**********************************************************************
//*                          === VIBR05D ===                           *
//* OBJETIVO : REPORTAR LOS INSTRUMENTOS OPERADOS CON CLIENTES         *
//*            VALOR HOY Y VALOR NORMAL .                              *
//* PASO REINICIABLE POR RESTART                      *** M. DINERO    *
//**********************************************************************
//*                 PASO PARA CASA DE BOLSA                            *
//**********************************************************************
//FDD2356  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//             TIME=100
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//VIBR05R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//VIBR05R2 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD2356),DISP=SHR
//**********************************************************************
//*                 PASO PARA BANCO                    ***M.DINERO     *
//**********************************************************************
//FDD2355  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//             TIME=100
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//VIBR05R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//VIBR05R2 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD2355),DISP=SHR
//*
//**********************************************************************
//*                          === VIBN85D ===                           *
//* OBJETIVO : REPORTE DE COMISIONES DE MERCADO DE DINERO              *
//* PASO REINICIABLE POR RESTART                     ***M.DINERO  C.B. *
//**********************************************************************
//**********************************************************************
//FDD2351  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//             TIME=100
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//VIBN85R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=SIVA.CARDS(FDD2354),DISP=SHR
//**********************************************************************
//*                          === VIBN85D ===                           *
//* OBJETIVO : REPORTE DE COMISIONES DE MERCADO DE DINERO              *
//* PASO REINICIABLE POR RESTART                     ***M.DINERO       *
//**********************************************************************
//*          CORRE  PARA BANCO                                         *
//**********************************************************************
//FDD2350  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//             TIME=100
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//VIBN85R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=SIVA.CARDS(FDD2353),DISP=SHR
//**********************************************************************
//*                          === VIBN98D ===                           *
//* OBJETIVO : REPORTE DE LAS CONFIRMACIONES IMPRESAS.                 *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                        *** M.DINERO   *
//**********************************************************************
//*                   PASO PARA CASA DE BOLSA                          *
//**********************************************************************
//FDD2349  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//             TIME=100
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//*VIBN98R1 DD  SYSOUT=(V,,MD08)
//VIBN98R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=SIVA.CARDS(FDD2352),DISP=SHR
//**********************************************************************
//*                          === VIBN99D ===                           *
//* OBJETIVO : REPORTE DE LAS OPERACIONES GLOBALES PARA LAS            *
//*            CONFIRMACIONES DE MDD.                                  *
//* PASO REINICIABLE POR RESTART                        *** M.DINERO   *
//**********************************************************************
//*                   PASO PARA CASA DE BOLSA                          *
//**********************************************************************
//FDD2348  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//             TIME=100
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//*VIBN99R1 DD  SYSOUT=(V,,MD09)
//VIBN99R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=SIVA.CARDS(FDD2351),DISP=SHR
//**********************************************************************
//**********************************************************************00003000
//*                       * IDCAMS  *                                  *
//* OBJETIVO: DELETE DE LOS ARCHIVOS TEMPORALES                        *
//**********************************************************************00003000
//FDD2347  EXEC PGM=IDCAMS,REGION=4M                                    00070000
//SYSIN    DD DSN=SIVA.CARDS(FDD2350),DISP=SHR
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//**********************************************************************00003000
//*                       * IDCAMS  *                                  *
//* OBJETIVO: DELETE DE LOS ARCHIVOS TEMPORALES                        *
//*           BORRA ARCHIVO SIVA.ESPEC.CB                              *
//*           BORRA ARCHIVO SIVA.ESPEC.BBV                             *
//**********************************************************************00003000
//FDD2346  EXEC PGM=IDCAMS,REGION=4M,COND=(4,LT)                        00070000
//SYSIN    DD DSN=SIVA.CARDS(FDD2347),DISP=SHR
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//**********************************************************************
//*                          === VIBH78D ===                           *
//* OBJETIVO : REPORTE DE OPERACIONES ESPECIALES DE MERCADO DE         *
//*            DINERO.                                                *
//* PASO REINICIABLE POR RESTART                     ***M.DINERO       *
//**********************************************************************
//*                   PASO PARA CASA DE BOLSA                          *
//**********************************************************************
//FDD2345  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//             TIME=100
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//*VIBH78R1 DD  SYSOUT=(O,,TS10)
//VIBH78R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=SIVA.CARDS(FDD2346),DISP=SHR
//**********************************************************************
//*                          === VIBN14D ===                           *
//* OBJETIVO : CONFIRMACION DE OPERACIONES EN DIRECTO (AA)             *
//* PASO REINICIABLE POR RESTART -----------  BANCO BILBAO VIZCAYA     *
//*                                                       ***M. DINERO *
//**********************************************************************
//*FDD2344  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),
//*             TIME=100
//*SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0
//*SYSPRINT DD  SYSOUT=X
//*SYSOUT   DD  SYSOUT=X
//*VIBN14A1 DD  DSN=SIVA.MDD.WKF.CONFBCO.DIRECTO,
//*             DISP=(NEW,CATLG,CATLG),
//*             DCB=(DSORG=PS,RECFM=FBA,LRECL=300,BLKSIZE=0),
//*             UNIT=SYSDA,
//*             SPACE=(TRK,(5,5))
//*VIBN14R1 DD  DSN=SIVA.MDD.FIX.CONFBCO.SIN.TASA,
//*             DISP=(NEW,CATLG,CATLG),
//*             DCB=(DSORG=PS,RECFM=FBA,LRECL=101,BLKSIZE=0),
//*             UNIT=SYSDA,
//*             SPACE=(TRK,(5,5))
//*SYSDBOUT DD  SYSOUT=X
//*SYSABOUT DD  DUMMY
//*SYSUDUMP DD  DUMMY
//*SYSTSIN  DD  DSN=SIVA.CARDS(FDD2344),DISP=SHR
//**
//**********************************************************************
//* SE ADICIONO ESTE PASO PARA GENERAR LAS CONF. EN ARCH. PARA IMAGENES*
//**********************************************************************
//*FDD2343  EXEC  PGM=ICEGENER
//*SYSPRINT DD  SYSOUT=*
//*SYSIN    DD  DUMMY
//*SYSUT1   DD  DSN=SIVA.MDD.FIX.CONFBCO.SIN.TASA,DISP=SHR
//*SYSUT2   DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//**SYSUT2   DD  SYSOUT=(V,,TD77),DCB=RECFM=FBA
//**
//**********************************************************************
//*                          === VIBH12D ===                           *
//* OBJETIVO : REPORTE DE REPORTES A LA COMISION NACIONAL DE           *
//*            VALORES.                                                *
//* PASO REINICIABLE POR RESTART                        *** M.DINERO   *
//**********************************************************************
//*                   PASO PARA CASA DE BOLSA                          *
//**********************************************************************
//FDD2342  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//             TIME=100
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//*VIBH12R1 DD  SYSOUT=(V,,TD24)
//VIBH12R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=SIVA.CARDS(FDD2343),DISP=SHR
//**********************************************************************
//*                   PASO PARA BANCO                  ***M. DINERO    *
//**********************************************************************
//FDD2341  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//             TIME=100
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//*VIBH12R1 DD  SYSOUT=(O,,3D24)
//VIBH12R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=SIVA.CARDS(FDD2342),DISP=SHR
//*
//**********************************************************************
//*                          === VIBH11D ===                           *
//* OBJETIVO : REPORTE DE CUPONES VIGENTES Y SUBSECUENTES PARA         *
//*            AJUSTABONOS Y BONDES.                                   *
//* PASO REINICIABLE POR RESTART                      *** M. DINERO    *
//**********************************************************************
//FDD2340  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//             TIME=100
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//*VIBH11R1 DD  SYSOUT=(V,,TD22)
//VIBH11R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=SIVA.CARDS(FDD2341),DISP=SHR
//*
//**********************************************************************
//*                          === IDCAMS  ===                           *
//* OBJETIVO : REPORTE DE CUPONES VIGENTES Y SUBSECUENTES PARA         *
//*            AJUSTABONOS Y BONDES.                                   *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//FDD2339  EXEC PGM=IDCAMS,COND=(4,LT),REGION=4M,
//             TIME=100
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSIN  DD  DSN=SIVA.CARDS(FDD2340),DISP=SHR
//*
//*====================================================================*
//*    SPUFI QUE ELIMINA EL CONTRATO 99127 DEL GRUPO DE CUENTAS 85      08230000
//*    PASO NECESARIO PARA REPORTE VIBH10D CASA DE BOLSA                08240000
//*====================================================================*
//*
//FDD2338  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00009000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD  SYSOUT=*                                                 00010000
//SYSPRINT DD  SYSOUT=*                                                 00020000
//SYSUDUMP DD DUMMY                                                     00030000
//SYSTSIN  DD  DSN=SIVA.CARDS(APD0303),DISP=SHR                         00040000
//SYSIN    DD  DSN=SIVA.CARDS(FDD2339A),DISP=SHR                        00100000
//*------------------------------------------------------------------   00032303
//**********************************************************************
//*                          === VIBH10D ===                           *
//* OBJETIVO : INFORME DIARIO AL BANCO DE MEXICO SOBRE POSICION DE     *
//*            INSTRUMENTOS GUBERNAMENTALES.                           *
//* PASO REINICIABLE POR RESTART                       *** M. DINERO   *
//**********************************************************************
//*                   PASO PARA CASA DE BOLSA                          *
//**********************************************************************
//FDD2337  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//             TIME=100
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//*VIBH10R1 DD  SYSOUT=(V,,TD21)
//*VIBH10R2 DD  SYSOUT=(V,,TD21)
//*VIBH10R3 DD  SYSOUT=(V,,TD21)
//*VIBH10R4 DD  SYSOUT=(V,,TD21)
//*VIBH10R5 DD  SYSOUT=(V,,TD21)
//VIBH10R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//VIBH10R2 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//VIBH10R3 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//VIBH10R4 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//VIBH10R5 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//VIBH10A1 DD  DSN=SIVA.MDD.FIX.INFORME.GUBERCB,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=SYSDA,SPACE=(CYL,(1,1),RLSE),
//             DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS)
//VIBH10A2 DD  DSN=SIVA.MDD.FIX.INFORME.AJUBONO,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=SYSDA,SPACE=(CYL,(1,1),RLSE),
//             DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS)
//VIBH10A3 DD  DSN=SIVA.MDD.FIX.INFORME.BONDES,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=SYSDA,SPACE=(CYL,(1,1),RLSE),
//             DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS)
//VIBH10A4 DD  DSN=SIVA.MDD.FIX.INFORME.CETES,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=SYSDA,SPACE=(CYL,(1,1),RLSE),
//             DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=SIVA.CARDS(FDD2339),DISP=SHR
//*------------------------------------------------------------------   00032303
//**********************************************************************
//*                          === VIBM98D ===                           *
//* OBJETIVO : INFORME DIARIO AL BANCO DE MEXICO SOBRE POSICION DE     *
//*            INSTRUMENTOS GUBERNAMENTALES. ( T R I B O N O S )       *
//* PASO REINICIABLE POR RESTART                      ***M. DINERO     *
//**********************************************************************
//*                   PASO PARA CASA DE BOLSA                          *
//**********************************************************************
//FDD2336  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//             TIME=100
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//*VIBH10R2 DD  SYSOUT=(V,,TD21)
//VIBH10R2 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//VIBH10A2 DD  DSN=SIVA.MDD.FIX.INFORME.TRIBONO,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=SYSDA,SPACE=(CYL,(1,1),RLSE),
//             DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=SIVA.CARDS(FDD2303),DISP=SHR
//**********************************************************************
//*                          === VIBM99D ===                           *
//* OBJETIVO : INFORME DIARIO AL BANCO DE MEXICO SOBRE POSICION DE     *
//*            INSTRUMENTOS GUBERNAMENTALES. (     U M S     )         *
//* PASO REINICIABLE POR RESTART                     ***M. DINERO      *
//**********************************************************************
//*                   PASO PARA CASA DE BOLSA                          *
//**********************************************************************
//FDD2335  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//             TIME=100
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//*VIBH10R2 DD  SYSOUT=(V,,TD21)
//VIBH10R2 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//VIBH10A2 DD  DSN=SIVA.MDD.FIX.INFORME.UMS,DISP=(NEW,CATLG,DELETE),
//             UNIT=SYSDA,SPACE=(CYL,(1,1),RLSE),
//             DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=SIVA.CARDS(FDD2302),DISP=SHR
//*====================================================================*
//*    SPUFI QUE INSERTA EL CONTRATO 99127 AL GRUPO DE CUENTAS 85       08230000
//*    PASO NECESARIO PARA OPERACION DURANTE EL SIGUIENTE DIA           08240000
//*====================================================================*
//*
//FDD2334  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00009000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD  SYSOUT=*                                                 00010000
//SYSPRINT DD  SYSOUT=*                                                 00020000
//SYSUDUMP DD DUMMY                                                     00030000
//SYSTSIN  DD  DSN=SIVA.CARDS(APD0303),DISP=SHR                         00040000
//SYSIN    DD  DSN=SIVA.CARDS(FDD2339D),DISP=SHR                        00100000
//*------------------------------------------------------------------   00032303
//**********************************************************************
//*                   PASO PARA BANCO                   ***M. DINERO   *
//**********************************************************************
//FDD2333  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//             TIME=100
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//*VIBH10R1 DD  SYSOUT=(V,,3D21)
//*VIBH10R2 DD  SYSOUT=(V,,3D21)
//*VIBH10R3 DD  SYSOUT=(V,,3D21)
//*VIBH10R4 DD  SYSOUT=(V,,3D21)
//*VIBH10R5 DD  SYSOUT=(V,,3D21)
//VIBH10R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//VIBH10R2 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//VIBH10R3 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//VIBH10R4 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//VIBH10R5 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//VIBH10A1 DD  DSN=SIVA.MDD.FIX.INFORME.GUBERMMP,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=SYSDA,SPACE=(CYL,(1,1),RLSE),
//             DCB=(RECFM=FB,LRECL=132,BLKSIZE=0,DSORG=PS)
//VIBH10A2 DD  DSN=SIVA.MDD.FIX.INFORME.AJUBOMMP,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=SYSDA,SPACE=(CYL,(1,1),RLSE),
//             DCB=(RECFM=FB,LRECL=132,BLKSIZE=0,DSORG=PS)
//VIBH10A3 DD  DSN=SIVA.MDD.FIX.INFORME.BONDEMMP,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=SYSDA,SPACE=(CYL,(1,1),RLSE),
//             DCB=(RECFM=FB,LRECL=132,BLKSIZE=0,DSORG=PS)
//VIBH10A4 DD  DSN=SIVA.MDD.FIX.INFORME.CETESMMP,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=SYSDA,SPACE=(CYL,(1,1),RLSE),
//             DCB=(RECFM=FB,LRECL=132,BLKSIZE=0,DSORG=PS)
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=SIVA.CARDS(FDD2338),DISP=SHR
//*
//**********************************************************************
//*                          === VIBH33D ===                           *
//* OBJETIVO : REPORTE DE CONTABILIDAD                                 *
//*            REPORTOS CON FECHA DE VENCIMIENTO MAYOR A UN MES        *
//* PASO REINICIABLE POR RESTART                        ***M. DINERO   *
//**********************************************************************
//*            PASO PARA CASA DE BOLSA
//**********************************************************************
//FDD2332  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//             TIME=100
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//*VIBH33R1 DD  SYSOUT=(V,,TD20)
//*VIBH33R2 DD  SYSOUT=(V,,TD20)
//VIBH33R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//VIBH33R2 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=SIVA.CARDS(FDD2337),DISP=SHR
//*
//**********************************************************************
//*            PASO PARA BANCO *** M. DINERO
//**********************************************************************
//FDD2331  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//             TIME=100
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//*VIBH33R1 DD  SYSOUT=(O,,3D20)
//*VIBH33R2 DD  SYSOUT=(O,,3D20)
//VIBH33R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//VIBH33R2 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=SIVA.CARDS(FDD2336),DISP=SHR
//*
//**********************************************************************
//*                          === VIBH09D ===                           *
//* OBJETIVO : REPORTE DE CLIENTES SECTOR PUBLICO CON POSICION EN      *
//*            AJUBONOS, BONDES, CETES Y TEBONOS.                      *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                    ***M. DINERO       *
//**********************************************************************
//*               PASO PARA CASA DE BOLSA                              *
//**********************************************************************
//FDD2330  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//             TIME=100
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//*VIBH09R1 DD SYSOUT=(V,,TD16)
//VIBH09R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD2335),DISP=SHR
//**********************************************************************
//*               PASO PARA BANCO                     ***M. DINERO     *
//**********************************************************************
//FDD2329  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//             TIME=100
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//*VIBH09R1 DD SYSOUT=(O,,3D16)
//VIBH09R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD2334),DISP=SHR
//*
//**********************************************************************
//*                          === VIBH02D ===                           *
//* OBJETIVO : REPORTE COMPARATIVO DE UTILIDADES.                      *
//*            PRESENTAR LA DIFERENCIA ENTRE LA UTILIDAD DE LA CASA    *
//*            Y  LA UTILIDAD DE  PROMOCION  POR  CADA  MOVIMIENTO     *
//*            REALIZADO DURANTE EL DIA                                *
//* PASO REINICIABLE POR RESTART                 ***M. DINERO          *
//**********************************************************************
//FDD2328  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//             TIME=100
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//*VIBH02R1 DD SYSOUT=(V,,TD08)
//VIBH02R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD2332),DISP=SHR
//*
//**********************************************************************
//*                          === VIBH03D ===                           *
//* OBJETIVO : COMPARATIVO DE UTILIDADES POR PROMOTOR.                 *
//*            PRESENTAR EL COMPARATIVO ENTRE UTILIDAD DE LA CASA      *
//*            Y UTILIDAD PROMOCION POR PROMOTOR DE LOS MOVIMIENTOS    *
//*            REALIZADOS DURANTE EL DIA.                              *
//* PASO REINICIABLE POR RESTART                    ***M. DINERO       *
//**********************************************************************
//FDD2327  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//             TIME=100
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//*VIBH03R1 DD SYSOUT=(V,,TD09)
//VIBH03R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD2331),DISP=SHR
//*
//**********************************************************************
//*                          === VIBH05D ===                           *
//* OBJETIVO : PRESENTAR LAS OPERACIONES DE REPORTO CELEBRADAS CON     *
//*            EL BANCO DE MEXICO E INSTITUCIONES DE CREDITO DE LOS    *
//*            MOVIMIENTOS REALIZADOS DURANTE EL DIA.                  *
//* PASO REINICIABLE POR RESTART                     ***M. DINERO      *
//**********************************************************************
//*                 PASO PARA CASA DE BOLSA                            *
//**********************************************************************
//FDD2326  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//             TIME=100
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//*VIBH05R1 DD SYSOUT=(V,,TD10)
//*VIBH05R2 DD SYSOUT=(V,,TD10)
//VIBH05R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//VIBH05R2 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD2330),DISP=SHR
//**********************************************************************
//*                 PASO PARA BANCO                  ***M. DINERO      *
//**********************************************************************
//FDD2325  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//             TIME=100
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//*VIBH05R1 DD SYSOUT=(O,,3D10)
//*VIBH05R2 DD SYSOUT=(O,,3D10)
//VIBH05R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//VIBH05R2 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD2329),DISP=SHR
//*
//**********************************************************************
//*                          === VIBH06D ===                           *
//* OBJETIVO : REPORTAR LAS OPERACIONES DE REPORTO CELEBRADAS CON      *
//*            CLIENTES DURANTE EL DIA.                                *
//* PASO REINICIABLE POR RESTART                      *** M. DINERO    *
//**********************************************************************
//*                 PASO PARA CASA DE BOLSA                            *
//**********************************************************************
//FDD2324  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//             TIME=100
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//*VIBH06R1 DD SYSOUT=(V,,TD11)
//*VIBH06R2 DD SYSOUT=(V,,TD11)
//VIBH06R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//VIBH06R2 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD2328),DISP=SHR
//**********************************************************************
//*                 PASO PARA BANCO                    ***M.DINERO     *
//**********************************************************************
//FDD2323  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//             TIME=100
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//*VIBH06R1 DD SYSOUT=(O,,3D11)
//*VIBH06R2 DD SYSOUT=(O,,3D11)
//VIBH06R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//VIBH06R2 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD2327),DISP=SHR
//*
//**********************************************************************
//*                          === VIBH07D ===                           *
//* OBJETIVO : REPORTAR LOS INSTRUMENTOS OPERADOS CON CLIENTES         *
//*            VALOR HOY Y VALOR NORMAL .                              *
//* PASO REINICIABLE POR RESTART                       ***M. DINERO    *
//**********************************************************************
//*                   PASO PARA CASA DE BOLSA                          *
//**********************************************************************
//FDD2322  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//             TIME=100
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//*VIBH07R1 DD SYSOUT=(V,,TD12)
//VIBH07R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD2326),DISP=SHR
//**********************************************************************
//*                   PASO PARA BANCO                  ***M. DINERO    *
//**********************************************************************
//FDD2321  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//             TIME=100
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//*VIBH07R1 DD SYSOUT=(O,,3D12)
//VIBH07R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD2325),DISP=SHR
//*
//**********************************************************************
//*                          === VIBH08D ===                           *
//* OBJETIVO : REPORTAR OPERACIONES DE COMPRA Y VENTA DE ACEPTACIONES  *
//*            BANCARIAS DURANTE EL DIA.                               *
//* PASO REINICIABLE POR RESTART                     ***M. DINERO      *
//**********************************************************************
//*                   PASO PARA CASA DE BOLSA                          *
//**********************************************************************
//FDD2320  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//             TIME=100
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//*VIBH08R1 DD SYSOUT=(V,,TD13)
//VIBH08R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD2324),DISP=SHR
//**********************************************************************
//*                   PASO PARA BANCO               ***M. DINERO       *
//**********************************************************************
//FDD2319  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//             TIME=100
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//*VIBH08R1 DD SYSOUT=(O,,3D13)
//VIBH08R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD2323),DISP=SHR
//*
//**********************************************************************
//*                        -- VXBD64O --                               *
//*                                                                    *
//* OBJETIVO : GENERAR REPORTE DE COMISIONES DEL DIA.                  *
//* PASO REINICIABLE POR RESTART                       ***M. DINERO    *
//**********************************************************************
//*                   PASO PARA CASA DE BOLSA                          *
//**********************************************************************
//FDD2318  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,
//             TIME=100,COND=(4,LT)
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//*VXBD64R1 DD  SYSOUT=(V,,TD29)
//VXBD64R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=SIVA.CARDS(FDD2322),DISP=SHR
//COMDIA   DD DSN=SIVA.MDD.WKF.COMIS1,
//            DISP=(NEW,CATLG,CATLG),
//            DCB=(DSORG=PS,RECFM=FBA,LRECL=132,BLKSIZE=0),
//            UNIT=SYSDA,
//            SPACE=(TRK,(5,5))
//**********************************************************************
//*                   PASO PARA BANCO                     ***M.DINERO  *
//**********************************************************************
//FDD2316  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,
//             TIME=100,COND=(4,LT)
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//*VXBD64R1 DD  SYSOUT=(O,,3D29)
//VXBD64R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//COMDIA   DD DSN=SIVA.MDD.WKF.COMIS2,
//            DISP=(NEW,CATLG,CATLG),
//            DCB=(DSORG=PS,RECFM=FBA,LRECL=132,BLKSIZE=0),
//            UNIT=SYSDA,
//            SPACE=(TRK,(5,5))
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=SIVA.CARDS(FDD2321),DISP=SHR
//**********************************************************************
//*                        -- VXBC25O --                               *
//*                                                                    *
//* OBJETIVO : IMPRIMIR REPORTE DE COMISIONES FUERA DE RANGO           *
//* PASO REINICIABLE POR RESTART                     ***M. DINERO      *
//**********************************************************************
//*                   PASO PARA BANCO                                  *
//**********************************************************************
//FDD2314  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),
//             TIME=100
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//*VXBC25R1 DD  SYSOUT=(O,,3D22)
//VXBC25R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=SIVA.CARDS(FDD2320),DISP=SHR
//**********************************************************************
//*                   PASO PARA CASA DE BOLSA           ***M.DINERO    *
//**********************************************************************
//FDD2313  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),
//             TIME=100
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//*VXBC25R1 DD  SYSOUT=(V,,ZD22)
//VXBC25R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=SIVA.CARDS(FDD2319),DISP=SHR
//*
//**********************************************************************
//*                           -- VNBE21D --                            *
//*                                                                    *
//* OBJETIVO : IMPRIMIR EL REPORTE DE COMPRAS Y VENTAS DE REPORTOS     *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                  ***M. DINERO         *
//**********************************************************************
//*            PASO PARA BANCO  (OPERAS 526, 626)
//**********************************************************************
//FDD2312  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),
//             TIME=100
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//*VNBE21R1 DD  SYSOUT=(O,,3D23)
//*VNBE21R2 DD  SYSOUT=(O,,3D24)
//VNBE21R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//VNBE21R2 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//VNBE21R3 DD DSN=SIVA.MDD.WKF.CONCENT.MDDB1,
//           DISP=(NEW,CATLG,CATLG),
//           DCB=(DSORG=PS,RECFM=FBA,LRECL=133,BLKSIZE=0),
//           UNIT=SYSDA,
//           SPACE=(TRK,(5,5))
//*
//VNBE21R4 DD DSN=SIVA.MDD.WKF.CONCENT.MDDB2,
//           DISP=(NEW,CATLG,CATLG),
//           DCB=(DSORG=PS,RECFM=FBA,LRECL=133,BLKSIZE=0),
//           UNIT=SYSDA,
//           SPACE=(TRK,(5,5))
//*
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=SIVA.CARDS(FDD2318),DISP=SHR
//*
//**********************************************************************
//*                           -- VNBE21D --                            *
//*                                                                    *
//* OBJETIVO : IMPRIMIR EL REPORTE DE COMPRAS Y VENTAS DE REPORTOS     *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                       ***M. DINERO    *
//**********************************************************************
//*            PASO PARA BANCO   (OPERAS   527, 627)
//**********************************************************************
//FDD2311  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),
//             TIME=100
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//*VNBE21R1 DD  SYSOUT=(O,,3D23)
//*VNBE21R2 DD  SYSOUT=(O,,3D24)
//VNBE21R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//VNBE21R2 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//VNBE21R3 DD DSN=SIVA.MDD.WKF.CONCENT.MDDB3,
//           DISP=(NEW,CATLG,CATLG),
//           DCB=(DSORG=PS,RECFM=FBA,LRECL=133,BLKSIZE=0),
//           UNIT=SYSDA,
//           SPACE=(TRK,(5,5))
//*
//VNBE21R4 DD DSN=SIVA.MDD.WKF.CONCENT.MDDB4,
//           DISP=(NEW,CATLG,CATLG),
//           DCB=(DSORG=PS,RECFM=FBA,LRECL=133,BLKSIZE=0),
//           UNIT=SYSDA,
//           SPACE=(TRK,(5,5))
//*
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=SIVA.CARDS(FDD2317),DISP=SHR
//*
//**********************************************************************00440005
//*                        * IEBGENER *                                 00450005
//*                                                                     00450005
//* OBJETIVO : MANDAR A SPOOL REPORTE 3 DE PASO ANTERIOR                00460005
//*                                                                     00480005
//*                                                                     00480005
//* PASO REINICIBLE POR RESTART.                                        00480005
//**********************************************************************00490005
//*                                                                     00500005
//FDD2310  EXEC PGM=ICEGENER,REGION=4M,TIME=100,COND=(4,LT)             00510005
//SYSUT1   DD  DSN=SIVA.MDD.WKF.CONCENT.MDDB1,DISP=SHR                  00171001
//*SYSUT2   DD  SYSOUT=(O,,3D25),COPIES=1                               00171001
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00171001
//SYSPRINT DD  SYSOUT=X                                                 00570005
//SYSOUT   DD  SYSOUT=X                                                 00580005
//SYSDBOUT DD  SYSOUT=X                                                 00590005
//SYSIN    DD  DUMMY                                                    00600005
//*                                                                     00630005
//**********************************************************************00440005
//*                        * IEBGENER *                                 00450005
//*                                                                     00450005
//* OBJETIVO : MANDAR A SPOOL REPORTE 4 DE PASO ANTERIOR                00460005
//*                                                                     00480005
//*                                                                     00480005
//* PASO REINICIBLE POR RESTART.                                        00480005
//**********************************************************************00490005
//*                                                                     00500005
//FDD2309  EXEC PGM=ICEGENER,REGION=4M,TIME=100,COND=(4,LT)             00510005
//SYSUT1   DD  DSN=SIVA.MDD.WKF.CONCENT.MDDB4,DISP=SHR                  00171001
//*SYSUT2   DD  SYSOUT=(O,,3D26),COPIES=1                               00171001
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00171001
//SYSPRINT DD  SYSOUT=X                                                 00570005
//SYSOUT   DD  SYSOUT=X                                                 00580005
//SYSDBOUT DD  SYSOUT=X                                                 00590005
//SYSIN    DD  DUMMY                                                    00600005
//*                                                                     00630005
//**********************************************************************
//*            PASO PARA CASA DE BOLSA   ( OPERAS 526, 626)
//**********************************************************************
//FDD2308  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),
//             TIME=100
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//*VNBE21R1 DD  SYSOUT=(V,,ZD23)
//*VNBE21R2 DD  SYSOUT=(V,,ZD24)
//VNBE21R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//VNBE21R2 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//VNBE21R3 DD DSN=SIVA.MDD.WKF.CONCENT.MDDC1,
//           DISP=(NEW,CATLG,CATLG),
//           DCB=(DSORG=PS,RECFM=FBA,LRECL=133,BLKSIZE=0),
//           UNIT=SYSDA,
//           SPACE=(TRK,(5,5))
//*
//VNBE21R4 DD DSN=SIVA.MDD.WKF.CONCENT.MDDC2,
//           DISP=(NEW,CATLG,CATLG),
//           DCB=(DSORG=PS,RECFM=FBA,LRECL=133,BLKSIZE=0),
//           UNIT=SYSDA,
//           SPACE=(TRK,(5,5))
//*
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=SIVA.CARDS(FDD2314),DISP=SHR
//*
//**********************************************************************
//*            PASO PARA CASA DE BOLSA   ( OPERAS 527, 627)
//**********************************************************************
//FDD2307  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),
//             TIME=100
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//*VNBE21R1 DD  SYSOUT=(V,,ZD23)
//*VNBE21R2 DD  SYSOUT=(V,,ZD24)
//VNBE21R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//VNBE21R2 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//VNBE21R3 DD DSN=SIVA.MDD.WKF.CONCENT.MDDC3,
//           DISP=(NEW,CATLG,CATLG),
//           DCB=(DSORG=PS,RECFM=FBA,LRECL=133,BLKSIZE=0),
//           UNIT=SYSDA,
//           SPACE=(TRK,(5,5))
//*
//VNBE21R4 DD DSN=SIVA.MDD.WKF.CONCENT.MDDC4,
//           DISP=(NEW,CATLG,CATLG),
//           DCB=(DSORG=PS,RECFM=FBA,LRECL=133,BLKSIZE=0),
//           UNIT=SYSDA,
//           SPACE=(TRK,(5,5))
//*
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=SIVA.CARDS(FDD2313),DISP=SHR
//*
//**********************************************************************00440005
//*                        * IEBGENER *                                 00450005
//*                                                                     00450005
//* OBJETIVO : MANDAR A SPOOL REPORTE 3 DE PASO ANTERIOR                00460005
//*                                                                     00480005
//*                                                                     00480005
//* PASO REINICIBLE POR RESTART.                                        00480005
//**********************************************************************00490005
//*                                                                     00500005
//FDD2306  EXEC PGM=ICEGENER,REGION=4M,TIME=100,COND=(4,LT)             00510005
//SYSUT1   DD  DSN=SIVA.MDD.WKF.CONCENT.MDDC1,DISP=SHR                  00171001
//*SYSUT2   DD  SYSOUT=(V,,ZD25),COPIES=1                               00171001
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00171001
//SYSPRINT DD  SYSOUT=X                                                 00570005
//SYSOUT   DD  SYSOUT=X                                                 00580005
//SYSDBOUT DD  SYSOUT=X                                                 00590005
//SYSIN    DD  DUMMY                                                    00600005
//*                                                                     00630005
//**********************************************************************00440005
//*                        * IEBGENER *                                 00450005
//*                                                                     00450005
//* OBJETIVO : MANDAR A SPOOL REPORTE 4 DE PASO ANTERIOR                00460005
//*                                                                     00480005
//*                                                                     00480005
//* PASO REINICIBLE POR RESTART.                                        00480005
//**********************************************************************00490005
//*                                                                     00500005
//FDD2305  EXEC PGM=ICEGENER,REGION=4M,TIME=100,COND=(4,LT)             00510005
//SYSUT1   DD  DSN=SIVA.MDD.WKF.CONCENT.MDDC4,DISP=SHR                  00171001
//*SYSUT2   DD  SYSOUT=(V,,ZD26),COPIES=1                               00171001
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00171001
//SYSPRINT DD  SYSOUT=X                                                 00570005
//SYSOUT   DD  SYSOUT=X                                                 00580005
//SYSDBOUT DD  SYSOUT=X                                                 00590005
//SYSIN    DD  DUMMY                                                    00600005
//*                                                                     00630005
//**********************************************************************
//*                          -- VIBH28D --                             *
//*                                                                    *
//* OBJETIVO : IMPRIMIR LAS CONFIRMACIONES DE REPORTOS -- BANCO        *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                 ***M. DINERO          *
//**********************************************************************
//*FDD2304  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),
//*             TIME=100
//*SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0
//*SYSPRINT DD  SYSOUT=X
//*SYSOUT   DD  SYSOUT=X
//*VIBH28A1 DD  DSN=SIVA.MDD.WKF.CONFBCO.REPORTO,
//*             DISP=(NEW,CATLG,CATLG),
//*             DCB=(DSORG=PS,RECFM=FBA,LRECL=300,BLKSIZE=0),
//*             UNIT=SYSDA,
//*             SPACE=(TRK,(5,5))
//*VIBH28R1 DD  DSN=SIVA.MDD.FIX.CONFBCO.TASA.PREMIO,
//*             DISP=(NEW,CATLG,CATLG),
//*             DCB=(DSORG=PS,RECFM=FBA,LRECL=102,BLKSIZE=0),
//*             UNIT=SYSDA,
//*             SPACE=(TRK,(5,5))
//*SYSDBOUT DD  SYSOUT=X
//*SYSABOUT DD  DUMMY
//*SYSUDUMP DD  DUMMY
//*SYSTSIN  DD  DSN=SIVA.CARDS(FDD2308),DISP=SHR
//**
//**********************************************************************
//* SE ADICIONO ESTE PASO PARA GENERAR LAS CONF. EN ARCH. PARA IMAGENES*
//**********************************************************************
//*FDD2303  EXEC  PGM=ICEGENER
//*SYSPRINT DD  SYSOUT=*
//*SYSIN    DD  DUMMY
//*SYSUT1   DD  DSN=SIVA.MDD.FIX.CONFBCO.TASA.PREMIO,DISP=SHR
//*SYSUT2   DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//**SYSUT2   DD  SYSOUT=(V,,CONB),DCB=RECFM=FBA
//*
//**********************************************************************
//*                          -- VIBN07D --                             *
//*                                                                    *
//* OBJETIVO : RELACION DE  CONFIRMACIONES DE REPORTOS -   BANCO       *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                     ***M. DINERO      *
//**********************************************************************
//FDD2302  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),
//             TIME=100
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//*VIBN07R1 DD  SYSOUT=(V,,TD46)
//VIBN07R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=SIVA.CARDS(FDD2307),DISP=SHR
//*
//**********************************************************************
//*                           -- VIBH04D --                            *
//*                                                                    *
//* OBJETIVO : IMPRIMIR EL REPORTE DE POSICION DE INSTRUMENTOS PARA    *
//*            BANCO DE MEXICO                                         *
//*                                                   ***M. DINERO     *
//**********************************************************************
//*            PASO PARA LA CASA DE BOLSA
//**********************************************************************
//FDD2301  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),
//             TIME=100
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//*VIBH04R1 DD  SYSOUT=(V,,TD33)
//VIBH04R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=SIVA.CARDS(FDD2304),DISP=SHR
//**********************************************************************
//*                           -- VIBM02D --                            *
//*                                                                    *
//* OBJETIVO : IMPRIMIR REPORTE DE COMISIONES EN EL INICIO DE DIA      *
//*            DE MERCADO DE DINERO USUARIO HORACIO M. DEL CAMPO       *
//*                                                   ***M. DINERO     *
//**********************************************************************
//FDD2301A EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),
//             TIME=100
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//VIBM02D  DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=SIVA.CARDS(FDD2301A),DISP=SHR
//*
