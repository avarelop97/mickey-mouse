//FDD5100 PROC ICCTO=,ISUC=
//*
//**********************************************************************
//*    G R U P O   F I N A N C I E R O - P R O B U R S A   (B B V)     *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  PFDFDD51                                         *
//*                   FIN DE DIA DEL SIVA.                             *
//*                                                                    *
//* OBJETIVO       :  REALIZAR LOS PROCESOS DE BAJAS AUTOMATICAS       *
//*                   MENSUALES Y CARGOS VARIOS DEL MODULO DE          *
//*                   PROCESO ESTADISTICO                              *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  PFDFDD07, PFDFDD08, PFDFDD10, PFDFDD11, PFDFDD12 *
//*                   PFDFDD14, PFDFDD52                               *
//*                                                                    *
//* DESPUES DE     :  PFDFDD01, PFDFDD02, PFDFDD05                     *
//*                                                                    *
//* REALIZO        :                                                   *
//* FECHA          :  AGO/2001                                         *
//*                                                                    *
//* OBSERVACION    :  EL PROCESO FDD1300 DE DIVIDIO EN 2 PROCESOS      *
//*                   PARA LA CARGA DE CARGOS VARIOS PENDIENTE DEL     *
//*                   MES DE JULIO                                     *
//*                   FDD5100 Y FDD5200.                               *
//*                                                                    *
//**********************************************************************
//*                       -- IMAGE COPY --                             *
//*                                                                    *
//*  OBJETIVO :   REALIZA BACKUP DE LA TABLA PRODUSVN.BAJCART          *
//*               POR TABLESPACE                                       *
//*  PASO REINICIABLE POR RESTART                                      *
//**********************************************************************
//FDD5141 EXEC PGM=DSNUTILB,REGION=0M,PARM='MXP1,PFDFDD5101,',
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
//FDD5140 EXEC PGM=DSNUTILB,REGION=0M,PARM='MXP1,PFDFDD5102,',
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
//FDD5139 EXEC PGM=DSNUTILB,REGION=0M,PARM='MXP1,PFDFDD5103,',
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
//FDD5138 EXEC PGM=DSNUTILB,REGION=0M,PARM='MXP1,PFDFDD5104,',
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
//FDD5137 EXEC PGM=DSNUTILB,REGION=0M,PARM='MXP1,PFDFDD5105,',
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
//FDD5136 EXEC PGM=DSNUTILB,REGION=0M,PARM='MXP1,PFDFDD5106,',
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
//FDD5135 EXEC PGM=DSNUTILB,REGION=0M,PARM='MXP1,PFDFDD5107,',
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
//FDD5134 EXEC PGM=DSNUTILB,REGION=0M,PARM='MXP1,PFDFDD5108,',
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
//FDD5133 EXEC PGM=DSNUTILB,REGION=0M,PARM='MXP1,PFDFDD5109,',
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
//FDD5132 EXEC PGM=DSNUTILB,REGION=0M,PARM='MXP1,PFDFDD5110,',
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
//FDD5131 EXEC PGM=DSNUTILB,REGION=0M,PARM='MXP1,PFDFDD5111,',
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
//FDD5130 EXEC PGM=DSNUTILB,REGION=0M,PARM='MXP1,PFDFDD5112,',
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
//FDD5129 EXEC PGM=IKJEFT01,DYNAMNBR=20,
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
//FDD5128 EXEC PGM=IKJEFT01,DYNAMNBR=20,
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
//FDD5127 EXEC PGM=IKJEFT01,DYNAMNBR=20,
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
//FDD5126 EXEC PGM=IKJEFT01,DYNAMNBR=20,
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
//FDD5125 EXEC PGM=IKJEFT01,DYNAMNBR=20,
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
//FDD5124 EXEC PGM=IKJEFT01,DYNAMNBR=20,
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
//**********************************************************************
//FDD5123 EXEC PGM=DSNUTILB,REGION=0M,PARM='MXP1,PFDFDD5113,',
//       COND=(4,LT)
//*
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//CO001 DD DISP=(,KEEP),UNIT=VTSS02,
//          DSN=BKPP.MEN3.FINDIA.BAJAMES.D&DATE.,
//          LABEL=(,SL,EXPDT=99000)
//*         LABEL=(13,SL),VOL=(,RETAIN,REF=*.FDD5130.CO001)
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
//FDD5121 EXEC PGM=VOBE56E,DYNAMNBR=20,REGION=0M,
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
//          DISP=(NEW,KEEP),
//          DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//          UNIT=SYSDA,
//          SPACE=(TRK,(1,1))
//**********************************************************************
//*                         -- VIBE67M --                              *
//*  OBJETIVO: REPORTE DE LAS BAJAS DEL MES                            *
//*                                                                    *
//*   PASO REINICIABLE POR RESTART               ***BAJAS AUTOMATICAS  *
//**********************************************************************
//FDD5120 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=0M,
//       COND=(4,LT)
//VIBE67A1 DD DSN=&&ARCHPAR,DISP=(OLD,KEEP)
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
//*                         -- VIBK83M --                              *
//*  OBJETIVO: REPORTE DE LAS BAJAS DEL MES                 (BANCO)    *
//*                                                                    *
//*   PASO REINICIABLE POR RESTART               ***BAJAS AUTOMATICAS  *
//**********************************************************************
//FDD5120D EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=0M,
//       COND=(4,LT)
//VIBK83A1 DD DSN=&&ARCHPAR,DISP=(OLD,KEEP)
//VIBK83R1 DD DSN=SIVA.CTO.FIX.BAJAS.MDD,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=133,BLKSIZE=1330,RECFM=FBA),
//            SPACE=(CYL,(05,02),RLSE)
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD SYSOUT=X
//SYSUDUMP DD DUMMY
//SYSTSIN DD DSN=SIVA.CARDS(FDD1320C),DISP=SHR
//*
//********************************************************************
//*
//*  SE AGREGA PASO PARA EJECUTAR UN IEBGENER DEL ARCHIVO QUE SE GENERA
//*  EN EL PASO ANTERIOR
//*
//********************************************************************
//FDD5120C EXEC PGM=ICEGENER,REGION=0M,COND=(4,LT)
//SYSPRINT DD  SYSOUT=X
//SYSUT1   DD  DSN=SIVA.CTO.FIX.BAJAS.MDD,DISP=SHR
//SYSUT2   DD  SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//**********************************************************************
//* PROGRAMA: VIBK84M.
//* FUNCION:  CARTAS DE BAJA DE CONTRATOS PARA CLIENTES.
//* PASO REINICIABLE POR RESTART               ***BAJAS AUTOMATICAS  *
//**********************************************************************
//*
//FDD5120A EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=0M,
//             TIME=100
//VIBK84R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=2420
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=SIVA.CARDS(FDD1320A),DISP=SHR
//**********************************************************************
//*                         -- VIBE69M --                              *
//* OBJETIVO: REPORTE DE LOS MOVIMIENTOS PARA SALDAR A CERO LAS CUENTAS*
//*           DADAS DE BAJA FISICA                                     *
//*                                                                    *
//*   PASO REINICIABLE POR RESTART               ***BAJAS AUTOMATICAS  *
//**********************************************************************
//FDD5119 EXEC PGM=IKJEFT01,DYNAMNBR=20,TIME=100,REGION=0M,
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
//FDD5118 EXEC PGM=IKJEFT01,DYNAMNBR=20,
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
//* PROGRAMA: VIBK88M.
//* FUNCION:  REPORTE DE REGISTROS NO AFECTADOS EN ALTAMIRA.
//* PASO REINICIABLE POR RESTART               ***BAJAS AUTOMATICAS  *
//**********************************************************************
//*
//FDD5117 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=0M,
//             TIME=100
//VIBK88A1 DD DSN=SIVA.CTO.FIX.BAJAS,DISP=SHR
//VIBK88R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=2420
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=SIVA.CARDS(FDD1317),DISP=SHR
//**********************************************************************
//*                       -- IMAGE COPY --                             *
//*                                                                    *
//*  OBJETIVO :   REALIZA BACKUP DE LA TABLA PRODUSVN.OPERIND          *
//*               POR TABLESPACE                                       *
//*  PASO REINICIABLE POR RESTART                                      *
//**********************************************************************
//FDD5116 EXEC PGM=DSNUTILB,REGION=0M,PARM='MXP1,PFDFDD5114,',
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
//FDD5115 EXEC PGM=DSNUTILB,REGION=0M,PARM='MXP1,PFDFDD5115,',
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
//FDD5114 EXEC PGM=DSNUTILB,REGION=0M,PARM='MXP1,PFDFDD5116,',
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
//FDD5113 EXEC PGM=DSNUTILB,REGION=0M,PARM='MXP1,PFDFDD5117,',
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
//FDD5112 EXEC PGM=DSNUTILB,REGION=0M,PARM='MXP1,PFDFDD5118,',
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
//FDD5111 EXEC PGM=DSNUTILB,REGION=0M,PARM='MXP1,PFDFDD5119,',
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
//FDD5110 EXEC PGM=DSNUTILB,REGION=0M,PARM='MXP1,PFDFDD5120,',
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
//FDD5109 EXEC PGM=DSNUTILB,REGION=0M,PARM='MXP1,PFDFDD5121,',
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
//FDD5107 EXEC PGM=IKJEFT01,DYNAMNBR=20,
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
//FDD5106 EXEC PGM=IKJEFT01,DYNAMNBR=20,
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
