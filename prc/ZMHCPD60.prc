//**********************************************************************
//ZMHCPD60  PROC
//**********************************************************************
//*                                                                    *
//*                   C A S A   D E  B O L S A                         *
//*                   ========================                         *
//*                   <<  V A L O R E S  >>                            *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  ZMHCPD60 2DA. PARTE DEL CIERRE.                  *
//*                   CIERRE DE DIA DEL MODULO DE CAPITALES            *
//*                                                                    *
//* OBJETIVO       :  CERRAR LA OPERACION DEL DIA DE CAPITALES ENVIADO *
//*                   POR CONTROL-M                                    *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  ZMHCPD70 (CIERRE DE CAPITALES 3RA. ULTIMA PARTE).*
//*                                                                    *
//* DESPUES DE     :  ZMHCPD10 (CIERRE DE CAPITALES 1RA. PARTE).       *
//*                                                                    *
//* PERIODICIDAD   :  DIARIO                                           *
//*                                                                    *
//* ELABORADO POR  : ERNESTO MANUEL CUAUTLE MARTINEZ                   *
//*                                                               OSCT *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//**********************************************************************
//*                                                                    *
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*
//*  PHC60P12     GRABA EN UN ARCHIVO SECUENCIAL.                      *
//*                                                         ZM3DH001   *
//**********************************************************************
//*                     ===   INICIO DE     ===                        *
//*                     ===   CAPITALES     ===                        *
//**********************************************************************
//PHC60P12 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','CBPZPR','     ',)
//PI601765  DD DUMMY
//*
//ZMG001A1 DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..ZMHFPD60,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(5,1),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//*--------------------------------------------------------------------*
//*        ACTUALIZA TABLA DE ISR PARA MANEJO DE PEPS - VIBB78E        *
//* PASO REINICIABLE POR RESTART  -- ZM4DH78E --                       *
//*--------------------------------------------------------------------*
//PHC60P11 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMH78EA1 DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..ZMHFPD60,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC60T11),DISP=SHR
//*
//**********************************************************************
//*---------------------------------------------------------------------
//*        -- VOB514D --       -- ZM4DH514 --                          *
//*        ACTUALIZA CARTERA Y GENERA SIVA DE LA ASIGNACION DEFINITIVA *
//* PASO REINICIABLE POR RESTART                                       *
//*--------------------------------------------------------------------*
//PHC60P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMH514A1 DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..ZMHFPD60,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC60T10),DISP=SHR
//**********************************************************************
//*--------------------------------------------------------------------*
//*        REPORTE DE VENTAS CON CARGO DE ISR. - VIBB72E               *
//*        -- ZM4DH72E --                                              *
//*--------------------------------------------------------------------*
//PHC60P09 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMH72EA1 DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..ZMHFPD60,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//ZMH72ER1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC60T09),DISP=SHR
//*
//**********************************************************************
//*--------------------------------------------------------------------*
//*                    = VIB467D =   -- ZM4DH467 --                    *
//*        REPORTE COMPRAS/VENTAS MISMO DIA MISMA EMISORA              *
//*--------------------------------------------------------------------*
//PHC60P08 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMH467A1 DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..ZMHFPD60,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//ZMH467R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC60T08),DISP=SHR
//**********************************************************************
//*--------------------------------------------------------------------*
//*        -- VIB483D --      -- ZM4DH483 --                           *
//*        REPORTES DE ORDENES SOLICITADAS Y POSICIONES CON PICO       *
//*--------------------------------------------------------------------*
//PHC60P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMH483A1 DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..ZMHFPD60,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//PDR483R1 DD DSN=&&PDR483R1,DISP=(,PASS),UNIT=3390,
//            DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//POL483R1 DD DSN=&&POL483R1,DISP=(,PASS),UNIT=3390,
//            DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//SAT483R1 DD DSN=&&SAT483R1,DISP=(,PASS),UNIT=3390,
//            DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//TIJ483R1 DD DSN=&&TIJ483R1,DISP=(,PASS),UNIT=3390,
//            DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//CDJ483R1 DD DSN=&&CDJ483R1,DISP=(,PASS),UNIT=3390,
//            DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//HER483R1 DD DSN=&&HER483R1,DISP=(,PASS),UNIT=3390,
//            DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//MTY483R1 DD DSN=&&MTY483R1,DISP=(,PASS),UNIT=3390,
//            DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//TOR483R1 DD DSN=&&TOR483R1,DISP=(,PASS),UNIT=3390,
//            DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//CHI483R1 DD DSN=&&CHI483R1,DISP=(,PASS),UNIT=3390,
//            DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//MAZ483R1 DD DSN=&&MAZ483R1,DISP=(,PASS),UNIT=3390,
//            DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//KRO483R1 DD DSN=&&KRO483R1,DISP=(,PASS),UNIT=3390,
//            DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//SLP483R1 DD DSN=&&SLP483R1,DISP=(,PASS),UNIT=3390,
//            DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//GUA483R1 DD DSN=&&GUA483R1,DISP=(,PASS),UNIT=3390,
//            DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//ZAC483R1 DD DSN=&&ZAC483R1,DISP=(,PASS),UNIT=3390,
//            DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//JER483R1 DD DSN=&&JER483R1,DISP=(,PASS),UNIT=3390,
//            DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//LEO483R1 DD DSN=&&LEO483R1,DISP=(,PASS),UNIT=3390,
//            DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//MOR483R1 DD DSN=&&MOR483R1,DISP=(,PASS),UNIT=3390,
//            DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//AGS483R1 DD DSN=&&AGS483R1,DISP=(,PASS),UNIT=3390,
//            DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//TAM483R1 DD DSN=&&TAM483R1,DISP=(,PASS),UNIT=3390,
//            DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//VER483R1 DD DSN=&&VER483R1,DISP=(,PASS),UNIT=3390,
//            DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//JAL483R1 DD DSN=&&JAL483R1,DISP=(,PASS),UNIT=3390,
//            DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//MER483R1 DD DSN=&&MER483R1,DISP=(,PASS),UNIT=3390,
//            DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//TOL483R1 DD DSN=&&TOL483R1,DISP=(,PASS),UNIT=3390,
//            DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//PUE483R1 DD DSN=&&PUE483R1,DISP=(,PASS),UNIT=3390,
//            DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//MMP483R1 DD DSN=&&MMP483R1,DISP=(,PASS),UNIT=3390,
//            DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//SAN483R1 DD DSN=&&SAN483R1,DISP=(,PASS),UNIT=3390,
//            DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//CUL483R1 DD DSN=&&CUL483R1,DISP=(,PASS),UNIT=3390,
//            DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//MMU483R1 DD DSN=&&MMU483R1,DISP=(,PASS),UNIT=3390,
//            DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//ZZZ483R1 DD SYSOUT=(V,,ZZZ)
//ZPR483R1 DD SYSOUT=(M,,OP02)
//ZMH483T1 DD DISP=(,PASS),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=158,BLKSIZE=0),
//            SPACE=(CYL,(5,1),RLSE)
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(1,1),RLSE)
//SORTWK02 DD UNIT=3390,SPACE=(CYL,(1,1),RLSE)
//SORTWK03 DD UNIT=3390,SPACE=(CYL,(1,1),RLSE)
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC60T07),DISP=SHR
//**********************************************************************
//*--------------------------------------------------------------------*
//*                        -- ICEGENER --                              *
//*   OBJETIVO: MANDA A COMPRIMIDO ARCHIVOS ANTERIORES PARA SU SEPARA  *
//*             CION POR CTD                                           *
//* ACTUALIZA TABLA : NINGUNA.                                         *
//* PASO REINICIABLE POR RESTART.                                      *
//*--------------------------------------------------------------------*
//PHC60P06 EXEC PGM=ICEGENER,COND=(4,LT)
//PI601765  DD DUMMY
//*
//SYSUT1   DD DSN=&&PDR483R1,DISP=(OLD,DELETE)
//         DD DSN=&&POL483R1,DISP=(OLD,DELETE)
//         DD DSN=&&SAT483R1,DISP=(OLD,DELETE)
//         DD DSN=&&TIJ483R1,DISP=(OLD,DELETE)
//         DD DSN=&&CDJ483R1,DISP=(OLD,DELETE)
//         DD DSN=&&HER483R1,DISP=(OLD,DELETE)
//         DD DSN=&&MTY483R1,DISP=(OLD,DELETE)
//         DD DSN=&&TOR483R1,DISP=(OLD,DELETE)
//         DD DSN=&&CHI483R1,DISP=(OLD,DELETE)
//         DD DSN=&&MAZ483R1,DISP=(OLD,DELETE)
//         DD DSN=&&KRO483R1,DISP=(OLD,DELETE)
//         DD DSN=&&SLP483R1,DISP=(OLD,DELETE)
//         DD DSN=&&GUA483R1,DISP=(OLD,DELETE)
//         DD DSN=&&ZAC483R1,DISP=(OLD,DELETE)
//         DD DSN=&&JER483R1,DISP=(OLD,DELETE)
//         DD DSN=&&LEO483R1,DISP=(OLD,DELETE)
//         DD DSN=&&MOR483R1,DISP=(OLD,DELETE)
//         DD DSN=&&AGS483R1,DISP=(OLD,DELETE)
//         DD DSN=&&TAM483R1,DISP=(OLD,DELETE)
//         DD DSN=&&VER483R1,DISP=(OLD,DELETE)
//         DD DSN=&&JAL483R1,DISP=(OLD,DELETE)
//         DD DSN=&&MER483R1,DISP=(OLD,DELETE)
//         DD DSN=&&TOL483R1,DISP=(OLD,DELETE)
//         DD DSN=&&PUE483R1,DISP=(OLD,DELETE)
//         DD DSN=&&MMP483R1,DISP=(OLD,DELETE)
//         DD DSN=&&SAN483R1,DISP=(OLD,DELETE)
//         DD DSN=&&CUL483R1,DISP=(OLD,DELETE)
//         DD DSN=&&MMU483R1,DISP=(OLD,DELETE)
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DUMMY
//**********************************************************************
//*--------------------------------------------------------------------*
//*                        -- VIBT01D --    -- ZM4DHT01 --             *
//*   OBJETIVO: REPORTAR OPERACIONES DE EMISORAS DEL GFP               *
//* ACTUALIZA TABLA : NINGUNA.                                         *
//* PASO REINICIABLE POR RESTART.                                      *
//*--------------------------------------------------------------------*
//PHC60P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMHT01A1 DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..ZMHFPD60,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//ZMHT01R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC60T05),DISP=SHR
//**********************************************************************
//*--------------------------------------------------------------------*
//*        -- VIBV34D --      -- ZM4DHV34 --                           *
//* OBJETIVO : GENERA REPORTE ASIGNACION CUENTAS JUMBO   (VIBV34D)     *
//*   PASO REINICIABLE                                                 *
//*--------------------------------------------------------------------*
//PHC60P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMHV34A1 DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..ZMHFPD60,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//ZMHV34R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC60T04),DISP=SHR
//**********************************************************************
//*--------------------------------------------------------------------*
//*            -- VIBV95D --       -- ZM4DHV95 --                      *
//* OBJETIVO : GENERA REPORTE OPERACIONES DE CAPITALES   (VIBV95D)     *
//*            DE CLIENTES DEL AREA INTERNACIONAL.                     *
//*   PASO REINICIABLE                                                 *
//*--------------------------------------------------------------------*
//PHC60P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMHV95A1 DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..ZMHFPD60,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//ZMHV95R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC60T03),DISP=SHR
//**********************************************************************
//*--------------------------------------------------------------------*
//*             -- VIBV97D --   -- ZM4DHV97 --                         *
//* OBJETIVO : GENERA REPORTE DE OPERACION DE CAPITALES  (VIBV97D)     *
//*            DE CLIENTES BP.                                         *
//*   PASO REINICIABLE                                                 *
//*--------------------------------------------------------------------*
//PHC60P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMHV97A1 DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..ZMHFPD60,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//ZMHV97R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC60T02),DISP=SHR
//**********************************************************************
//*--------------------------------------------------------------------*
//*         -- VIBV98D --     -- ZM4DHV98 --                           *
//* OBJETIVO : GENERA REPORTE DE OPERACIONES DE CAPITALES(VIBV98D)     *
//*            DE CLIENTES INSTITUCIONALES.                            *
//*   PASO REINICIABLE                                                 *
//*--------------------------------------------------------------------*
//PHC60P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMHV98A1 DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..ZMHFPD60,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//ZMHV98R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC60T01),DISP=SHR
