//ZMHCPD14  PROC
//**********************************************************************
//*                                                                    *
//*                   C A S A   D E  B O L S A                         *
//*                   ========================                         *
//*                   <<  MERCADO DE CAPITALES >>                      *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  ZMHCPD14 2DA. PARTE DEL CIERRE DE MERCADO        *
//*                   DE CAPITALES DE BANCA PATRIMONIAL.               *
//*                                                                    *
//* OBJETIVO       :  CERRAR LA OPERACION DEL DIA DE CAPITALES ENVIADO *
//*                   POR CONTROL-M.                                   *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  ZMHCPD15 (CIERRE DE CAPITALES 3RA. ULTIMA PARTE).*
//*                                                                    *
//* DESPUES DE     :  ZMHCPD13 (CIERRE DE CAPITALES 1RA. PARTE).       *
//*                                                                    *
//* PERIODICIDAD   :  DIARIO.                                          *
//*                                                                    *
//* ELABORADO POR  : ERNESTO MANUEL CUAUTLE MARTINEZ.                  *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*FECHA    : 20 DE DICIEMBRE  DE 2005.                                *
//*MODIFICO : ERNESTO MANUEL CUAUTLE MARTINEZ.                         *
//*                                                                    *
//*OBJETIVO : SE ADICIONA PASO PARA EL PROCESO DEL PROGRAMA ZM4DHW68.  *
//*--------------------------------------------------------------------*
//*FECHA    : 11 DE JUNIO DE 2009.                                     *
//*MODIFICO : AZERTIA (YDD).                                           *
//*                                                                    *
//*OBJETIVO : SE AGREGA PASO PHC14P08 CLON DEL PHC14P07 CAMBIANDO      *
//*           LA LOGICA EN LOS CORTES DEL PROGAMA, ESTA POR            *
//*           EMISORA-CUENTA EN VEZ DE CUENTA-EMISORA.                 *
//*            'SIVA.MDC.FIX.E&EMP..ZMHCPD14.OP.REA.BOL2'              *
//*--------------------------------------------------------------------*
//*FECHA    : 09 ENE 2023.                                             *
//*MODIFICO : INDRA MF. @SRA                                           *
//*OBJETIVO : SE AGREGA SALIDA DE REPORTE TXT. PASO:PHC14P07           *
//*                                            PASO:PHC14P0B           *
//*                                                                    *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//**********************************************************************
//*                                                                    *
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*
//*  PHC14P09     GRABA EN UN ARCHIVO SECUENCIAL.                      *
//*                                                         ZM3DH001   *
//**********************************************************************
//*                     ===   INICIO DE     ===                        *
//*                     ===   CAPITALES     ===                        *
//**********************************************************************
//PHC14P09 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765  DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD14,
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
//* OBJETIVO : REPORTE DE OPERACIONES DE CAPITALES DE CLIENTES BP.     *
//*            CLON DEL PASO PHC14P07, SE CAMBIA LA LOGICA EN LOS      *
//*            CORTES DEL PROGAMA, SE HACE POR EMISORA-CUENTA EN       *
//*            LUGAR DE CUENTA-EMISORA.                                *
//*            -- ZM4DHW69 --                                          *
//**********************************************************************
//PHC14P08 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMHW69A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD14,DISP=SHR
//*
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*ZMHW69R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZMHW69R1 DD DSN=MXCP.ZM.FIX.ZMHCPD14.REPORTE1,
//*        DISP=(NEW,CATLG,DELETE),
//*        DCB=(LRECL=176,BLKSIZE=0,RECFM=FB,DSORG=PS),
//*        UNIT=3390,
//*        SPACE=(CYL,(4,2),RLSE)
//*
//ZMHW69R1 DD DUMMY
//*
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*
//ZMHW69A2 DD DSN=SIVA.MDC.FIX.E&EMP..ZMHCPD14.OP.REA.BOLA,
//        DISP=(NEW,CATLG,DELETE),
//        DCB=(LRECL=176,BLKSIZE=0,RECFM=FB,DSORG=PS),
//        UNIT=3390,
//        SPACE=(CYL,(4,2),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC14T07),DISP=SHR
//*
//**********************************************************************
//* OBJETIVO : REPORTE DE OPERACIONES DE CAPITALES DE CLIENTES BP.     *
//*            -- ZM4DHW70 --                                          *
//**********************************************************************
//PHC14P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMHW70A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD14,DISP=SHR
//*
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*ZMHW70R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZMHW70R1 DD DSN=MXCP.ZM.FIX.ZMHCPD14.REPORTE2,
//*        DISP=(NEW,CATLG,DELETE),
//*        DCB=(LRECL=176,BLKSIZE=0,RECFM=FB,DSORG=PS),
//*        UNIT=3390,
//*        SPACE=(CYL,(4,2),RLSE)
//*
//ZMHW70R1 DD DUMMY
//*
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*
//ZMHW70A2 DD DSN=SIVA.MDC.FIX.E&EMP..ZMHCPD14.OP.REA.BOB,
//        DISP=(NEW,CATLG,DELETE),
//        DCB=(LRECL=176,BLKSIZE=0,RECFM=FB,DSORG=PS),
//        UNIT=3390,
//        SPACE=(CYL,(4,2),RLSE)
//*@SRA
//ZMHW70TX DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*ZMHW68R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC14T06),DISP=SHR
//*
//**********************************************************************
//* OBJETIVO : REPORTE DE SOLICITUDES DE CANC. PARCIALES.              *
//*            -- ZM4DHW68 --                                          *
//**********************************************************************
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*PHC14P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//*PI601765  DD DUMMY
//**
//*ZMHW68A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD14,DISP=SHR
//**
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*ZMHW68R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC14T05),DISP=SHR
//**
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//**********************************************************************
//*    CREA EL ARCHIVO LOG DE MOVIMIENTOS (IEFBR14)                    *
//**********************************************************************
//PHC14P05 EXEC PGM=IEFBR14,COND=(4,LT)
//PI601765  DD DUMMY
//ARCHIVO   DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD14.LOG,
//             DISP=(NEW,CATLG,DELETE),
//             DCB=(LRECL=80,RECFM=FB,BLKSIZE=0,DSORG=PS),
//             UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//**********************************************************************
//* OBJETIVO : ACTUALIZA CARTERA Y GENERA SIVA DE LA ASIGNACION        *
//*            DEFINITIVA MODIFICACION A FOLCTROL                      *
//*            -- ZM4DH514 --                                          *
//**********************************************************************
//PHC14P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMH514A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD14,DISP=SHR
//*
//ZMH514L1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD14.LOG,
//            DISP=MOD
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*ZMH514R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZMH514R1 DD DSN=MXCP.ZM.FIX.ZMHCPD14.REPORTE3,
//*        DISP=(NEW,CATLG,DELETE),
//*        DCB=(LRECL=132,BLKSIZE=0,RECFM=FB,DSORG=PS),
//*        UNIT=3390,
//*        SPACE=(CYL,(4,2),RLSE)
//*
//ZMH514R1 DD DUMMY
//*
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC14T04),DISP=SHR
//*
//**********************************************************************
//* OBJETIVO : REPORTE DE VENTAS CON CARGO DE ISR.                     *
//*            -- ZM4DHB72 --                                          *
//**********************************************************************
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*PHC14P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*PI601765  DD DUMMY
//**
//*ZMHB72A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD14,DISP=SHR
//**
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*ZMHB72R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC14T03),DISP=SHR
//**
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//**********************************************************************
//* OBJETIVO : REPORTE COMPRAS/VENTAS MISMO DIA MISMA EMISORA          *
//*            -- ZM4DH467 --                                          *
//**********************************************************************
//*
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*PHC14P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*PI601765  DD DUMMY
//**
//*ZMH467A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD14,DISP=SHR
//**
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*ZMH467R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC14T02),DISP=SHR
//**
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//**********************************************************************
//* OBJETIVO: REPORTAR OPERACIONES DE EMISORAS DEL GFP                 *
//*           -- ZM4DHT01 --                                           *
//**********************************************************************
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*PHC14P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*PI601765  DD DUMMY
//**
//*ZMHT01A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD14,DISP=SHR
//**
//*SYSTSPRT DD SYSOUT=*
//*ZMHT01R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC14T01),DISP=SHR
//**
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//**********************************************************************
//* OBJETIVO : REPORTE DE OPERACIONES DE CAPITALES DE CLIENTES BP.     *
//*            CLON DEL PASO PHC14P07, SE CAMBIA LA LOGICA EN LOS      *
//*            CORTES DEL PROGAMA, SE HACE POR EMISORA-CUENTA EN       *
//*            LUGAR DE CUENTA-EMISORA.                                *
//*            -- ZM4DHW69 --                                          *
//**********************************************************************
//PHC14P0A EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMHW69A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD14,DISP=SHR
//*
//ZMHW69R1 DD SYSOUT=*
//*
//ZMHW69A2 DD DSN=SIVA.MDC.FIX.E&EMP..ZMHCPD14.OP.REA.BOL2,
//        DISP=(NEW,CATLG,DELETE),
//        DCB=(LRECL=176,BLKSIZE=0,RECFM=FB,DSORG=PS),
//        UNIT=3390,
//        SPACE=(CYL,(4,2),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC14T07),DISP=SHR
//*
//**********************************************************************
//* OBJETIVO : REPORTE DE OPERACIONES DE CAPITALES DE CLIENTES BP.     *
//*            -- ZM4DHW70 --                                          *
//**********************************************************************
//PHC14P0B EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMHW70A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD14,DISP=SHR
//*
//ZMHW70R1 DD SYSOUT=*
//*
//ZMHW70A2 DD DSN=SIVA.MDC.FIX.E&EMP..ZMHCPD14.OP.REA.BOL,
//        DISP=(NEW,CATLG,DELETE),
//        DCB=(LRECL=176,BLKSIZE=0,RECFM=FB,DSORG=PS),
//        UNIT=3390,
//        SPACE=(CYL,(4,2),RLSE)
//*@SRA
//ZMHW70TX DD DSN=SIVA.MDC.FIX.E&EMP..ZMHCPD14.OP.REA.BTX,
//        DISP=(NEW,CATLG,DELETE),
//        DCB=(LRECL=300,BLKSIZE=0,RECFM=FB,DSORG=PS),
//        UNIT=3390,
//        SPACE=(CYL,(4,2),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//ZMHW68R1 DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC14T06),DISP=SHR
//*
