//FDD0500 PROC
//*
//**********************************************************************
//*    G R U P O - F I N A N C I E R O - P R O B U R S A   (B B V)     *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  PFDFDD05                                         *
//*                   FIN DE DIA DEL SIVA.                             *
//*                                                                    *
//* OBJETIVO       :  REALIZAR LA INTERFASE DE FIN DE DIA DEL SIVA.    *
//*                   - INTERFASES BATCH (TSO)                         *
//*                                                                    *
//*   3RA. PARTE   :  ACTUALIZACION DE TABLAS VARIAS                   *
//*                                                                    *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  PFDFDD07, PFDFDD08, PFDFDD10                     *
//*                   PFDFDD11, PFDFDD12, PFDFDD13, PFDFDD14           *
//*                                                                    *
//* DESPUES DE     :  PFDFDD01, PFDFDD02, PFDFDD03, PFDFDD04           *
//*                                                                    *
//* REALIZO        :  JOEL GONZALEZ MARTINEZ                           *
//* FECHA          :  FEBRERO DE 1991                                  *
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
//* MODIFICACION   :  SE INCLUYERON DOS PASOS DE REPORTES PARA SOC.    *
//*                   DE INVERSION (VIB163D, VIB166D), DESPUES DE      *
//*                   EL PASO DE COMPRAS 'PICO'.                       *
//*                   AUMENTANDO A 16 PASOS EL PROC.                   *
//*                                    A.T.T.E.                        *
//*                                SOPORTE A PRODUCCION                *
//*                                   12/04/93                         *
//*                                                                    *
//* MODIFICACION   :  ELIMINA EL PASO FDD0510 REPORTE DE SOC. DE INV.  *
//*                   (VIB163D).                                       *
//*                   DISMINUYE A 15  PASOS EL PROC.                   *
//*                                    A.T.T.E.                        *
//*                                SOPORTE A PRODUCCION                *
//*                                   25/11/93                         *
//*                                                                    *
//*                                                                    *
//**********************************************************************
//*
//**********************************************************************
//*                    * VRBD33O *                                     *
//*                    * IDD0506A *                                    *
//* OBJETIVO : ACTUALIZA LAS EMISORAS DE LA TABLA DEMANDA              *
//*            Y CARGA MTZDEM                                          *
//*                                                                    *
//* ACTUALIZA TABLA : MTZDEM,DEMANDA.                                  *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//*                                                                    *
//**     POR REQUERIMIENTO DE F. DOMINGUEZ Y A. OCHOA                ***
//**     SE INSERTA SIN ESTANDARES MIENTRAS NO SE CONFIRME           ***
//**     CON FEDERICO DOMINGUEZ Y ARTURO OCHOA QUE ES DEFINITIVO     ***
//**     SU INSERCION EN ESTE JOB.       14/ABR/93                   ***
//**                                                                 ***
//**     ATTE     RICARDO ARGUETA TEPEPA.         ***M.DINERO        ***
//**********************************************************************
//*
//FDD0518  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//             TIME=100
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD  DSN=SIVA.CARDS(FDD0518),DISP=SHR
//*
//**********************************************************************
//*                          - VOBE95D --                              *
//* OBJETIVO :    CALCULO INT. INDICATIVOS DE SDO. DEUDOR              *
//*     ESTE PROGRAMA NO DEPENDE DE NINGUN PASO, PUEDE EJECUTARSE      *
//*     DE MANERA AISLADA, SOLO REQUIERE SALDOS DEUDORES ACTUALIZADOS  *
//*                                                                    *
//*     ACTUALIZA : OPERIND, ULTOPIN                                   *
//*                                                                    *
//* PROCESO : CARGOS VARIOS                                            *
//* PASO REINICIABLE POR RESTART                    ***TESORERIA       *
//**********************************************************************
//FDD0514  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,
//         TIME=100,COND=(0,NE)
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD0514),DISP=SHR
//*
//**********************************************************************
//*                         -- VOBF12D --                              *
//* OBJETIVO :    CALCULO INT. INDICATIVOS DE CREDITO MARGEN           *
//*     ESTE PROGRAMA NO DEPENDE DE NINGUN PASO, PUEDE EJECUTARSE      *
//*     DE MANERA AISLADA, SOLO REQUIERE CREDITOS MARGEN ACTUALIZADOS  *
//*     ACTUALIZA : OPERIND, ULTOPIN                                   *
//*                                                                    *
//*                                                                    *
//* PROCESO : CARGOS VARIOS
//*                                                                    *
//* PASO REINICIABLE POR RESTART                      ***TESORERIA     *
//**********************************************************************
//FDD0513  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(0,NE),REGION=4M,
//         TIME=100
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD0513),DISP=SHR
//*
//**********************************************************************
//*                           -- VOBF15D --                            *
//* OBJETIVO:  AFECTA CARTERA CON LOS INDICATIVOS APARTIR DE OPERIND   *
//*           ACTUALIZA : CARTERA                                      *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                     ***TESORERIA      *
//**********************************************************************
//FDD0512 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(0,NE),REGION=4M,
//        PARM='/DEBUG',
//         TIME=100
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD0512),DISP=SHR
//*
//**********************************************************************
//*                           -- VOB190D --                            *
//* OBJETIVO : REALIZA COMPRAS MENORES AL LOTE MINIMO  (PICOS)         *
//*            (ACTUALIZA : FOLCTRL, SIVASI, CUENTA, CARTERA, CARTAUX) *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//*FDD0511 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,TIME=100,
//*       COND=(0,NE)
//*SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//*SYSPRINT DD SYSOUT=X
//*SYSOUT   DD SYSOUT=X
//*SYSDBOUT DD SYSOUT=X
//*FOLCTRL  DD DSN=SIVA.FOLCTRL.NUEVOS.KC,DISP=SHR
//*VOB190R1 DD SYSOUT=(V,,ZF01)
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=SIVA.CARDS(FDD0511),DISP=SHR
//*
//**********************************************************************
//*                       -- VIB166D --                                *
//*                                                                    *
//* OBJETIVO : EMITIR REPORTE DE MOVIMIENTOS DADOS DE BAJA -- S.I.     *
//*            NO ACTUALIZA TABLAS.                                    *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                      ***SOC. INVERS.  *
//**********************************************************************
//FDD0509  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,
//        TIME=100,COND=(0,NE)
//*VIB166R1 DD SYSOUT=(V,,TI14)
//VIB166R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD0509),DISP=SHR
//*
//**********************************************************************
//*                          === VOB808O ===                           *
//* OBJETIVO : PASAR INF. DE TABLAS OPERASI,OPERATE A OPERA            *
//*            OPERTET A OPERTES.                                      *
//*            (ACTUALIZA OPERTES, OPERA)                              *
//*                                                                    *
//* PASO REINICIABLE POR RESTART               *** TESORERIA           *
//**********************************************************************
//FDD0508 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,TIME=100,
//       COND=(0,NE)
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD0508),DISP=SHR
//*
//**********************************************************************
//*                          === VOBD34O ===                           *
//* OBJETIVO : LEE LOS REGISTROS DEL DIA EN PROCESO DE LA TABLA        *
//*            OPERDIN Y LOS MODIFICA Y GRABA EN LA TABLA SIVA         *
//*            (ACTUALIZA SIVA)                                        *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                  ***M. DINERO         *
//**********************************************************************
//FDD0507 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,TIME=100,
//       COND=(0,NE)
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD0507),DISP=SHR
//*
//**********************************************************************
//*                        -- VOBM20D --                               *
//*                                                                    *
//* OBJETIVO : IMPRIMIR REPORTE DE COMISIONES BANCO                    *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                  ***M. DINERO         *
//**********************************************************************
//FDD0507A EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),
//             TIME=100
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//*VOBM20R1 DD  SYSOUT=(O,,3D27)
//VOBM20R1 DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=SIVA.CARDS(FDD0507A),DISP=SHR
//**********************************************************************
//*                          === VRBD35O ===                           *
//* OBJETIVO : BORRA EN OPERDIN LOS REGISTROS QUE HAYAN SIDO           *
//*            VACIADOS EN LA TABLA SIVA.                              *
//*            (ACTUALIZA OPERDIQ)                                     *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                    *** M. DINERO      *
//**********************************************************************
//FDD0506 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,TIME=100,
//       COND=(0,NE)
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD0506),DISP=SHR
//*
//**********************************************************************
//*                         -- VOBE61D --                              *
//* OBJETIVO: ACTUALIZACION DIARIA A CUENTA AL CAMPO FULTMOV           *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                ***PROC. ESTADISTICO   *
//**********************************************************************
//FDD0505 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,
//        PARM='/DEBUG',TIME=100,
//        COND=(0,NE)
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD0505),DISP=SHR
//*
//**********************************************************************
//*                         -- VOBE81D --                              *
//* OBJETIVO: VERIFICA SI  SE PUEDE ENVIAR EL PROCESO DE BAJAS         *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                    *PROC. ESTADISTICO *
//**********************************************************************
//FDD0504 EXEC PGM=IKJEFT01,DYNAMNBR=20,
//        COND=(0,NE),
//        REGION=4M,
//        PARM='/DEBUG',
//        TIME=100
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD0504),DISP=SHR
//*
//**********************************************************************
//*                         -- CTMCND --                               *
//* OBJETIVO: ACTIVA CONDICION EN CONTROL-M "CORRE-BAJAS" PARA QUE     *
//*           PUEDA CORRER EL JOB PFDFDD13 QUE ES EL JOB DE BAJAS      *
//*           AUTOMATICAS Y CARGOS VARIOS MENSUALES                    *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//FDD0503  EXEC  PGM=CTMCND,PARM='ADD COND CORRE_PFDFDD13 &FECHA',
//         COND=((0,NE,FDD0504),(4,LT))
//STEPLIB  DD   DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD,DISP=SHR
//DALOG    DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//DAPARM   DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//PRTDBG   DD   SYSOUT=Z
//SYSPRINT DD   DUMMY
//SYSUDUMP DD DUMMY
//DAPRINT  DD   SYSOUT=Z
//DACNDIN  DD   DDNAME=SYSIN
//*
//**********************************************************************
//*                         -- MAILOPER --                             *
//* OBJETIVO : AVISAR QUE HOY ES FECHA DE CORRIDA DE BAJAS MENSUALES   *
//*            Y CARGOS VARIOS                                         *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//FDD0502 EXEC PGM=MAILOPER,
//        COND=((0,NE,FDD0504),(0,NE,FDD0503),(4,LT)),
//        PARM=('/ATENCION OPERADOR: ',
//             ' HOY SE CORRERA AUTOMATICAMENTE',
//             ' BAJAS MENSUALES Y CARGOS VARIOS')
//*
//**********************************************************************
//*                         -- CTMCND --                               *
//* OBJETIVO: ACTIVA CONDICION EN CONTROL-M "CORRE*PFDFDD14" PARA QUE  *
//*           PUEDA CORRER EL JOB PFDFDD14.                            *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//FDD0501  EXEC  PGM=CTMCND,PARM='ADD COND CORRE_PFDFDD14 &FECHA',
//         COND=((1,NE,FDD0504),(4,LT))
//STEPLIB  DD   DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD,DISP=SHR
//DALOG    DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//DAPARM   DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//PRTDBG   DD   SYSOUT=Z
//SYSPRINT DD   DUMMY
//SYSUDUMP DD DUMMY
//DAPRINT  DD   SYSOUT=Z
//DACNDIN  DD   DDNAME=SYSIN
