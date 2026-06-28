//ZMLCPD03 PROC
//*********************************************************************
//*
//* OBJETIVO : EJECUTA LOS CORTES DE CUPON DE MERCADO DE DINERO
//*********************************************************************
//*********************************************************************
//* MODIFICACION : SE ELIMINA DE LA CADENA EL PROG ZM4DLN77 YA QUE      00000700
//*                LA PREPARACION DE AMORTIZACION LA HACE EL ZM4DLH60   00000800
//*
//* GETRONICS (IEF 2005-02-04)                                          00001000
//** * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * ** 00001100
//** LOG           : FIDEICOMISOS-09                                 ** 00001200
//** RESPONSABLE   : ACCENTURE (YPC)                                 ** 00001300
//** FECHA         : 2009-03-02                                      ** 00001400
//** DESCRIPCION   : AGREGAR EL REPORTE POR AMORTIZACION DE EMISORAS ** 00001500
//**                 PARA LOS CONTRATOS DE FIDEICOMISOS.           S ** 00001600
//** * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * ** 00001700
//** * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * ** 00001810
//** LOG           : FS-1.1.0-01                                     ** 00001820
//** RESPONSABLE   : CDA INFORMATICA (ARGENTINA)                     ** 00001830
//** FECHA         : 2010-12-08                                      ** 00001840
//** DESCRIPCION   : AGREGAR EL PASO PLC0305A.                       ** 00001850
//** * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * ** 00001810
//** LOG           : CALIDAD-DELDATO                                 ** 00001820
//** RESPONSABLE   : XM010ZL PROYECTO CALIDAD DE DATOS PARA          ** 00001830
//**                 CONSTANCIAS.                                    ** 00001830
//** FECHA         : 2019-10-10                                      ** 00001840
//** DESCRIPCION   : SE INCLUYE ARCHIVO SALIDA -> ENTRADA            ** 00001850
//**                 PARA BLOQUEO DE CONTRASTOS QUE PAGAN GARANTIAS  ** 00001850
//** * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * ** 00001870
//** * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * ** 00001880
//*********************************************************************
//**********************************************************************
//* OBJETIVO : CREAR ARCHIVO DE PARAMETROS
//**********************************************************************
//*
//PLC03065 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','     ','     ',)      00002400
//ZMG001A1 DD DSN=MXC&AMB..ZM.TMP.MDD.E&EMP..S&SUC..ZMLCPD03,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*********************************************************************
//*                   -- ZM4DLE11 --
//* OBJETIVO : INICIALIZA EL EVENTO PARA LIMITAR LAS COMPRAS Y VENTAS
//*            ENCIENDE EL EVENTO PD5 -- 'I' --
//*
//* PASO REINICIABLE POR RESTART.
//*********************************************************************
//*
//PLC03060 EXEC PGM=IKJEFT01,COND=(4,LT)                                00004600
//*
//ZMLE11A1 DD DSN=MXC&AMB..ZM.TMP.MDD.E&EMP..S&SUC..ZMLCPD03,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLC03060),DISP=SHR
//*
//**********************************************************************
//*                   -- ZM4DLH67 --
//* OBJETIVO : EFECTUAR CORTES DE CUPOS MDD.
//*
//* PASO REINICIABLE POR RESTART.
//**********************************************************************
//*
//PLC03058 EXEC PGM=IKJEFT01,COND=(4,LT)                                00006500
//*
//ZMLH67A1 DD DSN=MXC&AMB..ZM.TMP.MDD.E&EMP..S&SUC..ZMLCPD03,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLC03058),DISP=SHR
//**********************************************************************
//*                   -- ZM4DLH57 --
//* OBJETIVO : PAGO DE INTERESES POR CORTE DE CUPON.
//*
//* ACTUALIZA TABLA : CARTERA,OPERDIN,REDAUXI.
//*
//* PASO REINICIABLE POR RESTART.
//**********************************************************************
//*
//PLC03055 EXEC PGM=IKJEFT01,COND=(4,LT)                                00008500
//*
//ZMLH57A1 DD DSN=MXC&AMB..ZM.TMP.MDD.E&EMP..S&SUC..ZMLCPD03,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//*ZMLH57R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    00009300
//ZMLH57R1 DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..ZMLH57R1,           00009300
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,LRECL=133,BLKSIZE=0,RECFM=FBA)
//*ZMLH57R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMLH57R2 DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..ZMLH57R2,           00009400
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,LRECL=81,BLKSIZE=0,RECFM=FBA)
//ZMLH57S1 DD  DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..ZM4DLH57,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(20,10),RLSE),
//             DCB=(DSORG=PS,LRECL=85,BLKSIZE=0,RECFM=FB)
//*CALIDAD-DELDATO-I
//ZMLH57S2 DD  DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..ZMLH57S2,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(20,10),RLSE),
//             DCB=(DSORG=PS,LRECL=10,BLKSIZE=0,RECFM=FB)
//*CALIDAD-DELDATO-F
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLC03055),DISP=SHR
//*
//*CALIDAD-DELDATO-I
//**********************************************************************
//*  PROGRAMA: ZM4DLX31
//*  FUNCION:  ACTUALIZA LA TABLA CUENTA Y CAUSCAN CANDADO 1 PARA
//*            GARANTIAS DE AMORTIZACION
//**********************************************************************
//PLC41P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA  DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..ZMLH57S2,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLC41T01),DISP=SHR
//*CALIDAD-DELDATO-F
//**********************************************************************
//*                   -- SORT REPORTE DE CORTE DE CUPON --
//*
//* PASO REINICIABLE POR RESTART.
//**********************************************************************
//*
//PLC03054 EXEC PGM=ICEMAN,COND=(4,LT)                                  00011000
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..ZM4DLH57,DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..ZM4DLH57.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=85,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLC03054),DISP=SHR
//*
//**********************************************************************
//*                   -- ZM4DLH53 --
//* OBJETIVO : GENERA REPORTE DE LOS MOVIMIENTOS DE CORTE DE CUPON
//*
//* ACTUALIZA TABLA :
//*
//* PASO REINICIABLE POR RESTART.
//**********************************************************************
//PLC03053 EXEC PGM=IKJEFT01,COND=(4,LT)                                00013200
//*
//ZMLH53S1 DD DSN=MXCP.ZM.FIX.MDD.E&EMP..S&SUC..ZM4DLH57.SORT,DISP=SHR
//*ZMLH53R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    00013500
//ZMLH53R1 DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..ZMLH53R1,           00013500
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,LRECL=133,BLKSIZE=0,RECFM=FBA)
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLC03053),DISP=SHR
//*
//*FS-1.1.0-01-I
//**********************************************************************
//*                   -- ZM4DLH50 --
//* OBJETIVO : GENERA REPORTE DE LOS MOVIMIENTOS DE CORTE DE CUPON
//* PARA EL AREA FIDUCUARIA.
//*
//* ACTUALIZA TABLA :
//*
//* PASO REINICIABLE POR RESTART.
//**********************************************************************
//PLC0305A EXEC PGM=IKJEFT01,COND=(4,LT)                                00014591
//*
//ZMLH50S1 DD DSN=MXCP.ZM.FIX.MDD.E&EMP..S&SUC..ZM4DLH57.SORT,DISP=SHR
//*ZMLH50R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    00014594
//ZMLH50R1 DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..ZMLH50R1,           00014594
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,LRECL=133,BLKSIZE=0,RECFM=FBA)
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLC03056),DISP=SHR
//*
//*FS-1.1.0-01-F
//*
//**********************************************************************
//*                   -- ZM4DLN65 --
//* OBJETIVO : REPORTE DE MOVS GENERADOS DE ISR POR EL CORTE DE CUPON.
//* (CASA)
//* ACTUALIZA TABLA :
//*
//* PASO REINICIABLE POR RESTART.
//**********************************************************************
//*
//PLC03050 EXEC PGM=IKJEFT01,COND=(4,LT)                                00015500
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//*ZMLN65R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    00016200
//ZMLN65R1 DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..ZMLN65R1,           00016200
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,LRECL=133,BLKSIZE=0,RECFM=FBA)
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLC03050),DISP=SHR
//*
//**********************************************************************
//*                   -- ZM4DLE17 --
//* OBJETIVO : MOVTO. DE INTERESES POR CORTE DE CUPON.
//*
//* ACTUALIZA TABLA : OPERDIN.
//*
//* PASO REINICIABLE POR RESTART.
//**********************************************************************
//*
//PLC03045 EXEC PGM=IKJEFT01,COND=(4,LT)                                00017700
//*
//ZMLE17A1 DD DSN=MXC&AMB..ZM.TMP.MDD.E&EMP..S&SUC..ZMLCPD03,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//*ZMLE17R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    00018500
//ZMLE17R1 DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..ZMLE17R1,           00018500
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,LRECL=133,BLKSIZE=0,RECFM=FBA)
//ZMLE17S1 DD  DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..ZM4DLE17,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(20,10),RLSE),
//             DCB=(DSORG=PS,LRECL=181,BLKSIZE=0,RECFM=FB)
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLC03045),DISP=SHR
//*
//**********************************************************************
//*                   -- ZM4ESF58 --
//* OBJETIVO : ASIGNACION AUTOMATICA DE GRUPOS DE INSTRUMENTOS
//*
//* ACTUALIZA TABLA : AGPOCON
//*
//* PASO REINICIABLE POR RESTART.
//**********************************************************************
//*
//PLC03040 EXEC PGM=IKJEFT01,COND=(4,LT)                                00020400
//*
//ZMSF58A1 DD DSN=MXC&AMB..ZM.TMP.MDD.E&EMP..S&SUC..ZMLCPD03,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//*ZMSF58R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    00021100
//ZMSF58R1 DD  DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..ZMSF58R1,          00021100
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(20,10),RLSE),
//             DCB=(DSORG=PS,LRECL=133,BLKSIZE=0,RECFM=FBA)
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLC03040),DISP=SHR
//*
//**********************************************************************
//*                   -- ZM4DLH60 --
//* OBJETIVO : GENERACION DE MOVIMIENTOS DE AMORTIZACION DE EMISORAS
//*
//* ACTUALIZA TABLA : REDAUXI.
//*
//* PASO REINICIABLE POR RESTART.
//**********************************************************************
//*
//PLC03035 EXEC PGM=IKJEFT01,COND=(4,LT)                                00022600
//*
//ZMLH60A1 DD DSN=MXC&AMB..ZM.TMP.MDD.E&EMP..S&SUC..ZMLCPD03,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLC03035),DISP=SHR
//*
//**********************************************************************
//*                   -- ZM4DLN78 --
//* OBJETIVO : ACTUALIZACION DE CARTERAS POR AMORTIZACION DE EMISORAS.
//*
//* ACTUALIZA TABLA : CARTERA,OPERDIN,REPORTO,REDENMD
//*
//* PASO REINICIABLE POR RESTART.
//**********************************************************************
//*
//PLC03025 EXEC PGM=IKJEFT01,COND=(4,LT)                                00024700
//*
//ZMLN78A1 DD DSN=MXC&AMB..ZM.TMP.MDD.E&EMP..S&SUC..ZMLCPD03,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLC03025),DISP=SHR
//*
//**********************************************************************
//*                   -- ZM4DLH59 --
//* OBJETIVO : GENERACION DE REPORTES POR AMORTIZACION DE EMISORAS.
//*
//* ACTUALIZA TABLA :
//*
//* PASO REINICIABLE POR RESTART.
//**********************************************************************
//*                   PASO PARA CASA DE BOLSA
//**********************************************************************
//PLC03020 EXEC PGM=IKJEFT01,COND=(4,LT)                                00027000
//*
//ZMLH59A1 DD DSN=MXC&AMB..ZM.TMP.MDD.E&EMP..S&SUC..ZMLCPD03,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//*ZMLH59R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    00027700
//ZMLH59R1 DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..ZMLH59R1,           00027700
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,LRECL=133,BLKSIZE=0,RECFM=FBA)
//*ZMLH59R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    00027800
//ZMLH59R2 DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..ZMLH59R2,           00027800
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,LRECL=133,BLKSIZE=0,RECFM=FBA)
//*
//** FIDEICOMISOS-09 INI
//*ZMLH59F1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    00028100
//ZMLH59F1 DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..ZMLH59F1,           00028100
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,LRECL=133,BLKSIZE=0,RECFM=FBA)
//*ZMLH59F2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    00028300
//ZMLH59F2 DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..ZMLH59F2,           00028300
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,LRECL=133,BLKSIZE=0,RECFM=FBA)
//** FIDEICOMISOS-09 FIN
//*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLC03020),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4DLD30 --
//* OBJETIVO : CARGA LA MATRIZ DE INVENTARIO
//*
//**********************************************************************
//*
//PLC03015 EXEC PGM=IKJEFT01,COND=(4,LT)                                00029900
//*
//ZMLD30P1 DD DSN=MXC&AMB..ZM.TMP.MDD.E&EMP..S&SUC..ZMLCPD03,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLC03015),DISP=SHR
//*
//**********************************************************************
//**********************************************************************
//*                   -- ZM4DLE11 --
//* OBJETIVO : ACTUALIZA EL EVENTO PARA LIMITAR LAS COMPRAS Y VENTAS
//*            APAGA EVENTO PD5 -- 'F' --
//*
//* PASO REINICIABLE POR RESTART.
//**********************************************************************
//*
//PLC03010 EXEC PGM=IKJEFT01,COND=(4,LT)                                00032000
//*
//ZMLE11A1 DD DSN=MXC&AMB..ZM.TMP.MDD.E&EMP..S&SUC..ZMLCPD03,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLC03010),DISP=SHR
//**********************************************************************
//*                   -- ZM4DLE11 --
//* OBJETIVO : ACTUALIZA EL EVENTO PARA LIMITAR LAS COMPRAS Y VENTAS
//*            APAGA EVENTO CCP -- 'F' --
//*
//* PASO REINICIABLE POR RESTART.
//**********************************************************************
//*
//PLC03005 EXEC PGM=IKJEFT01,COND=(4,LT)                                00033900
//*
//ZMLE11A1 DD DSN=MXC&AMB..ZM.TMP.MDD.E&EMP..S&SUC..ZMLCPD03,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLC03005),DISP=SHR
//*
//*---------------------------------------------------------------------
//*                       ---  ZM4DLH57  ---                      KHM
//* OBJETIVO: COPIA DEL ARCHIVO DEL PASO PLC03055
//*           MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..ZMLH57R1
//*           PARA GENERAR EL REPORTE ZMLE17R1
//*---------------------------------------------------------------------
//PLC03000 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD  DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..ZMLH57R1,DISP=SHR
//SYSUT2   DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD  DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//*---------------------------------------------------------------------
//*                       ---  ZM4DLH57  ---                      KHM
//* OBJETIVO: COPIA DEL ARCHIVO DEL PASO PLC03055
//*           MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..ZMLH57R2
//*           PARA GENERAR EL REPORTE ZMLH57R2
//*---------------------------------------------------------------------
//PLC02995 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD  DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..ZMLH57R2,DISP=SHR
//SYSUT2   DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD  DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//*---------------------------------------------------------------------
//*                        -- ZM4DLH53 --                         KHM
//* OBJETIVO: COPIA DEL ARCHIVO DEL PASO PLC03053
//*           MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..ZMLH53R1
//*           PARA GENERAR EL REPORTE ZMLH53R1
//*---------------------------------------------------------------------
//PLC02990 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD  DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..ZMLH53R1,DISP=SHR
//SYSUT2   DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD  DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//*---------------------------------------------------------------------
//*                        -- ZM4DLH50 --                         KHM
//* OBJETIVO: COPIA DEL ARCHIVO DEL PASO PLC0305A
//*           MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..ZMLH50R1
//*           PARA GENERAR EL REPORTE ZMLH50R1
//*---------------------------------------------------------------------
//PLC02985 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD  DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..ZMLH50R1,DISP=SHR
//SYSUT2   DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD  DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//*---------------------------------------------------------------------
//*                        -- ZM4DLN65 --                         KHM
//* OBJETIVO: COPIA DEL ARCHIVO DEL PASO PLC03050
//*           MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..ZMLN65R1
//*           PARA GENERAR EL REPORTE ZMLN65R1
//*---------------------------------------------------------------------
//PLC02980 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD  DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..ZMLN65R1,DISP=SHR
//SYSUT2   DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD  DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//*---------------------------------------------------------------------
//*                        -- ZM4DLE17 --                         KHM
//* OBJETIVO: COPIA DEL ARCHIVO DEL PASO PLC03045
//*           MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..ZMLE17R1
//*           PARA GENERAR EL REPORTE ZMLE17R1
//*---------------------------------------------------------------------
//PLC02975 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD  DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..ZMLE17R1,DISP=SHR
//SYSUT2   DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD  DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//*---------------------------------------------------------------------
//*                        -- ZM4ESF58 --                         KHM
//* OBJETIVO: COPIA DEL ARCHIVO DEL PASO PLC03040
//*           MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..ZMSF58R1
//*           PARA GENERAR EL REPORTE ZMSF58R1
//*---------------------------------------------------------------------
//PLC02970 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD  DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..ZMSF58R1,DISP=SHR
//SYSUT2   DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD  DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//*---------------------------------------------------------------------
//*                        -- ZM4DLH59 --                         KHM
//* OBJETIVO: COPIA DEL ARCHIVO DEL PASO PLC03020
//*           MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..ZMLH59R1
//*           PARA GENERAR EL REPORTE ZMLH59R1
//*---------------------------------------------------------------------
//PLC02965 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD  DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..ZMLH59R1,DISP=SHR
//SYSUT2   DD  DUMMY
//*SYSUT2   DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD  DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//*---------------------------------------------------------------------
//*                        -- ZM4DLH59 --                         KHM
//* OBJETIVO: COPIA DEL ARCHIVO DEL PASO PLC03020
//*           MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..ZMLH59R2
//*           PARA GENERAR EL REPORTE ZMLH59R2
//*---------------------------------------------------------------------
//PLC02960 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD  DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..ZMLH59R2,DISP=SHR
//SYSUT2   DD  DUMMY
//*SYSUT2   DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD  DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//*---------------------------------------------------------------------
//*                        -- ZM4DLH59 --                         KHM
//* OBJETIVO: COPIA DEL ARCHIVO DEL PASO PLC03020
//*           MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..ZMLH59F1
//*           PARA GENERAR EL REPORTE ZMLH59F1
//*---------------------------------------------------------------------
//PLC02955 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD  DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..ZMLH59F1,DISP=SHR
//SYSUT2   DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD  DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//*---------------------------------------------------------------------
//*                        -- ZM4DLH59 --                         KHM
//* OBJETIVO: COPIA DEL ARCHIVO DEL PASO PLC03020
//*           MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..ZMLH59F2
//*           PARA GENERAR EL REPORTE ZMLH59F2
//*---------------------------------------------------------------------
//PLC02950 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD  DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..ZMLH59F2,DISP=SHR
//SYSUT2   DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD  DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
