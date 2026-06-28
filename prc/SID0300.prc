//SID0300 PROC
//*
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SOCIEDADES DE INVERSION                          *
//*                                                                    *
//* PROCESO        :  PVOSID03   (DISPARADOR)                          *
//*                   SID0300    PROCEDIMIENTO                         *
//*                                                                    *
//* OBJETIVO       :  VALUACION DE OPERACIONES DE SOCIEDADES DE INV.   *
//*                                                                    *
//* CORRE ANTES DE :  PROCESO DE FIN DE DIA.                           *
//*                                                                    *
//* CORRE DESPUES DE : A PETICION DEL USUARIO.                         *
//*                                                                    *
//* REALIZO        :  RUBEN HERNANDEZ ORTIZ.                           *
//* FECHA          :  AGOSTO DE 1992.                                  *
//*                                                                    *
//* MODIFICO       :  SOFTTEK (RHB), (MDC)                             *
//* FECHA          :  JUNIO DE 1997                                    *
//*                   SE AGREGO REPORTES VIBK76E Y VIBK77E             *
//* MODIFICO       :  CENTRISA (A.G.R.)                                *
//* FECHA          :  MAYO  DE 2000                                    *
//*                   SE AGREGO REPORTE DE OPERACIONES ANULADAS        *
//*                   POR PROBLEMAS CON LA CHEQUERA               OSCT *
//**********************************************************************
//**********************************************************************
//*                           -- VOBS14D --                            *
//* OBJETIVO : GENERAR ARCHIVO DE SOC. INV. PARA CONTABILIDAD          *
//*                                                                    *
//**********************************************************************
//SID0309 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),TIME=100,
//             REGION=4M
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSUDUMP DD DUMMY
//SYSABEND DD DUMMY
//SYSDBOUT DD SYSOUT=X
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//PRINT    DD SYSOUT=X
//SYSABOUT DD SYSOUT=X
//VOBS14A1 DD DSN=SIVA.SIN.FIX.SOCINV.CONTAB,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=306,RECFM=FB,BLKSIZE=3060),
//            UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE)
//*
//SYSTSIN  DD DSN=SIVA.CARDS(SID0309),DISP=SHR
//*
//*********************************************************************
//*   EJECUCION DEL PROGRAMA QUE CONTROLA LA EJECUCION DE LA VALUACION.
//*********************************************************************
//SID0308 EXEC PGM=IKJEFT01,COND=(4,LT),
//            REGION=4M,TIME=100
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//VOB194A1 DD DSN=SIVA.SIN.WKF.VOB194A1,DISP=SHR
//VTB274R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//VTB274RX DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//VTB274A1 DD DSN=&&ARCHOPER,
//            DISP=(NEW,PASS),
//            UNIT=SYSDA,
//            DCB=(LRECL=168,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(10,10),RLSE)
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(SID0308),DISP=SHR
//*
//**********************************************************************
//*                          === VNB880D ===                           *
//* OBJETIVO : MONITOREAR LA TERMINACION DE LOS PROCESOS               *
//**********************************************************************
//SID0307 EXEC PGM=IKJEFT01,COND=(4,GE,SID0308),
//            REGION=4M,TIME=100
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//PRINT    DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(SID0307),DISP=SHR
//*
//**********************************************************************
//*                          === VOB180D ===                           *
//* OBJETIVO : REPORTAR OPERACIONES DADAS DE BAJA EN TESORERIA,        *
//*            REQUISICIONES DE CHEQUE EXPRESS.                        *
//**********************************************************************
//SID0306 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//         TIME=100
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//VOB180R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//VOB180A1 DD DSN=&&ARCHIVO,
//            DISP=(NEW,PASS),
//            DCB=(LRECL=84,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=SYSDA,
//            SPACE=(TRK,(1,1))
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(SID0306),DISP=SHR
//*
//**********************************************************************
//*                          === VOB202D ===                           *
//* OBJETIVO : MOVIMIENTOS AUTOMATICOS DEL CIERRE DE SOC INV           *
//*  PASO REINICIABLE                                                  *
//**********************************************************************
//SID0305 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//         TIME=100
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//FOLCTRL  DD DSN=MXCP.ZM.VSL.FOLCTRL,DISP=SHR
//VOB202R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(SID0305),DISP=SHR
//*
//**********************************************************************00040000
//*                     * VOB153D *                                    *05140000
//*                                                                    *00060001
//* OBJETIVO : BLOQUEO AUTOMATICO DE FUNCIONES.                        *00070000
//*                                                                    *00060001
//* TABLAS QUE ACTUALIZA : AGPOCON.                                    *05140000
//*                                                                    *00060001
//* PASO REINICIABLE POR RESTART.                                      *05140000
//**********************************************************************00040000
//SID0304  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00110000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00150000
//SYSABEND DD DUMMY                                                     02440000
//SYSPRINT DD SYSOUT=*                                                  00160000
//SYSOUT   DD SYSOUT=*                                                  00210002
//SYSCOUNT DD SYSOUT=*                                                  02480000
//SYSDBOUT DD SYSOUT=*                                                  00220002
//SYSABOUT DD DUMMY                                                     00230000
//SYSUDUMP DD DUMMY                                                     00240000
//SYSTSIN  DD DSN=SIVA.CARDS(SID0304),DISP=SHR                          00250003
//*                                                                     00010000
//**********************************************************************00040000
//*                     * VOB154D *                                    *05140000
//*                                                                    *00060001
//* OBJETIVO : CANCELACIONES DE AUTORIZACIONES TEMPORALES DE SIMATRI.  *00070000
//*                                                                    *00060001
//* TABLAS QUE ACTUALIZA : SIMATRI.                                    *05140000
//*                                                                    *00060001
//* PASO REINICIABLE POR RESTART.                                      *05140000
//**********************************************************************00080000
//SID0303  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00110000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00142000
//SYSPRINT DD SYSOUT=*                                                  00143000
//SYSOUT   DD SYSOUT=*                                                  00145002
//SYSCOUNT DD SYSOUT=*                                                  00145002
//SYSDBOUT DD SYSOUT=*                                                  00145102
//SYSABOUT DD DUMMY                                                     00146000
//SYSUDUMP DD DUMMY                                                     00147000
//SYSTSIN  DD DSN=SIVA.CARDS(SID0303),DISP=SHR                          00148003
//*                                                                     00030000
//*********************************************************************
//*                       === VIBK76E ===                             *
//* OBJETIVO: REPORTE DE DATOS DE PROSPECTO DE INFORMACION AL PUBLICO *
//*           INVERSIONISTA (CNBV)                                    *
//*********************************************************************
//SID0302 EXEC PGM=IKJEFT01,COND=(4,LT),
//            REGION=4M,TIME=100
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//VIBK76R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//VIBK76R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//VIBK76R3 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//VIBK76R4 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(SID0302),DISP=SHR
//*
//*********************************************************************
//*                       === VIBK77E ===                             *
//* OBJETIVO: REPORTE INTERNO PARA CONTROL DE PROSPECTOS DE SOCIEDADES*
//*           DE INVERSION                                            *
//*********************************************************************
//SID0301 EXEC PGM=IKJEFT01,COND=(4,LT),
//            REGION=4M,TIME=100
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//VIBK77R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(SID0301),DISP=SHR
//*
//*********************************************************************
//*                       === VIBS11D ===                             *
//* OBJETIVO: REPORTE DE CUADRE VALORHOY - VALOR NORMAL               *
//*                   SOCIEDADES DE INVERSION                         *
//*********************************************************************
//SID0301A EXEC PGM=IKJEFT01,COND=(4,LT),
//            REGION=4M,TIME=100
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//VIBS11R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(SID0301A),DISP=SHR
//*********************************************************************
//*                       === VIB340D ===                             *
//* OBJETIVO: REPORTE DE  OPERACIONES ANULADAS POR PROBLEMAS CON LA   *
//*                   CHEQUERA                                        *
//*********************************************************************
//SID0301B EXEC PGM=IKJEFT01,COND=(4,LT),
//            REGION=4M,TIME=100
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//VIB340DR DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(SID0301B),DISP=SHR
//*
