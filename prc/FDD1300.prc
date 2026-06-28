//FDD1300 PROC ICCTO=,ISUC=
//*
//**********************************************************************
//*    G R U P O   F I N A N C I E R O - P R O B U R S A   (B B V)     *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  PFDFDD13                                         *
//*                   FIN DE DIA DEL SIVA.                             *
//*                                                                    *
//* OBJETIVO       :  REALIZAR LOS PROCESOS DE BAJAS AUTOMATICAS       *
//*                   MENSUALES Y CARGOS VARIOS DEL MODULO DE          *
//*                   PROCESO ESTADISTICO                              *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  PFDFDD07, PFDFDD08, PFDFDD10, PFDFDD11, PFDFDD12 *
//*                   PFDFDD14                                         *
//*                                                                    *
//* DESPUES DE     :  PFDFDD01, PFDFDD02, PFDFDD05                     *
//*                                                                    *
//* REALIZO        :  JOEL GONZALEZ MARTINEZ                           *
//* FECHA          :  DICIEMBRE/ 1991                                  *
//*                                                                    *
//* OBSERVACION    :  EL PROCESO FINDIA SE DIVIDIO EN 12 SUBPROCESOS   *
//*                   A MANERA DE OPTIMIZAR EL TIEMPO TOTAL DE EJECU - *
//*                   CION LOS CUALES SERAN SUBMITIDOS POR DISPARADOR  *
//*                   Y NO POR CONSOLA                                 *
//*                                                                    *
//* MODIFICACION   :  SE INCLUYERON LOS PASOS PARA BAJAS AUTOMATICAS   *
//*                   DEL PROCESO ESTADISTICO, LOS CUALES CORRERAN     *
//*                   MENSUALMENTE, POR LO QUE SE REALIZAN BACKUPS     *
//*                   AUMENTANDO A 38 PASOS EL PROC.                   *
//*                                    A.T.T.E.                        *
//*                                SOPORTE A PRODUCCION                *
//*                                   21/JUN/91                        *
//*                                                                    *
//* MODIFICACION   : SE PARTIO EN PFDFDD05, PFDFDD13 Y PFDFDD14        *
//*                                                                    *
//*                                                                    *
//* MODIFICACION   :  SE CAMBIA LA SALIDA DE CINTA A CARTUCHO, SE      *
//*                   QUITAN LOS GDG'S PARA SER MANEJADO POR TLMS      *
//*                                    A.T.T.E.                        *
//*                                SOPORTE A PRODUCCION                *
//*                                   16/ABR/93                        *
//*                                                                    *
//* MODIFICACION   :  SE AGREGA PASO FDD1320D PARA DEJAR LA INFORMACION*
//*                   GENERADA EN ARCHIVO, Y DEJAR EN EL PASO FDD1320C *
//*                   EL CDAMD.                                        *
//*                                                                    *
//* MODIFICACION   :  SE MODIFICA LOS PASOS FDD1323 Y FDD1305A PARA    *
//*                   CUANDO SE NECESITE LA REINICIACION, YA QUE ES    *
//*                   NECESARIO CORRER PASOS DE RESPALDO DESDE EL * *
//*                   LABEL1.                                          *
//*                   STK (PMP1)  26/JUL/2001.
//*
//*                   SE ELIMINA EL PASO FDD1317 Y PASOS COMENTARIZADOS
//*                   FDD1320B, FDD1305A (VOBF00U)
//*                   STK (PMP1)  28/AGO/2001.
//*
//* MODIFICACION   :  SE ELIMINAN LOS PASOS FDD1320D (VIBK83M),
//*                   FDD1320C (IEBGENER) Y EL FDD1320A (VIBK84M)
//*                   ASATECK (ADE) ENERO/2002.
//*
//*
//**********************************************************************
//*
//**********************************************************************
//*                       -- IMAGE COPY --                             *
//*                                                                    *
//*  OBJETIVO :   REALIZA BACKUP DE LA TABLA PRODUSVN.BAJCART          *
//*               POR TABLESPACE                                       *
//*  PASO REINICIABLE POR RESTART                                      *
//**********************************************************************
//FDD1341 EXEC PGM=DSNUTILB,REGION=0M,PARM='MXP1,PFDFDD1301,',
//       COND=(4,LT)
//*
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//CO001 DD DISP=(,KEEP),UNIT=VTSS02,
//          DSN=BKPP.MEN3.FINDIA.BAJCART.D&DATE.,
//          LABEL=(,SL,EXPDT=99000)
//SYSPRINT DD SYSOUT=*
//VTPRINT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN DD DSN=SIVA.CARDS(FDD1341),DISP=SHR
//**********************************************************************
//*                      -- IMAGE COPY --                              *
//*                                                                    *
//* OBJETIVO :   REALIZA BACKUP DE LA TABLA PRODUSVN.ACLICTA           *
//*              POR TABLESPACE                                        *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//FDD1340 EXEC PGM=DSNUTILB,REGION=0M,PARM='MXP1,PFDFDD1302,',
//       COND=(4,LT)
//*
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//CO001 DD DISP=(,KEEP),UNIT=VTSS02,
//          DSN=BKPP.MEN3.FINDIA.ACLICTA.D&DATE.,
//          LABEL=(,SL,EXPDT=99000)
//SYSPRINT DD SYSOUT=*
//VTPRINT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN DD DSN=SIVA.CARDS(FDD1340),DISP=SHR
//**
//**********************************************************************
//*                       -- IMAGE COPY --                             *
//*                                                                    *
//*  OBJETIVO :   REALIZA BACKUP DE LA TABLA PRODUSVN.CLIENTE          *
//*               POR TABLESPACE                                       *
//*  PASO REINICIABLE POR RESTART                                      *
//**********************************************************************
//FDD1339 EXEC PGM=DSNUTILB,REGION=0M,PARM='MXP1,PFDFDD1303,',
//       COND=(4,LT)
//*
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//CO001 DD DISP=(,KEEP),UNIT=VTSS02,
//          DSN=BKPP.MEN3.FINDIA.CLIENTE.D&DATE.,
//          LABEL=(,SL,EXPDT=99000)
//SYSPRINT DD SYSOUT=*
//VTPRINT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN DD DSN=SIVA.CARDS(FDD1339),DISP=SHR
//*
//**********************************************************************
//*                       -- IMAGE COPY --                             *
//*                                                                    *
//*   OBJETIVO :  REALIZA BACKUP DE LA TABLA PRODUSVN.CTABCO           *
//*               POR TABLESPACE                                       *
//*   PASO REINICIABLE POR RESTART                                     *
//**********************************************************************
//FDD1338 EXEC PGM=DSNUTILB,REGION=0M,PARM='MXP1,PFDFDD1304,',
//       COND=(4,LT)
//*
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//CO001 DD DISP=(,KEEP),UNIT=VTSS02,
//          DSN=BKPP.MEN3.FINDIA.CTABCO.D&DATE.,
//          LABEL=(,SL,EXPDT=99000)
//SYSPRINT DD SYSOUT=*
//VTPRINT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN DD DSN=SIVA.CARDS(FDD1338),DISP=SHR
//*
//**********************************************************************
//*                       -- IMAGE COPY --                             *
//*                                                                    *
//*   OBJETIVO :  REALIZA BACKUP DE LA TABLA PRODUSVN.FOLCTRL          *
//*               POR TABLESPACE                                       *
//*   PASO REINICIABLE POR RESTART                                     *
//**********************************************************************
//FDD1337 EXEC PGM=DSNUTILB,REGION=0M,PARM='MXP1,PFDFDD1305,',
//       COND=(4,LT)
//*
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//CO001 DD DISP=(,KEEP),UNIT=VTSS02,
//          DSN=BKPP.MEN3.FINDIA.FOLCTRL.D&DATE.,
//          LABEL=(,SL,EXPDT=99000)
//SYSPRINT DD SYSOUT=*
//VTPRINT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN DD DSN=SIVA.CARDS(FDD1337),DISP=SHR
//*
//**********************************************************************
//*                       -- IMAGE COPY --                             *
//*                                                                    *
//*   OBJETIVO :  REALIZA BACKUP DE LA TABLA PRODUSVN.BAJCONE          *
//*               POR TABLESPACE                                       *
//*   PASO REINICIABLE POR RESTART                                     *
//**********************************************************************
//FDD1336 EXEC PGM=DSNUTILB,REGION=0M,PARM='MXP1,PFDFDD1306,',
//       COND=(4,LT)
//*
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//CO001 DD DISP=(,KEEP),UNIT=VTSS02,
//          DSN=BKPP.MEN3.FINDIA.BAJCONE.D&DATE.,
//          LABEL=(,SL,EXPDT=99000)
//SYSPRINT DD SYSOUT=*
//VTPRINT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN DD DSN=SIVA.CARDS(FDD1336),DISP=SHR
//*
//**********************************************************************
//*                       -- IMAGE COPY --                             *
//*                                                                    *
//*   OBJETIVO :  REALIZA BACKUP DE LA TABLA PRODUSVN.BAJAFIS          *
//*               POR TABLESPACE                                       *
//*   PASO REINICIABLE POR RESTART                                     *
//**********************************************************************
//FDD1335 EXEC PGM=DSNUTILB,REGION=0M,PARM='MXP1,PFDFDD1307,',
//       COND=(4,LT)
//*
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//CO001 DD DISP=(,KEEP),UNIT=VTSS02,
//          DSN=BKPP.MEN3.FINDIA.BAJAFIS.D&DATE.,
//          LABEL=(,SL,EXPDT=99000)
//SYSPRINT DD SYSOUT=*
//VTPRINT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN DD DSN=SIVA.CARDS(FDD1335),DISP=SHR
//*
//**********************************************************************
//*                       -- IMAGE COPY --                             *
//*                                                                    *
//*   OBJETIVO :  REALIZA BACKUP DE LA TABLA PRODUSVN.AGPOCTA          *
//*               POR TABLESPACE                                       *
//*   PASO REINICIABLE POR RESTART                                     *
//**********************************************************************
//FDD1334 EXEC PGM=DSNUTILB,REGION=0M,PARM='MXP1,PFDFDD1308,',
//       COND=(4,LT)
//*
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//CO001 DD DISP=(,KEEP),UNIT=VTSS02,
//          DSN=BKPP.MEN3.FINDIA.AGPOCTA.D&DATE.,
//          LABEL=(,SL,EXPDT=99000)
//SYSPRINT DD SYSOUT=*
//VTPRINT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN DD DSN=SIVA.CARDS(FDD1334),DISP=SHR
//**
//**********************************************************************
//*                       -- IMAGE COPY --                             *
//*                                                                    *
//*   OBJETIVO :  REALIZA BACKUP DE LA TABLA PRODUSVN.BAJACLI          *
//*               POR TABLESPACE                                       *
//*   PASO REINICIABLE POR RESTART                                     *
//**********************************************************************
//FDD1333 EXEC PGM=DSNUTILB,REGION=0M,PARM='MXP1,PFDFDD1309,',
//       COND=(4,LT)
//*
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//CO001 DD DISP=(,KEEP),UNIT=VTSS02,
//          DSN=BKPP.MEN3.FINDIA.BAJACLI.D&DATE.,
//          LABEL=(,SL,EXPDT=99000)
//SYSPRINT DD SYSOUT=*
//VTPRINT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN DD DSN=SIVA.CARDS(FDD1333),DISP=SHR
//*
//**********************************************************************
//*                       -- IMAGE COPY --                             *
//*                                                                    *
//*   OBJETIVO :  REALIZA BACKUP DE LA TABLA PRODUSVN.BAJCLIE          *
//*               POR TABLESPACE                                       *
//*   PASO REINICIABLE POR RESTART                                     *
//**********************************************************************
//FDD1332 EXEC PGM=DSNUTILB,REGION=0M,PARM='MXP1,PFDFDD1310,',
//       COND=(4,LT)
//*
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//CO001 DD DISP=(,KEEP),UNIT=VTSS02,
//          DSN=BKPP.MEN3.FINDIA.BAJCLIE.D&DATE.,
//          LABEL=(,SL,EXPDT=99000)
//SYSPRINT DD SYSOUT=*
//VTPRINT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN DD DSN=SIVA.CARDS(FDD1332),DISP=SHR
//*
//**********************************************************************
//*                       -- IMAGE COPY --                             *
//*                                                                    *
//*   OBJETIVO :  REALIZA BACKUP DE LA TABLA PRODUSVN.BAJCTAB          *
//*               POR TABLESPACE                                       *
//*   PASO REINICIABLE POR RESTART                                     *
//**********************************************************************
//FDD1331 EXEC PGM=DSNUTILB,REGION=0M,PARM='MXP1,PFDFDD1311,',
//      COND=(4,LT)
//*
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//CO001 DD DISP=(,KEEP),UNIT=VTSS02,
//          DSN=BKPP.MEN3.FINDIA.BAJCTAB.D&DATE.,
//          LABEL=(,SL,EXPDT=99000)
//SYSPRINT DD SYSOUT=*
//VTPRINT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN DD DSN=SIVA.CARDS(FDD1331),DISP=SHR
//*
//**********************************************************************
//*                       -- IMAGE COPY --                             *
//*                                                                    *
//*   OBJETIVO :  REALIZA BACKUP DE LA TABLA PRODUSVN.BAJCTAM          *
//*               POR TABLESPACE                                       *
//*   PASO REINICIABLE POR RESTART                                     *
//**********************************************************************
//FDD1330 EXEC PGM=DSNUTILB,REGION=0M,PARM='MXP1,PFDFDD1312,',
//       COND=(4,LT)
//*
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//CO001 DD DISP=(,KEEP),UNIT=VTSS02,
//          DSN=BKPP.MEN3.FINDIA.BAJCTAM.D&DATE.,
//          LABEL=(,SL,EXPDT=99000)
//SYSPRINT DD SYSOUT=*
//VTPRINT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN DD DSN=SIVA.CARDS(FDD1330),DISP=SHR
//*
//**********************************************************************
//*                         -- VOBE89M --                              *
//*   OBJETIVO: GRABA REGISTRO DEL EVENTO DE BAJAS EN CTLPROC          *
//*           (ACTUALIZA: CTLPROC)                                     *
//*                                                                    *
//*   PASO REINICIABLE POR RESTART               ***BAJAS AUTOMATICAS  *
//**********************************************************************
//FDD1329 EXEC PGM=IKJEFT01,DYNAMNBR=20,
//       COND=(4,LT),
//       REGION=0M,
//       PARM='/DEBUG',
//       TIME=100
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN DD DSN=SIVA.CARDS(FDD1329),DISP=SHR
//*
//**********************************************************************
//*                         -- VOBE66M --                              *
//*   OBJETIVO: DEPURACION MENSUAL DE LA TABLA BAJAMES                 *
//*           (ACTUALIZA: BAJAMES)                                     *
//*                                                                    *
//*   PASO REINICIABLE POR RESTART               *** BAJAS AUTOMATICAS *
//**********************************************************************
//FDD1328 EXEC PGM=IKJEFT01,DYNAMNBR=20,
//       COND=(4,LT),
//       REGION=0M,
//       PARM='/DEBUG',
//       TIME=100
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN DD DSN=SIVA.CARDS(FDD1328),DISP=SHR
//*
//**********************************************************************
//*                         -- VOBE75M --                              *
//*   OBJETIVO: VACIADO DE CUENTA A BAJAMES                            *
//*           (ACTUALIZA: BAJAMES, CTLPROC)                            *
//*                                                                    *
//*   PASO REINICIABLE POR RESTART               ***BAJAS AUTOMATICAS  *
//**********************************************************************
//FDD1327 EXEC PGM=IKJEFT01,DYNAMNBR=20,
//       COND=(4,LT),
//       REGION=0M,
//       PARM='/DEBUG',
//       TIME=100
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN DD DSN=SIVA.CARDS(FDD1327),DISP=SHR
//*
//**********************************************************************
//*                         -- VOBE62M --                              *
//*  OBJETIVO: CONTROLADOR DE BAJAS FISICAS Y LOGICAS                  *
//*           EJECUTA LA RUTINA VDBE64M (BAJAS LOGICAS)                *
//*           EJECUTA LA RUTINA VDBE72M (BAJAS FISICAS)                *
//*           EJECUTA LA RUTINA VDBE85D (EFECTIVO DISPONIBLE RETIRABLE)*
//*           (ACTUALIZA: ACLICTA, BAJACLI, BAJAFIS, BAJAMES, BAJCLIE, *
//*                       BAJCTAB, BAJCTAM, CLIENTE, CTABCO, CTAMAES,  *
//*                       CTLPROC)                                     *
//*                                                                    *
//*   PASO REINICIABLE POR RESTART               ***BAJAS AUTOMATICAS  *
//**********************************************************************
//FDD1326 EXEC PGM=IKJEFT01,DYNAMNBR=20,
//       COND=(4,LT),
//       REGION=0M,
//       PARM='/DEBUG',
//       TIME=100
//*VOBE62A1 DD DSN=SIVA.CTO.FIX.BAJAS.ALT,DISP=SHR
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN DD DSN=SIVA.CARDS(FDD1326),DISP=SHR
//*
//**********************************************************************
//*                         -- VOBE86M --                              *
//*  OBJETIVO: ACTUALIZA CUENTAS CONEXAS                               *
//*           (ACTUALIZA: BAJCONE, CUENTA)                             *
//*                                                                    *
//*   PASO REINICIABLE POR RESTART               ***BAJAS AUTOMATICAS  *
//**********************************************************************
//FDD1325 EXEC PGM=IKJEFT01,DYNAMNBR=20,
//       COND=(4,LT),
//       REGION=0M,
//       PARM='/DEBUG',
//       TIME=100
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN DD DSN=SIVA.CARDS(FDD1325),DISP=SHR
//*
//**********************************************************************
//*                         -- VOBE70M --                              *
//* OBJETIVO: DA DE BAJA FISICA LAS CUENTAS FISICAS EN LA TABLA CUENTA *
//*           EJECUTA LA RUTINA VDBE75O (NO AFECTA BANCOS)             *
//*           EJECUTA LA RUTINA VDBE80O (OBTIENE EL SIGUIENTE IREF)    *
//*           EJECUTA LA RUTINA VDBE85D (EFECTIVO DISPONIBLE RETIRABLE)*
//*           (ACTUALIZA: CARTERA, CTLPROC, CUENTA, FOLCTRL, OPERATE,  *
//*                       OPERTET, SIVA.FOLCTRL (VSAM)                 *
//*                                                                    *
//*   PASO REINICIABLE POR RESTART               ***BAJAS AUTOMATICAS  *
//**********************************************************************
//FDD1324 EXEC PGM=IKJEFT01,DYNAMNBR=20,
//       COND=(4,LT),
//       REGION=0M,
//       PARM='/DEBUG',
//       TIME=100
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT  DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//FOLCTRL DD DSN=MXCP.ZM.VSL.FOLCTRL,DISP=SHR
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN DD DSN=SIVA.CARDS(FDD1324),DISP=SHR
//*
//**********************************************************************
//*                       -- IMAGE COPY --                             *
//*                                                                    *
//*  OBJETIVO :   REALIZA BACKUP DE LA TABLA PRODUSVN.BAJAMES          *
//*               POR TABLESPACE                                       *
//*  PASO REINICIABLE POR RESTART                                      *
//**********************************************************************
//FDD1323 EXEC PGM=DSNUTILB,REGION=0M,PARM='MXP1,PFDFDD1313,',
//       COND=(4,LT)
//*
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//CO001 DD DISP=(,KEEP),UNIT=VTSS02,
//          DSN=BKPP.MEN3.FINDIA.BAJAMES.D&DATE.,
//          LABEL=(,SL,EXPDT=99000)
//*         LABEL=(13,SL),VOL=(,RETAIN,REF=*.FDD1330.CO001)
//SYSPRINT DD SYSOUT=*
//VTPRINT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN  DD DSN=SIVA.CARDS(FDD1323),DISP=SHR
//*
//**********************************************************************
//*                         -- VOBE56E --                              *
//*  OBJETIVO: RECIBIR LOS PARAMETROS ENVIADOS DE CSP PARA EMITIR EL   *
//*           REPORTE DE LAS BAJAS DEL MES                             *
//*                                                                    *
//*   PASO REINICIABLE POR RESTART               ***BAJAS AUTOMATICAS  *
//**********************************************************************
//FDD1321 EXEC PGM=VOBE56E,DYNAMNBR=20,REGION=0M,
//       PARM=('&ICCTO','&ISUC'),
//       COND=(4,LT)
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT  DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//VOBE56A1 DD DSN=&&ARCHPAR,
//          DISP=(NEW,PASS,KEEP),
//          DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//          UNIT=3390,
//          SPACE=(CYL,(1,1))
//**********************************************************************
//*                         -- VIBE67M --                              *
//*  OBJETIVO: REPORTE DE LAS BAJAS DEL MES                            *
//*                                                                    *
//*   PASO REINICIABLE POR RESTART               ***BAJAS AUTOMATICAS  *
//**********************************************************************
//FDD1320 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=0M,
//       COND=(4,LT)
//VIBE67A1 DD DSN=&&ARCHPAR,DISP=(OLD,PASS,KEEP)
//VIBE67R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT  DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD SYSOUT=X
//SYSUDUMP DD DUMMY
//SYSTSIN DD DSN=SIVA.CARDS(FDD1320),DISP=SHR
//*
//**********************************************************************
//*                         -- VIBE69M --                              *
//* OBJETIVO: REPORTE DE LOS MOVIMIENTOS PARA SALDAR A CERO LAS CUENTAS*
//*           DADAS DE BAJA FISICA                                     *
//*                                                                    *
//*   PASO REINICIABLE POR RESTART               ***BAJAS AUTOMATICAS  *
//**********************************************************************
//FDD1319 EXEC PGM=IKJEFT01,DYNAMNBR=20,TIME=100,REGION=0M,
//       PARM='/DEBUG',
//       COND=(4,LT)
//VIBE69R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=X
//SYSPRINT DD SYSOUT=X
//SYSOUT  DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN DD DSN=SIVA.CARDS(FDD1319),DISP=SHR
//*
//**********************************************************************
//*                          --  VOBE49M --                            *
//* OBJETIVO : PASAR INF. DE TABLAS OPERATE A OPERA Y DE OPERTET A     *
//*            OPERTER (UNICAMENTE LOS MOVIMIENTOS DE BAJAS)           *
//*            (ACTUALIZA OPERTES, OPERA)                              *
//*                                                                    *
//*   PASO REINICIABLE POR RESTART               ***BAJAS AUTOMATICAS  *
//**********************************************************************
//FDD1318 EXEC PGM=IKJEFT01,DYNAMNBR=20,
//        COND=(4,LT),
//        REGION=0M,
//        PARM='/DEBUG',
//        TIME=100
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN DD DSN=SIVA.CARDS(FDD1318),DISP=SHR
//*
//**********************************************************************
//*                       -- IMAGE COPY --                             *
//*                                                                    *
//*  OBJETIVO :   REALIZA BACKUP DE LA TABLA PRODUSVN.OPERIND          *
//*               POR TABLESPACE                                       *
//*  PASO REINICIABLE POR RESTART                                      *
//**********************************************************************
//FDD1316 EXEC PGM=DSNUTILB,REGION=0M,PARM='MXP1,PFDFDD1314,',
//     COND=(4,LT)
//*
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//CO001 DD DISP=(,KEEP),UNIT=VTSS02,
//          DSN=BKPP.MEN3.FINDIA.OPERIND.D&DATE.,
//          LABEL=(,SL,EXPDT=99000)
//SYSPRINT DD SYSOUT=*
//VTPRINT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN DD DSN=SIVA.CARDS(FDD1316),DISP=SHR
//*
//**********************************************************************
//*                       -- IMAGE COPY --                             *
//*                                                                    *
//*  OBJETIVO :   REALIZA BACKUP DE LA TABLA PRODUSVN.AOPECST          *
//*               POR TABLESPACE                                       *
//*  PASO REINICIABLE POR RESTART                                      *
//**********************************************************************
//FDD1315 EXEC PGM=DSNUTILB,REGION=0M,PARM='MXP1,PFDFDD1315,',
//     COND=(4,LT)
//*
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//CO001 DD DISP=(,KEEP),UNIT=VTSS02,
//          DSN=BKPP.MEN3.FINDIA.AOPECST.D&DATE.,
//          LABEL=(,SL,EXPDT=99000)
//SYSPRINT DD SYSOUT=*
//VTPRINT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN DD DSN=SIVA.CARDS(FDD1315),DISP=SHR
//*
//**********************************************************************
//*                       -- IMAGE COPY --                             *
//*                                                                    *
//*  OBJETIVO :   REALIZA BACKUP DE LA TABLA PRODUSVN.RAZCOPE          *
//*               POR TABLESPACE                                       *
//*  PASO REINICIABLE POR RESTART                                      *
//**********************************************************************
//FDD1314 EXEC PGM=DSNUTILB,REGION=0M,PARM='MXP1,PFDFDD1316,',
//     COND=(4,LT)
//*
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//CO001 DD DISP=(,KEEP),UNIT=VTSS02,
//          DSN=BKPP.MEN3.FINDIA.RAZCOPE.D&DATE.,
//          LABEL=(,SL,EXPDT=99000)
//SYSPRINT DD SYSOUT=*
//VTPRINT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN DD DSN=SIVA.CARDS(FDD1314),DISP=SHR
//*
//**********************************************************************
//*                       -- IMAGE COPY --                             *
//*                                                                    *
//*  OBJETIVO :   REALIZA BACKUP DE LA TABLA PRODUSVN.ULTOPIN          *
//*               POR TABLESPACE                                       *
//*  PASO REINICIABLE POR RESTART                                      *
//**********************************************************************
//FDD1313 EXEC PGM=DSNUTILB,REGION=0M,PARM='MXP1,PFDFDD1317,',
//     COND=(4,LT)
//*
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//CO001 DD DISP=(,KEEP),UNIT=VTSS02,
//          DSN=BKPP.MEN3.FINDIA.ULTOPIN.D&DATE.,
//          LABEL=(,SL,EXPDT=99000)
//SYSPRINT DD SYSOUT=*
//VTPRINT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN DD DSN=SIVA.CARDS(FDD1313),DISP=SHR
//*
//**********************************************************************
//*                       -- IMAGE COPY --                             *
//*                                                                    *
//*  OBJETIVO :   REALIZA BACKUP DE LA TABLA PRODUSVN.SOLICTD          *
//*               POR TABLESPACE                                       *
//*  PASO REINICIABLE POR RESTART                                      *
//**********************************************************************
//FDD1312 EXEC PGM=DSNUTILB,REGION=0M,PARM='MXP1,PFDFDD1318,',
//     COND=(4,LT)
//*
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//CO001 DD DISP=(,KEEP),UNIT=VTSS02,
//          DSN=BKPP.MEN3.FINDIA.SOLICTD.D&DATE.,
//          LABEL=(,SL,EXPDT=99000)
//SYSPRINT DD SYSOUT=*
//VTPRINT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN DD DSN=SIVA.CARDS(FDD1312),DISP=SHR
//*
//**********************************************************************
//*                       -- IMAGE COPY --                             *
//*                                                                    *
//*  OBJETIVO :   REALIZA BACKUP DE LA TABLA PRODUSVN.ASOLCST          *
//*               POR TABLESPACE                                       *
//*  PASO REINICIABLE POR RESTART                                      *
//**********************************************************************
//FDD1311 EXEC PGM=DSNUTILB,REGION=0M,PARM='MXP1,PFDFDD1319,',
//     COND=(4,LT)
//*
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//CO001 DD DISP=(,KEEP),UNIT=VTSS02,
//          DSN=BKPP.MEN3.FINDIA.ASOLCST.D&DATE.,
//          LABEL=(,SL,EXPDT=99000)
//SYSPRINT DD SYSOUT=*
//VTPRINT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN DD DSN=SIVA.CARDS(FDD1311),DISP=SHR
//*
//**********************************************************************
//*                       -- IMAGE COPY --                             *
//*                                                                    *
//*  OBJETIVO :   REALIZA BACKUP DE LA TABLA PRODUSVN.RAZCSOL          *
//*               POR TABLESPACE                                       *
//*  PASO REINICIABLE POR RESTART                                      *
//**********************************************************************
//FDD1310 EXEC PGM=DSNUTILB,REGION=0M,PARM='MXP1,PFDFDD1320,',
//     COND=(4,LT)
//*
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//CO001 DD DISP=(,KEEP),UNIT=VTSS02,
//          DSN=BKPP.MEN3.FINDIA.RAZCSOL.D&DATE.,
//          LABEL=(,SL,EXPDT=99000)
//SYSPRINT DD SYSOUT=*
//VTPRINT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN DD DSN=SIVA.CARDS(FDD1310),DISP=SHR
//*
//**********************************************************************
//*                       -- IMAGE COPY --                             *
//*                                                                    *
//*  OBJETIVO :   REALIZA BACKUP DE LA TABLA PRODUSVN.MOVIND           *
//*               POR TABLESPACE                                       *
//*  PASO REINICIABLE POR RESTART                                      *
//**********************************************************************
//FDD1309 EXEC PGM=DSNUTILB,REGION=0M,PARM='MXP1,PFDFDD1321,',
//        COND=(4,LT)
//*
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//CO001 DD DISP=(,KEEP),UNIT=VTSS02,
//          DSN=BKPP.MEN3.FINDIA.MOVIND.D&DATE.,
//          LABEL=(,SL,EXPDT=99000)
//SYSPRINT DD SYSOUT=*
//VTPRINT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN DD DSN=SIVA.CARDS(FDD1309),DISP=SHR
//**
//**********************************************************************
//*                         -- VOBE45M --                              *
//*  OBJETIVO :   APLICACION DE INDICATIVOS PARA LOS CARGOS VARIOS     *
//*               DEL AREA DE VALORES                                  *
//*                                                                    *
//*  ACTUALIZA :                                                       *
//*  PROCESO : CARGOS VARIOS (VALORES)
//*                                                                    *
//*  PASO REINICIABLE POR RESTART                *** VALORES           *
//**********************************************************************
//FDD1307 EXEC PGM=IKJEFT01,DYNAMNBR=20,
//       COND=(4,LT),
//       REGION=0M,
//       PARM='/DEBUG',
//       TIME=100
//FOLCTRL DD DSN=MXCP.ZM.VSL.FOLCTRL,DISP=SHR
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT  DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN DD DSN=SIVA.CARDS(FDD1307),DISP=SHR
//*
//**********************************************************************
//*                         -- VOBE45M --                              *
//*  OBJETIVO :   APLICACION DE INDICATIVOS PARA LOS CARGOS VARIOS     *
//*               DEL AREA DE TESORERIA                                *
//*                                                                    *
//*  PROCESO : CARGOS VARIOS  (TESORERIA)                              *
//*                                                                    *
//*  PASO REINICIABLE POR RESTART                  ***  TESORERIA      *
//**********************************************************************
//FDD1306 EXEC PGM=IKJEFT01,DYNAMNBR=20,
//       COND=(4,LT),
//       REGION=0M,
//       PARM='/DEBUG',
//       TIME=100
//FOLCTRL DD DSN=MXCP.ZM.VSL.FOLCTRL,DISP=SHR
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT  DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN DD DSN=SIVA.CARDS(FDD1306),DISP=SHR
//*
//**********************************************************************
//*                         -- VOBF00M --                              *
//*  OBJETIVO: VENTA DE LA SOCIEDAD DE INVERSION PARA PODER CUBRIR     *
//*           EL MONTO DE CARGOS VARIOS                                *
//*                                                                    *
//* ESTE PASO SE COMENTARIZO A SOLICITUD DE LUPITA ALDANA PORQUE EL    *
//* PROGRAMA BUENO ES EL SIGUIENTE PASO SE DEJA EN CASO DE CONTINGENCIA*
//*                                                                    *
//*  PASO REINICIABLE POR RESTART                                      *
//**********************************************************************
//FDD1305 EXEC PGM=IKJEFT01,DYNAMNBR=20,
//       COND=(4,LT),
//       REGION=0M,
//       TIME=100
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT  DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//FOLCTRL DD DSN=MXCP.ZM.VSL.FOLCTRL,DISP=SHR
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN DD DSN=SIVA.CARDS(FDD1305),DISP=SHR
//*
//**********************************************************************
//*                       -- IMAGE COPY --                             *
//*                                                                    *
//*  OBJETIVO :   REALIZA BACKUP DE LA TABLA PRODUSVP.OPERASI          *
//*               POR TABLESPACE                                       *
//*  PASO REINICIABLE POR RESTART                                      *
//**********************************************************************
//FDD1305A EXEC PGM=DSNUTILB,REGION=0M,PARM='MXP1,PFDFDD1322,',
//        COND=(4,LT)
//*
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//CO001 DD DISP=(,KEEP),UNIT=VTSS02,
//          DSN=BKPP.ESP.FINDIA.OPERASI.D&DATE.,
//          LABEL=(,SL,EXPDT=99000)
//*         LABEL=(9,SL),VOL=(,RETAIN,REF=*.FDD1309.CO001)
//*         LABEL=(9,SL),VOL=SER=029147
//SYSPRINT DD SYSOUT=*
//VTPRINT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN DD DSN=SIVA.CARDS(FDD1305B),DISP=SHR
//**
//**********************************************************************
//*                          --- VOBF27M ---                           *
//* OBJETIVO : PASAR INF. DE TABLAS OPERASI,OPERATE A OPERA            *
//*            (ACTUALIZA OPERA )                                      *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                 *** TESORERIA         *
//**********************************************************************
//FDD1304 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=0M,TIME=100,
//       COND=(0,NE)
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD1304),DISP=SHR
//*
//**********************************************************************
//*                       -- DSNTIAUL   --                             *
//*  OBJETIVO :   RESPALDO DE LA VISTA PRODUSVN.VOPERASI               *
//*               (SECUENCIAL)                                         *
//*                                                                    *
//*  PASO REINICIABLE POR RESTART                                      *
//**********************************************************************
//FDD1303 EXEC  PGM=IKJEFT01,DYNAMNBR=20,REGION=0M,
//     COND=(4,LT)
//SYSTSPRT  DD  SYSOUT=*
//SYSTSIN   DD  DSN=SIVA.CARDS(FDD1300),DISP=SHR
//SYSPUNCH  DD  DSN=SIVA.PUNCH(FDD1303C),DISP=SHR
//SYSPRINT  DD  SYSOUT=*
//SYSREC00  DD  DSN=BKPP.MEN3.FINDIA.VOPERASI.D&DATE.,
//          DISP=(,KEEP),
//          UNIT=VTSS02,LABEL=(,SL,EXPDT=99000)
//SYSIN     DD  DSN=SIVA.CARDS(FDD1303A),DISP=SHR
//*
//**********************************************************************
//*                       -- DSNTIAUL   --                             *
//*                                                                    *
//*   OBJETIVO :  RESPALDO DE LA VISTA PRODUSVN.VOPERATE               *
//*               (SECUENCIAL)                                         *
//**********************************************************************
//FDD1302 EXEC  PGM=IKJEFT01,DYNAMNBR=20,REGION=0M,
//     COND=(4,LT)
//SYSTSPRT  DD  SYSOUT=*
//SYSTSIN   DD  DSN=SIVA.CARDS(FDD1300),DISP=SHR
//SYSPUNCH  DD  DSN=SIVA.PUNCH(FDD1302C),DISP=SHR
//SYSPRINT  DD  SYSOUT=*
//SYSREC00  DD  DSN=BKPP.MEN3.FINDIA.VOPERATE.D&DATE.,DISP=(,KEEP),
//          UNIT=VTSS02,LABEL=(,SL,EXPDT=99000)
//SYSIN     DD  DSN=SIVA.CARDS(FDD1302A),DISP=SHR
//**********************************************************************
//*                       -- DSNTIAUL   --                             *
//*   OBJETIVO :  RESPALDO DE LA VISTA PRODUSVN.VOPERTET               *
//*               (SECUENCIAL)                                         *
//*                                                                    *
//*   PASO REINICIABLE POR RESTART                                     *
//**********************************************************************
//FDD1301 EXEC  PGM=IKJEFT01,DYNAMNBR=20,REGION=0M,
//     COND=(4,LT)
//SYSTSPRT  DD  SYSOUT=*
//SYSTSIN   DD  DSN=SIVA.CARDS(FDD1300),DISP=SHR
//SYSPUNCH  DD  DSN=SIVA.PUNCH(FDD1301C),DISP=SHR
//SYSPRINT  DD  SYSOUT=*
//SYSREC00  DD  DSN=BKPP.MEN3.FINDIA.VOPERTET.D&DATE.,DISP=(,KEEP),
//          UNIT=VTSS02,LABEL=(,SL,EXPDT=99000)
//SYSIN     DD  DSN=SIVA.CARDS(FDD1301A),DISP=SHR
//**********************************************************************
//*  PEND         FIN DEL PROCEDIMIENTO FDD1300                        *
//**********************************************************************
