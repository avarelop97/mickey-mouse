//ZMJPNZ20 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                   >>>>  SOCIEDADES DE INVERSION  <<<<              *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   DISPARADOR:  SIVAXRCS (SUBMITIDOR LINEA)                         *
//*                CBJPCZ20 (CTL-M)                                    *
//*   PROCEDIM. :  ZMJPNZ20   OPC. 533                                 *
//*                                                                    *
//*   OBJETIVO  :  GENERA REPORTE DE LAS RECLASIFICACIONES AUTOMATICAS *
//*                DE SERIES DE UN MISMO FONDO DE S.D.I.               *
//*                POR PARTE DEL USUARIO (PRELIMINAR)                  *
//*                (VALOR MISMO DIA Y VALOR 24, 48, 72 HRS.)           *
//*                                                                    *
//*   CORRE ANTES DE  : A PETICION DEL USUARIO                         *
//*                                                                    *
//*   CORRE DESPUES DE: A PETICION DEL USUARIO                         *
//*                                                                    *
//*   PERIODICIDAD    :  EVENTUAL                                      *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//**********************************************************************
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA         DESCRIPCION                   *
//* ----------- --------- -------  ------------------------------------*
//* FS-1.0.0-01 CAPGEMINI 31DIC10  SE AGREGARON CAMBIOS PEDIDOS POR DYD*
//*                                                                    *
//* FS-1.0.0-02 CAPGEMINI 07ENE11  SE AGREGARON CAMBIOS PEDIDOS POR DYD*
//*                                                                    *
//*    @DGCM02   XMZ8533  15FEB18  SE AGREGA DESCARGA DE LA PARAM, LOS *
//*                                REGISTROS CON LOS MONTOS MINIMOS Y  *
//*                                MAXIMO PARA VTC.                    *
//*    @DGCM03   XMZ8533  03JUL18  SE AUMENTA LONGITUD A REPORTES RECLAS
//*    @DGCM04   XMZ8533  02ENE19  SE AGREGA PASO DE INSERCION A ZMDTPRC
//*    @RECMV    XMY4145  25SEP20  SE AGREGA EL REPORTE DE SALDO PROM.
//**********************************************************************
//*@DGCM03-I
//*--------------------------------------------------------------------*
//* PASO       : PJP20P25                                              *
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : DESCARGA DE TABLAS: OPERASI                           *
//*--------------------------------------------------------------------*
//PJP20P25 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,PJP20P25,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.WKF.CBJPCZ20.DESCARGA.OPERASI,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS,LRECL=77),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSPUNCH DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//UTPRINT  DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSCNTL  DD DUMMY
//SYSCNTL1 DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(PJZ20250),
//            DISP=SHR
//**********************************************************************
//*  RECORTA ARCHIVO DE DESCARGA DE OPERASI, OPERA                     *
//**********************************************************************
//PJP20P24 EXEC PGM=ICEMAN,COND=(4,LT)
//PI601765 DD DUMMY
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.WKF.CBJPCZ20.DESCARGA.OPERASI,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.CBJPCZ20.DESCARGA.OPERASI,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=071,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJP20T24),DISP=SHR
//*--------------------------------------------------------------------*
//* PASO       : PJP20P23                                              *
//* UTILERIA   : DELETE                                                *
//* OBJETIVO   : ELIMINA REGISTROS DE LA TABLA ZMDT800                 *
//*--------------------------------------------------------------------*
//PJP20P23 EXEC PGM=IKJEFT01,COND=(4,LT)
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE42T01),DISP=SHR
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*  SORT AL AMCP PARA OBTENER UNICAMENTE PROD. 21. Y DOM. DE ENVIO    *
//**********************************************************************
//PJP20P22 EXEC PGM=ICEMAN,COND=(4,LT)
//PI601765 DD DUMMY
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.CBJPCZ22.RECLAS.CLIENTE,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.CBJPCZ20.RECLAS.CLIENTE,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=512,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJP22T13),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PJP20P21                                              *
//* UTILERIA   : IKJEFT1A/ZM4CVTC0                                     *
//* OBJETIVO   : INSERTAR REGISTROS EN TABLA ZMDT800.                  *
//*--------------------------------------------------------------------*
//PJP20P21 EXEC PGM=IKJEFT1A,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.CBJPCZ20.RECLAS.CLIENTE,
//            DISP=SHR
//*
//SALIDA01 DD DSN=MXCP.ZM.FIX.CBJPCZ20.RECLAS.REP800,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=36,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJP20T09),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PJP20P20                                              *
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : DESCARGA DE TABLAS:                                   *
//*              CUENTA, ZMDT608                                       *
//*--------------------------------------------------------------------*
//PJP20P20 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PJP20P19,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.CBJPCZ20.CUENTAS.NOEXISTE,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSPUNCH DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//UTPRINT  DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSCNTL  DD DUMMY
//SYSCNTL1 DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO       : PJP20P19                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : REALIZA EL ORDENAMIENTO POR CLIENTE                   *
//*--------------------------------------------------------------------*
//PJP20P19 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.CBJPCZ20.CUENTAS.NOEXISTE,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.CBJPCZ20.CUENTAS.ORD,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=512,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,80),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJP22T10),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PJP20P18                                              *
//* UTILERIA   : IKJEFT1A/ZM4CVTC0                                     *
//* OBJETIVO   : INSERTAR REGISTROS EN TABLA ZMDT800.                  *
//*--------------------------------------------------------------------*
//PJP20P18 EXEC PGM=IKJEFT1A,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.CBJPCZ20.CUENTAS.ORD,
//            DISP=SHR
//*
//SALIDA01 DD DSN=MXCP.ZM.FIX.CBJPCZ20.RECLAS.REP2800,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=36,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJP20T09),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PJP20P17                                              *
//* UTILERIA   : IKJEFT1A/ZM4MJ183                                     *
//* OBJETIVO   : ACTUALIZA EL VTC DE LA TABLA ZMDT800, PARA AQUELLAS   *
//*              CUENTAS QUE VIVEN EN OPERASI.                         *
//*--------------------------------------------------------------------*
//PJP20P17 EXEC PGM=IKJEFT1A,COND=(4,LT)
//*
//E1DQENT1 DD DSN=MXCP.ZM.FIX.CBJPCZ20.DESCARGA.OPERASI,
//            DISP=SHR
//*
//S1DQSAL1 DD DSN=MXCP.ZM.FIX.CBJPCZ20.OPERASI.ACTUALES,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=48,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJP20T17),
//            DISP=SHR
//*@DGCM03-F
//*@DGCM02-I
//*--------------------------------------------------------------------*
//* PASO       : PJP20P16                                              *
//* UTILERIA   : DELETE                                                *
//* OBJETIVO   : ELIMINA REGISTROS DE LA TABLA ZMDTPOS                 *
//*--------------------------------------------------------------------*
//PJP20P16 EXEC PGM=IKJEFT01,COND=(4,LT)
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE42T01),DISP=SHR
//SYSIN    DD DUMMY
//*--------------------------------------------------------------------*
//* PASO       : PJP20P15                                              *
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : DESCARGA DE TABLAS: PARAM                             *
//*--------------------------------------------------------------------*
//PJP20P15 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PJP20P11,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.CBJPCZ20.RECLAS.PARAM,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSPUNCH DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//UTPRINT  DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSCNTL  DD DUMMY
//SYSCNTL1 DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJP20T08),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PJP20P14                                              *
//* UTILERIA   : IKJEFT1A/ZM4MJ180                                     *
//* OBJETIVO   : INSERTAR REGISTROS EN TABLA ZMDTPOS, AQUELLOS MONTOS  *
//*              MINIMOS Y MAXIMOS DE LA PARAM.                        *
//*--------------------------------------------------------------------*
//PJP20P14 EXEC PGM=IKJEFT1A,COND=(4,LT)
//*
//E1DQENT1 DD DSN=MXCP.ZM.FIX.CBJPCZ20.RECLAS.PARAM,
//            DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJP20T07),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PJP20P13                                              *
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : DESCARGA DE TABLAS ZMDT815                            *
//*--------------------------------------------------------------------*
//PJP20P13 EXEC PGM=ADUUMAIN,COND=(3,LT),
//         PARM='MXP1,PJP20P07,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.SDI.CBJPCZ20.ZM815,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSPUNCH DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//UTPRINT  DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSCNTL  DD DUMMY
//SYSCNTL1 DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO       : PJP20P12                                              *
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : DESCARGA DE TABLAS: TIPCAMB                           *
//*--------------------------------------------------------------------*
//PJP20P12 EXEC PGM=ADUUMAIN,COND=(3,LT),
//         PARM='MXP1,PJP20P06,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.SDI.CBJPCZ20.TIPCAMB,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSPUNCH DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//UTPRINT  DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSCNTL  DD DUMMY
//SYSCNTL1 DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO       : PJP20P11                                              *
//* UTILERIA   : IKJEFT1A/ZM4MJ181                                     *
//* OBJETIVO   : GENERA REPORTES DE LAS CUENTAS CON UDI A LO LARGO DE  *
//*              UN ANIO.                                              *
//*--------------------------------------------------------------------*
//PJP20P11 EXEC PGM=IKJEFT1A,COND=(3,LT)
//*
//E1DQENT1 DD DSN=MXCP.ZM.FIX.SDI.CBJPCZ20.ZM815,
//            DISP=SHR
//*
//E2DQENT2 DD DSN=MXCP.ZM.FIX.SDI.CBJPCZ20.TIPCAMB,
//            DISP=SHR
//*
//S1DQSAL1 DD DSN=MXCP.ZM.FIX.SDI.CBJPCZ20.CTASUDI,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,250),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=799,BLKSIZE=0)
//*
//S2DQSAL2 DD DSN=MXCP.ZM.FIX.SDI.CBJPCZ20.CTASEST,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,250),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=025,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJP20T10),
//            DISP=SHR
//*
//*@DGCM02-F
//*                                                                    *
//**********************************************************************
//*                    -- ZM4MJ145  --                                 *
//*  GENERA ARCHIVO  SECUENCIAL CON EL RESULTADO DE LA RECLASIFICACION *
//*  DE SERIES DE UN MISMO FONDO VALOR 24,48,72 HRS. (PRELIMINAR)      *
//*                    FONDOS NORMALES (SI7)                           *
//**********************************************************************
//*@DGCM02-I
//*PJP20P09 EXEC PGM=IKJEFT01
//PJP20P09 EXEC PGM=IKJEFT01,COND=(4,LT)
//*@DGCM02-F
//*
//ZMJ145A1 DD DSN=MXCP.ZM.TMP.SDI.ECBP.RECLAS.VN.SI7,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=280,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//ZMJ145A2 DD DSN=MXCP.ZM.TMP.SDI.EBCM.RECLAS.VN.SI7,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=280,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*@RECMV-I
//ZMJ145A3 DD DSN=MXCP.ZM.TMP.SDI.SALP.RECLAS.VN.SI7,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=913,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*@RECMV-F
//AZMDT800 DD DSN=MXCP.ZM.TMP.SDI.EBCM.AZMDT800.VN.SI7,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=200,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(10,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJP20T05),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4RJ800  --                                 *
//*  GENERA ARCHIVO  SECUENCIAL CON EL RESULTADO DE LA RECLASIFICACION *
//*  DE SERIES DE UN MISMO FONDO VALOR 24,48,72 HRS. (PRELIMINAR)      *
//*                    FONDOS NORMALES (SI7)                           *
//**********************************************************************
//PJP20P9A EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//AZMDT800 DD DSN=MXCP.ZM.TMP.SDI.EBCM.AZMDT800.VN.SI7,DISP=MOD
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMJPT800),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4MJ145  --                                 *
//*  GENERA ARCHIVO  SECUENCIAL CON EL RESULTADO DE LA RECLASIFICACION *
//*  DE SERIES DE UN MISMO FONDO VALOR 24,48,72 HRS. (PRELIMINAR)      *
//*                    FONDOS DE FONDOS (SI9)                          *
//**********************************************************************
//PJP20P08 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJ145A1 DD DSN=MXCP.ZM.TMP.SDI.ECBP.RECLAS.VN.SI9,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=280,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//ZMJ145A2 DD DSN=MXCP.ZM.TMP.SDI.EBCM.RECLAS.VN.SI9,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=280,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*@RECMV-I
//ZMJ145A3 DD DSN=MXCP.ZM.TMP.SDI.SALP.RECLAS.VN.SI9,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=913,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*@RECMV-F
//AZMDT800 DD DSN=MXCP.ZM.TMP.SDI.EBCM.AZMDT800.VN.SI9,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=200,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(10,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJP20T06),DISP=SHR
//*
//**********************************************************************
//*                    --  ZM4RJ800 --                                 *
//**********************************************************************
//PJP20P8A EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//AZMDT800 DD DSN=MXCP.ZM.TMP.SDI.EBCM.AZMDT800.VN.SI9,DISP=MOD
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMJPT800),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4MJ140  --                                 *
//*  GENERA ARCHIVO  SECUENCIAL CON EL RESULTADO DE LA RECLASIFICACION *
//*  DE SERIES DE UN MISMO FONDO VALOR MISMO DIA     (PRELIMINAR)      *
//**********************************************************************
//PJP20P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJ140A1 DD DSN=MXCP.ZM.TMP.SDI.ECBP.RECLAS.VH,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=280,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//ZMJ140A2 DD DSN=MXCP.ZM.TMP.SDI.EBCM.RECLAS.VH,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=280,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*@RECMV-I
//ZMJ140A3 DD DSN=MXCP.ZM.TMP.SDI.SALP.RECLAS.VH,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=913,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*@RECMV-F
//AZMDT800 DD DSN=MXCP.ZM.TMP.SDI.EBCM.AZMDT800.VH,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=200,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(10,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJP20T01),DISP=SHR
//*
//*RECMV-I
//**********************************************************************
//*                    -- ZM4RJ800  --                                 *
//*  INSERTA EN ZMDT800                                                *
//**********************************************************************
//PJP20P7A EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//AZMDT800 DD DSN=MXCP.ZM.TMP.SDI.EBCM.AZMDT800.VH,DISP=MOD
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMJPT800),DISP=SHR
//*
//**********************************************************************
//*                       -- ICEMAN --                                 *
//*  ORDENA EL ARCHIVO DE SALDO PROMEDIO POR CUENTA, FONDO Y SERIE     *
//**********************************************************************
//PJP20PA7 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.SDI.SALP.RECLAS.VN.SI7,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.SDI.SALP.RECLAS.VN.SI9,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.SDI.SALP.RECLAS.VH,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.SDI.SALP.RECLAS.PREV,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=913,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJP20TA1),
//            DISP=SHR
//*
//**********************************************************************
//*                          -- ZM4MJ190  --                           *
//* COMPLEMENTA EL ARCHIVO DE SALDO PROMEDIO CON LA INFORMACION DE LAS *
//* POSICIONES QUE NO LLEGARON A FIN DE MES                            *
//**********************************************************************
//PJP20PB7 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJ190E1 DD DSN=MXCP.ZM.TMP.SDI.SALP.RECLAS.PREV,
//            DISP=SHR
//ZMJ190S1 DD DSN=MXCP.ZM.FIX.SDI.SALP.RECLAS.PREV,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=913,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJP20TB1),DISP=SHR
//*@RECMV-F
//*
//**********************************************************************
//*                     * SORT   * CASA DE BOLSA                       *
//* OBJETIVO: ORDENA LOS REGISTROS GENERADOS PARA LA RECLASIFICACION   *
//*           AUTOMATICA DE SERIES DE UN MISMO FONDO DE SOC. DE INV.   *
//**********************************************************************
//PJP20P06 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.SDI.ECBP.RECLAS.VN.SI7,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.SDI.ECBP.RECLAS.VN.SI9,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.SDI.ECBP.RECLAS.VH,DISP=SHR
//*@DGCM02-I
//*SORTOUT  DD DSN=MXCP.ZM.FIX.SDI.ECBP.RECLAS,
//SORTOUT  DD DSN=MXCP.ZM.TMP.SDI.ECBP.RECLAS,
//*@DGCM02-F
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=280,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,80),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJP20T03),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   * BANCA PATRIMONIAL                   *
//* OBJETIVO: ORDENA LOS REGISTROS GENERADOS PARA LA RECLASIFICACION   *
//*           AUTOMATICA DE SERIES DE UN MISMO FONDO DE SOC. DE INV.   *
//**********************************************************************
//PJP10P06 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.SDI.EBCM.RECLAS.VN.SI7,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.SDI.EBCM.RECLAS.VN.SI9,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.SDI.EBCM.RECLAS.VH,DISP=SHR
//*@DGCM02-I
//*SORTOUT  DD DSN=MXCP.ZM.FIX.SDI.EBCM.RECLAS,
//SORTOUT  DD DSN=MXCP.ZM.TMP.SDI.EBCM.RECLAS,
//*@DGCM02-F
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=280,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,80),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJP20T03),DISP=SHR
//*
//*@DGCM02-I
//*--------------------------------------------------------------------*
//* PASO       : PJP20P5F                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : REALIZA EL ORDENAMIENTO POR CUENTA                    *
//*--------------------------------------------------------------------*
//PJP20P5F EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.SDI.ECBP.RECLAS,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.SDI.ECBP.RECLAS.ORD,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=280,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,80),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJP20T13),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PJP20P5E                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : REALIZA EL ORDENAMIENTO POR CUENTA                    *
//*--------------------------------------------------------------------*
//PJP20P5E EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.SDI.EBCM.RECLAS,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.SDI.EBCM.RECLAS.ORD,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=280,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,80),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJP20T13),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PJP20P5D                                              *
//* UTILERIA   : ZM3MJ184                                              *
//* OBJETIVO   : GENERA MATCH DE LAS CUENTAS UDI VS CUENTAS QUE VAN A  *
//*              APLICAR RECLASIFICACION.                              *
//*--------------------------------------------------------------------*
//PJP20P5D EXEC PGM=ZM3MJ184,COND=(4,LT)
//*
//E1DQENT1 DD DSN=MXCP.ZM.TMP.SDI.ECBP.RECLAS.ORD,
//            DISP=SHR
//*
//E2DQENT2 DD DSN=MXCP.ZM.FIX.SDI.CBJPCZ23.CTASAPL,
//            DISP=SHR
//*
//S1DQSAL1 DD DSN=MXCP.ZM.TMP.SDI.ECBP.RECLAS.ACTUAL,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,250),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=280,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO       : PJP20P5C                                              *
//* UTILERIA   : ZM3MJ184                                              *
//* OBJETIVO   : GENERA MATCH DE LAS CUENTAS UDI VS CUENTAS QUE VAN A  *
//*              APLICAR RECLASIFICACION.                              *
//*--------------------------------------------------------------------*
//PJP20P5C EXEC PGM=ZM3MJ184,COND=(4,LT)
//*
//E1DQENT1 DD DSN=MXCP.ZM.TMP.SDI.EBCM.RECLAS.ORD,
//            DISP=SHR
//*
//E2DQENT2 DD DSN=MXCP.ZM.FIX.SDI.CBJPCZ23.CTASAPL,
//            DISP=SHR
//*
//S1DQSAL1 DD DSN=MXCP.ZM.TMP.SDI.EBCM.RECLAS.ACTUAL,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,250),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=280,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO       : PJP20P5B                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : REALIZA EL ORDENAMIENTO POR CUENTA                    *
//*--------------------------------------------------------------------*
//PJP20P5B EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.SDI.EBCM.RECLAS.ACTUAL,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.SDI.EBCM.RECLAS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=280,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,80),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJP20T03),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PJP20P5A                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : REALIZA EL ORDENAMIENTO POR CUENTA                    *
//*--------------------------------------------------------------------*
//PJP20P5A EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.SDI.ECBP.RECLAS.ACTUAL,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.SDI.ECBP.RECLAS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=280,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,80),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJP20T03),DISP=SHR
//*
//*@DGCM02-F
//**********************************************************************
//*                    -- ZM4MJ160  --                                 *
//*  GENERA ARCHIVO SECUENCIAL DE LA RECLASIFICACION AUTOMATICA        *
//*  DE SERIES DE UN MISMO FONDO DE SOCIEDADES DE INVERSION PARA       *
//*  ENVIADOS A UN SERVIDOR PARA ABRIRLOS CON EXCEL   (PRELIMINAR)     *
//**********************************************************************
//PJP20P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZME160A1 DD DSN=MXCP.ZM.TMP.SDI.EZPR.ZMJPNP20,DISP=SHR
//ZME160A2 DD DSN=MXCP.ZM.FIX.SDI.ECBP.RECLAS,DISP=SHR
//ZME160A3 DD DSN=MXCP.ZM.FIX.SDI.EBCM.RECLAS,DISP=SHR
//*
//ZME160A4 DD DSN=MXCP.ZM.TMP.SDI.ECBP.RECLAS.PRE.ARC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*@DGCM01-I
//*           DCB=(DSORG=PS,LRECL=400,RECFM=FB,BLKSIZE=0),
//*@DGCM03-I
//*           DCB=(DSORG=PS,LRECL=455,RECFM=FB,BLKSIZE=0),
//            DCB=(DSORG=PS,LRECL=475,RECFM=FB,BLKSIZE=0),
//*@DGCM03-F
//*@DGCM01-F
//            SPACE=(CYL,(100,50),RLSE)
//ZME160A5 DD DSN=MXCP.ZM.TMP.SDI.EBCM.RECLAS.PRE.ARC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*@DGCM01-I
//*           DCB=(DSORG=PS,LRECL=400,RECFM=FB,BLKSIZE=0),
//*@DGCM03-I
//*           DCB=(DSORG=PS,LRECL=455,RECFM=FB,BLKSIZE=0),
//            DCB=(DSORG=PS,LRECL=475,RECFM=FB,BLKSIZE=0),
//*@DGCM03-F
//*@DGCM01-F
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJP20T04),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4MJ150  --                                 *
//*  GENERA LISTADO CON EL RESULTADO DE LA RECLASIFICACION DE SERIES   *
//*  DE UN MISMO FONDO DE SOCIEDADES DE INVERSION   (PRELIMINAR)       *
//**********************************************************************
//PJP20P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZME150A1 DD DSN=MXCP.ZM.TMP.SDI.EZPR.ZMJPNP20,DISP=SHR
//ZME150A2 DD DSN=MXCP.ZM.FIX.SDI.ECBP.RECLAS,DISP=SHR
//ZME150A3 DD DSN=MXCP.ZM.FIX.SDI.EBCM.RECLAS,DISP=SHR
//*
//ZME150LC DD DSN=MXCP.ZM.TMP.SDI.ECBP.RECLAS.PRE,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//ZME150LB DD DSN=MXCP.ZM.TMP.SDI.EBCM.RECLAS.PRE,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJP20T02),DISP=SHR
//*
//**********************************************************************
//*                    -- ICEGENER  -- ENVIA A CTL-D                   *
//*        REPORTE S.D.I. CASA DE BOLSA SOLIC. X USUARIO (PRELIMINAR)  *
//**********************************************************************
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*PJP20P03 EXEC PGM=ICEGENER,COND=(4,LT)
//*SYSPRINT DD SYSOUT=*
//*SYSUT1   DD DSN=MXCP.ZM.TMP.SDI.ECBP.RECLAS.PRE,DISP=SHR
//*SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSIN    DD DUMMY
//*
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//**********************************************************************
//*                    -- ICEGENER  -- ENVIA A CTL-D                   *
//*        REPORTE S.D.I. BANCA PATRIM. SOLIC. X USUARIO (PRELIMINAR)  *
//**********************************************************************
//PJP20P02 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.TMP.SDI.EBCM.RECLAS.PRE,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//*@DGCM04-I
//*--------------------------------------------------------------------*
//* PASO       : PJP20P01                                              *
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : REALIZA LA DESCARGA DE LAS TABLAS ZMDT622, CONCEPT Y  *
//*              PARAM.                                                *
//*--------------------------------------------------------------------*
//PJP20P01 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PJP20P01,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.CBJPCZ20.UNLOAD.DATRECL,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMRCL395),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PJP20P00                                              *
//* UTILERIA   : IKJEFT1A/ZM4RCL05                                     *
//* OBJETIVO   : INSERTA REGISTROS EN LA TABLA ZMDTPRC                 *
//*--------------------------------------------------------------------*
//PJP20P00 EXEC PGM=IKJEFT1A,COND=(4,LT)
//*
//E1DQENT1 DD DSN=MXCP.ZM.FIX.CBJPCZ20.UNLOAD.DATRECL,
//            DISP=SHR
//*
//S1DQSAL1 DD DSN=MXCP.ZM.FIX.CBJPCZ20.INSERTA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,250),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=143,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMRCL394),
//            DISP=SHR
//*@DGCM04-F
//*
//**********************************************************************
//*        TERMINA PROCESO ZMJPNZ20 SIVA MULTIEMPRESA                  *
//**********************************************************************
