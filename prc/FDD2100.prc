//FDD2100 PROC
//*
//**********************************************************************
//*    G R U P O - F I N A N C I E R O - P R O B U R S A   (B B V)     *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  PFDFDD21                                         *
//*                   REPORTEADOR DE FIN DE DIA                        *
//*                                                                    *
//* OBJETIVO       :  REPORTES QUE ANTES CORRIAN EN EL CIERRE DE       *
//*                   VALORES (EQUIVALE AL PCIVAD02)                   *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  IMAGE COPY'S POSTERIORES A FIN DE DIA            *
//*                                                                    *
//* DESPUES DE     :  PFDFDD15                                         *
//*                                                                    *
//* REALIZO        :  JOEL GONZALEZ MARTINEZ                           *
//* FECHA          :  ENERO      1993                                  *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA EN FORMA DIARIA    *
//*                                                                    *
//**********************************************************************
//*
//* MODIFICO: SOFTTEK (RHB).
//* OBJETIVO: EVITAR EJECUCION DE PROGRAMAS VIBJ73D, VIBJ70D Y VIBJ64D.
//* MODIFICACIONES: SE COMENTARIZARON LOS PASOS FDD2109, FDD2110,
//*                 FDD2111 Y FDD2114.
//*                 SE COMENTARIZARON LOS PASOS FDD2117, FDD2116 Y
//*                 FDD2115; EL REPORTE SE EJECUTARA POR SUBMITIDOR.
//*
//**********************************************************************
//*                        --  VIB952D --               (GARANTIAS)    *
//* OBJETIVO : REPORTE DE MARGEN DE GARANTIAS (CONCENTRADO)            *
//* OBJETIVO : REPORTE DE MARGEN DE GARANTIAS (DESVIACIOQ)             *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                       *** VALORES
//**********************************************************************
//*FDD2117  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4096K
//*                                                                     00130000
//*VIB952R1 DD SYSOUT=(O,,TV76)
//*VIB952R2 DD SYSOUT=(O,,TV77)
//*VIB952A1 DD DSN=SIVA.VAL.WKF.VIB952D,
//*            DISP=(NEW,CATLG,DELETE),
//*            UNIT=SYSDA,SPACE=(TRK,(1,1),RLSE),
//*            LRECL=69,RECFM=FB,BLKSIZE=0                              00160026
//*SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=6292
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=SIVA.CARDS(FDD2117),DISP=SHR
//****-- IDCAMS-**********************************************
//*  OBJETIVO: COPIA EL ARCHIVO SECUENCIAL ANTERIOR A UN VSAM
//*  PROGRAMO : SISCON (OSCAR CORTES SANTOS)
//*             SISCON (ALEJANDRO JIMENEZ H.)
//************************************************************
//*FDD2116    EXEC PGM=IDCAMS,COND=(4,LT)
//*SYSPRINT   DD   SYSOUT=*
//*SYSIN      DD   DSN=SIVA.CARDS(FDD2116),DISP=SHR
//*
//*FDD2115    EXEC PGM=IDCAMS,REGION=4M,COND=(4,LT)
//*SYSPRINT   DD SYSOUT=X
//*ENTRADA    DD DSN=SIVA.VAL.WKF.VIB952D,DISP=SHR
//*SALIDA     DD DSN=SIVA.VAL.FIX.GARANT.CORTO.ONLINE,DISP=SHR
//*SYSIN      DD DSN=SIVA.CARDS(FDD2110),DISP=SHR
//*
//**********************************************************************
//*                        --  VIBJ73D --            (VENTAS EN CORTO) *
//* OBJETIVO : REP. DE SITUACION DE VALORES DE VTAS. EN CORTO X EMISOR *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                         *** VALORES
//**********************************************************************
//*FDD2114  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4096K
//*VIBJ73R1 DD SYSOUT=(O,,TV75)
//*SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=6292
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=SIVA.CARDS(FDD2114),DISP=SHR
//*
//**********************************************************************
//*                        --  VIBJ71D --            (VENTAS EN CORTO) *
//* OBJETIVO : REP. DE OPERACIONES DIARIAS DE VENTAS EN CORTO          *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                        *** VALORES
//**********************************************************************
//FDD2113  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4096K
//*VIBJ71R1 DD SYSOUT=(O,,TV74)
//VIBJ71R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=6292
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD2113),DISP=SHR
//*
//**********************************************************************
//*                        --  VIBJ70D --            (VENTAS EN CORTO) *
//* OBJETIVO : REP. DE SITUACION DE VALORES DE VTAS. EN CORTO X CLIENT *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                        *** VALORES
//**********************************************************************
//*FDD2112  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4096K
//*
//*VIBJ70R1 DD SYSOUT=(O,,TV73)
//*VIBJ70A1 DD DSN=SIVA.VAL.WKF.VIBJ70D,
//*            DISP=(NEW,CATLG,DELETE),
//*            UNIT=SYSDA,SPACE=(TRK,(1,1),RLSE),
//*           DCB=(DSORG=PS,LRECL=64,RECFM=FB,BLKSIZE=640)
//*SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=6292
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=SIVA.CARDS(FDD2112),DISP=SHR
//*
//****-- IDCAMS-**********************************************
//*  OBJETIVO: LLENA UN ARCHIVO VSAM CON UN SECUENCIAL
//*  PROGRAMO : SISCON (OSCAR CORTES SANTOS)
//*             SISCON (ALEJANDRO JIMENEZ H.)
//************************************************************
//*FDD2111    EXEC PGM=IDCAMS,COND=(4,LT)
//*SYSPRINT   DD   SYSOUT=*
//*SYSIN      DD   DSN=SIVA.CARDS(FDD2111),DISP=SHR
//*
//*FDD2110     EXEC PGM=IDCAMS,REGION=4M,COND=(4,LT)
//*SYSPRINT    DD SYSOUT=X
//*ENTRADA     DD DSN=SIVA.VAL.WKF.VIBJ70D,DISP=SHR
//*SALIDA      DD DSN=SIVA.VAL.FIX.VENTAS.CORTO.ONLINE,DISP=SHR
//*SYSIN       DD DSN=SIVA.CARDS(FDD2110),DISP=SHR
//*
//**********************************************************************
//*                        --  VIBJ64E --            (VENTAS EN CORTO) *
//* OBJETIVO : REPORTE DE VENTAS EN CORTO PROXIMAS A VENCER            *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                      *** VALORES
//**********************************************************************
//*FDD2109  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4096K
//*VIBJ64R1 DD SYSOUT=(O,,TV71)
//*SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=6292
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=SIVA.CARDS(FDD2109),DISP=SHR
//*
//**********************************************************************
//*                        --  VIB435D --                    (WARRANT) *
//* OBJETIVO : REP. OPERACIONES WARRANTS PARA CORROBORAR POLIZA ENLACE *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                          *** CAPITALES
//**********************************************************************
//FDD2108  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4096K
//*VIB435R1 DD SYSOUT=(V,,TQ04)
//VIB435R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=6292
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(VAD0209),DISP=SHR
//*
//**********************************************************************
//*                        --  VIB456D --                    (WARRANT) *
//* OBJETIVO : REPORTE OPERACIONES WARRANTS PARA SOLICITUD DE CARTA    *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                          *** CAPITALES*
//**********************************************************************
//FDD2107  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4096K
//*VIB456R1 DD SYSOUT=(O,,TV85)
//VIB456R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=6292
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(VAD0208),DISP=SHR
//*
//**********************************************************************
//*            PASO PARA CASA DE BOLSA                                 *
//**********************************************************************
//*                        --  VIBA88E --                              *
//* OBJETIVO : REPORTE DE CORTOS                                       *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                        *** VALORES    *
//**********************************************************************
//FDD2105  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4096K
//*VIBA88R1 DD SYSOUT=(O,,TV03)
//VIBA88R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=6292
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(VAD0206),DISP=SHR
//*
//**********************************************************************
//*            PASO PARA EL BANCO                   *** VALORES        *
//**********************************************************************
//FDD2105B EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4096K
//*VIBA88R1 DD SYSOUT=(O,,3V03)
//VIBA88R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=6292
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(VAD0206B),DISP=SHR
//*
//**********************************************************************
//*                        --  VOBB40D --                              *
//* OBJETIVO : REPORTE DE ULTIMO PRECIO POR EMISORA                    *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                          ***VALORES   *
//**********************************************************************
//FDD2104  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=1024K
//*VOBB40R1 DD SYSOUT=(O,,TV03)
//VOBB40R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=6292
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(VAD0205),DISP=SHR
//*
//**********************************************************************
//*                        --  VIB960E --                              *
//* OBJETIVO : REPORTE DE MOVIMIENTOS POR EMISORAS                     *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                        *** VALORES    *
//**********************************************************************
//FDD2103  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=1024K
//*VIB960R1 DD SYSOUT=(O,,TV03)
//VIB960R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=6292
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(VAD0204),DISP=SHR
//*
//**********************************************************************
//*                        --  VIB962E --                              *
//* OBJETIVO : REPORTE DE MOVIMIENTOS DE TASAS DE RENTA FIJA           *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                       *** VALORES     *
//**********************************************************************
//FDD2101  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=1024K
//*VIB962R1 DD SYSOUT=(O,,TV03)
//VIB962R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=6292
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(VAD0202),DISP=SHR
//*
