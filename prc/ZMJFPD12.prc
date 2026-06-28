//ZMJFPD12 PROC
//*
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  MERCADO DE DINERO >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  CBJFCD12                                            *
//*                FIN DE DIA DEL SIVA.                                *
//*                                                                    *
//*   OBJETIVO  :  REALIZAR LA INTERFASE DE FIN DE DIA DEL SIVA.       *
//*                - INTERFASES BATCH (TSO)                            *
//*                                                                    *
//*                                                                    *
//*   CORRE ANTES DE  : PFDFDD25                                       *
//*                                                                    *
//*   CORRE DESPUES DE: CBJFCD10, CBJFND11                             *
//*                                                                    *
//*   PERIODICIDAD    :  DIARIO                                        *
//*                                                                    *
//*   ELABORADO POR: ASATECK.                                          *
//*                                                                    *
//*   FECHA:  SEPTIEMBRE 2002.                                         *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//* ACV  |11-JUN-03 |IDCEX30|        |ADECUACION A ESTANDARES DE P.U.  *
//**********************************************************************00010000
//* PROGRAMA: ZM3DG001
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO
//*           PARA SIGUIENTES PASOS
//**********************************************************************00060000
//PJF12P10 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','     ','     ',)
//PI601765  DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..ZMJFPD12,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(02,01),RLSE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            BUFNO=30
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*---------------------------------------------------------------------00010000
//* PROGRAMA: ZM4DGU96                                                  00020000
//* OBJETIVO: DEPURACION DE ORDENES HECHOS Y AHECHOR.                   00030000
//*---------------------------------------------------------------------00060000
//PJF12P09 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMGU96A1 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..ZMJFPD12,DISP=SHR
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF12T01),DISP=SHR
//*
//*---------------------------------------------------------------------00010000
//* PROGRAMA: ZM4MGF51                                                  00020000
//* OBJETIVO: GENERAR REPORTE DE CANCELACION DE SOLICITUDES DE SALDO    00030000
//*           DEUDOR RECHAZADAS POR TESORERIA.                          00040000
//*           **** NO ACTUALIZA **** TESO.                              00020000
//* << PASO REINICIABLE POR RESTART >>
//*---------------------------------------------------------------------00060000
//PJF12P08 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMGF51A1 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..ZMJFPD12,DISP=SHR
//ZMGF51R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF12T02),DISP=SHR
//*
//*---------------------------------------------------------------------00010000
//* PROGRAMA: ZM4DH181                                                  00020000
//* OBJETIVO: GENERAR REPORTE DE OPERACIONES REALIZADAS DURANTE EL      00030000
//*           DIA CON CIFRAS POR SUCURSAL Y EMISORA.                    00040000
//*               **** NO ACTUALIZA **** SOC.INV.                       00020000
//*             << PASO REINICIABLE POR RESTART >>
//*---------------------------------------------------------------------00060000
//PJF12P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMH181A1 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..ZMJFPD12,DISP=SHR
//ZMH181R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMH181R3 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF12T03),DISP=SHR
//*
//*---------------------------------------------------------------------00010000
//* PROGRAMA: ZM4DJ182                                                  00020000
//* OBJETIVO: GENERAR REPORTE DE OPERACIONES REALIZADAS DURANTE EL      00030000
//*           DIA CON CIFRAS POR DIRECCION Y EMISORA.                   00040000
//*           **** NO ACTUALIZA **** SOC.INV.                           00020000
//* << PASO REINICIABLE POR RESTART >>
//*---------------------------------------------------------------------00060000
//PJF12P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMJ182A1 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..ZMJFPD12,DISP=SHR
//ZMJ182R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF12T04),DISP=SHR
//*
//*---------------------------------------------------------------------00010000
//* PROGRAMA: ZM4MGF18                                                  00020000
//* OBJETIVO: DEPURAR TABLAS DE CARGOS VARIOS                           00030000
//*           OPERIND, RAZCOPE, RAZCSOL, ASOLCST, SOLICTD, MOVIND       00040000
//*           **** PROCESO ESTADISTICO ****                             00020000
//* << PASO REINICIABLE POR RESTART >>
//*---------------------------------------------------------------------00060000
//PJF12P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMGF18A1 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..ZMJFPD12,DISP=SHR
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF12T05),DISP=SHR
//*
//*---------------------------------------------------------------------00010000
//* PROGRAMA: ZM4DJ179                                                  00020000
//* OBJETIVO: GENERAR INDICATIVOS DE COMPRA VENTA.                      00030000
//*           (ACTUALIZA OPERIND ULTOPIN RAZCOPE AOPECST CARTERA)       00040000
//*           **** SOCIEDADES DE INV.  ****                             00020000
//* << PASO REINICIABLE POR RESTART >>
//*---------------------------------------------------------------------00060000
//PJF12P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMJ179A1 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..ZMJFPD12,DISP=SHR
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF12T06),DISP=SHR
//*
//*---------------------------------------------------------------------00010000
//* PROGRAMA: ZM4DJ809                                                  00020000
//* OBJETIVO: DEPURAT TABLAS : OPERASI, OPERATE, OPERTET.               00030000
//*           (ACTUALIZA OPERASI, OPERATE, OPERTET)                     00040000
//*           **** SOCIEDADES DE INV.  ****                             00020000
//* << PASO REINICIABLE POR RESTART >>
//*---------------------------------------------------------------------00060000
//PJF12P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMJ809A1 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..ZMJFPD12,DISP=SHR
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF12T07),DISP=SHR
//*
//*---------------------------------------------------------------------00010000
//* PROGRAMA: ZM4DGU97                                                  00020000
//* OBJETIVO: BORRAR LAS TABLAS ZMDT942 ZMDT943 ZMDT944                 00030000
//*                             ZMDT945 ZMDT947                         00040000
//*           **** POSICION PROPIA BANCO ****                           00020000
//* << PASO REINICIABLE POR RESTART >>
//*---------------------------------------------------------------------00060000
//PJF12P3A EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMGU97A1 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..ZMJFPD12,DISP=SHR
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF12T10),DISP=SHR
//*
//*---------------------------------------------------------------------00010000
//*  PROGRAMA:    ZM4DJ001.                                            *00030000
//*  OBJETIVO:    REPORTE CIFRAS RESUMEN DE PROCESO MENSUAL.           *00040000
//*                       CARGOS   VARIOS                              *00020000
//*               PROCESO ESTADISTICO                    -- PSUMCV  -- *00020000
//*             << PASO REINICIABLE POR RESTART >>                     *
//*---------------------------------------------------------------------00060000
//PJF12P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMJ001A1 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..ZMJFPD12,DISP=SHR
//ZMJ001R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF12T8A),DISP=SHR
//*
//*---------------------------------------------------------------------00010000
//*  PROGRAMA:    ZM4DJ002.                                            *00030000
//*  OBJETIVO:    REPORTE AFECTACIONES CONTABLES ENVIADO EN TABLA      *00040000
//*               MOFIND.          CARGOS  VARIOS                      *00020000
//*                                                      -- PCONTAB -- *00020000
//*             << PASO REINICIABLE POR RESTART >>                     *
//*---------------------------------------------------------------------00060000
//PJF12P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMJ002A1 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..ZMJFPD12,DISP=SHR
//ZMJ002R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF12T9A),DISP=SHR
//*
//*---------------------------------------------------------------------00010000
//* PASO       : ZJF12TA1                                              *
//* UTILERIA   : DELETE                                                *
//* OBJETIVO   : ELIMINA REGISTROS DE LA TABLA ZMDTMED                 *
//*--------------------------------------------------------------------*
//PJF12PA1 EXEC PGM=IKJEFT01,COND=(4,LT)
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE42T01),DISP=SHR
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJF12TA1),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*             FIN DE PROCESO  ZMJFPD12                               *
//*--------------------------------------------------------------------*
