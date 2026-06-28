//ZMHCPD05  PROC
//**********************************************************************
//*                                                                    *
//*                   C A S A   D E  B O L S A                         *
//*                   ========================                         *
//*                   <<  MERCADO DE CAPITALES  >>                     *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  ZMHCPD05 2DA. PARTE DEL CIERRE.                  *
//*                   CIERRE DE DIA DEL MODULO DE CAPITALES            *
//*                                                                    *
//* OBJETIVO       :  CERRAR LA OPERACION DEL DIA DE CAPITALES ENVIADO *
//*                   POR CONTROL-M                                    *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  ZMHCPD06 (CIERRE DE CAPITALES 3RA. ULTIMA PARTE).*
//*                                                                    *
//* DESPUES DE     :  ZMHCPD04 (CIERRE DE CAPITALES 1RA. PARTE).       *
//*                                                                    *
//* PERIODICIDAD   :  DIARIO                                           *
//*                                                                    *
//* ELABORADO POR  :  ERNESTO MANUEL CUAUTLE MARTINEZ                  *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*        L O G    D E   M O D I F I C A C I O N E S                  *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA   DESCRIPCION                         *
//* ----------- -------- ------- ------------------------------------- *
//* FS-1.0.0-01 TECNOCOM 08MAY13 SE REALIZAN LAS MODIFICACIONES DE     *
//*                              ACUERDO A LA ODT5 SIVA 2012.          *
//*--------------------------------------------------------------------*
//*                                                                    *
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*
//*  PHC05P13     GRABA EN UN ARCHIVO SECUENCIAL.                      *
//**********************************************************************
//*                     ===   INICIO DE     ===                        *
//*                     ===   CAPITALES     ===                        *
//**********************************************************************
//PHC05P13 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','CBPZPR','     ',)
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD05,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//* OBJETIVO : GENERA REPORTE DE TOT. DE OPE. MDC X LIQUIDACION        *
//*            -- ZM4DHW80 --                                          *
//*--------------------------------------------------------------------*
//*PHC05P12 EXEC PGM=IKJEFT01,COND=(4,LT)
//**
//*ZMHW80A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD05,DISP=SHR
//**
//*SYSTSPRT DD SYSOUT=*
//*ZMHW80R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC05T12),DISP=SHR
//**
//**********************************************************************
//*    CREA EL ARCHIVO LOG DE MOVIMIENTOS (IEFBR14)                    *
//*--------------------------------------------------------------------*
//*PHC05P11 EXEC PGM=IEFBR14,COND=(4,LT)
//*ARCHIVO   DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD05.LOG,
//*             DISP=(NEW,CATLG,CATLG),
//*             DCB=(LRECL=80,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*             UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//**
//**********************************************************************
//* OBJETIVO : ACTUALIZA CARTERA Y GENERA SIVA DE LA ASIGNACION        *
//*            DEFINITIVA                                              *
//*            -- ZM4DH514 --                                          *
//*--------------------------------------------------------------------*
//*PHC05P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//**
//*ZMH514A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD05,DISP=SHR
//**
//*ZMH514L1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD05.LOG,
//*            DISP=MOD
//*ZMH514R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC05T10),DISP=SHR
//**
//**********************************************************************
//* OBJETIVO : REPORTE DE VENTAS CON CARGO DE ISR.                     *
//* PROGRAMA QUE CAMBIO DE NOMBRE ANTES SE LLAMABA (ZM4DH72E)          *
//* AHORA SE LLAMA   -- ZM4DHB72 --                                    *
//*--------------------------------------------------------------------*
//*PHC05P09 EXEC PGM=IKJEFT01,COND=(4,LT)
//**
//*ZMHB72A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD05,DISP=SHR
//**
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*ZMHB72R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC05T09),DISP=SHR
//**
//**********************************************************************
//* OBJETIVO : REPORTE COMPRAS/VENTAS MISMO DIA MISMA EMISORA          *
//*            -- ZM4DH467 --                                          *
//*--------------------------------------------------------------------*
//**PHC05P08 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//**ZMH467A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD05,DISP=SHR
//*
//**SYSTSPRT DD SYSOUT=*
//**SYSPRINT DD SYSOUT=*
//**SYSOUT   DD SYSOUT=*
//**SYSDBOUT DD SYSOUT=*
//**ZMH467R1 DD SYSOUT=*
//**SYSABOUT DD DUMMY
//**SYSUDUMP DD DUMMY
//**SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC05T08),DISP=SHR
//*
//**********************************************************************
//* OBJETIVO: REPORTAR OPERACIONES DE EMISORAS DEL GFP                 *
//*           -- ZM4DHT01 --                                           *
//*--------------------------------------------------------------------*
//*PHC05P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//**
//*ZMHT01A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD05,DISP=SHR
//**
//*SYSTSPRT DD SYSOUT=*
//*ZMHT01R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC05T05),DISP=SHR
//*
//**********************************************************************
//* OBJETIVO : GENERA REPORTE ASIGNACION CUENTAS JUMBO                 *
//*            -- ZM4DHV34 --                                          *
//*--------------------------------------------------------------------*
//PHC05P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHV34A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD05,DISP=SHR
//*
//ZMHV34R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//* FS-1.0.0-01-I
//ZMHV34R2 DD DSN=MXCP.ZM.FIX.MDC.E&EMP..S&SUC..ZM4DHV34,
//            DISP=(NEW,CATLG,DELETE),
//*ISR-2013-INI
//*           DCB=(LRECL=125,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            DCB=(LRECL=181,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*ISR-2013-FIN
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//* FS-1.0.0-01-F
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC05T04),DISP=SHR
//*
//**********************************************************************
//* OBJETIVO : GENERA REPORTE OPERACIONES DE CAPITALES DE CLIENTES DEL *
//*            AREA INTERNACIONAL.                                     *
//*            -- ZM4DHV95 --                                          *
//*--------------------------------------------------------------------*
//PHC05P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHV95A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD05,DISP=SHR
//*
//ZMHV95R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//* FS-1.0.0-01-I
//ZMHV95R2 DD DSN=MXCP.ZM.FIX.MDC.E&EMP..S&SUC..ZM4DHV95,
//            DISP=(NEW,CATLG,DELETE),
//*ISR-2013-INI
//*           DCB=(LRECL=125,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            DCB=(LRECL=181,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*ISR-2013-FIN
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//* FS-1.0.0-01-F
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC05T03),DISP=SHR
//*
//**********************************************************************
//* OBJETIVO : GENERA REPORTE DE OPERACION DE CAPITALES DE CLIENTES    *
//*            BP.                                                     *
//*            -- ZM4DHV97 --                                          *
//*--------------------------------------------------------------------*
//PHC05P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHV97A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD05,DISP=SHR
//*
//ZMHV97R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//* FS-1.0.0-01-I
//ZMHV97R2 DD DSN=MXCP.ZM.FIX.MDC.E&EMP..S&SUC..ZM4DHV97,
//            DISP=(NEW,CATLG,DELETE),
//*ISR-2013-INI
//*           DCB=(LRECL=125,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            DCB=(LRECL=181,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*ISR-2013-FIN
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//* FS-1.0.0-01-F
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC05T02),DISP=SHR
//*
//**********************************************************************
//* OBJETIVO : GENERA REPORTE DE OPERACIONES DE CAPITALES              *
//*            DE CLIENTES INSTITUCIONALES.                            *
//*            -- ZM4DHV98 --                                          *
//*--------------------------------------------------------------------*
//PHC05P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHV98A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD05,DISP=SHR
//*
//ZMHV98R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//* FS-1.0.0-01-I
//ZMHV98R2 DD DSN=MXCP.ZM.FIX.MDC.E&EMP..S&SUC..ZM4DHV98,
//            DISP=(NEW,CATLG,DELETE),
//*ISR-2013-INI
//*           DCB=(LRECL=125,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            DCB=(LRECL=181,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*ISR-2013-FIN
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//* FS-1.0.0-01-F
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC05T01),DISP=SHR
//*
//* FS-1.0.0-01-I
//**********************************************************************
//*    TERMINA ZMHCPD05
//**********************************************************************
//* FS-1.0.0-01-F
