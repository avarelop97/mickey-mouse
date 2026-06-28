//FDD5200 PROC ICCTO=,ISUC=
//*
//**********************************************************************
//*    G R U P O   F I N A N C I E R O - P R O B U R S A   (B B V)     *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  PFDFDD52                                         *
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
//* DESPUES DE     :  PFDFDD01, PFDFDD02, PFDFDD05, PFDFDD51           *
//*                                                                    *
//* REALIZO        :                                                   *
//* FECHA          :  AGO/2001                                         *
//*                                                                    *
//* OBSERVACION    :  EL PROCESO FDD1300 DE DIVIDIO EN 2 PROCESOS      *
//*                   PARA LA CARGA DE LOS CARGOS VARIOS DEL MES DE    *
//*                   JULIO                                            *
//*                   FDD5100 Y FDD5200.                               *
//*                                                               OSCT *
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
//FDD5205 EXEC PGM=IKJEFT01,DYNAMNBR=20,
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
//FDD5205A EXEC PGM=DSNUTILB,REGION=0M,PARM='MXP1,PFDFDD5201,',
//        COND=(4,LT)
//*
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//CO001 DD DISP=(,KEEP),UNIT=VTSS02,
//          DSN=BKPP.ESP.FINDIA.OPERASI.D&DATE.,
//          LABEL=(,SL,EXPDT=99000)
//*         LABEL=(9,SL),VOL=(,RETAIN,REF=*.FDD5209.CO001)
//*         LABEL=(9,SL),VOL=SER=029147
//SYSPRINT DD SYSOUT=*
//VTPRINT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN DD DSN=SIVA.CARDS(FDD1305B),DISP=SHR
//**
//**********************************************************************
//*                         -- VOBF00U --                              *
//*  OBJETIVO: VENTA DE LA SOCIEDAD DE INVERSION PARA PODER CUBRIR     *
//*           EL MONTO DE CARGOS VARIOS                                *
//*                                                                    *
//*  PASO REINICIABLE POR RESTART                   *** CARGOS VARIOS  *
//**********************************************************************
//*FDD1305A EXEC PGM=IKJEFT01,DYNAMNBR=20,
//*       COND=(4,LT),
//*       REGION=4M,
//*       TIME=100
//*SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//*SYSPRINT DD SYSOUT=X
//*SYSOUT  DD SYSOUT=X
//*SYSDBOUT DD SYSOUT=X
//*FOLCTRL DD DSN=MXCP.ZM.VSL.FOLCTRL,DISP=SHR
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN DD DSN=SIVA.CARDS(FDD1305A),DISP=SHR
//*
//**********************************************************************
//*                          --- VOBF27M ---                           *
//* OBJETIVO : PASAR INF. DE TABLAS OPERASI,OPERATE A OPERA            *
//*            (ACTUALIZA OPERA )                                      *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                 *** TESORERIA         *
//**********************************************************************
//FDD5204 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=0M,TIME=100,
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
//FDD5203 EXEC  PGM=IKJEFT01,DYNAMNBR=20,REGION=0M,
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
//FDD5202 EXEC  PGM=IKJEFT01,DYNAMNBR=20,REGION=0M,
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
//FDD5201 EXEC  PGM=IKJEFT01,DYNAMNBR=20,REGION=0M,
//     COND=(4,LT)
//SYSTSPRT  DD  SYSOUT=*
//SYSTSIN   DD  DSN=SIVA.CARDS(FDD1300),DISP=SHR
//SYSPUNCH  DD  DSN=SIVA.PUNCH(FDD1301C),DISP=SHR
//SYSPRINT  DD  SYSOUT=*
//SYSREC00  DD  DSN=BKPP.MEN3.FINDIA.VOPERTET.D&DATE.,DISP=(,KEEP),
//          UNIT=VTSS02,LABEL=(,SL,EXPDT=99000)
//SYSIN     DD  DSN=SIVA.CARDS(FDD1301A),DISP=SHR
//**********************************************************************
//*  PEND         FIN DEL PROCEDIMIENTO FDD5200                        *
//**********************************************************************
