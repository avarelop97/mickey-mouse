//FDD2800 PROC
//*
//**********************************************************************
//*    G R U P O - F I N A N C I E R O - P R O B U R S A   (B B V)     *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  PFDFDE28                                         *
//*                   FIN DE DIA DEL SIVA.                             *
//*                                                                    *
//* OBJETIVO       :  REALIZAR LA INTERFASE DE FIN DE DIA DEL SIVA.    *
//*                   - INTERFASES BATCH (TSO)                         *
//*                                                                    *
//*                :  GENERACION DE REPORTES                           *
//*                   (TESORERIA)                                      *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  PFDFDC01                                         *
//*                                                                    *
//* DESPUES DE     :  PFDFDD23                                         *
//*                                                                    *
//* REALIZO        :  RAFAEL ZULETA VARGAS                             *
//* FECHA          :  FEBRERO DE 1995                                  *
//*                                                                    *
//* OBSERVACION    :  EL PROCESO FINDIA SE DIVIDIO EN    SUBPROCESOS   *
//*                   A MANERA DE OPTIMIZAR EL TIEMPO TOTAL DE EJECU - *
//*                   CION LOS CUALES SERAN SUBMITIDOS POR DISPARADOR  *
//*                   Y NO POR CONSOLA                                 *
//*                                                                    *
//*                                                                    *
//* MODIFICACION   :  SE MOVIERON 2 PASOS DEL PFDFDD15                 *
//*                                                A.T.T.E.  SOPPROD   *
//*                                                    14/FEB/95       *
//*                                                                    *
//* MODIFICACION   :  SE INHIBE EL PASO FDD2801                        *
//*                   SOFTTEK (RHB) NOV/99                             *
//*                   DEBIDO A QUE NO SE GENERA EL ARCHIVO DE CARGOS   *
//*                                                                    *
//**********************************************************************
//*                * VOBS04D *                                          08221000
//*    PROGRAMA QUE DA DE ALTA SUCURSALES EN EL SIVA                    08230000
//*                                                                     08250000
//*************************************************************         08260000
//FDD2807  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=0M,COND=(4,LT)
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//TCGV0501 DD DSN=SIVA.SIN.FIX.TCDT050,DISP=SHR
//SYSPRINT DD SYSOUT=X
//PRINT    DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD2807),DISP=SHR
//*
//*************************************************************         08220000
//*                                                                     08221000
//*    SPUFI PARA BORRAR TABLA CARACT                                   08230000
//*                                                                     08250000
//*************************************************************         08260000
//FDD2805  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=0M,COND=(4,LT)          00009000
//SYSTSPRT DD  SYSOUT=*                                                 00010000
//SYSPRINT DD  SYSOUT=*                                                 00020000
//SYSUDUMP DD DUMMY                                                     00030000
//SYSTSIN  DD  DSN=SIVA.CARDS(IDD0801A),DISP=SHR                        00040000
//SYSIN    DD  DSN=SIVA.CARDS(IDD0800),DISP=SHR                         00100000
//*
//**********************************************************************
//*                     * VOBG57D *                                    *
//*                                                                    *
//* OBJETIVO : COMPARATIVO DE MCARACT.                                 *
//*                                                                    *
//* OJO OJO OJO OJO OJO OJO OJO OJO OJO OJO OJO OJO OJO OJO OJO OJO OJO*
//* CUANDO SE MUEVA ESTE PASO TAMBIEN MOVER EL SPUFI DEL PASO ANTERIOR *
//* OJO OJO OJO OJO OJO OJO OJO OJO OJO OJO OJO OJO OJO OJO OJO OJO OJO*
//*                                                                    *
//**********************************************************************
//FDD2804  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=0M,COND=(4,LT)
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//PRINT    DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD2804),DISP=SHR
//**********************************************************************
//*                                                                    *
//*                     * VOBK52D *                                    *
//*                                                                    *
//* OBJETIVO : ACTUALIZA COLUMNA MABOMES                               *
//*                                                                    *
//*                                                                    *
//* OBSERVACION :  ESTE PROCESO CORRIA ORIGINALMENTE EN EL PASO 02     *
//*                IDD0800, Y FUE MOVIDO AQUI PARA QUE CORRIERA ANTES  *
//*                DEL CARGO POR SERVICIO, A SOLICITUD DE MAURICIO R.  *
//*                                                    CNB. 20/10/94.  *
//*                                            *** CONTRATOS           *
//**********************************************************************
//FDD2803  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=0M,COND=(4,LT)
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//PRINT    DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(IDD0802),DISP=SHR
//*
//**********************************************************************
//*                         - VOBF50M --                               *
//* OBJETIVO :   CARGO POR SERVICIO A LOS PF'S CON TENENCIA MENOR A    *
//*              35,000.00.                                            *
//*                                                                    *
//* OBSERVACION :  ESTE PROCESO CORRIA ORIGINALMENTE EN EL PASO 15     *
//*                FDD0500, Y FUE MOVIDO AQUI PARA QUE CORRIERA DESPUES*
//*                DEL CALCULO DE MABOMES, A SOLICITUD DE MAURICIO R.  *
//*                                                    CNB. 20/10/94.  *
//*                                                                    *
//*    ACTUALIZA : CARTERA.                                            *
//*                                                                    *
//* PROCESO : CARGOS VARIOS                                            *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//*********************************************************************
//FDD2802 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=0M,
//        COND=(4,LT)
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN DD DSN=SIVA.CARDS(FDD0515),DISP=SHR
//*
//**********************************************************************
//*                         - VOBF51M --                               *
//* OBJETIVO :   CARGO POR SEGURO DE VIDA                              *
//*                                                                    *
//*    ACTUALIZA : CARTERA.                                            *
//*                                                                    *
//* PROCESO : CARGOS VARIOS                                            *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//* EL PASO SE INHIBE DEBIDO A QUE NO SE GENERA EL ARCHIVO DE CARGOS   *
//**********************************************************************
//*FDD2801 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=0M,
//*        TIME=100,COND=(4,LT)
//*SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//*SYSPRINT DD SYSOUT=X
//*VOBF51T1 DD DSN=SIVA.OTR.FIX.SEGUROS.CARGO.MEN,DISP=SHR
//*SYSOUT   DD SYSOUT=X
//*SYSDBOUT DD SYSOUT=X
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN DD DSN=SIVA.CARDS(FDD2801),DISP=SHR
//*
//**********************************************************************
//*                          === VIBE78M ===                           *
//*                                                                    *
//*  OBJETIVO : REPORTE PREVIO DE CARGOS VARIOS                        *
//*                                                                    *
//*                                                                    *
//**********************************************************************
//FDD1208  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=0M
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//VIBE78T1 DD DSN=SIVA.OTR.WKF.VIBE78T1,
//          DISP=(NEW,PASS),
//          DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//          UNIT=3390,
//          SPACE=(CYL,(10,3),RLSE)
//*VIBE78R1  DD SYSOUT=(J,,OP02)
//VIBE78R1 DD DSN=SIVA.OTR.FIX.OP02.FDD2800.ARCH1,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE),
//            DCB=(LRECL=132,RECFM=FBA,BLKSIZE=26400)
//SORTWK01  DD UNIT=3390,SPACE=(CYL,(5),RLSE)
//SORTWK02  DD UNIT=3390,SPACE=(CYL,(5),RLSE)
//SORTWK03  DD UNIT=3390,SPACE=(CYL,(5),RLSE)
//SORTWK04  DD UNIT=3390,SPACE=(CYL,(5),RLSE)
//SORTWK05  DD UNIT=3390,SPACE=(CYL,(5),RLSE)
//SORTWK06  DD UNIT=3390,SPACE=(CYL,(5),RLSE)
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD1208),DISP=SHR
//*
//**********************************************************************
//*                        * IEBGENER *
//*
//* OBJETIVO : MANDAR A SPOOL ARCHIVOS IMPRESIONES PASO ANTERIOR
//*
//* PASO REINICIBLE POR RESTART.
//**********************************************************************
//*
//FDD1208A EXEC PGM=ICEGENER,REGION=0M,COND=(4,LT)
//SYSUT1   DD  DSN=SIVA.OTR.FIX.OP02.FDD2800.ARCH1,DISP=SHR
//SYSUT2   DD  SYSOUT=(J,,OP02),
//             DCB=(LRECL=132,RECFM=FBA,BLKSIZE=26400)
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//SYSDBOUT DD  SYSOUT=X
//SYSIN    DD  DUMMY
//*
//**********************************************************************
//*                         - VOBG59D --                               *
//* OBJETIVO :   REPORTE DE LA POS. DE CONTRATOS DE CASA Y PROVEDORES. *
//*                                                                    *
//*    ACTUALIZA :                                                     *
//*                                                                    *
//* PROCESO : CONTRALORIA.                                             *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//*********************************************************************
//FDD2802A EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=0M,
//         COND=(4,LT)
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//*VOBG59R1 DD SYSOUT=(O,,TB10),
//VOBG59R1 DD SUBSYS=(C600,'SYSOUT=O,PREFIX=CDAMD'),
//         DCB=BLKSIZE=0
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN DD DSN=SIVA.CARDS(FDD2802A),DISP=SHR
//*
//**********************************************************************
//*                           -- VIB124D --                            *
//* OBJETIVO    :  GENERA ARCHIVO Y REPORTE DE CONCILIACION AUTOMATICA,*
//*                PARA SOCIEDADES DE INVERSION.                       *
//* PROGRAMA VIB124D.                                                  *
//**********************************************************************
//FDD2700 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),
//        REGION=0M
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*VIB124R1 DD SYSOUT=*
//*
//VIB124R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//VIB124A1 DD DSN=SIVA.SIN.FIX.TENDIA,
//           DISP=(NEW,CATLG,CATLG),
//           DCB=(DSORG=PS,RECFM=FB,LRECL=350,BLKSIZE=0),
//*          DCB=(DSORG=PS,RECFM=FB,LRECL=125,BLKSIZE=0),
//           UNIT=3390,
//           SPACE=(CYL,(100,10),RLSE)
//*
//VIB124A2 DD DSN=SIVA.SIN.FIX.TENDIA.FIN,
//           DISP=(NEW,CATLG,CATLG),
//           DCB=(DSORG=PS,RECFM=FB,LRECL=367,BLKSIZE=0),
//           UNIT=3390,
//           SPACE=(CYL,(100,10),RLSE)
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD2700),DISP=SHR
//*
//**********************************************************************
//*                           -- VIB125D --                            *
//* OBJETIVO    :  GENERA ARCHIVOS DE CAPTACION DE CAPITALES Y         *
//*                SOCIEDADES DE INVERSION.                            *
//* PASO REINICIABLE POR RESTART
//* PROGRAMA VIB125D.                                                  *
//**********************************************************************
//FDD2701 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),
//        REGION=0M
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//VIB125A1 DD DSN=SIVA.SIN.FIX.DETALLE,
//           DISP=(NEW,CATLG,CATLG),
//           DCB=(DSORG=PS,RECFM=FB,LRECL=117,BLKSIZE=0),
//           UNIT=3390,
//           SPACE=(CYL,(100,50),RLSE)
//*
//VIB125A2 DD DSN=SIVA.SIN.FIX.OPERSCAP,
//           DISP=(NEW,CATLG,CATLG),
//           DCB=(DSORG=PS,RECFM=FB,LRECL=136,BLKSIZE=0),
//           UNIT=3390,
//           SPACE=(CYL,(100,50),RLSE)
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(PARAMH9),DISP=SHR
//*
//**********************************************************************
//*                           -- VIBB79D --                            *
//* OBJETIVO : GENERA ARCHIVOS CON INFORMACION PRIVILEGIADA (CCMV)     *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//FDD2700A EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),
//             REGION=0M
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSUDUMP DD DUMMY
//SYSABEND DD DUMMY
//SYSDBOUT DD SYSOUT=X
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//PRINT    DD SYSOUT=X
//SYSABOUT DD SYSOUT=X
//VIBB79A1 DD DSN=SIVA.SIN.FIX.TRANSA.CCMV,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(5,5),RLSE),
//             DCB=(RECFM=FB,LRECL=216,BLKSIZE=0)
//VIBB79A2 DD DSN=SIVA.SIN.FIX.CIFRAS.CCMV,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(5,5),RLSE),
//             DCB=(RECFM=FB,LRECL=41,BLKSIZE=0)
//VIBB79A3 DD DSN=SIVA.SIN.FIX.EMISOR.CCMV,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(5,5),RLSE),
//             DCB=(RECFM=FB,LRECL=98,BLKSIZE=0)
//SYSTSIN  DD DSN=SIVA.CARDS(FDD2700A),DISP=SHR
//*
//**********************************************************************
//* PEND         FIN DEL PROCEDIMIENTO FDD2700 DESPUES FDD2700         *
//**********************************************************************
//*
