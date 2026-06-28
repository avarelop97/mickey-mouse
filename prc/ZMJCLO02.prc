//ZMJCLO02 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                 <<  SOCIEDADES DE INVERSION   >>                   *
//*                     (FONDOS DE FONDOS PRELIMINAR)                  *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  CBJCL002 (DISPARADOR)                            *
//*                   ZMJCLO02 (PROCEDIMIENTO)                         *
//*                                                                    *
//* OBJETIVO       :  CIERRE PRELIMINAR DE FONDOS DE FONDOS DE         *
//*                   SOCIEDADES DE INVERSION                          *
//*                                                                    *
//* REALIZO        :  FABRICA DE SOFTWARE ACCENTURE                    *
//*                                                                    *
//* PERIODICIDAD   :  DIARIA                                           *
//*                                                                    *
//* DESPUES DE     :  CBJCLO01 ZMJCLO01                                *
//*                                                                    *
//**********************************************************************
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//**********************************************************************
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA         DESCRIPCION                   *
//* ----------- --------- -------  ------------------------------------*
//*--------------------------------------------------------------------*
//*
//**********************************************************************
//*--------------------------------------------------------------------*
//*            L O G    D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*  MARCA      AUTOR     FECHA  DESCRIPCION                           *
//* ----------- --------- ------ --------------------------------------*
//* FS-1.0.0-01 CAPGEMINI 130912 -SE AGREGA UNA NUEVA SALIDA AL        *
//*                               PROGRAMA ZM4DJ202 QUE SE EJECUTA EN  *
//*                               EL PASO ZJCL0203.                    *
//*  @DGCM01    XMZ8533   130717 -SE AUMENTA LONGITUD A SALIDA DE J160 *
//*  @DGCM02    XMZ8533   150518 -SE INCLUYEN PASOS PARA LA CONSIDERAR *
//*                               RECLASIFICACION POR MANDATOS.        *
//*                              -SE RENUMERAN LOS PASOS.              *
//*  @DGCM03    XMZ8533  02JUL18 -SE AUMENTA LONGITUD EN REPORTES DE   *
//*                               SALIDA P/RELASIFICACION              *
//*                                                                    *
//*  @DGCM04    XMZ8533  03AGO18 -SE AGREGA CALCULO DE VTC DE TABLAS   *
//*                               ESPEJOS                              *
//*  @RECMV     XMY4145  25SEP20 -SE AGREGA EL REPORTE DE SALDO PROM.  *
//*            *       *      *                                        *
//**********************************************************************
//*                        == ZM4DJ026 ==                              *
//*                      (CIERRE PRELIMINAR)                           *
//* OBJETIVO : EJECUCION DEL PROGRAMA ZM4DJ026, DE AJUSTE DE VENTAS X  *
//*            PRORRATEO                                               *
//**********************************************************************
//ZJCL0219 EXEC PGM=IKJEFT01
//*
//ZMJ026A1 DD DSN=MXCP.ZM.TMP.ZMJCLO02.P39.ECBP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=360,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//ZMJ026A2 DD DSN=MXCP.ZM.FIX.ZMJCLO02.P39.ECBP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=460,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//ZMJ026A3 DD DSN=MXCP.ZM.FIX.ZMJCLO02.P39.EBCM,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=460,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJCL0239),DISP=SHR
//*
//**********************************************************************
//*                        == ZM4DJ194 ==                              *
//*                      (CIERRE PRELIMINAR)                           *
//* OBJETIVO : EJECUCION DEL PROGRAMA ZM4DJ194, DE VALUACION DE BANCA  *
//*            PATRIMONIAL                                             *
//**********************************************************************
//ZJCL0218 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJ194P1 DD DSN=MXCP.ZM.FIX.SIN.P4.EBCM.PREL.PP08,DISP=SHR
//ZMJ274P1 DD DSN=MXCP.ZM.FIX.SIN.P3.EBCM.PREL.PP08,DISP=SHR
//ZMJ274A1 DD DSN=&&ARCHBCM,
//            DISP=(NEW,PASS),
//            UNIT=3390,
//            DCB=(LRECL=171,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(20,10),RLSE)
//ZMJ274R1 DD DSN=MXCP.ZM.FIX.ZMJCLO02.P36.EBCM,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(20,10),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJCL0236),DISP=SHR
//*
//**********************************************************************
//*                        == ZM4DJ194 ==                              *
//*                      (CIERRE PRELIMINAR)                           *
//* OBJETIVO : EJECUCION DEL PROGRAMA ZM4DJ194, DE EVALUACION DE CASA  *
//*            DE BOLSA                                                *
//**********************************************************************
//ZJCL0217 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJ194P1 DD DSN=MXCP.ZM.FIX.SIN.P4.ECBP.PREL.PP08,DISP=SHR
//ZMJ274P1 DD DSN=MXCP.ZM.FIX.SIN.P3.ECBP.PREL.PP08,DISP=SHR
//ZMJ274A1 DD DSN=&&ARCHCBP,
//            DISP=(NEW,PASS),
//            UNIT=3390,
//            DCB=(LRECL=171,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(20,10),RLSE)
//ZMJ274R1 DD DSN=MXCP.ZM.FIX.ZMJCLO02.P33.ECBP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(20,10),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJCL0233),DISP=SHR
//*@DGCM04-I
//*--------------------------------------------------------------------*
//* PASO       : ZJCL02A7                                              *
//* UTILERIA   : IKJEFT1A/ZM4MJ186                                     *
//* OBJETIVO   : VALIDACION DEL DIA DE EJECUCION PARA VALIDAR SI       *
//*              DEPURA DATOS DE VTC O CONSERVA LOS ANTERIORES.        *
//*--------------------------------------------------------------------*
//ZJCL02A7 EXEC PGM=IKJEFT1A,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJCL0102),
//            DISP=SHR
//*
// IF ZJCL02A7.RC=00 THEN
//*--------------------------------------------------------------------*
//* PASO       : ZJCL02A6                                              *
//* UTILERIA   : DELETE                                                *
//* OBJETIVO   : ELIMINA REGISTROS DE LA TABLA ZMDT800                 *
//*--------------------------------------------------------------------*
//ZJCL02A6 EXEC PGM=IKJEFT01,COND=(4,LT)
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
//ZJCL02A5 EXEC PGM=ICEMAN,COND=(4,LT)
//PI601765 DD DUMMY
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.CBJPCZ22.RECLAS.CLIENTE,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMJCLO02.RECLAS.CLIENTE,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=512,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJP22T13),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZJCL02A4                                              *
//* UTILERIA   : IKJEFT1A/ZM4CVTC0                                     *
//* OBJETIVO   : INSERTAR REGISTROS EN TABLA ZMDT800.                  *
//*--------------------------------------------------------------------*
//ZJCL02A4 EXEC PGM=IKJEFT1A,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.ZMJCLO02.RECLAS.CLIENTE,
//            DISP=SHR
//*
//SALIDA01 DD DSN=MXCP.ZM.FIX.ZMJCLO02.RECLAS.REP800,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=36,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJCL0101),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZJCL02A3                                              *
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : DESCARGA DE TABLAS:                                   *
//*              CUENTA, ZMDT608                                       *
//*--------------------------------------------------------------------*
//ZJCL02A3 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PJP20P19,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ZMJCLO02.CUENTAS.NOEXISTE,
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
//* PASO       : ZJCL02A2                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : REALIZA EL ORDENAMIENTO POR CLIENTE                   *
//*--------------------------------------------------------------------*
//ZJCL02A2 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.ZMJCLO02.CUENTAS.NOEXISTE,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMJCLO02.CUENTAS.ORD,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=512,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,80),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJP22T10),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZJCL02A1                                              *
//* UTILERIA   : IKJEFT1A/ZM4CVTC0                                     *
//* OBJETIVO   : INSERTAR REGISTROS EN TABLA ZMDT800.                  *
//*--------------------------------------------------------------------*
//ZJCL02A1 EXEC PGM=IKJEFT1A,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.ZMJCLO02.CUENTAS.ORD,
//            DISP=SHR
//*
//SALIDA01 DD DSN=MXCP.ZM.FIX.ZMJCLO02.RECLAS.REP2800,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=36,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJCL0101),
//            DISP=SHR
// ENDIF
//*@DGCM04-F
//*
//**********************************************************************
//*                    -- ZM4MJ145  --    (CIERRE PRELIMINAR)          *
//*  GENERA ARCHIVO  SECUENCIAL CON EL RESULTADO DE LA RECLASIFICACION *
//*   DE SERIES DE UN MISMO FONDO VALOR 24, 48, 72 HRS. (DEFINITIVO)   *
//*  (SE EJECUTA 1ER DIA HABIL DEL MES Y DIA HABIL SIGUIENTE AL EVENTO *
//*   MANUAL DE RECLASIFICACION DEFINITIVA POR PARTE DEL USUARIO)      *
//**********************************************************************
//ZJCL0216 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJ145A1 DD DSN=MXCP.ZM.TMP.ZMJCLO02.P30.ECBP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=280,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//ZMJ145A2 DD DSN=MXCP.ZM.TMP.ZMJCLO02.P30.EBCM,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=280,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*RECMV-I
//ZMJ145A3 DD DSN=MXCP.ZM.TMP.ZMJCLO02.P30.SALPRO,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=913,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(005,05),RLSE)
//*RECMV-F
//AZMDT800 DD DSN=MXCP.ZM.TMP.SDI.EBCM.AZMDT800.PREL,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=200,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(10,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJCL0230),DISP=SHR
//*
//*@RECMV-I
//**********************************************************************
//*                    --  ZM4RJ800 --                                 *
//**********************************************************************
//ZJCL216A EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//AZMDT800 DD DSN=MXCP.ZM.TMP.SDI.EBCM.AZMDT800.PREL,DISP=MOD
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
//ZJCL02B6 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.ZMJCLO02.P30.SALPRO,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.ZMJCLO02.P30.SALPRO.SRT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=913,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJCL023A),
//            DISP=SHR
//*
//**********************************************************************
//*                          -- ZM4MJ190  --                           *
//* COMPLEMENTA EL ARCHIVO DE SALDO PROMEDIO CON LA INFORMACION DE LAS *
//* POSICIONES QUE NO LLEGARON A FIN DE MES                            *
//**********************************************************************
//ZJCL02C6 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJ190E1 DD DSN=MXCP.ZM.TMP.ZMJCLO02.P30.SALPRO.SRT,
//            DISP=SHR
//ZMJ190S1 DD DSN=MXCP.ZM.FIX.ZMJCLO02.P30.SALPRO,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJCL023B),DISP=SHR
//*@RECMV-F
//**********************************************************************
//*                     * SORT   * CASA DE BOLSA  (CIERRE PRELIMINAR)  *
//* OBJETIVO: ORDENA LOS REGISTROS GENERADOS PARA LA RECLASIFICACION   *
//*           AUTOMATICA DE SERIES DE UN MISMO FONDO DE SOC. DE INV.   *
//* (SE EJECUTA 1ER DIA HABIL DEL MES Y DIA HABIL SIGUIENTE AL EVENTO  *
//*  MANUAL DE RECLASIFICACION DEFINITIVA POR PARTE DEL USUARIO)       *
//*                            (DEFINITIVO)                            *
//**********************************************************************
//ZJCL0215 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.ZMJCLO02.P30.ECBP,DISP=SHR
//*@DGCM02-I
//*SORTOUT  DD DSN=MXCP.ZM.FIX.ZMJCLO02.P27.ECBP,
//SORTOUT  DD DSN=MXCP.ZM.TMP.ZMJCLO02.P27.ECBP,
//*@DGCM02-I
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=280,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJCL0227),DISP=SHR
//*
//**********************************************************************
//*                     * SORT  * BANCA PATRIMONIAL (CIERRE PRELIMINAR)*
//* OBJETIVO: ORDENA LOS REGISTROS GENERADOS PARA LA RECLASIFICACION   *
//*           AUTOMATICA DE SERIES DE UN MISMO FONDO DE SOC. DE INV.   *
//* (SE EJECUTA 1ER DIA HABIL DEL MES Y DIA HABIL SIGUIENTE AL EVENTO  *
//*  MANUAL DE RECLASIFICACION DEFINITIVA POR PARTE DEL USUARIO)       *
//*                            (DEFINITIVO)                            *
//**********************************************************************
//ZJCL0214 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.ZMJCLO02.P30.EBCM,DISP=SHR
//*@DGCM02-I
//*SORTOUT  DD DSN=MXCP.ZM.FIX.ZMJCLO02.P24.EBCM,
//SORTOUT  DD DSN=MXCP.ZM.TMP.ZMJCLO02.P24.EBCM,
//*@DGCM02-I
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=280,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJCL0227),DISP=SHR
//*
//*@DGCM02-I
//*--------------------------------------------------------------------*
//* PASO       : ZJCL0213                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : REALIZA EL ORDENAMIENTO POR CUENTA                    *
//*--------------------------------------------------------------------*
//ZJCL0213 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.ZMJCLO02.P27.ECBP,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.ZMJCLO02.P27.ECBP.ORD,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=280,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,80),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJCL0212),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZJCL0212                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : REALIZA EL ORDENAMIENTO POR CUENTA                    *
//*--------------------------------------------------------------------*
//ZJCL0212 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.ZMJCLO02.P24.EBCM,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.ZMJCLO02.P24.EBCM.ORD,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=280,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,80),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJCL0212),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZJCL0211                                              *
//* UTILERIA   : ZM3MJ184                                              *
//* OBJETIVO   : GENERA MATCH DE LAS CUENTAS UDI VS CUENTAS QUE VAN A  *
//*              APLICAR RECLASIFICACION.                              *
//*--------------------------------------------------------------------*
//ZJCL0211 EXEC PGM=ZM3MJ184,COND=(4,LT)
//*
//E1DQENT1 DD DSN=MXCP.ZM.TMP.ZMJCLO02.P27.ECBP.ORD,
//            DISP=SHR
//*
//E2DQENT2 DD DSN=MXCP.ZM.FIX.SDI.CBJPCZ23.CTASAPL,
//            DISP=SHR
//*
//S1DQSAL1 DD DSN=MXCP.ZM.FIX.ZMJCLO02.P27.ECBP.ACTUAL,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,250),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=280,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO       : ZJCL0210                                              *
//* UTILERIA   : ZM3MJ184                                              *
//* OBJETIVO   : GENERA MATCH DE LAS CUENTAS UDI VS CUENTAS QUE VAN A  *
//*              APLICAR RECLASIFICACION.                              *
//*--------------------------------------------------------------------*
//ZJCL0210 EXEC PGM=ZM3MJ184,COND=(4,LT)
//*
//E1DQENT1 DD DSN=MXCP.ZM.TMP.ZMJCLO02.P24.EBCM.ORD,
//            DISP=SHR
//*
//E2DQENT2 DD DSN=MXCP.ZM.FIX.SDI.CBJPCZ23.CTASAPL,
//            DISP=SHR
//*
//S1DQSAL1 DD DSN=MXCP.ZM.FIX.ZMJCLO02.P24.EBCM.ACTUAL,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,250),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=280,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO       : ZJCL0209                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : REALIZA EL ORDENAMIENTO POR CUENTA                    *
//*--------------------------------------------------------------------*
//ZJCL0209 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.ZMJCLO02.P24.EBCM.ACTUAL,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMJCLO02.P24.EBCM,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=280,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,80),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJCL0227),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZJCL0208                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : REALIZA EL ORDENAMIENTO POR CUENTA                    *
//*--------------------------------------------------------------------*
//ZJCL0208 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.ZMJCLO02.P27.ECBP.ACTUAL,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMJCLO02.P27.ECBP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=280,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,80),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJCL0227),DISP=SHR
//*@DGCM02-F
//*
//**********************************************************************
//*                    -- ZM4MJ160  -- (CIERRE PRELIMINAR)             *
//*EJECUCION DEL PROGRAMA ZM4MJ160, GENERA ARCHIVO SECUENCIAL DE LA    *
//*RECLASIFICACION AUTOMATICA DE SERIES DE UN MISMO FONDO DE SOCIEDADES*
//*DE INVERSION PARA SER ENVIADO  A UN SERVIDOR Y ABRIRLO CON EXCEL    *
//*(DEFINITIVO) (SE EJECUTA 1ER DIA HABIL DEL MES Y DIA HABIL SIGUIENTE*
//*AL EVENTO MANUAL DE RECLASIFICACION DEFINITIVA POR PARTE DEL USUARIO)
//**********************************************************************
//ZJCL0207 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZME160A1 DD DSN=MXCP.ZM.FIX.SIN.P3.EBCM.PREL.PP08,DISP=SHR
//ZME160A2 DD DSN=MXCP.ZM.FIX.ZMJCLO02.P27.ECBP,DISP=SHR
//ZME160A3 DD DSN=MXCP.ZM.FIX.ZMJCLO02.P24.EBCM,DISP=SHR
//*
//ZME160A4 DD DSN=MXCP.ZM.FIX.ZMJCLO02.P21.ECBP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*@DGCM01-I
//*           DCB=(DSORG=PS,LRECL=400,RECFM=FB,BLKSIZE=0),
//*@DGCM01-I
//*           DCB=(DSORG=PS,LRECL=455,RECFM=FB,BLKSIZE=0),
//            DCB=(DSORG=PS,LRECL=475,RECFM=FB,BLKSIZE=0),
//*@DGCM03-F
//*@DGCM01-F
//            SPACE=(CYL,(100,50),RLSE)
//ZME160A5 DD DSN=MXCP.ZM.FIX.ZMJCLO02.P21.EBCM,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJCL0221),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4MJ150  -- (CIERRE PRELIMINAR)             *
//*EJECUCION DEL PROGRAMA ZM4MJ150, GENERA LISTADO CON EL RESULTADO DE *
//*LA RECLASIFICACION AUTOMATICA DE SERIES DE UN MISMO FONDO MARCADO POR
//*EL USUARIO MEDIANTE LA OPCION 533 DE SIVA                           *
//*(SE EJECUTA 1ER DIA HABIL DEL MES Y DIA HABIL SIGUIENTE AL EVENTO   *
//* MANUAL DE RECLASIFICACION DEFINITIVA POR PARTE DEL USUARIO)        *
//*                           (DEFINITIVO)                             *
//**********************************************************************
//*@DGCM01-I
//*ZJCL0206 EXEC PGM=IKJEFT01,COND=(0,NE,ZJCL0210)
//ZJCL0206 EXEC PGM=IKJEFT01,COND=(4,LT)
//*@DGCM01-F
//ZME150A1 DD DSN=MXCP.ZM.FIX.SIN.P3.EBCM.PREL.PP08,DISP=SHR
//ZME150A2 DD DSN=MXCP.ZM.FIX.ZMJCLO02.P27.ECBP,DISP=SHR
//ZME150A3 DD DSN=MXCP.ZM.FIX.ZMJCLO02.P24.EBCM,DISP=SHR
//*
//ZME150LC DD DSN=MXCP.ZM.FIX.ZMJCLO02.P18.ECBP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//ZME150LB DD DSN=MXCP.ZM.FIX.ZMJCLO02.P18.EBCM,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJCL0218),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4MJ170  --   (CIERRE PRELIMINAR)           *
//*EJECUCION DEL PROGRAMA ZM4MJ170, FONDOS DE FONDOS     GENERA LAS    *
//*VENTAS Y COMPRAS DERIVADO DE LA RECLASIFICACION MENSUAL             *
//*PERIODICA DE LAS SERIES DE UN MISMO FONDO DE SOCIEDADES DE INVER.   *
//*SE EJECUTA 1ER DIA HABIL DEL MES Y DIA HABIL SIGUIENTE AL EVENTO    *
//*MANUAL DE RECLASIFICACION DEFINITIVA POR PARTE DEL USUARIO)         *
//*                          (DEFINITIVO)                              *
//**********************************************************************
//*@DGCM04-I
//*ZJCL0205 EXEC PGM=IKJEFT01,COND=(0,NE,ZJCL0210)
//ZJCL0205 EXEC PGM=IKJEFT01,COND=(0,NE,ZJCL0216)
//*@DGCM04-F
//ZME170A1 DD DSN=MXCP.ZM.FIX.SIN.P3.EBCM.PREL.PP08,DISP=SHR
//ZME170A2 DD DSN=MXCP.ZM.FIX.ZMJCLO02.P27.ECBP,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.ZMJCLO02.P24.EBCM,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJCL0215),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4DJ203  -- (CIERRE PRELIMINAR)             *
//*EJECUCION DEL PROGRAMA ZM4DJ203, MOVIMIENTOS AUTOMATICOS CUENTAS    *
//*CONCENTRADORAS MUV V.N.                                             *
//*BANCA PATRIMONIAL                                                   *
//**********************************************************************
//ZJCL0204 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMJ203P1 DD DSN=MXCP.ZM.FIX.SIN.P3.EBCM.PREL.PP08,DISP=SHR
//ZMJ203R1 DD DSN=MXCP.ZM.FIX.ZMJCLO02.P12.EBCM,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//* INDRA-I
//ZMJ203R2 DD DSN=MXCP.ZM.FIX.ZMJCLO02.PR2.EBCM,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=132,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//* INDRA-F
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJCL0112),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4DJ202  -- (CIERRE PRELIMINAR)             *
//*EJECUCION DEL PROGRAMA ZM4DJ202, COMPRA/VENTA AUTOMATICAS DE LOS    *
//*FONDOS DE S.I.                                                      *
//**********************************************************************
//ZJCL0203 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMJ202P1 DD DSN=MXCP.ZM.FIX.SIN.P3.ECBP.PREL.PP08,DISP=SHR
//ZMJ202R1 DD DSN=MXCP.ZM.FIX.ZMJCLO02.P09.ECBP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//* INDRA-F
//ZMJ202R2 DD DSN=MXCP.ZM.FIX.ZMJCLO02.PR2.ECBP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=132,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//* INDRA-F
//* FS-1.0.0-01-INI
//ZMJ202R3 DD DSN=MXCP.ZM.FIX.ZMJCLO02.PR3.ECBP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//* FS-1.0.0-01-FIN
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJCL0109),DISP=SHR
//*
//**********************************************************************
//*                    -- ICEGENER  -- (CIERRE PRELIMINAR)             *
//* UNIFICA REPORTES EN UN SOLO ARCHIVO PARA ENVIO A SERVIDOR          *
//**********************************************************************
//ZJCL0202 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD DSN=MXCP.ZM.FIX.ZMJCLO02.P33.ECBP,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.ZMJCLO02.P36.EBCM,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.ZMJCLO02.P06.GENE,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSIN    DD DUMMY
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//**********************************************************************
//*                    -- ICEGENER  -- (CIERRE PRELIMINAR)             *
//* UNIFICA REPORTES EN UN SOLO ARCHIVO PARA ENVIO A SERVIDOR          *
//**********************************************************************
//ZJCL0201 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD DSN=MXCP.ZM.FIX.ZMJCLO02.P12.EBCM,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.ZMJCLO02.P09.ECBP,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.ZMJCLO02.P03.GENE,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSIN    DD DUMMY
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//**********************************************************************
//** PEND         FIN DEL PROCEDIMIENTO ZMJCLO02                       *
//**********************************************************************
