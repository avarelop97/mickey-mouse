//ZMHFPD33  PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  C A P I T A L E S >>                       *
//*                                                                    *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  CBHFCD33 FIN DE DIA DE CAPITALES.                *
//*                   REPORTES DE CAPITALES                            *
//*                                                                    *
//* OBJETIVO       :  GENERAR LA REPORTERIA DE FIN DE DIA CAPITALES    *
//*                                                                   *
//* CORRE                                                              *
//* ANTES DE       :  CBUFCD40                                         *
//*                                                                    *
//* DESPUES DE     :  CBHFND33                                         *
//*                                                                    *
//* PERIODICIDAD   :  DIARIO                                           *
//*                                                                    *
//* ELABORADO POR  :  ERNESTO MANUEL CUAUTLE MARTINEZ                  *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//* FECHA    : 30 DE SEPTIEMBRE DE 2005.                               *
//* MODIFICO : ERNESTO MANUEL CUAUTLE MARTINEZ.                        *
//*                                                                    *
//* OBJETIVO : SE ADICIONARON LOS PASOS PHF33P28 Y PHF33P29            *
//*                                                                    *
//*--------------------------------------------------------------------*
//*            L O G    D E    M O D I F I C A C I O N E S             *
//*--------------------------------------------------------------------*
//*                                                                    *
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-1.1.0-12 CAPGEMINI 07MAY13 SE COMENTAN LOS SIGUIENTES PASOS     *
//*                               PHF33P38 Y PHF33P36.                 *
//*                                                                    *
//* FS-1.1.0-13 XMY2883   13MAR18 SE AGREGA EL PASO XXXXXXXX PARA      *
//*                               LIMPIAR PARAMETROS.                  *
//*--------------------------------------------------------------------*
//**********************************************************************
//*                                                                    *
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*
//*  PHF33P39     GRABA EN UN ARCHIVO SECUENCIAL.                      *
//*                                                         ZM3DH001   *
//**********************************************************************
//PHF33P39 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC')
//*        PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//ZMG001A1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD33,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//* OBJETIVO : GENERAR ARCHIVO CON LOS DATOS DE LAS EMISORAS -         *
//*            SERIES VALIDAS PARA E-GUARD (MERCADO DE CAPITA-         *
//*            LES, MERCADO DE DINERO Y SOCIEDADES DE INVERSI-         *
//*            ON).                                                    *
//*            -- ZM4DQQ01 --                                          *
//**********************************************************************
//*FS-1.1.0-12-INI
//*PHF33P38 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//*ZMDQQ011 DD DSN=MXC&AMB..ZM.FIX.MDC.E&EMP..ZM4DQQ01.EGUARD1,
//*            DISP=(NEW,CATLG,DELETE),
//*            DCB=(DSORG=PS,RECFM=FB,LRECL=175,BLKSIZE=0),
//*            UNIT=3390,
//*            SPACE=(CYL,(4,2),RLSE)
//*ZMDQQ012 DD DSN=MXC&AMB..ZM.FIX.MDC.E&EMP..EMISORAS.EGUARD1,
//*            DISP=(NEW,CATLG,DELETE),
//*            DCB=(DSORG=PS,RECFM=FB,LRECL=244,BLKSIZE=0),
//*            UNIT=3390,
//*            SPACE=(CYL,(4,2),RLSE)
//*SYSIN    DD DUMMY
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF33T37),DISP=SHR
//*
//**********************************************************************
//* OBJETIVO : ELIMINAR REGISTROS DUPLICADOS CUANDO SE PRESENTA        *
//*            UN DERECHO Y LA EMISORA NO CAMBIA DE CUPON              *
//**********************************************************************
//*PHF33P36 EXEC PGM=ICEMAN,COND=(4,LT)
//*SORTIN   DD DSN=MXC&AMB..ZM.FIX.MDC.E&EMP..EMISORAS.EGUARD1,
//*            DISP=SHR
//*SORTOUT  DD DSN=MXC&AMB..ZM.WKF.MDC.E&EMP..EMISORAS.EGUARDS,
//*            DISP=(NEW,CATLG,DELETE),
//*            DCB=(DSORG=PS,RECFM=FB,LRECL=244,BLKSIZE=0),
//*            UNIT=3390,
//*            SPACE=(CYL,(4,2),RLSE)
//*SYSOUT   DD SYSOUT=*
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF33T36),DISP=SHR
//*FS-1.1.0-12-FIN
//*
//**********************************************************************
//* OBJETIVO : REPORTE DE ORDENES EXTRAORDINARIAS                      *
//*                        -- ZM4DHU84 --                              *
//**********************************************************************
//*PHF33P35 EXEC PGM=IKJEFT01,COND=(4,LT)
//**
//*ZMHU84A1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD33,DISP=SHR
//**
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*ZMHU84R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF33T35),DISP=SHR
//*
//**********************************************************************
//*  REPORTE DE SOLICITUD DE ORDENES DE COMPRA/VENTA POR EMISORA       *
//*                          -- ZM4DHV20  --                           *
//**********************************************************************
//*PHF33P34 EXEC PGM=IKJEFT01,COND=(4,LT)
//**
//*ZMHV20A1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD33,DISP=SHR
//**
//*ZMHV20R1 DD SYSOUT=*
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF33T34),DISP=SHR
//*
//**********************************************************************
//*  REPORTE DE SOLICITUD DE CANCELACIONES                             *
//*                        -- ZM4DHU88 --                              *
//**********************************************************************
//*PHF33P32 EXEC PGM=IKJEFT01,COND=(4,LT)
//**
//*ZMHU88A1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD33,DISP=SHR
//**
//*ZMHU88R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//**
//*ZMHU88A2 DD DSN=SIVA.MDC.FIX.E&EMP..ZMHFPD33.MODIFI,
//*         DISP=(NEW,CATLG,DELETE),
//*         DCB=(LRECL=132,BLKSIZE=0,RECFM=FB,DSORG=PS),
//*         UNIT=3390,
//*         SPACE=(CYL,(4,2),RLSE)
//**
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF33T32),DISP=SHR
//**
//**********************************************************************
//*        REPORTES DE ORDENES SOLICITADAS Y CANCELADAS POR PROMOTOR   *
//*                        -- ZM4DHU87 --                              *
//*        SE OMITE PASO POR EXCESO DE DURACION.                       *
//**********************************************************************
//*PHF33P30 EXEC PGM=IKJEFT01,COND=(4,LT)
//**
//*ZMHU87A1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD33,DISP=SHR
//**
//*ZZZU87R3 DD SYSOUT=(W,,ZZZ)
//*ZZZU87R2 DD SYSOUT=(V,,ZZZ)
//*ZZZU87R1 DD SYSOUT=(V,,ZZZ)
//*ZMHU87R4 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZMHU87T1 DD DSN=MXC&AMB..ZM.TMP.MDC.ZM4DHU87,
//*            DISP=(NEW,CATLG,DELETE),
//*            DCB=(LRECL=210,BLKSIZE=0,RECFM=FB,DSORG=PS),
//*            UNIT=3390,
//*            SPACE=(CYL,(4,2),RLSE)
//**
//*ZMHU87A2 DD DSN=SIVA.MDC.FIX.E&EMP..ZMHFPD33.ORD.NO.REAL,
//*         DISP=(NEW,CATLG,DELETE),
//*         DCB=(LRECL=132,BLKSIZE=0,RECFM=FB,DSORG=PS),
//*         UNIT=3390,
//*         SPACE=(CYL,(4,2),RLSE)
//**
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF33T30),DISP=SHR
//**
//**********************************************************************
//*      MODIFICACIÓN Y CANCELACIÓN DE ORDENES SOLICITADAS POR PROMOT  *
//*                        -- ZM4DHW93 --                              *
//**********************************************************************
//*PHF33P29 EXEC PGM=IKJEFT01,COND=(4,LT)
//**
//*ZMHU93A1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD33,DISP=SHR
//**
//*ZMHU93A2 DD DSN=SIVA.MDC.FIX.E&EMP..CANCEL.ORD.PROMO,
//*            DISP=(NEW,CATLG,DELETE),
//*            DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//**
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF33T29),DISP=SHR
//**
//**********************************************************************
//*      GENERA  EL ARCHIVO DE ORDENES NO REALIZADAS.                  *
//*                        -- ZM4DHW94 --                              *
//*      SE OMITE PASO POR EXCESO DE DURACION.                         *
//**********************************************************************
//*PHF33P28 EXEC PGM=IKJEFT01,COND=(4,LT)
//**
//*ZMHU94A1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD33,DISP=SHR
//**
//*ZMHU94A2 DD DSN=SIVA.MDC.FIX.E&EMP..ORDEN.NO.REALIZA,
//*            DISP=(NEW,CATLG,DELETE),
//*            DCB=(LRECL=121,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//**
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF33T28),DISP=SHR
//**
//**********************************************************************
//*        REPORTES DE ORDENES SOLICITADAS Y CANCELADAS                *
//*                        -- ZM4DHU86 --                              *
//**********************************************************************
//**PHF33P24 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//*ZMHU86P1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD33,DISP=SHR
//*
//**ZMHU86R1 DD SYSOUT=*
//**ZMHU86R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//**ZMHU86R3 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//**ZMHU86A1 DD DSN=SIVA.MDC.FIX.E&EMP..VIBU86A1,
//**            DISP=(NEW,CATLG,DELETE),
//**            DCB=(LRECL=133,RECFM=FB,BLKSIZE=0,DSORG=PS),
//**            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//**ZMHU86A2 DD DSN=SIVA.MDC.FIX.E&EMP..ORDEN.X.EMIS,
//**            DISP=(NEW,CATLG,DELETE),
//**            DCB=(LRECL=136,RECFM=FB,BLKSIZE=0,DSORG=PS),
//**            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//**ZMHU86A5 DD DSN=SIVA.MDC.FIX.E&EMP..ORDEN.CANCEL,
//**            DISP=(NEW,CATLG,DELETE),
//**            DCB=(LRECL=239,RECFM=FB,BLKSIZE=0,DSORG=PS),
//**            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//**ZMHU86T1 DD DSN=ZIVA.ZME.CONTROL(ZHF33T26),DISP=SHR
//**SYSTSPRT DD SYSOUT=*
//**SYSPRINT DD SYSOUT=*
//**SYSOUT   DD SYSOUT=*
//**SYSDBOUT DD SYSOUT=*
//**SYSABOUT DD DUMMY
//**SYSUDUMP DD DUMMY
//**SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF33T24),DISP=SHR
//*
//**********************************************************************
//* BORRADO DE ARCHIVOS                                                *
//**********************************************************************
//PHF33P23 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD  SYSOUT=*
//SYSINT   DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZHF33T23),DISP=SHR
//*
//**********************************************************************
//* GENERACION DE INFORMACION MENSUAL ARCHIVO VOBU08D                  *
//*                          -- ZM4DHU08 --                            *
//* JFE     ->    SE CAMBIA LONGITUD EN ARCHIVOS DE 141 A 145 POSICION *
//* 31/03/06      POR INCORPORACION DE CAMPO ITVBMV.                   *
//**********************************************************************
//PHF33P22 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHU08P1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD33,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*
//ZMHU08DO DD DSN=SIVA.OTR.WKF.E&EMP..VOBU08D,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FBA,LRECL=145,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//ZMHU08A1 DD DSN=SIVA.OTR.FIX.E&EMP..VOBU08D.ANUAL,DISP=SHR
//ZMHU08T1 DD DSN=SIVA.OTR.WKF.E&EMP..VOBU08D.T1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FBA,LRECL=145,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//ZMHU08SA DD DSN=SIVA.OTR.WKF.E&EMP..VOBU08D.S1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FBA,LRECL=145,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//ZMHU08CC DD DSN=SIVA.OTR.WKF.E&EMP..VOBU08D.CCO,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE),
//            DCB=(LRECL=133,RECFM=FBA,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD  SYSOUT=*
//SYSINT   DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//PRINT    DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZHF33T22),DISP=SHR
//*
//**********************************************************************
//* COPIA DE SEGURIDAD EN UN ARCHIVO TEMPORAL PARA CONCATENACION       *
//* JFE   SE CAMBIA LONGITUD EN ARCHIVO A 145 POSICIONES.              *
//**********************************************************************
//PHF33P21 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=SIVA.OTR.FIX.E&EMP..VOBU08D.ANUAL,
//            DISP=SHR
//SYSUT2   DD DSN=SIVA.OTR.WKF.E&EMP..VOBU08D.PASO,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE),
//            DCB=(LRECL=145,RECFM=FBA,BLKSIZE=0,DSORG=PS)
//SYSIN    DD DUMMY
//*
//**********************************************************************
//* BORRADO DE ARCHIVO ANUAL                                           *
//**********************************************************************
//PHF33P20 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF33T20),DISP=SHR
//*
//**********************************************************************
//*                          * FDD3328 *                               *
//* CONCATENACION DE 2 ARCHIVOS EN EL ARCHIVO ANUAL.                   *
//* JFE   SE CAMBIA LONGITUD EN ARCHIVO A 145 POSICIONES.              *
//**********************************************************************
//PHF33P19 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SYSINT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//SYSUT1   DD DSN=SIVA.OTR.WKF.E&EMP..VOBU08D,DISP=SHR
//         DD DSN=SIVA.OTR.WKF.E&EMP..VOBU08D.PASO,DISP=SHR
//SYSUT2   DD DSN=SIVA.OTR.FIX.E&EMP..VOBU08D.ANUAL,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE),
//            DCB=(LRECL=145,RECFM=FBA,BLKSIZE=0,DSORG=PS)
//*
//**********************************************************************
//* SORT DE ARCHIVO ANUAL PARA LA EMISION DE LOS REPORTES POR FECHA    *
//* JFE   SE CAMBIA LONGITUD EN ARCHIVO A 145 POSICIONES.              *
//**********************************************************************
//PHF33P18 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=SIVA.OTR.FIX.E&EMP..VOBU08D.ANUAL,DISP=SHR
//SORTOUT  DD DSN=SIVA.OTR.WKF.E&EMP..VOBU08D.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=145,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF33T18),DISP=SHR
//*
//**********************************************************************
//* GENERA LOS REPORTE DE OPERACIONES DOS VECES MAYORES AL CAPITAL CON *
//*                          -- ZM4DHU10 --                            *
//**********************************************************************
//*PHF33P17 EXEC PGM=IKJEFT01,COND=(4,LT)
//**
//*ZMHT10A1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD33,DISP=SHR
//**
//*SYSTSPRT DD SYSOUT=*
//*ZMHT10MI DD DSN=SIVA.OTR.WKF.E&EMP..VOBU08D.SORT,DISP=SHR
//*ZMHT10CC DD DSN=SIVA.OTR.WKF.E&EMP..VIBU10D.CCO,
//*            DISP=(NEW,CATLG,DELETE),
//*            DCB=(LRECL=133,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//**
//*ZMHT10R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZMHT10R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSPRINT DD  SYSOUT=*
//*SYSINT   DD  SYSOUT=*
//*SYSOUT   DD  SYSOUT=*
//*PRINT    DD  SYSOUT=*
//*SYSDBOUT DD  SYSOUT=*
//*SYSABOUT DD  DUMMY
//*SYSUDUMP DD  DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF33T17),DISP=SHR
//**
//**********************************************************************
//*        ACTUALIZAR ICONCEPT'S EN AGPOCON PARA IMP DE TALONES        *
//*                    -- ZM4DHU02 --                                  *
//**********************************************************************
//PHF33P16 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF33T16),DISP=SHR
//*
//**********************************************************************
//*       REPORTE CON ALTA OPERACION DE CAPITALES                      *
//*                    -- ZM4MHT86 --          *** CAPITALES           *
//**********************************************************************
//*PHF33P15 EXEC PGM=IKJEFT01,COND=(4,LT)
//**
//*ZMHT86A1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD33,DISP=SHR
//**
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*ZMHT86R  DD SYSOUT=V
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF33T15),DISP=SHR
//**
//**********************************************************************
//*        REPORTE % PROMEDIO DE CARTERA > 10,000 DLLS                 *
//*                            -- ZM4MHT83 --        *** CAPITALES     *
//**********************************************************************
//**********************************************************************
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************
//*PHF33P14 EXEC PGM=IKJEFT01,COND=(4,LT)
//**
//*ZMHT83A1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD33,DISP=SHR
//**
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*ZMHT83R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF33T14),DISP=SHR
//**
//**********************************************************************
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************
//**********************************************************************
//*        REPORTE DEPOSITOS POR LINEA                                 *
//*                         -- ZM4MHT81  --          *** CAPITALES     *
//**********************************************************************
//**********************************************************************
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************
//*PHF33P13 EXEC PGM=IKJEFT01,COND=(4,LT)
//**
//*ZMHT81A1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD33,DISP=SHR
//**
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*ZMHT81R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF33T13),DISP=SHR
//**
//**********************************************************************
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************
//**********************************************************************
//*        REPORTE DEPOSITOS POR FICHA UNICA                           *
//*                      -- ZM4MHT78 --              *** CAPITALES     *
//**********************************************************************
//**********************************************************************
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************
//*PHF33P12 EXEC PGM=IKJEFT01,COND=(4,LT)
//**
//*ZMHT78A1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD33,DISP=SHR
//**
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*ZMHT78R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF33T12),DISP=SHR
//**
//**********************************************************************
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************
//**********************************************************************
//*        REPORTE  DE CTAS CON SOLICITUDES DE CARGO                   *
//*                      -- ZM4DHT79 --              *** CAPITALES     *
//**********************************************************************
//**********************************************************************
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************
//*PHF33P11 EXEC PGM=IKJEFT01,COND=(4,LT)
//**
//*ZMHT79A1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD33,DISP=SHR
//**
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*ZMHT79R DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF33T11),DISP=SHR
//**
//**********************************************************************
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************
//**********************************************************************
//*        REPORTE  DE CAMBIOS A CONTRATOS                             *
//*                      -- ZM4DHT64  --                *** CONTRATOS  *
//**********************************************************************
//*PHF33P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//**
//*ZMHT64A1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD33,DISP=SHR
//**
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*ZMHT64R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF33T10),DISP=SHR
//**
//**********************************************************************
//*        REPORTES DE OPERACIONES WARRANTS PARA SIVACTOS DERIVADOS    *
//*                       -- ZM4DHU89 --                               *
//**********************************************************************
//*PHF33P08 EXEC PGM=IKJEFT01,COND=(4,LT)
//**
//*ZMHU89A1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD33,DISP=SHR
//**
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*ZMHU89R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZMHU89R3 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZMHU89R4 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF33T08),DISP=SHR
//**
//**********************************************************************
//* OBJETIVO :   REPORTE DE OPERACION PROPIA.                          *
//*              -- ZM4DHJ53 --                                        *
//* PASO REINICIABLE POR RESTART                        *** CAPITALES  *
//**********************************************************************
//*PHF33P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//**
//*ZMHJ53A1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD33,DISP=SHR
//**
//*ZMHJ53R1 DD SYSOUT=*
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN DD DSN=ZIVA.ZME.CONTROL(ZHF33T07),DISP=SHR
//**
//**********************************************************************
//* OBJETIVO : GENERA ARCHIVO Y REPORTE COMPARATIVO DE POSTURAS VI-    *
//*            GENTES DE OPERACIONES EFECTUADAS EN TRE CASA DE BOLSA   *
//*            Y SENTRA-BMV.  -- ZM4DHW20 --                           *
//**********************************************************************
//*PHF33P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//**
//*ZMHW20A1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD33,DISP=SHR
//**
//*ZMHW20R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZMHW20A2 DD DSN=SIVA.MDC.FIX.E&EMP..POSTURAS,
//*            DISP=(NEW,CATLG,DELETE),
//*            DCB=(LRECL=175,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//**
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF33T06),DISP=SHR
//**
//**********************************************************************
//* OBJETIVO : GENERAR ARCHIVO CON LOS DATOS DE LAS EMISORAS Y         *
//*            SERIES VALIDAS. -- ZM4DH009 --                          *
//**********************************************************************
//PHF33P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMH009A1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD33,DISP=SHR
//*TRANSFER (EMCM)
//ZMH009A2 DD DSN=SIVA.MDC.FIX.E&EMP..EMISORAS.ETRADE,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=100,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF33T05),DISP=SHR
//*
//**********************************************************************
//* OBJETIVO: CARGA DE REGISTROS PARA ENVIAR A LA BMV ORDENES          *
//*           VIGENTES QUE NO HAN SIDO RECIBIDAS EN ORDNBMV Y          *
//*           CANCELACIONES EFECTUADAS AYER DESPUES DE LA              *
//*           HORA DE CIERRE (PARAM P15). -- ZM4DHV16 --               *
//* PASO REINICIABLE POR RESTART.                       *** CAPITALES  *
//**********************************************************************
//PHF33P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHU16A1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD33,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF33T04),DISP=SHR
//*
//**********************************************************************
//* OBJETIVO : CARGA DE REGISTROS PARA ENVIAR A LA BMV ORDENES, CANCE- *
//*            LACIONES Y MODIFICACIONDES DE POSTURAS DE ACUERDO A     *
//*            ARCHIVO DE DIFERENCIAS.                                 *
//*            -- ZM4DHW25 --                                          *
//**********************************************************************
//PHF33P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHW25A1  DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD33,DISP=SHR
//*
//ZMHW25A2 DD DSN=SIVA.MDC.FIX.E&EMP..POSTURAS,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF33T03),DISP=SHR
//*
//**********************************************************************
//* OBJETIVO: CARGA DE REGISTROS PARA ENVIAR A LA BMV  ORDENES Y       *
//*           CANCELACIONES CAPTURADAS DESPUES DE LA HORA DE           *
//*           CIERRE (PARAM P15). -- ZM4DHW24 -                        *
//* PASO REINICIABLE POR RESTART.                       *** CAPITALES  *
//**********************************************************************
//PHF33P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHW24A1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD33,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF33T02),DISP=SHR
//*
//**********************************************************************
//* OBJETIVO: INSERTA EVENTO DE CONTINGENCIA Y BORRA AMCLOG            *
//*           ACTUALIZA TABLA : CTLPROC Y AMCLOG.                      *
//*           PASO REINICIABLE POR RESTART.             *** CAPITALES  *
//*                        -- ZM4DHT32 --                              *
//**********************************************************************
//PHF33P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHT32A1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD33,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF33T01),DISP=SHR
//*
//**********************************************************************
//*  PASO:  0     ARCHIVOS DE CUENTAS DE SOBRANTES                     *
//*  PHF33P00                                                          *
//*                                                         ZM4DHB30   *
//**********************************************************************
//PHF33P00 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHB30R1 DD DSN=MXCP.ZM.FIX.ARCHIVO.SOBRANT,
//            DISP=(NEW,CATLG,CATLG),
//            DCB=(DSORG=PS,RECFM=FBA,LRECL=289,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHB30T01),DISP=SHR
//*
//*FS-1.1.0-13-I
//**********************************************************************
//* OBJETIVO: DEPURAR LA TABLA ZMDT645 Y LIMPIAR LOS PARAMETROS        *
//*           UTILIZADOS POR LA RUTINA ZM9RHV80.                       *
//*                        -- ZM4VER01 --                              *
//**********************************************************************
//PHF33P33 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF33V19),DISP=SHR
//*
//*FS-1.1.0-13-F
//**********************************************************************
//*        REPORTES DE ORDENES SOLICITADAS Y CANCELADAS                *
//*                        -- ZM4DHU86 -- NUEVO ZM4DHV86               *
//**********************************************************************
//**PHF33P0A EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//**ZMHV86P1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD33,DISP=SHR
//*
//**ZMHV86R1 DD SYSOUT=*
//**ZMHV86R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//**ZMHV86R3 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//**ZMHV86A1 DD DSN=SIVA.MDC.FIX.E&EMP..VIBV86A1,
//**            DISP=(NEW,CATLG,DELETE),
//**            DCB=(LRECL=133,RECFM=FB,BLKSIZE=0,DSORG=PS),
//**            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//**ZMHV86A2 DD DSN=SIVA.MDC.FIX.E&EMP..ORDEN.X.EMISV86,
//**            DISP=(NEW,CATLG,DELETE),
//**            DCB=(LRECL=136,RECFM=FB,BLKSIZE=0,DSORG=PS),
//**            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//**ZMHV86A5 DD DSN=SIVA.MDC.FIX.E&EMP..ORDEN.CANCV86,
//**            DISP=(NEW,CATLG,DELETE),
//**            DCB=(LRECL=239,RECFM=FB,BLKSIZE=0,DSORG=PS),
//**            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//**ZMHV86T1 DD DSN=ZIVA.ZME.CONTROL(ZHF33T26),DISP=SHR
//**SYSTSPRT DD SYSOUT=*
//**SYSPRINT DD SYSOUT=*
//**SYSOUT   DD SYSOUT=*
//**SYSDBOUT DD SYSOUT=*
//**SYSABOUT DD DUMMY
//**SYSUDUMP DD DUMMY
//**SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF33T0A),DISP=SHR
//*
//**********************************************************************
//*        REPORTES DE OPERACIONES WARRANTS PARA SIVACTOS DERIVADOS    *
//*                       -- ZM4DHU89 -- NUEVO ZM4DHV89                *
//**********************************************************************
//*PHF33P0B EXEC PGM=IKJEFT01,COND=(4,LT)
//**
//*ZMHV89A1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD33,DISP=SHR
//**
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*ZMHV89R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZMHV89R3 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZMHV89R4 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF33T0B),DISP=SHR
//**
//**********************************************************************
//**********************************************************************
//*                                                                    *
//*     ===   F I N    D E    P R O C E S O   ===                      *
//*     ===        C A P I T A L E S          ===                      *
//*                                                                    *
//**********************************************************************
//*  PEND           FIN DE PROCEDIMIENTO ZMHFPD33                      *
//**********************************************************************
