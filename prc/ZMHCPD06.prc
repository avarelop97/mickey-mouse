//ZMHCPD06  PROC                                                        00010004
//**********************************************************************00020004
//*                                                                    *00030004
//*                   C A S A   D E  B O L S A                         *00030004
//*                   ========================                         *00030004
//*                   <<  C A P I T A L E S  >>                        *00030004
//*                                                                    *00030004
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00120004
//*                                                                    *00130004
//* PROCESO        :  ZMHCPD06 3RA. ULTIMA PARTE.                      *00140004
//*                   CIERRE DE DIA DEL MODULO DE CAPITALES            *00150004
//*                                                                    *00160004
//* OBJETIVO       :  CERRAR LA OPERACION DEL DIA DE CAPITALES ENVIADO *00170004
//*                   POR CONTROL-M                                    *00180004
//*                                                                    *00190004
//* CORRE                                                              *00200004
//* ANTES DE       :  (CIERRE DE CAPITALES)                            *00210004
//*                                                                    *00220004
//* DESPUES DE     :  ZMHCPD05(2DA. PARTE CIERRE DE CAPITALES).        *00230004
//*                                                                    *00240004
//* PERIODICIDAD   :  DIARIO                                           *00240004
//*                                                                    *00240004
//* ELABORADO POR  :  ERNESTO MANUEL CUAUTLE MARTINEZ                  *00240004
//*                                                                    *00240004
//**********************************************************************00300004
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*                                                                    *
//* OBJETIVO : ELIMINACION DE 1 REPORTE.                               *
//* FECHA    : 26 DE ABRIL DE 2005.                                    *
//* REALIZO  : ERNESTO MANUEL CUAUTLE MARTINEZ.                        *
//*                                                                    *
//**********************************************************************
//* USUARIO :  SOFTWARE FACTORY MEXICO  ACCENTURE  (XM09016)          *
//*  PASO:        CAMBIO:                                              *
//*  PHC06P14     MODIFICACION DE LONGITUD DE ARCHIVOS DE 20 A 33      *
//*  PHC06P12     MODIFICACION DE LONGITUD DE ARCHIVOS DE 200 A 239    *
//*  PHC06P07     MODIFICACION DE LONGITUD DE ARCHIVOS DE 152 A 265    *
//**********************************************************************
//*                     ===   INICIO DE     ===                        *
//*                     ===   CAPITALES     ===                        *
//*--------------------------------------------------------------------*
//*            L O G    D E    M O D I F I C A C I O N E S             *
//*--------------------------------------------------------------------*
//*                                                                    *
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-1.1.0-12 CAPGEMINI 08MAY13 COMENTAR EL PASO PHC06P14, AGREGAR   *
//*                               PASO PHC06P0D DESPUES DE PHC06P0C.   *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA   DESCRIPCION                         *
//* ----------- -------- ------- ------------------------------------- *
//* FS-2.0.0-01 TECNOCOM 08MAY13 SE REALIZAN LAS MODIFICACIONES DE     *
//*                              ACUERDO A LA ODT5 SIVA 2012.          *
//*--------------------------------------------------------------------*
//*
//**********************************************************************
//*                                                                    *
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*
//*  PHC06P30     GRABA EN UN ARCHIVO SECUENCIAL.                      *
//**********************************************************************
//PHC06P30 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','CBPZPR','     ',)
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD06,
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
//* OBJETIVO : REPORTE DE LA OPERACION DEL DIA,HECHOS POR ASIGNAR,     *
//*            ASIGNACIONES A LA CUENTA DE LA CASA.                    *
//*            -- ZM4DHV85 --                                          *
//**********************************************************************
//PHC06P29 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHV85P1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD06,DISP=SHR
//*
//ZMHV85R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMHV85R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMHV85R3 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMHV85T1 DD DSN=ZIVA.ZME.CONTROL(ZHC04T25),DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC04T0G),DISP=SHR
//*
//**********************************************************************
//*  PASO: 28  REP/ARC. OPER. S.I. 24 HRS.                             *
//*  PHC06P28                  ZM4DHU50                                *
//**********************************************************************
//PHC06P28 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHU50A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD06,DISP=SHR
//*
//ZMHU50R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMHU50R2 DD DSN=MXCP.ZM.FIX.MDC.E&EMP..S&SUC..ZM4DHU50,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=181,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC06T28),DISP=SHR
//*
//**********************************************************************
//*  PASO: 27  REP/ARC. OPER. INTERNACIONAL 24 HRS                     *
//*  PHC06P27                  ZM4DHU51                                *
//**********************************************************************
//PHC06P27 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHU51A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD06,DISP=SHR
//*
//ZMHU51R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMHU51R2 DD DSN=MXCP.ZM.FIX.MDC.E&EMP..S&SUC..ZM4DHU51,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=181,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC06T27),DISP=SHR
//*
//**********************************************************************
//*  PASO: 26  REP/ARC. OPER. CLIENTES BP 24 HRS.                      *
//*  PHC06P26                  ZM4DHU52                                *
//**********************************************************************
//PHC06P26 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHU52A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD06,DISP=SHR
//*
//ZMHU52R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMHU52R2 DD DSN=MXCP.ZM.FIX.MDC.E&EMP..S&SUC..ZM4DHU52,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=181,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC06T26),DISP=SHR
//*
//**********************************************************************
//*  PASO: 25  REP/ARC. OPER. INSTITUCIONALES 24 HRS.                  *
//*  PHC06P25                  ZM4DHU53                                *
//**********************************************************************
//PHC06P25 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHU53A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD06,DISP=SHR
//*
//ZMHU53R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMHU53R2 DD DSN=MXCP.ZM.FIX.MDC.E&EMP..S&SUC..ZM4DHU53,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=181,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC06T25),DISP=SHR
//*
//**********************************************************************
//*  PASO: 24  REP/ARC. OPER. CASA DE BOLSA 24 HRS.                    *
//*  PHC06P24                  ZM4DHU54                                *
//**********************************************************************
//PHC06P24 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHU54A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD06,DISP=SHR
//*
//ZMHU54R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMHU54R2 DD DSN=MXCP.ZM.FIX.MDC.E&EMP..S&SUC..ZM4DHU54,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=181,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC06T24),DISP=SHR
//*
//**********************************************************************
//*  PASO: 21     ARCHIVO  DE  OPERACION  MUREX  TOTALES               *
//*  PHC06P21                  ZM4DHV50                                *
//**********************************************************************
//PHC06P21 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHV50A1 DD DSN=MXCP.ZM.FIX.ECBP.SZPR.CAMUREX,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=88,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE)
//*
//ZMHV50A2 DD DSN=MXCP.ZM.FIX.ECBP.SZPR.CDMUREX,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=88,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(05,01),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC06T21),DISP=SHR
//*
//**********************************************************************
//* OBJETIVO : GENERA REPORTE DE CAMBIOS DE COMISION O FECHA DE LIQ.   *
//*            HECHOS ANTES DEL CIERRE DE CAPITALES                    *
//*            -- ZM4DHV01 --                                          *
//**********************************************************************
//PHC06P20 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHV01A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD06,DISP=SHR
//*
//ZMHV01R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//* FS-2.0.0-01-I
//ZMHV01R2 DD DSN=MXCP.ZM.FIX.MDC.E&EMP..S&SUC..ZM4DHV01,
//            DISP=(NEW,CATLG,DELETE),
//*ISR-2013-INI
//*           DCB=(LRECL=125,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            DCB=(LRECL=181,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*ISR-2013-FIN
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//* FS-2.0.0-01-F
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC06T20),DISP=SHR
//*
//**********************************************************************
//* OBJETIVO : GENERA REPORTE DE OPERACION DE CAPITALES DE CLIENTES    *
//*            CASA DE BOLSA A 72 HRS.                                 *
//*            -- ZM4DHW78 --                                          *
//**********************************************************************
//PHC06P19 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHW78A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD06,DISP=SHR
//*
//ZMHW78R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//* FS-2.0.0-01-I
//ZMHW78R2 DD DSN=MXCP.ZM.FIX.MDC.E&EMP..S&SUC..ZM4DHW78,
//            DISP=(NEW,CATLG,DELETE),
//*ISR-2013-INI
//*           DCB=(LRECL=125,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            DCB=(LRECL=181,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*ISR-2013-FIN
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//* FS-2.0.0-01-F
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC06T19),DISP=SHR
//*
//**********************************************************************
//* OBJETIVO : GENERA REPORTE DE OPERACION DE CAPITALES DE CLIENTES    *
//*            INSTITUCIONALES  A 72 HRS.                              *
//*            -- ZM4DHW77 --                                          *
//**********************************************************************
//PHC06P18 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHW77A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD06,DISP=SHR
//*
//ZMHW77R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//* FS-2.0.0-01-I
//ZMHW77R2 DD DSN=MXCP.ZM.FIX.MDC.E&EMP..S&SUC..ZM4DHW77,
//            DISP=(NEW,CATLG,DELETE),
//*ISR-2013-INI
//*           DCB=(LRECL=125,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            DCB=(LRECL=181,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*ISR-2013-FIN
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//* FS-2.0.0-01-F
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC06T18),DISP=SHR
//*
//**********************************************************************
//* OBJETIVO : GENERA REPORTE DE OPERACION DE CAPITALES DE CLIENTES    *
//*            DEL AREA INTERNACIONAL A 72 HRS.                        *
//*            -- ZM4DHW76 --                                          *
//**********************************************************************
//PHC06P17 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHW76A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD06,DISP=SHR
//*
//ZMHW76R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//* FS-2.0.0-01-I
//ZMHW76R2 DD DSN=MXCP.ZM.FIX.MDC.E&EMP..S&SUC..ZM4DHW76,
//            DISP=(NEW,CATLG,DELETE),
//*ISR-2013-INI
//*           DCB=(LRECL=125,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            DCB=(LRECL=181,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*ISR-2013-FIN
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//* FS-2.0.0-01-F
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC06T17),DISP=SHR
//*
//**********************************************************************
//* OBJETIVO : GENERA REPORTE DE OPERACION DE CAPITALES DE SOCIEDADES  *
//*            DE INVERSION 72 HRS.                                    *
//*            -- ZM4DHW75 --                                          *
//**********************************************************************
//PHC06P16 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHW75A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD06,DISP=SHR
//*
//ZMHW75R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//* FS-2.0.0-01-I
//ZMHW75R2 DD DSN=MXCP.ZM.FIX.MDC.E&EMP..S&SUC..ZM4DHW75,
//            DISP=(NEW,CATLG,DELETE),
//*ISR-2013-INI
//*           DCB=(LRECL=125,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            DCB=(LRECL=181,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*ISR-2013-FIN
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//* FS-2.0.0-01-F
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC06T16),DISP=SHR
//*
//**********************************************************************
//* OBJETIVO : GENERA REPORTE DE OPERACION DE CAPITALES DE CLIENTES    *
//*            BP 72 HRS.                                              *
//*            -- ZM4DHW74 --                                          *
//**********************************************************************
//PHC06P15 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHW74A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD06,DISP=SHR
//*
//ZMHW74R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//* FS-2.0.0-01-I
//ZMHW74R2 DD DSN=MXCP.ZM.FIX.MDC.E&EMP..S&SUC..ZM4DHW74,
//            DISP=(NEW,CATLG,DELETE),
//*ISR-2013-INI
//*           DCB=(LRECL=125,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            DCB=(LRECL=181,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*ISR-2013-FIN
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//* FS-2.0.0-01-F
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC06T15),DISP=SHR
//*
//**********************************************************************00410004
//* OBJETIVO : OBTENER ARCHIVO DE ORDENES NO REALIZADAS DE BP.         *00410004
//*            -- ZM4DHW04 --                                          *00410004
//**********************************************************************00430004
//*FS-1.1.0-12-INI
//*PHC06P14 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//*ZMHW04A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD06,DISP=SHR
//*
//*SYSTSPRT DD SYSOUT=*                                                 00450004
//*SYSPRINT DD SYSOUT=*                                                 00460004
//*SYSOUT   DD SYSOUT=*                                                 00470004
//*PRINT    DD SYSOUT=*                                                 00480004
//*SYSDBOUT DD SYSOUT=*                                                 00490004
//*SYSUDUMP DD DUMMY                                                    00510004
//*ZMHW04A4 DD DSN=SIVA.MDC.FIX.E&EMP..ORDENES.BP,                      00520004
//*            DISP=(NEW,CATLG,CATLG),                                  00530004
//*            DCB=(DSORG=PS,RECFM=FBA,LRECL=33,BLKSIZE=0),             00540004
//*            UNIT=3390,                                               00550004
//*            SPACE=(CYL,(20,10),RLSE)                                 00560004
//*SYSABOUT DD DUMMY                                                    00570004
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC06T14),DISP=SHR                  00590004
//*FS-1.1.0-12-FIN
//*
//**********************************************************************
//* OBJETIVO : GENERA REPORTE DE OPERACIONES DE CAPITALES              *
//*            DE CLIENTES DE TERCEROS                                 *
//*            -- ZM4DHV99 --                                          *
//**********************************************************************
//PHC06P13 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHV99A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD06,DISP=SHR
//*
//ZMHV99R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//* FS-2.0.0-01-I
//ZMHV99R2 DD DSN=MXCP.ZM.FIX.MDC.E&EMP..S&SUC..ZM4DHV99,
//            DISP=(NEW,CATLG,DELETE),
//*ISR-2013-INI
//*           DCB=(LRECL=125,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            DCB=(LRECL=181,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*ISR-2013-FIN
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//* FS-2.0.0-01-F
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC06T13),DISP=SHR
//*
//**********************************************************************00310004
//* OBJETIVO : GENERAR ARCHIVO CON LOS HECHOS OPERADOS EN EL DIA.      *
//*        -- ZM4DH010 --                                              *
//**********************************************************************
//PHC06P12 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMH010A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD06,DISP=SHR
//*
//ZMH010A2 DD DSN=SIVA.MDC.FIX.E&EMP..HECHOS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=239,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC06T12),DISP=SHR
//*
//**********************************************************************
//* OBJETIVO: BORRA EL ARCHIVO SIVA.MDD.FIX.PROPIA1.                   *00340004
//*           -- IDCAMS --                                             *00340004
//**********************************************************************00350004
//PHC06P11 EXEC PGM=IDCAMS,COND=(4,LT)
//*
//SYSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC06T11),DISP=SHR                     00380004
//SYSPRINT DD SYSOUT=*                                                  00390004
//SYSOUT   DD SYSOUT=*                                                  00400004
//*                                                                     00400004
//**********************************************************************00410004
//* OBJETIVO : GENERAR ARCHIVO DE OPERACIONES DE LA CUENTA 5035944     *00410004
//*            -- ZM4DHN64 --                                          *00410004
//**********************************************************************00430004
//PHC06P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHN64P1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD06,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*                                                  00450004
//SYSPRINT DD SYSOUT=*                                                  00460004
//SYSOUT   DD SYSOUT=*                                                  00470004
//PRINT    DD SYSOUT=*                                                  00480004
//SYSDBOUT DD SYSOUT=*                                                  00490004
//SYSUDUMP DD DUMMY                                                     00510004
//ZMHN64A1 DD DSN=SIVA.MDD.FIX.E&EMP..PROPIA1,                          00520004
//            DISP=(NEW,CATLG,CATLG),                                   00530004
//            DCB=(DSORG=PS,RECFM=FBA,LRECL=115,BLKSIZE=0),             00540004
//            UNIT=3390,                                                00550004
//            SPACE=(CYL,(4,2),RLSE)                                    00560004
//SYSABOUT DD DUMMY                                                     00570004
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC06T10),DISP=SHR                   00590004
//*
//**********************************************************************00600004
//* OBJETIVO : GENERAR ARCHIVO DE OPERACIONES DE LA CUENTA 5164017     *00600004
//*            -- ZM4DHN64 --                                          *00410004
//**********************************************************************00620004
//PHC06P09 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHN64P1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD06,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*                                                  00640004
//SYSPRINT DD SYSOUT=*                                                  00650004
//SYSOUT   DD SYSOUT=*                                                  00660004
//SYSDBOUT DD SYSOUT=*                                                  00670004
//ZMHN64A1 DD DSN=SIVA.MDD.FIX.E&EMP..PROPIA1,                          00680004
//            DISP=MOD                                                  00690004
//SYSABOUT DD DUMMY                                                     00700004
//SYSUDUMP DD DUMMY                                                     00710004
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC06T09),DISP=SHR                   00720004
//*
//**********************************************************************00730004
//* OBJETIVO : GENERAR ARCHIVO DE OPERACIONES DE LA CUENTA 5207410     *00740004
//*            -- ZM4DHN64 --                                          *00410004
//**********************************************************************00750004
//PHC06P08 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHN64P1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD06,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*                                                  00770004
//SYSPRINT DD SYSOUT=*                                                  00780004
//SYSOUT   DD SYSOUT=*                                                  00790004
//SYSDBOUT DD SYSOUT=*                                                  00800004
//ZMHN64A1 DD DSN=SIVA.MDD.FIX.E&EMP..PROPIA1,                          00810004
//            DISP=MOD                                                  00820004
//SYSABOUT DD DUMMY                                                     00830004
//SYSUDUMP DD DUMMY                                                     00840004
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC06T08),DISP=SHR                   00850004
//*
//**********************************************************************00860004
//* OBJETIVO : GENERAR ARCHS CON OPERACION DEL DIA                     *00860004
//*            -- ZM4DHT47 --                                          *00990004
//**********************************************************************01010004
//PHC06P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMGT47P1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD06,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*                                                  01030004
//ZMGT47A1 DD DSN=SIVA.MDC.FIX.E&EMP..VOBT47A1,                         01040004
//            DISP=(NEW,CATLG,DELETE),                                  01050004
//            DCB=(DSORG=PS,RECFM=FBA,LRECL=165,BLKSIZE=0),             01060004
//            UNIT=3390,                                                01070004
//            SPACE=(CYL,(20,10),RLSE)                                  01080004
//ZMGT47A2 DD DSN=SIVA.MDC.FIX.E&EMP..VOBT47A2,                         01090004
//            DISP=(NEW,CATLG,DELETE),                                  01100004
//            DCB=(DSORG=PS,RECFM=FBA,LRECL=165,BLKSIZE=0),             01110004
//            UNIT=3390,                                                01120004
//            SPACE=(CYL,(20,10),RLSE)                                  01130004
//ZMGT47R1 DD SYSOUT=*                                                  01140004
//SYSPRINT DD SYSOUT=*                                                  01140004
//SYSOUT   DD SYSOUT=*                                                  01150004
//SYSDBOUT DD SYSOUT=*                                                  01160004
//SYSABOUT DD DUMMY                                                     01170004
//SYSUDUMP DD DUMMY                                                     01180004
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC06T07),DISP=SHR                   01190004
//*
//**********************************************************************01200004
//* OBJETIVO : EMITIR REPORTE DE VENTAS SIN POSICION A INICIO DE DIA   *01210004
//*            -- ZM4DHT45 --                                          *01200004
//**********************************************************************01220004
//*PHC06P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//**
//*ZMHT45A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD06,DISP=SHR
//**
//*SYSTSPRT DD SYSOUT=*                                                 01240004
//*ZMHT45R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSPRINT DD SYSOUT=*                                                 01260004
//*SYSOUT   DD SYSOUT=*                                                 01270004
//*SYSDBOUT DD SYSOUT=*                                                 01280004
//*SYSABOUT DD DUMMY                                                    01290004
//*SYSUDUMP DD DUMMY                                                    01300004
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC06T06),DISP=SHR                  01310004
//**
//**********************************************************************01320004
//* OBJETIVO : INICIALIZA EL CAMPO DE ASIGNADO HOY CTITASH DE ORDENES  *01450004
//*            -- ZM4DH578 --                                          *01440004
//**********************************************************************01460004
//PHC06P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMH578A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD06,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*                                                  01480004
//SYSPRINT DD SYSOUT=*                                                  01490004
//SYSOUT   DD SYSOUT=*                                                  01500004
//SYSDBOUT DD SYSOUT=*                                                  01510004
//SYSABOUT DD DUMMY                                                     01520004
//SYSUDUMP DD DUMMY                                                     01530004
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC06T05),DISP=SHR                   01540004
//*
//**********************************************************************01550004
//* OBJETIVO : GENERACION DE CARTERA DE PROMOTORES                     *01560004
//*            -- ZM4DH526 --                                          *01550004
//**********************************************************************01570004
//PHC06P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMH526P1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD06,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*                                                  01590004
//SYSPRINT DD SYSOUT=*                                                  01600004
//SYSOUT   DD SYSOUT=*                                                  01610004
//SYSDBOUT DD SYSOUT=*                                                  01620004
//ZMH526A1 DD DSN=MXCP.ZM.TMP.MDC.ZM4DH526,                             01630004
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=61,BLKSIZE=0,DSORG=PS),               01640004
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)                                    01650004
//*
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(4,2),RLSE)                          01660004
//SORTWK02 DD UNIT=3390,SPACE=(CYL,(4,2),RLSE)                          01670004
//SORTWK03 DD UNIT=3390,SPACE=(CYL,(4,2),RLSE)                          01680004
//SYSABOUT DD DUMMY                                                     01690004
//SYSUDUMP DD DUMMY                                                     01700004
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC06T04),DISP=SHR                   01730004
//*
//**********************************************************************01740004
//* OBJETIVO : MARCA EL FIN DE LA ASIGNACION DEFINITIVA                *01970004
//*            -- ZM4DH579 --                                          *01960004
//**********************************************************************01980004
//PHC06P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMH579A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD06,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*                                                  02000004
//SYSPRINT DD SYSOUT=*                                                  02010004
//SYSOUT   DD SYSOUT=*                                                  02020004
//SYSDBOUT DD SYSOUT=*                                                  02030004
//SYSABOUT DD DUMMY                                                     02040004
//SYSUDUMP DD DUMMY                                                     02050004
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC06T03),DISP=SHR                   02060004
//*
//**********************************************************************02070004
//* OBJETIVO : INICIALIZA PARAMETROS  PARA PUENTE SQL                  *02090004
//*            -- ZM4DHT04 --                                          *02080004
//**********************************************************************02100004
//PHC06P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHT04A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD06,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*                                                  02120004
//SYSPRINT DD SYSOUT=*                                                  02130004
//SYSOUT   DD SYSOUT=*                                                  02140004
//SYSDBOUT DD SYSOUT=*                                                  02150004
//SYSABOUT DD DUMMY                                                     02160004
//SYSUDUMP DD DUMMY                                                     02170004
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC06T02),DISP=SHR                   02180004
//*
//**********************************************************************02080004
//* OBJETIVO : FORMATEO DE REPORTE DE CAPITALES                        *02090004
//* AEO01      -- ZM4DH015 --                                          *02080004
//**********************************************************************02100004
//PHC06P0A EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMH559A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD06,DISP=SHR
//*
//ZMH559R1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZM4ECAPI.ORDENADO.R1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=256,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC06T0A),DISP=SHR                   02180004
//*                                                                     02190004
//**********************************************************************02080004
//* OBJETIVO : SORT DEL REPORTE GENERADO EN EL PASO PHC06P0A           *02090004
//* AEO01                                                              *02080004
//**********************************************************************02100004
//PHC06P0B EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZM4ECAPI.ORDENADO.R1,
//            DISP=SHR
//SORTOUT  DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..ZM4ECAPI.ORDENADO,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=118,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHC06T0B),DISP=SHR
//*
//**********************************************************************02080004
//* OBJETIVO : SORT DEL REPORTE GENERADO EN EL PASO PHC06P0A           *02090004
//* AEO01                                                              *02080004
//**********************************************************************02100004
//*PHC06P0B EXEC PGM=ICEMAN,COND=(4,LT)
//**
//*SORTIN   DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..ZM4ECAPI,DISP=SHR
//**
//*SORTOUT  DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..ZM4ECAPI.ORDENADO,
//*            DISP=(NEW,CATLG,DELETE),
//*            DCB=(LRECL=118,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//**
//**SORTWK01 DD UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//**SORTWK02 DD UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//**SORTWK03 DD UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//**
//*SYSOUT   DD SYSOUT=*
//**
//*SYSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC06T0B),DISP=SHR                    02180004
//**                                                                    02190004
//**********************************************************************
//*  PASO:  1     ARCHIVOS DE CUENTAS DE SOBRANTES                     *
//*  PHE09P01                                                          *
//*                                                         ZM4DHB30   *
//**********************************************************************
//**PHC06P0C EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//**ZMHB30R1 DD DSN=MXCP.ZM.FIX.ARCHIVO.SOBRANT,
//**            DISP=(NEW,CATLG,CATLG),
//*           DCB=(DSORG=PS,RECFM=FBA,LRECL=280,BLKSIZE=0),
//**            DCB=(DSORG=PS,RECFM=FBA,LRECL=289,BLKSIZE=0),
//**            UNIT=3390,
//**            SPACE=(CYL,(4,2),RLSE)
//**SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//**SYSPRINT DD SYSOUT=*
//**SYSOUT   DD SYSOUT=*
//**SYSDBOUT DD SYSOUT=*
//**SYSABOUT DD DUMMY
//**SYSUDUMP DD DUMMY
//**SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHB30T01),DISP=SHR
//*
//*FS-1.1.0-12-INI
//*--------------------------------------------------------------------*
//* PASO       : PHC06P0D.                                             *
//* UTILERIA   : IDCAMS.                                               *
//* OBJETIVO   : CREAR EN VACIO EL ARCHIVO DE ORDENES DE LA BANCA      *
//*              PATRIMONIAL.                                          *
//*--------------------------------------------------------------------*
//PHC06P0D EXEC PGM=IDCAMS,COND=(4,LT)
//*
//SYSPRINT DD SYSOUT=*
//*
//SYSIN    DD DUMMY
//*
//ARCHIVO1 DD DSN=SIVA.MDC.FIX.E&EMP..ORDENES.BP,
//            DCB=(DSORG=PS,RECFM=FBA,LRECL=33,BLKSIZE=0),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,5),RLSE),
//            UNIT=3390
//*
//*FS-1.1.0-12-FIN
//*
//* FS-2.0.0-01-I
//**********************************************************************
//* OBJETIVO : JUNTA LOS RESUMENES DE LOS REPORTES DE VALORES Y LOS    *
//*            ORDENA PARA EMITIR UN SOLO REPORTE DE RESUMENES         *
//* ORDENADO POR: TIPO DE OPERACION (ACUM-CMPRA-VTA), CLAVE DE REPORTE *
//*       (ACUM-CVE-PROG), CONTRATO (ACUM-CONTRATO) Y CLAVE INDIVIDUAL *
//*       (ACUM-CTA-INDEV).                                            *
//**********************************************************************
//PHC06P0E EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.MDC.E&EMP..S&SUC..ZM4DHU50,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.MDC.E&EMP..S&SUC..ZM4DHU51,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.MDC.E&EMP..S&SUC..ZM4DHU52,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.MDC.E&EMP..S&SUC..ZM4DHU53,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.MDC.E&EMP..S&SUC..ZM4DHU54,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.MDC.E&EMP..S&SUC..ZM4DHV34,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.MDC.E&EMP..S&SUC..ZM4DHV95,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.MDC.E&EMP..S&SUC..ZM4DHV97,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.MDC.E&EMP..S&SUC..ZM4DHV98,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.MDC.E&EMP..S&SUC..ZM4DHV01,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.MDC.E&EMP..S&SUC..ZM4DHW78,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.MDC.E&EMP..S&SUC..ZM4DHW77,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.MDC.E&EMP..S&SUC..ZM4DHW76,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.MDC.E&EMP..S&SUC..ZM4DHW75,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.MDC.E&EMP..S&SUC..ZM4DHW74,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.MDC.E&EMP..S&SUC..ZM4DHV99,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.MDC.E&EMP..S&SUC..RESUMACU,
//            DISP=(NEW,CATLG,DELETE),
//*ISR-2013-INI
//*           DCB=(LRECL=125,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            DCB=(LRECL=181,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*ISR-2013-FIN
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//*
//*SORTWK01 DD UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*SORTWK02 DD UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*SORTWK03 DD UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC06T22),DISP=SHR
//*
//**********************************************************************
//* OBJETIVO : GENERA REPORTE DE ACUMULADO DE RESUMENES DE LOS REPORTES*
//*            DE VALORES (11 REPORTES)                                *
//*            -- ZM4DHT10 --                                          *
//**********************************************************************
//PHC06P0F EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM4DHTA1 DD DSN=MXCP.ZM.FIX.MDC.E&EMP..S&SUC..RESUMACU,DISP=SHR
//*
//ZM4DHTR1 DD DSN=MXCP.ZM.FIX.MDC.E&EMP..S&SUC..ZM4DHT10,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=133,RECFM=FBA,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC06T23),DISP=SHR
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        COPIA EL ARCHIVO HACIA EL SISTEMA DE CTL-D                  *
//**********************************************************************
//PHC06P0G EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.MDC.E&EMP..S&SUC..ZM4DHT10,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*    TERMINA ZMHCPD06
//**********************************************************************
//* FS-2.0.0-01-F
