//ZMHCPD04  PROC                                                        00010025
//**********************************************************************00020000
//*                                                                    *00030000
//*                   C A S A   D E  B O L S A                         *00031000
//*                   ========================                         *00032000
//*                   <<  C A P I T A L E S  >>                        *00033000
//*                                                                    *00120000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00130000
//*                                                                    *00140000
//* PROCESO        :  ZMHCPD04 1RA. PARTE DE 3.                        *00150025
//*                   CIERRE DE DIA DEL MODULO DE CAPITALES            *00160000
//*                                                                    *00170000
//* OBJETIVO       :  CERRAR LA OPERACION DEL DIA DE CAPITALES ENVIADO *00180000
//*                   POR CONTROL-M                                    *00190000
//*                                                                    *00200000
//* CORRE                                                              *00210000
//* ANTES DE       :  ZMHCPD05 2A.  PARTE DE CIERRE DE CAPITALES       *00220025
//*                                                                    *00230000
//* DESPUES DE     :  CBHCND01 (CIERRE DE CAPITALES RESPALDOS).        *00240000
//*                                                                    *00250000
//* PERIODICIDAD   :  DIARIO                                           *00260000
//*                                                                    *00270000
//* ELABORADO POR  :  ERNESTO MANUEL CUAUTLE MARTINEZ                  *00280000
//*                                                                    *00290000
//*                                                                    *00310000
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA EN FORMA DIARIA    *00320000
//*                   SIEMPRE ANTES DE LA 2DA. PARTE DEL CIERRE        *00330000
//*                   ZMHCPD05.                                        *00340025
//**********************************************************************00481000
//*                      LOG DE MODIFICACIONES                         *00482000
//**********************************************************************00483000
//*                                                                    *
//* OBJETIVO : SE ADICIONA DEL PASO PHC04P25 AL PASO PHC04P28.         *
//* FECHA    : 30 DE SEPTIEMBRE DE 2005.                               *
//* REALIZO  : ERNESTO MANUEL CUAUTLE MARTINEZ.                        *
//*                                                                    *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-1.1.0-02 CAPGEMINI 28MAY15 SE AGREGA UN NUEVO PASO.             *
//*--------------------------------------------------------------------*
//**********************************************************************00487000
//*                                                                    *00488000
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*00489000
//*  PHC04P29     GRABA EN UN ARCHIVO SECUENCIAL.                      *00489127
//**********************************************************************00489300
//*                     ====  INICIO DE    ====                        *00489400
//*                     ====  CAPITALES    ====                        *00489500
//**********************************************************************00489600
//PHC04P29 EXEC PGM=ZM3DG001,                                           00489727
//         PARM=('&EMP','&SUC','CBPZPR','     ',)                       00489847
//*                                                                     00490000
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD04,               00491038
//            DISP=(NEW,CATLG,DELETE),                                  00492000
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00493000
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)                          00494042
//*                                                                     00496000
//SYSTSPRT DD SYSOUT=*                                                  00497035
//SYSPRINT DD SYSOUT=*                                                  00498035
//SYSOUT   DD SYSOUT=*                                                  00499035
//SYSDBOUT DD SYSOUT=*                                                  00499135
//SYSABOUT DD DUMMY                                                     00499200
//SYSUDUMP DD DUMMY                                                     00499300
//*                                                                     00499400
//**********************************************************************00500000
//* OBJETIVO : ARCHIVO HORARIO DE ENVÍO Y RECEPCIÓN DE POSTURAS.       *00520000
//*          -- ZM4DHW99 --                                            *00530001
//**********************************************************************00550040
//*PHC04P28 EXEC PGM=IKJEFT01,COND=(4,LT)                               00551027
//**                                                                    00553001
//*ZMHW99A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD04,DISP=SHR      00554038
//**                                                                    00555001
//*ZMHW99A2 DD DSN=SIVA.MDC.FIX.E&EMP..RECEP.POSTURA.D&FECHA,           00571035
//*         DISP=(NEW,CATLG,DELETE),                                    00555001
//*         DCB=(LRECL=133,RECFM=FB,BLKSIZE=0,DSORG=PS),                00555001
//*         UNIT=3390,SPACE=(CYL,(4,2),RLSE)                            00555001
//**                                                                    00555001
//*SYSTSPRT DD SYSOUT=*                                                 00590035
//*SYSPRINT DD SYSOUT=*                                                 00600035
//*SYSOUT   DD SYSOUT=*                                                 00610035
//*SYSDBOUT DD SYSOUT=*                                                 00620035
//*SYSABOUT DD DUMMY                                                    00630000
//*SYSUDUMP DD DUMMY                                                    00640000
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC04T29),DISP=SHR                  00651041
//**
//**********************************************************************00500000
//* OBJETIVO : ARCHIVO DE POSTURAS MODIFICADAS POR VOLUMEN.            *00520000
//*          -- ZM4DHW91 --                                            *00530001
//**********************************************************************00550040
//*PHC04P27 EXEC PGM=IKJEFT01,COND=(4,LT)                               00551027
//**                                                                    00553001
//*ZMHW91A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD04,DISP=SHR      00554038
//**                                                                    00555001
//*ZMHW91A2 DD DSN=SIVA.MDC.FIX.E&EMP..POST.MOD.VOLU.D&FECHA,           00571035
//*         DISP=(NEW,CATLG,DELETE),                                    00555001
//*         DCB=(LRECL=133,RECFM=FB,BLKSIZE=0,DSORG=PS),                00555001
//*         UNIT=3390,SPACE=(CYL,(4,2),RLSE)                            00555001
//**                                                                    00555001
//*SYSTSPRT DD SYSOUT=*                                                 00590035
//*SYSPRINT DD SYSOUT=*                                                 00600035
//*SYSOUT   DD SYSOUT=*                                                 00610035
//*SYSDBOUT DD SYSOUT=*                                                 00620035
//*SYSABOUT DD DUMMY                                                    00630000
//*SYSUDUMP DD DUMMY                                                    00640000
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC04T28),DISP=SHR                  00651041
//**
//**********************************************************************00500000
//* OBJETIVO : ARCHIVO DE POSTURAS MODIFICADAS PARA MEJORAR PRECIO     *00520000
//*          -- ZM4DHW92 --                                            *00530001
//**********************************************************************00550040
//*PHC04P26 EXEC PGM=IKJEFT01,COND=(4,LT)                               00551027
//**                                                                    00553001
//*ZMHW92A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD04,DISP=SHR      00554038
//**                                                                    00555001
//*ZMHW92A2 DD DSN=SIVA.MDC.FIX.E&EMP..POST.MEJORA.PREC.D&FECHA,        00571035
//*         DISP=(NEW,CATLG,DELETE),                                    00555001
//*         DCB=(LRECL=133,RECFM=FB,BLKSIZE=0,DSORG=PS),                00555001
//*         UNIT=3390,SPACE=(CYL,(4,2),RLSE)                            00555001
//**                                                                    00555001
//*SYSTSPRT DD SYSOUT=*                                                 00590035
//*SYSPRINT DD SYSOUT=*                                                 00600035
//*SYSOUT   DD SYSOUT=*                                                 00610035
//*SYSDBOUT DD SYSOUT=*                                                 00620035
//*SYSABOUT DD DUMMY                                                    00630000
//*SYSUDUMP DD DUMMY                                                    00640000
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC04T27),DISP=SHR                  00651041
//**
//**********************************************************************00500000
//* OBJETIVO : ARCHIVO DE SOLICITUD DE ORDENES                         *00520000
//*          -- ZM4DHW97 --                                            *00530001
//**********************************************************************00550040
//*PHC04P25 EXEC PGM=IKJEFT01,COND=(4,LT)                               00551027
//**                                                                    00553001
//*ZMHU97A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD04,DISP=SHR      00554038
//**                                                                    00555001
//*ZMHU97A2 DD DSN=SIVA.MDC.FIX.E&EMP..ORDENES.D&FECHA,                 00571035
//*         DISP=(NEW,CATLG,DELETE),                                    00555001
//*         DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS),                00555001
//*         UNIT=3390,SPACE=(CYL,(4,2),RLSE)                            00555001
//**                                                                    00555001
//*SYSTSPRT DD SYSOUT=*                                                 00590035
//*SYSPRINT DD SYSOUT=*                                                 00600035
//*SYSOUT   DD SYSOUT=*                                                 00610035
//*SYSDBOUT DD SYSOUT=*                                                 00620035
//*SYSABOUT DD DUMMY                                                    00630000
//*SYSUDUMP DD DUMMY                                                    00640000
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC04T26),DISP=SHR                  00651041
//**
//**********************************************************************01931040
//**********************************************************************01941040
//* OBJETIVO : OBTENER LOS LISTADOS DE LA OPERACION DEL DIA,           *01970000
//*            DEL SISTEMA DE ARBITRAJE INTERNACIONAL.                 *01980000
//*          -- ZM4DHU27 --                                            *01950050
//**********************************************************************02040040
//*PHC04P24 EXEC PGM=IKJEFT01,COND=(4,LT)                               02041027
//**                                                                    02043001
//*ZMHU27P1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD04,DISP=SHR      02044038
//**                                                                    02045001
//*ZMHU27R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    02100038
//*ZMHU27R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    02110038
//*ZMHU27R3 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    02120038
//*ZMHU27T1 DD DSN=ZIVA.ZME.CONTROL(ZHC04T25),DISP=SHR                  02141041
//*ZMHU27A1 DD DSN=SIVA.MDC.FIX.E&EMP..VIBU27A1,                        02151038
//*            DISP=(NEW,CATLG,DELETE),                                 02160043
//*            DCB=(LRECL=132,BLKSIZE=0,RECFM=FBA,DSORG=PS),            02170043
//*            UNIT=3390,                                               02180043
//*            SPACE=(CYL,(4,2),RLSE)                                   02190043
//*ZMHU27A2 DD DSN=SIVA.MDC.FIX.E&EMP..VIBU27A2,                        02201038
//*            DISP=(NEW,CATLG,DELETE),                                 02210043
//*            DCB=(LRECL=289,BLKSIZE=0,RECFM=FB,DSORG=PS),             02220043
//*            UNIT=3390,                                               02230043
//*            SPACE=(CYL,(4,2),RLSE)                                   02240043
//*SYSTSPRT DD SYSOUT=*                                                 02250038
//*SYSPRINT DD SYSOUT=*                                                 02260038
//*SYSOUT   DD SYSOUT=*                                                 02270038
//*SYSDBOUT DD SYSOUT=*                                                 02280038
//*SYSABOUT DD DUMMY                                                    02290000
//*SYSUDUMP DD DUMMY                                                    02300000
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC04T24),DISP=SHR                  02310041
//*
//**********************************************************************01941040
//* OBJETIVO : OBTENER LOS LISTADOS DE LA OPERACION DEL DIA,           *01970000
//*            HECHOS POR ASIGNAR Y LAS ASIGNACIONES A LA              *01980000
//*            CUENTA DE LA CASA DEL SISTEMA INTERNACIONAL DE          *01980000
//*            COTIZACIONES.                                           *01980000
//*          -- ZM4DHU26 --                                            *01950050
//**********************************************************************02040040
//*PHC04P23 EXEC PGM=IKJEFT01,COND=(4,LT)                               02041027
//**                                                                    02043001
//*ZMHU26P1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD04,DISP=SHR      02044038
//**                                                                    02045001
//*ZMHU26R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    02100038
//*ZMHU26R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    02110038
//*ZMHU26R3 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    02120038
//*ZMHU26T1 DD DSN=ZIVA.ZME.CONTROL(ZHC04T25),DISP=SHR                  02141041
//*ZMHU26A1 DD DSN=SIVA.MDC.FIX.E&EMP..VIBU26A1,                        02151038
//*            DISP=(NEW,CATLG,DELETE),                                 02160043
//*            DCB=(LRECL=132,BLKSIZE=0,RECFM=FBA,DSORG=PS),            02170043
//*            UNIT=3390,                                               02180043
//*            SPACE=(CYL,(4,2),RLSE)                                   02190043
//*ZMHU26A2 DD DSN=SIVA.MDC.FIX.E&EMP..VIBU26A2,                        02201038
//*            DISP=(NEW,CATLG,DELETE),                                 02210043
//*            DCB=(LRECL=289,BLKSIZE=0,RECFM=FB,DSORG=PS),             02220043
//*            UNIT=3390,                                               02230043
//*            SPACE=(CYL,(4,2),RLSE)                                   02240043
//*SYSTSPRT DD SYSOUT=*                                                 02250038
//*SYSPRINT DD SYSOUT=*                                                 02260038
//*SYSOUT   DD SYSOUT=*                                                 02270038
//*SYSDBOUT DD SYSOUT=*                                                 02280038
//*SYSABOUT DD DUMMY                                                    02290000
//*SYSUDUMP DD DUMMY                                                    02300000
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC04T23),DISP=SHR                  02310041
//*
//**********************************************************************
//* OBJETIVO : POSTURAS MODIFICADAS POR CAMBIO DE PRECIO.              *
//*            -- ZM4DHW33 --                                          *
//**********************************************************************
//*PHC04P22 EXEC PGM=IKJEFT01,COND=(4,LT)
//**
//*ZMHW33A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD04,DISP=SHR
//**
//*ZMHW33R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//**
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC04T22),DISP=SHR
//*
//**********************************************************************
//* OBJETIVO : POSTURAS MODIFICADAS POR CAMBIO DE VOLUMEN.             *
//*            -- ZM4DHW23 --                                          *
//**********************************************************************
//*PHC04P21 EXEC PGM=IKJEFT01,COND=(4,LT)
//**
//*ZMHW23A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD04,DISP=SHR
//**
//*ZMHW23R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//**
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC04T21),DISP=SHR
//**
//**********************************************************************
//* OBJETIVO : GENERAR EL REPORTE DE HORARIO DE ENVIO                  *
//*            Y RECEPCION DE POSTURAS DE CAPITALES.                   *
//*            -- ZM4DHW22 --                                          *
//**********************************************************************
//*PHC04P20 EXEC PGM=IKJEFT01,COND=(4,LT)
//**
//*ZMHW22A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD04,DISP=SHR
//**
//*ZMHW22R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//**
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC04T20),DISP=SHR
//*
//**********************************************************************00661000
//* OBJETIVO : REPORTE DE PAQUETES DEL DIA (CONTROL INTERNO)           *00664000
//*          -- ZM4DHU69 --                                            *00662001
//**********************************************************************00667040
//*PHC04P19 EXEC PGM=IKJEFT01,COND=(4,LT)                               00667127
//**                                                                    00667301
//*ZMHU69A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD04,DISP=SHR      00667438
//**                                                                    00667501
//*ZMHU69R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    00669135
//**
//*ZMHU69A2 DD DSN=SIVA.MDC.FIX.E&EMP..ZMHCPD04.ORDEN.GLO,
//*            DISP=(NEW,CATLG,DELETE),
//*            DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//**
//*SORTWK01 DD UNIT=3390,SPACE=(CYL,(4,2),RLSE)                         00669201
//*SYSTSPRT DD SYSOUT=*                                                 00669335
//*SYSPRINT DD SYSOUT=*                                                 00669435
//*SYSOUT   DD SYSOUT=*                                                 00669535
//*SYSDBOUT DD SYSOUT=*                                                 00669635
//*SYSABOUT DD DUMMY                                                    00669701
//*SYSUDUMP DD DUMMY                                                    00669801
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC04T19),DISP=SHR                  00669941
//*
//**********************************************************************00670101
//* OBJETIVO : REPORTE DE ORDENES GLOBALES                             *00670401
//*          -- ZM4DHU83 --                                            *00670340
//**********************************************************************00670840
//*PHC04P18 EXEC PGM=IKJEFT01,COND=(4,LT)                               00670927
//**                                                                    00671101
//*ZMHU83A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD04,DISP=SHR      00671238
//**                                                                    00671301
//*ZMHU83R1 DD SYSOUT=*                                                 00671640
//*SORTWK01 DD UNIT=3390,SPACE=(CYL,(4,2),RLSE)                         00671701
//*SYSTSPRT DD SYSOUT=*                                                 00671835
//*SYSPRINT DD SYSOUT=*                                                 00671935
//*SYSOUT   DD SYSOUT=*                                                 00672035
//*SYSDBOUT DD SYSOUT=*                                                 00672135
//*SYSABOUT DD DUMMY                                                    00672201
//*SYSUDUMP DD DUMMY                                                    00672301
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC04T18),DISP=SHR                  00672441
//*
//**********************************************************************00672701
//* OBJETIVO : GENERA REPORTE DE ORDENES GLOBALES X HORA.              *00680000
//*          -- ZM4DHW40 --                                            *00680000
//**********************************************************************00710040
//*PHC04P17 EXEC PGM=IKJEFT01,COND=(4,LT)                               00721046
//**                                                                    00725001
//*ZM4DHWA1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD04,DISP=SHR
//**
//*ZM4DHWR1 DD SYSOUT=*
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC04T17),DISP=SHR                  01090041
//*
//**********************************************************************01100040
//* OBJETIVO : REGISTRA ORDENES CMD/VMD                                *01130000
//*          -- ZM4DHV19 --                                            *01110001
//**********************************************************************01150000
//PHC04P16 EXEC PGM=IKJEFT01,COND=(4,LT)                                01151027
//*                                                                     01153001
//ZMHV19A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD04,DISP=SHR       01154038
//*                                                                     01155001
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC04T16),DISP=SHR                   01230041
//*
//**********************************************************************01240000
//* OBJETIVO : REPORTE DE PAQUETES DEL DIA (CONTROL INTERNO)           *01270000
//*          -- ZM4DH568 --                                            *01250001
//**********************************************************************01340040
//*PHC04P15 EXEC PGM=IKJEFT01,COND=(4,LT)                               01341027
//**                                                                    01343001
//*ZMH568A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD04,DISP=SHR      01344038
//**                                                                    01345001
//*ZMH568R1 DD SYSOUT=*                                                 01381040
//*ZMH568RX DD SYSOUT=*                                                 01390040
//*SORTWK01 DD UNIT=3390,SPACE=(CYL,(4,2),RLSE)                         01400000
//*SYSTSPRT DD SYSOUT=*                                                 01410038
//*SYSPRINT DD SYSOUT=*                                                 01420038
//*SYSOUT   DD SYSOUT=*                                                 01430038
//*SYSDBOUT DD SYSOUT=*                                                 01440038
//*SYSABOUT DD DUMMY                                                    01450000
//*SYSUDUMP DD DUMMY                                                    01460000
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC04T15),DISP=SHR                  01470041
//*
//**********************************************************************01480000
//* OBJETIVO : REPORTE DE PAQUETES NO DISTRIBUIDOS (AUDITORIA)         *01510000
//*          -- ZM4DH498 --                                            *01490001
//**********************************************************************01580040
//*PHC04P14 EXEC PGM=IKJEFT01,COND=(4,LT)                               01581027
//**                                                                    01583001
//*ZMH498A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD04,DISP=SHR      01584038
//**                                                                    01585001
//*ZMH498R1 DD SYSOUT=*                                                 01611038
//*ZMH498T1 DD DSN=MXCP.ZM.TMP.MDC.ZM4DH498,                            01621001
//*            DISP=(NEW,CATLG,DELETE),                                 01630043
//*            DCB=(DSORG=PS,RECFM=FB,LRECL=158,BLKSIZE=0),             01640043
//*            UNIT=3390,                                               01650043
//*            SPACE=(CYL,(4,2),RLSE)                                   01660043
//*SORTWK01 DD UNIT=3390,SPACE=(CYL,(4,2),RLSE)                         01670000
//*SYSTSPRT DD SYSOUT=*                                                 01680036
//*SYSPRINT DD SYSOUT=*                                                 01690036
//*SYSOUT   DD SYSOUT=*                                                 01700036
//*SYSDBOUT DD SYSOUT=*                                                 01710036
//*SYSABOUT DD DUMMY                                                    01720000
//*SYSUDUMP DD DUMMY                                                    01730000
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC04T14),DISP=SHR                  01740041
//**
//**********************************************************************01750040
//* OBJETIVO : EFECTUA LA ASIGNACION DEFINITIVA A LA CUENTA DE LA CASA *01780000
//*            LOS HECHOS QUE NO PUDIERON SER ASIGNADOS AL CLIENTE.    *01790000
//*          -- ZM4DH444 --                                            *01760001
//**********************************************************************01850000
//PHC04P13 EXEC PGM=IKJEFT01,COND=(4,LT)                                01851027
//*                                                                     01853001
//ZMH444A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD04,DISP=SHR       01854038
//*                                                                     01855001
//SYSTSPRT DD SYSOUT=*                                                  01870036
//SYSPRINT DD SYSOUT=*                                                  01880036
//SYSOUT   DD SYSOUT=*                                                  01890036
//SYSDBOUT DD SYSOUT=*                                                  01900036
//SYSABOUT DD DUMMY                                                     01910000
//SYSUDUMP DD DUMMY                                                     01920000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC04T13),DISP=SHR                   01930041
//*
//**********************************************************************00500000
//* OBJETIVO : REPORTE DE SOLICITUD DE ORDENES                         *00520000
//*          -- ZM4DHU81 --                                            *00530001
//**********************************************************************00550040
//*PHC04P12 EXEC PGM=IKJEFT01,COND=(4,LT)                               00551027
//**                                                                    00553001
//*ZMHU81A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD04,DISP=SHR      00554038
//**                                                                    00555001
//*ZMHU81R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    00571035
//**
//*ZMHU81A2 DD DSN=SIVA.MDC.FIX.E&EMP..ZMHCPD04.ORDEN.SOL,
//*            DISP=(NEW,CATLG,DELETE),
//*            DCB=(LRECL=133,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//**
//*SORTWK01 DD UNIT=3390,SPACE=(CYL,(4,2),RLSE)                         00580000
//*SYSTSPRT DD SYSOUT=*                                                 00590035
//*SYSPRINT DD SYSOUT=*                                                 00600035
//*SYSOUT   DD SYSOUT=*                                                 00610035
//*SYSDBOUT DD SYSOUT=*                                                 00620035
//*SYSABOUT DD DUMMY                                                    00630000
//*SYSUDUMP DD DUMMY                                                    00640000
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC04T12),DISP=SHR                  00651041
//*
//**********************************************************************01931040
//* OBJETIVO : OBTENER LOS LISTADOS DE LA OPERACION DEL DIA            *01933000
//*            DE ORDENES DE POSICION PROPIA                           *01934000
//*          -- ZM4DHU80 --                                            *01935001
//**********************************************************************01937040
//*PHC04P11 EXEC PGM=IKJEFT01,COND=(4,LT)                               01937127
//**                                                                    01937301
//*ZMHU80A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD04,DISP=SHR      01937438
//**                                                                    01937501
//*ZMHU80R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    01939038
//*ZMHU80T1 DD DSN=ZIVA.ZME.CONTROL(ZHC04T25),DISP=SHR                  01939341
//*SYSTSPRT DD SYSOUT=*                                                 01939438
//*SYSPRINT DD SYSOUT=*                                                 01939538
//*SYSOUT   DD SYSOUT=*                                                 01939638
//*SYSDBOUT DD SYSOUT=*                                                 01939738
//*SYSABOUT DD DUMMY                                                    01939801
//*SYSUDUMP DD DUMMY                                                    01939901
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC04T11),DISP=SHR                  01940041
//*
//**********************************************************************
//* OBJETIVO : GENERAR EL REPORTE DE HORARIO DE ENVIO                  *
//*            Y RECEPCION DE POSTURAS DE CAPITALES.                   *
//*            -- ZM4DHW29 --                                          *
//**********************************************************************
//*PHC04P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//**
//*ZMHW29A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD04,DISP=SHR
//**
//*ZMHW29R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//**
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC04T10),DISP=SHR
//*
//**********************************************************************02311040
//* OBJETIVO : REPORTE DE LA OPERACION DEL DIA,HECHOS POR ASIGNAR,     *02314000
//*            ASIGNACIONES A LA CUENTA DE LA CASA.                    *02315000
//*            -- ZM4DHU85 --                                          *02312003
//**********************************************************************02319240
//*PHC04P09 EXEC PGM=IKJEFT01,COND=(4,LT)                               02319327
//**                                                                    02319503
//*ZMHU85P1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD04,DISP=SHR      02319638
//**                                                                    02319703
//*ZMHU85R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    02320738
//*ZMHU85R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    02320838
//*ZMHU85R3 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    02320938
//*ZMHU85T1 DD DSN=ZIVA.ZME.CONTROL(ZHC04T25),DISP=SHR                  02321241
//*ZMHU85A1 DD DSN=SIVA.MDC.FIX.E&EMP..VIBU85A1,                        02321438
//*            DISP=(NEW,CATLG,DELETE),                                 02321543
//*            DCB=(LRECL=132,BLKSIZE=0,RECFM=FBA,DSORG=PS),            02321643
//*            UNIT=3390,                                               02321743
//*            SPACE=(CYL,(4,2),RLSE)                                   02321843
//*ZMHU85A2 DD DSN=SIVA.MDC.FIX.E&EMP..ASIG.EMIS.D&FECHA,               02322038
//*            DISP=(NEW,CATLG,DELETE),                                 02322143
//*            DCB=(LRECL=170,BLKSIZE=0,RECFM=FB,DSORG=PS),             02322243
//*            UNIT=3390,                                               02322343
//*            SPACE=(CYL,(4,2),RLSE)                                   02322443
//*
//*ZMHU85A3 DD DSN=SIVA.MDC.FIX.E&EMP..ZMHCPD04.ASIG.EMI,
//*            DISP=(NEW,CATLG,DELETE),
//*            DCB=(LRECL=132,BLKSIZE=0,RECFM=FB,DSORG=PS),
//*            UNIT=3390,
//*            SPACE=(CYL,(4,2),RLSE)
//**
//*ZMHU85A4 DD DSN=SIVA.MDC.FIX.E&EMP..ZMHCPD04.SOBRA,
//*            DISP=(NEW,CATLG,DELETE),
//*            DCB=(LRECL=132,BLKSIZE=0,RECFM=FB,DSORG=PS),
//*            UNIT=3390,
//*            SPACE=(CYL,(4,2),RLSE)
//**
//*SYSTSPRT DD SYSOUT=*                                                 02322538
//*SYSPRINT DD SYSOUT=*                                                 02322638
//*SYSOUT   DD SYSOUT=*                                                 02322738
//*SYSDBOUT DD SYSOUT=*                                                 02322838
//*SYSABOUT DD DUMMY                                                    02322903
//*SYSUDUMP DD DUMMY                                                    02323003
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC04T09),DISP=SHR                  02323141
//*
//**********************************************************************02324040
//* OBJETIVO : REPORTE DE LA OPERACION DEL DIA,                        *02350000
//*            ASIGNACIONES A LA CUENTA DE LA CASA.((VALORES SIC))     *02360000
//*            -- ZM4DH530 --                                          *02330003
//**********************************************************************02420038
//*PHC04P08 EXEC PGM=IKJEFT01,COND=(4,LT)                               02421027
//**                                                                    02423004
//*ZMH530A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD04,DISP=SHR      02424038
//**                                                                    02425004
//*ZMH530R1 DD SYSOUT=*                                                 02491038
//*ZMH530R3 DD SYSOUT=*                                                 02492038
//*ZMH530R4 DD SYSOUT=*                                                 02493038
//*SYSTSPRT DD SYSOUT=*                                                 02500038
//*SYSPRINT DD SYSOUT=*                                                 02510038
//*SYSOUT   DD SYSOUT=*                                                 02520038
//*SYSDBOUT DD SYSOUT=*                                                 02530038
//*SYSABOUT DD DUMMY                                                    02540000
//*SYSUDUMP DD DUMMY                                                    02550000
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC04T08),DISP=SHR                  02560041
//*
//**********************************************************************02570040
//* OBJETIVO : REPORTE DE HECHOS POR ASIGNAR.                          *02600000
//*            -- ZM4DH468 --                                          *02580004
//**********************************************************************02660040
//*PHC04P07 EXEC PGM=IKJEFT01,COND=(4,LT)                               02671027
//**                                                                    02673004
//*ZMH468A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD04,DISP=SHR      02674038
//**                                                                    02675004
//*SYSTSPRT DD SYSOUT=*                                                 02690038
//*SYSPRINT DD SYSOUT=*                                                 02700038
//*SYSOUT   DD SYSOUT=*                                                 02710038
//*SYSDBOUT DD SYSOUT=*                                                 02720038
//*ZMH468R1 DD SYSOUT=*                                                 02730038
//*SYSABOUT DD DUMMY                                                    02750000
//*SYSUDUMP DD DUMMY                                                    02760000
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC04T07),DISP=SHR                  02770041
//*
//**********************************************************************02780040
//* OBJETIVO : REPORTE DE ASIGNACIONES A LA CUENTA DE LA CASA.         *02820000
//*            -- ZM4DH544 --                                          *02800004
//**********************************************************************02880040
//*PHC04P06 EXEC PGM=IKJEFT01,COND=(4,LT)                               02881027
//**                                                                    02883004
//*ZMH544A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD04,DISP=SHR      02884038
//**                                                                    02885004
//*ZMH544R1 DD SYSOUT=*                                                 02900038
//*SYSTSPRT DD SYSOUT=*                                                 02920038
//*SYSPRINT DD SYSOUT=*                                                 02930038
//*SYSOUT   DD SYSOUT=*                                                 02940038
//*SYSDBOUT DD SYSOUT=*                                                 02950038
//*SYSABOUT DD DUMMY                                                    02960000
//*SYSUDUMP DD DUMMY                                                    02970000
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC04T06),DISP=SHR                  02980041
//*                                                                     00553001
//**********************************************************************00500000
//* OBJETIVO : REPORTE DE SOLICITUD DE TICKETS                         *00520000
//*          -- ZM4DHV91 -- NUEVO                                      *00530001
//**********************************************************************00550040
//*PHC04P0H EXEC PGM=IKJEFT01,COND=(4,LT)                               00551027
//**                                                                    00553001
//*ZMHV91A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD04,DISP=SHR      00554038
//**                                                                    00555001
//*ZMHV91R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    00571035
//**
//*ZMHV91A2 DD DSN=SIVA.MDC.FIX.E&EMP..ZMHCPD04.TICKETS,
//*            DISP=(NEW,CATLG,DELETE),
//*            DCB=(LRECL=133,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//**
//*SORTWK01 DD UNIT=3390,SPACE=(CYL,(4,2),RLSE)                         00580000
//*SYSTSPRT DD SYSOUT=*                                                 00590035
//*SYSPRINT DD SYSOUT=*                                                 00600035
//*SYSOUT   DD SYSOUT=*                                                 00610035
//*SYSDBOUT DD SYSOUT=*                                                 00620035
//*SYSABOUT DD DUMMY                                                    00630000
//*SYSUDUMP DD DUMMY                                                    00640000
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC04T0H),DISP=SHR                  00651041
//*
//**********************************************************************00500000
//* OBJETIVO : REPORTE DE SOLICITUD DE TICKETS A NIVEL DETALLE         *00520000
//*          -- ZM4DHV92 -- NUEVO                                      *00530001
//**********************************************************************00550040
//*PHC04P0I EXEC PGM=IKJEFT01,COND=(4,LT)                               00551027
//**                                                                    00553001
//*ZMHV92A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD04,DISP=SHR      00554038
//**                                                                    00555001
//*ZMHV92R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    00571035
//**
//*ZMHV92A2 DD DSN=SIVA.MDC.FIX.E&EMP..ZMHCPD04.TICKETS.DETALLE,
//*            DISP=(NEW,CATLG,DELETE),
//*            DCB=(LRECL=133,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//**
//*SORTWK01 DD UNIT=3390,SPACE=(CYL,(4,2),RLSE)                         00580000
//*SYSTSPRT DD SYSOUT=*                                                 00590035
//*SYSPRINT DD SYSOUT=*                                                 00600035
//*SYSOUT   DD SYSOUT=*                                                 00610035
//*SYSDBOUT DD SYSOUT=*                                                 00620035
//*SYSABOUT DD DUMMY                                                    00630000
//**SYSUDUMP DD DUMMY                                                   00640000
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC04T0I),DISP=SHR                  00651041
//**
//**********************************************************************00500000
//* OBJETIVO : REPORTE DE SOLICITUD DE CANCELACIONES                   *00520000
//*          -- ZM4DHV93 -- NUEVO                                      *00530001
//**********************************************************************00550040
//*PHC04P0J EXEC PGM=IKJEFT01,COND=(4,LT)                               00551027
//**                                                                    00553001
//*ZMHV93A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD04,DISP=SHR      00554038
//**                                                                    00555001
//*ZMHV93R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    00571035
//**
//*ZMHV93A2 DD DSN=SIVA.MDC.FIX.E&EMP..ZMHCPD04.TICKETS.CANCEL,
//*            DISP=(NEW,CATLG,DELETE),
//*            DCB=(LRECL=133,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//**
//*SORTWK01 DD UNIT=3390,SPACE=(CYL,(4,2),RLSE)                         00580000
//*SYSTSPRT DD SYSOUT=*                                                 00590035
//*SYSPRINT DD SYSOUT=*                                                 00600035
//*SYSOUT   DD SYSOUT=*                                                 00610035
//*SYSDBOUT DD SYSOUT=*                                                 00620035
//*SYSABOUT DD DUMMY                                                    00630000
//*SYSUDUMP DD DUMMY                                                    00640000
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC04T0J),DISP=SHR                  00651041
//**
//**********************************************************************02990040
//* OBJETIVO: CANCELACION DE ORDENES YA ASIGNADAS O POR VIGENCIA       *03000040
//*           -- ZM4DH482 --                                           *02991040
//**********************************************************************03010040
//PHC04P05 EXEC PGM=IKJEFT01,COND=(4,LT)                                03011027
//*                                                                     03013004
//ZMH482A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD04,DISP=SHR       03014038
//*                                                                     03015004
//SYSTSPRT DD SYSOUT=*                                                  03030038
//SYSPRINT DD SYSOUT=*                                                  03040038
//SYSOUT   DD SYSOUT=*                                                  03050038
//SYSDBOUT DD SYSOUT=*                                                  03060038
//SYSABOUT DD DUMMY                                                     03070000
//SYSUDUMP DD DUMMY                                                     03080000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC04T05),DISP=SHR                   03090041
//*
//**********************************************************************03100040
//* OBJETIVO: CANCELACION AUTOMATICA DE SOLICITUDES DE ORDENES         *03110040
//*           -- ZM4DH445 --                                           *03101040
//**********************************************************************03120040
//PHC04P04 EXEC PGM=IKJEFT01,COND=(4,LT)                                03121048
//*                                                                     03123004
//ZMH445A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD04,DISP=SHR       03124038
//*                                                                     03125004
//SYSTSPRT DD SYSOUT=*                                                  03150038
//SYSPRINT DD SYSOUT=*                                                  03160038
//SYSOUT   DD SYSOUT=*                                                  03170038
//SYSDBOUT DD SYSOUT=*                                                  03180038
//SYSABOUT DD DUMMY                                                     03190000
//SYSUDUMP DD DUMMY                                                     03200000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC04T04),DISP=SHR                   03210041
//*
//**********************************************************************03220040
//* OBJETIVO : REPORTES SOLICITUD ORDENES COMPRA VENTA MISMO DIA       *03240040
//*            -- ZM4DHT30 --                                          *03231040
//**********************************************************************03250040
//*PHC04P03 EXEC PGM=IKJEFT01,COND=(4,LT)                               03251027
//**                                                                    03253004
//*ZMHT30A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD04,DISP=SHR      03254038
//**                                                                    03255004
//*ZMHT30R1 DD SYSOUT=*                                                 03270038
//*SYSTSPRT DD SYSOUT=*                                                 03290038
//*SYSPRINT DD SYSOUT=*                                                 03300038
//*SYSOUT   DD SYSOUT=*                                                 03310038
//*SYSDBOUT DD SYSOUT=*                                                 03320038
//*SYSABOUT DD DUMMY                                                    03330000
//*SYSUDUMP DD DUMMY                                                    03340000
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC04T03),DISP=SHR                  03350041
//*
//**********************************************************************03360040
//* OBJETIVO : AVISOS DE ORDENES NO REALIZADAS                         *03361040
//*            -- ZM4DH499 --                                          *03361040
//**********************************************************************03380040
//*PHC04P02 EXEC PGM=IKJEFT01,COND=(4,LT)                               03381027
//**                                                                    03383005
//*ZMH499P1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD04,DISP=SHR      03384038
//**                                                                    03385005
//*ZMH499R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    03400038
//*ZMH499T1 DD DSN=MXCP.ZM.TMP.MDC.ZM4DH499,                            03420024
//*            DISP=(NEW,CATLG,DELETE),                                 03430043
//*            DCB=(LRECL=206,BLKSIZE=0,RECFM=FB,DSORG=PS),             03440043
//*            UNIT=3390,                                               03450043
//*            SPACE=(CYL,(4,2),RLSE)                                   03460043
//*SORTWK01 DD UNIT=3390,SPACE=(CYL,(4,2),RLSE)                         03470042
//*SORTWK02 DD UNIT=3390,SPACE=(CYL,(4,2),RLSE)                         03480042
//*SORTWK03 DD UNIT=3390,SPACE=(CYL,(4,2),RLSE)                         03490042
//*SORTWK04 DD UNIT=3390,SPACE=(CYL,(4,2),RLSE)                         03500042
//*SYSTSPRT DD SYSOUT=*                                                 03510038
//*SYSPRINT DD SYSOUT=*                                                 03520038
//*SYSOUT   DD SYSOUT=*                                                 03530038
//*SYSDBOUT DD SYSOUT=*                                                 03540038
//*SYSABOUT DD DUMMY                                                    03550024
//*SYSUDUMP DD DUMMY                                                    03560024
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC04T02),DISP=SHR                  03570041
//**
//**********************************************************************03580040
//* OBJETIVO : PRECIOS PROMEDIOS DE ASIGNACION INTERNACIONAL           *03580140
//*            -- ZM4DH559 --                                          *03581040
//**********************************************************************03600040
//*PHC04P01 EXEC PGM=IKJEFT01,COND=(4,LT)                               03601027
//**                                                                    03603006
//*ZMH559A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD04,DISP=SHR      03604038
//**                                                                    03605006
//*ZMH559R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    03620038
//*SYSTSPRT DD SYSOUT=*                                                 03640038
//*SYSPRINT DD SYSOUT=*                                                 03650038
//*SYSOUT   DD SYSOUT=*                                                 03660038
//*SYSDBOUT DD SYSOUT=*                                                 03670038
//*SYSABOUT DD DUMMY                                                    03680000
//*SYSUDUMP DD DUMMY                                                    03690000
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC04T01),DISP=SHR                  03700041
//*                                                                     03710007
//**********************************************************************03580040
//* OBJETIVO : PRECIOS PROMEDIOS DE ASIGNACION NACIONAL                *03580140
//*            -- ZM4DH560 --                                          *03581040
//**********************************************************************03600040
//*PHC04P00 EXEC PGM=IKJEFT01,COND=(4,LT)                               03601027
//**                                                                    03603006
//*ZMH560A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD04,DISP=SHR      03604038
//**                                                                    03605006
//*ZMH560R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    03620038
//*SYSTSPRT DD SYSOUT=*                                                 03640038
//*SYSPRINT DD SYSOUT=*                                                 03650038
//*SYSOUT   DD SYSOUT=*                                                 03660038
//*SYSDBOUT DD SYSOUT=*                                                 03670038
//*SYSABOUT DD DUMMY                                                    03680000
//*SYSUDUMP DD DUMMY                                                    03690000
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC04T00),DISP=SHR                  03700041
//*                                                                     03710007
//**********************************************************************01941040
//* OBJETIVO : OBTENER LOS LISTADOS DE LA OPERACION DEL DIA,           *01970000
//*            HECHOS POR ASIGNAR Y LAS ASIGNACIONES A LA              *01980000
//*            CUENTA DE LA CASA DEL SISTEMA INTERNACIONAL DE          *01980000
//*            COTIZACIONES.                                           *01980000
//*          -- ZM4DHV26 -- NUEVO                                      *01950050
//**********************************************************************02040040
//*PHC04P0A EXEC PGM=IKJEFT01,COND=(4,LT)                               02041027
//**                                                                    02043001
//*ZMHV26P1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD04,DISP=SHR      02044038
//**                                                                    02045001
//*ZMHV26R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    02100038
//*ZMHV26R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    02110038
//*ZMHV26R3 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    02120038
//*ZMHV26T1 DD DSN=ZIVA.ZME.CONTROL(ZHC04T25),DISP=SHR                  02141041
//*ZMHV26A1 DD DSN=SIVA.MDC.FIX.E&EMP..VIBV26A1,                        02151038
//*            DISP=(NEW,CATLG,DELETE),                                 02160043
//*            DCB=(LRECL=132,BLKSIZE=0,RECFM=FBA,DSORG=PS),            02170043
//*            UNIT=3390,                                               02180043
//*            SPACE=(CYL,(4,2),RLSE)                                   02190043
//*ZMHV26A2 DD DSN=SIVA.MDC.FIX.E&EMP..VIBV26A2,                        02201038
//*            DISP=(NEW,CATLG,DELETE),                                 02210043
//*            DCB=(LRECL=289,BLKSIZE=0,RECFM=FB,DSORG=PS),             02220043
//*            UNIT=3390,                                               02230043
//*            SPACE=(CYL,(4,2),RLSE)                                   02240043
//*SYSTSPRT DD SYSOUT=*                                                 02250038
//*SYSPRINT DD SYSOUT=*                                                 02260038
//*SYSOUT   DD SYSOUT=*                                                 02270038
//*SYSDBOUT DD SYSOUT=*                                                 02280038
//*SYSABOUT DD DUMMY                                                    02290000
//*SYSUDUMP DD DUMMY                                                    02300000
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC04T0A),DISP=SHR                  02310041
//*
//**********************************************************************01941040
//* OBJETIVO : OBTENER LOS LISTADOS DE LA OPERACION DEL DIA,           *01970000
//*            DEL SISTEMA DE ARBITRAJE INTERNACIONAL.                 *01980000
//*          -- ZM4DHV27 -- NUEVO                                      *01950050
//**********************************************************************02040040
//*PHC04P0B EXEC PGM=IKJEFT01,COND=(4,LT)                               02041027
//**                                                                    02043001
//*ZMHV27P1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD04,DISP=SHR      02044038
//**                                                                    02045001
//*ZMHV27R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    02100038
//*ZMHV27R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    02110038
//*ZMHV27R3 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    02120038
//*ZMHV27T1 DD DSN=ZIVA.ZME.CONTROL(ZHC04T25),DISP=SHR                  02141041
//*ZMHV27A1 DD DSN=SIVA.MDC.FIX.E&EMP..VIBV27A1,                        02151038
//*            DISP=(NEW,CATLG,DELETE),                                 02160043
//*            DCB=(LRECL=132,BLKSIZE=0,RECFM=FBA,DSORG=PS),            02170043
//*            UNIT=3390,                                               02180043
//*            SPACE=(CYL,(4,2),RLSE)                                   02190043
//*ZMHV27A2 DD DSN=SIVA.MDC.FIX.E&EMP..VIBV27A2,                        02201038
//*            DISP=(NEW,CATLG,DELETE),                                 02210043
//*            DCB=(LRECL=289,BLKSIZE=0,RECFM=FB,DSORG=PS),             02220043
//*            UNIT=3390,                                               02230043
//*            SPACE=(CYL,(4,2),RLSE)                                   02240043
//*SYSTSPRT DD SYSOUT=*                                                 02250038
//*SYSPRINT DD SYSOUT=*                                                 02260038
//*SYSOUT   DD SYSOUT=*                                                 02270038
//*SYSDBOUT DD SYSOUT=*                                                 02280038
//*SYSABOUT DD DUMMY                                                    02290000
//*SYSUDUMP DD DUMMY                                                    02300000
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC04T0B),DISP=SHR                  02310041
//*
//**********************************************************************00661000
//* OBJETIVO : REPORTE DE PAQUETES DEL DIA (CONTROL INTERNO)           *00664000
//*          -- ZM4DHV69 -- NUEVO                                      *00662001
//**********************************************************************00667040
//*PHC04P0C EXEC PGM=IKJEFT01,COND=(4,LT)                               00667127
//**                                                                    00667301
//*ZMHV69A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD04,DISP=SHR      00667438
//**                                                                    00667501
//*ZMHV69R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    00669135
//**
//*ZMHV69A2 DD DSN=SIVA.MDC.FIX.E&EMP..ZMHCPD04.ORDEN.GLOV69,
//*            DISP=(NEW,CATLG,DELETE),
//*            DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//**
//*SORTWK01 DD UNIT=3390,SPACE=(CYL,(4,2),RLSE)                         00669201
//*SYSTSPRT DD SYSOUT=*                                                 00669335
//*SYSPRINT DD SYSOUT=*                                                 00669435
//*SYSOUT   DD SYSOUT=*                                                 00669535
//*SYSDBOUT DD SYSOUT=*                                                 00669635
//*SYSABOUT DD DUMMY                                                    00669701
//*SYSUDUMP DD DUMMY                                                    00669801
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC04T0C),DISP=SHR                  00669941
//**
//**********************************************************************01931040
//* OBJETIVO : OBTENER LOS LISTADOS DE LA OPERACION DEL DIA            *01933000
//*            DE ORDENES DE POSICION PROPIA                           *01934000
//*          -- ZM4DHV80 -- NUEVO                                      *01935001
//**********************************************************************01937040
//*PHC04P0D EXEC PGM=IKJEFT01,COND=(4,LT)                               01937127
//**                                                                    01937301
//*ZMHV80A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD04,DISP=SHR      01937438
//**                                                                    01937501
//*ZMHV80R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    01939038
//*ZMHV80T1 DD DSN=ZIVA.ZME.CONTROL(ZHC04T25),DISP=SHR                  01939341
//*SYSTSPRT DD SYSOUT=*                                                 01939438
//*SYSPRINT DD SYSOUT=*                                                 01939538
//*SYSOUT   DD SYSOUT=*                                                 01939638
//*SYSDBOUT DD SYSOUT=*                                                 01939738
//*SYSABOUT DD DUMMY                                                    01939801
//*SYSUDUMP DD DUMMY                                                    01939901
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC04T0D),DISP=SHR                  01940041
//*
//**********************************************************************00500000
//* OBJETIVO : REPORTE DE SOLICITUD DE ORDENES                         *00520000
//*          -- ZM4DHV81 -- NUEVO                                      *00530001
//**********************************************************************00550040
//PHC04P0E EXEC PGM=IKJEFT01,COND=(4,LT)                                00551027
//*                                                                     00553001
//ZMHV81A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD04,DISP=SHR       00554038
//*                                                                     00555001
//ZMHV81R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00571035
//*
//ZMHV81A2 DD DSN=SIVA.MDC.FIX.E&EMP..ZMHCPD04.ORDEN.SOLV81,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=133,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//*
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)                        00580000
//SYSTSPRT DD SYSOUT=*                                                  00590035
//SYSPRINT DD SYSOUT=*                                                  00600035
//SYSOUT   DD SYSOUT=*                                                  00610035
//SYSDBOUT DD SYSOUT=*                                                  00620035
//SYSABOUT DD DUMMY                                                     00630000
//SYSUDUMP DD DUMMY                                                     00640000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC04T0E),DISP=SHR                   00651041
//*
//**********************************************************************02311040
//* OBJETIVO : REPORTE DE LA OPERACION DEL DIA,HECHOS POR ASIGNAR,     *02314000
//*            ASIGNACIONES A LA CUENTA DE LA CASA.                    *02315000
//*            CLONACION DEL PROGRAMA ZM4DHU85                         *02312003
//*            -- ZM4DHV90 -- NUEVO                                    *02312003
//**********************************************************************02319240
//*PHC04P0F EXEC PGM=IKJEFT01,COND=(4,LT)                               02319327
//**                                                                    02319503
//*ZMHV90P1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD04,DISP=SHR      02319638
//**                                                                    02319703
//*ZMHV90R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    02320738
//*ZMHV90R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    02320838
//*ZMHV90R3 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    02320938
//*ZMHV90T1 DD DSN=ZIVA.ZME.CONTROL(ZHC04T25),DISP=SHR                  02321241
//*ZMHV90A1 DD DSN=SIVA.MDC.FIX.E&EMP..VIBV90A1,                        02321438
//*            DISP=(NEW,CATLG,DELETE),                                 02321543
//*            DCB=(LRECL=132,BLKSIZE=0,RECFM=FBA,DSORG=PS),            02321643
//*            UNIT=3390,                                               02321743
//*            SPACE=(CYL,(4,2),RLSE)                                   02321843
//*ZMHV90A2 DD DSN=SIVA.MDC.FIX.E&EMP..ASIGV90.EMIS.D&FECHA,            02322038
//*            DISP=(NEW,CATLG,DELETE),                                 02322143
//*            DCB=(LRECL=183,BLKSIZE=0,RECFM=FB,DSORG=PS),             02322243
//*            UNIT=3390,                                               02322343
//*            SPACE=(CYL,(4,2),RLSE)                                   02322443
//*
//*ZMHV90A3 DD DSN=SIVA.MDC.FIX.E&EMP..ZMHCPD04.ASIG.EMIV90,
//*            DISP=(NEW,CATLG,DELETE),
//*            DCB=(LRECL=132,BLKSIZE=0,RECFM=FB,DSORG=PS),
//*            UNIT=3390,
//*            SPACE=(CYL,(4,2),RLSE)
//**
//*ZMHV90A4 DD DSN=SIVA.MDC.FIX.E&EMP..ZMHCPD04.SOBRAV90,
//*            DISP=(NEW,CATLG,DELETE),
//*            DCB=(LRECL=132,BLKSIZE=0,RECFM=FB,DSORG=PS),
//*            UNIT=3390,
//*            SPACE=(CYL,(4,2),RLSE)
//**
//*SYSTSPRT DD SYSOUT=*                                                 02322538
//*SYSPRINT DD SYSOUT=*                                                 02322638
//*SYSOUT   DD SYSOUT=*                                                 02322738
//*SYSDBOUT DD SYSOUT=*                                                 02322838
//*SYSABOUT DD DUMMY                                                    02322903
//*SYSUDUMP DD DUMMY                                                    02323003
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC04T0F),DISP=SHR                  02323141
//*
//**********************************************************************02311040
//* OBJETIVO : REPORTE DE LA OPERACION DEL DIA,HECHOS POR ASIGNAR,     *02314000
//*            ASIGNACIONES A LA CUENTA DE LA CASA.                    *02315000
//*            SUBSTITUYE AL PROGRAMA ZM4DHU85                         *02312003
//*            -- ZM4DHV85 -- NUEVO                                    *02312003
//**********************************************************************02319240
//*PHC04P0G EXEC PGM=IKJEFT01,COND=(4,LT)                               02319327
//**                                                                    02319503
//*ZMHV85P1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD04,DISP=SHR      02319638
//**                                                                    02319703
//*ZMHV85R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    02320738
//*ZMHV85R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    02320838
//*ZMHV85R3 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    02320938
//*ZMHV85T1 DD DSN=ZIVA.ZME.CONTROL(ZHC04T25),DISP=SHR                  02321241
//**
//*SYSTSPRT DD SYSOUT=*                                                 02322538
//*SYSPRINT DD SYSOUT=*                                                 02322638
//*SYSOUT   DD SYSOUT=*                                                 02322738
//*SYSDBOUT DD SYSOUT=*                                                 02322838
//*SYSABOUT DD DUMMY                                                    02322903
//*SYSUDUMP DD DUMMY                                                    02323003
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC04T0G),DISP=SHR                  02323141
//**
//**********************************************************************00500000
//* OBJETIVO : REPORTE DE SOLICITUD DE ORDENES                         *00520000
//*          -- ZM4DHU82 --                                            *00530001
//**********************************************************************00550040
//*PHC04P0K EXEC PGM=IKJEFT01,COND=(4,LT)                               00551027
//**                                                                    00553001
//*ZMHU82A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD04,DISP=SHR      00554038
//**                                                                    00555001
//*ZMHU82R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    00571035
//**
//*ZMHU82A2 DD DSN=SIVA.MDC.FIX.E&EMP..ZMHCPD04.ORDEN.NEL,
//*            DISP=(NEW,CATLG,DELETE),
//*            DCB=(LRECL=133,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//**
//*SORTWK01 DD UNIT=3390,SPACE=(CYL,(4,2),RLSE)                         00580000
//*SYSTSPRT DD SYSOUT=*                                                 00590035
//*SYSPRINT DD SYSOUT=*                                                 00600035
//*SYSOUT   DD SYSOUT=*                                                 00610035
//*SYSDBOUT DD SYSOUT=*                                                 00620035
//*SYSABOUT DD DUMMY                                                    00630000
//*SYSUDUMP DD DUMMY                                                    00640000
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC04T0K),DISP=SHR                  00651041
//**
//*FS-1.1.0-02-INI
//*--------------------------------------------------------------------*
//* OBJETIVO : INSERTA EN ZMDT120 LAS ORDENES DE VENTA CON COSTO CERO  *
//*--------------------------------------------------------------------*
//PHC04P0M EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC04T0M),DISP=SHR
//*
//*FS-1.1.0-02-FIN
//*--------------------------------------------------------------------*
//*         ZM4DH518 GENERA ARCHIVOS DE BLOQUES GPOS. 100 AL 107       *
//*                  CON LA OPERACION DE MDC                           *
//*--------------------------------------------------------------------*
//PHC04P0L EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMH518A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD04,DISP=SHR       02319638
//*
//ZMH518S1 DD DSN=SIVA.MDC.FIX.E&EMP..BLOQUE1,                          00571035
//         DISP=(NEW,CATLG,DELETE),                                     00555001
//         DCB=(LRECL=98,RECFM=FB,BLKSIZE=0,DSORG=PS),                  00555001
//         UNIT=3390,SPACE=(CYL,(20,10),RLSE)                           00555001
//*                                                                     00555001
//ZMH518S2 DD DSN=SIVA.MDC.FIX.E&EMP..BLOQUE2,                          00571035
//         DISP=(NEW,CATLG,DELETE),                                     00555001
//         DCB=(LRECL=98,RECFM=FB,BLKSIZE=0,DSORG=PS),                  00555001
//         UNIT=3390,SPACE=(CYL,(20,10),RLSE)                           00555001
//*                                                                     00555001
//ZMH518S3 DD DSN=SIVA.MDC.FIX.E&EMP..BLOQUE3,                          00571035
//         DISP=(NEW,CATLG,DELETE),                                     00555001
//         DCB=(LRECL=98,RECFM=FB,BLKSIZE=0,DSORG=PS),                  00555001
//         UNIT=3390,SPACE=(CYL,(20,10),RLSE)                           00555001
//*                                                                     00555001
//ZMH518S4 DD DSN=SIVA.MDC.FIX.E&EMP..BLOQUE4,                          00571035
//         DISP=(NEW,CATLG,DELETE),                                     00555001
//         DCB=(LRECL=98,RECFM=FB,BLKSIZE=0,DSORG=PS),                  00555001
//         UNIT=3390,SPACE=(CYL,(20,10),RLSE)                           00555001
//*                                                                     00555001
//ZMH518S5 DD DSN=SIVA.MDC.FIX.E&EMP..BLOQUE5,                          00571035
//         DISP=(NEW,CATLG,DELETE),                                     00555001
//         DCB=(LRECL=98,RECFM=FB,BLKSIZE=0,DSORG=PS),                  00555001
//         UNIT=3390,SPACE=(CYL,(20,10),RLSE)                           00555001
//*                                                                     00555001
//ZMH518S6 DD DSN=SIVA.MDC.FIX.E&EMP..BLOQUE6,                          00571035
//         DISP=(NEW,CATLG,DELETE),                                     00555001
//         DCB=(LRECL=98,RECFM=FB,BLKSIZE=0,DSORG=PS),                  00555001
//         UNIT=3390,SPACE=(CYL,(20,10),RLSE)                           00555001
//*                                                                     00555001
//ZMH518S7 DD DSN=SIVA.MDC.FIX.E&EMP..BLOQUE7,                          00571035
//         DISP=(NEW,CATLG,DELETE),                                     00555001
//         DCB=(LRECL=98,RECFM=FB,BLKSIZE=0,DSORG=PS),                  00555001
//         UNIT=3390,SPACE=(CYL,(20,10),RLSE)                           00555001
//*                                                                     00555001
//ZMH518S8 DD DSN=SIVA.MDC.FIX.E&EMP..BLOQUE8,                          00571035
//         DISP=(NEW,CATLG,DELETE),                                     00555001
//         DCB=(LRECL=98,RECFM=FB,BLKSIZE=0,DSORG=PS),                  00555001
//         UNIT=3390,SPACE=(CYL,(20,10),RLSE)                           00555001
//*                                                                     00555001
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC04T0L),DISP=SHR
//*
