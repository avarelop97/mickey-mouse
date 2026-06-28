//ZMJCPZ09 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                 <<  SOCIEDADES DE INVERSION   >>                   *
//*                     (FONDO DE FONDOS)                              *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  CBJCPZ09 (SUBMITIDOR)    ANTES: CBJCPZ08         *
//*                   ZMJCPZ09 (PROCEDIMIENTO)        ZMJCPZ08         *
//*                                                                    *
//* OBJETIVO       :  CIERRE DEFINITIVO DE OPERACIONES DE SOC. DE INV. *
//*                   ENVIADO POR EL USUARIO (FONDOS DE FONDOS)        *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  CIERRE DE SOCIEDADES DE INVERSION                *
//*                                                                    *
//* DESPUES DE     :  A PETICION DEL USUARIO                           *
//*                                                                    *
//* PERIODICIDAD   :  DIARIO                                           *
//*====================================================================*
//*                      LOG DE MODIFICACIONES                         *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA         DESCRIPCION                   *
//* ----------- --------- -------  ------------------------------------*
//* FS-1.0.0-01 CAPGEMINI 12SEP12  SE AGREGA ARCHIVO DE SALIDA AL      *
//*                                PROGRAMA ZM4DJ202                   *
//*  @DGCM01    XMZ8533   130717   SE AUMENTA LONGITUD A SALIDA DE J160*
//* JB-1.0.0-01    J&B    18SEP18  SE GENERA ARCHIVO P/ALERTAS DE RV.  *
//*  @DGCM02    XMZ8533  15MAY18 -SE INCLUYEN PASOS PARA LA CONSIDERAR *
//*                               RECLASIFICACION POR MANDATOS.        *
//*                              -SE RENUMERAN LOS PASOS.              *
//*  @DGCM03    XMZ8533  02JUL18 -SE AUMENTA LONGITUD EN REPORTES DE   *
//*                               SALIDA P/RELASIFICACION              *
//* JB-1.0.0-02    J&B   20JUL18 SE AGREGA USUARIO QUE REALIZO OPERACION
//*                              Y SE CAMBIA LA LONG. DEL ARCHIVO.     *
//*  @DGCM04    XMZ8533  28AGO18 -SE AGREGA PGM VALIDADOR DE DIA HABIL *
//*                               P/RECLASIFICACION                    *
//*  @RECMV     XMY4145  25SEP20 -SE AGREGA EL REPORTE DE SALDO PROM.  *
//*====================================================================*
//*                        == ZM4DJ026 ==                              *
//*                   (FONDO DE FONDOS)                                *
//* OBJETIVO : EJECUCION DEL PROGRAMA DE AJUSTE DE VENTAS X PRORRATEO  *
//**********************************************************************
//PJC09P35 EXEC PGM=IKJEFT01
//*
//ZMJ026A1 DD DSN=MXCP.ZM.TMP.SDI.ECBP.PRORA.SI9.TMP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=360,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//ZMJ026A2 DD DSN=MXCP.ZM.FIX.SDI.ECBP.PRORA.SI9.ARC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=460,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//ZMJ026A3 DD DSN=MXCP.ZM.FIX.SDI.EBCM.PRORA.SI9.ARC,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJC09T10),DISP=SHR
//*
//**********************************************************************
//*                        == ZM4DJ194 ==                              *
//*                   (FONDO DE FONDOS)                                *
//* OBJETIVO : EJECUCION DEL PROGRAMA DE VALUACION DE BANCA PATRIMONIAL*
//**********************************************************************
//PJC09P34 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJ194P1 DD DSN=MXCP.ZM.FIX.SIN.P4.EBCM.DEFI.PP09,DISP=SHR
//ZMJ274P1 DD DSN=MXCP.ZM.FIX.SIN.P3.EBCM.DEFI.PP09,DISP=SHR
//ZMJ274A1 DD DSN=&&ARCHBCM,
//            DISP=(NEW,PASS),
//            UNIT=3390,
//            DCB=(LRECL=171,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(20,10),RLSE)
//ZMJ274R1 DD DSN=MXCP.ZM.FIX.SIN.DF.EBCM.ZMJ274R1,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJC09T02),DISP=SHR
//*
//*JB-1.0.0-01-INI
//*--------------------------------------------------------------------*00022800
//* PROGRAMA: ADUUMAIN                                                 *00022600
//* OBJETIVO: DESCARGA DATOS NECESARIOS P/ALERTAS DE FONDOS RTA. VAR.  *00022700
//*--------------------------------------------------------------------*00022800
//ZMPZ0933 EXEC PGM=ADUUMAIN,COND=(4,LT),                               00022900
//          PARM='MXP1,ZMPZ0921,NEW,,MSGLEVEL(1)'                       00023000
//*                                                                     00023400
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPZ0921),DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.CBJCPZ09.UNLOAD01,
//            DISP=(NEW,CATLG,DELETE),                                  00023900
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390,                      00024000
//*           DCB=(DSORG=PS,RECFM=FB,LRECL=79,BLKSIZE=0)     JB-1.0.0-02
//            DCB=(DSORG=PS,RECFM=FB,LRECL=87,BLKSIZE=0)
//*                                                                     00024200
//UTPRINT  DD SYSOUT=*                                                  00024500
//SYSPRINT DD SYSOUT=*                                                  00024600
//SYSUDUMP DD SYSOUT=*                                                  00024700
//*JB-1.0.0-01-FIN
//*
//**********************************************************************
//*                        == ZM4DJ194 ==                              *
//*                    (FONDO DE FONDOS)                               *
//* OBJETIVO : EJECUCION DEL PROGRAMA DE VALUACION DE CASA DE BOLSA    *
//**********************************************************************
//PJC09P32 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJ194P1 DD DSN=MXCP.ZM.FIX.SIN.P4.ECBP.DEFI.PP09,DISP=SHR
//ZMJ274P1 DD DSN=MXCP.ZM.FIX.SIN.P3.ECBP.DEFI.PP09,DISP=SHR
//ZMJ274A1 DD DSN=&&ARCHCBP,
//            DISP=(NEW,PASS),
//            UNIT=3390,
//            DCB=(LRECL=171,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(20,10),RLSE)
//ZMJ274R1 DD DSN=MXCP.ZM.FIX.SIN.DF.ECBP.ZMJ274R1,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJC09T02),DISP=SHR
//*@DGCM03-I
//*@DGCM04-I
//*--------------------------------------------------------------------*
//* PASO       : PJC09P3A                                              *
//* UTILERIA   : IKJEFT1A/ZM4MJ186                                     *
//* OBJETIVO   : VALIDACION DEL DIA DE EJECUCION PARA VALIDAR SI       *
//*              DEPURA DATOS DE VTC O CONSERVA LOS ANTERIORES.        *
//*--------------------------------------------------------------------*
//PJC09P3A EXEC PGM=IKJEFT1A,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJC08T11),
//            DISP=SHR
//*
// IF PJC09P3A.RC=00 THEN
//*@DGCM04-F
//*--------------------------------------------------------------------*
//* PASO       : PJC09P31                                              *
//* UTILERIA   : DELETE                                                *
//* OBJETIVO   : ELIMINA REGISTROS DE LA TABLA ZMDT800                 *
//*--------------------------------------------------------------------*
//PJC09P31 EXEC PGM=IKJEFT01,COND=(4,LT)
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
//PJC09P30 EXEC PGM=ICEMAN,COND=(4,LT)
//PI601765 DD DUMMY
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.CBJPCZ22.RECLAS.CLIENTE,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.CBJCPZ09.RECLAS.CLIENTE,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=512,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJP22T13),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PJC09P29                                              *
//* UTILERIA   : IKJEFT1A/ZM4CVTC0                                     *
//* OBJETIVO   : INSERTAR REGISTROS EN TABLA ZMDT800.                  *
//*--------------------------------------------------------------------*
//PJC09P29 EXEC PGM=IKJEFT1A,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.CBJCPZ09.RECLAS.CLIENTE,
//            DISP=SHR
//*
//SALIDA01 DD DSN=MXCP.ZM.FIX.CBJCPZ09.RECLAS.REP800,
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
//* PASO       : PJC09P28                                              *
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : DESCARGA DE TABLAS:                                   *
//*              CUENTA, ZMDT608                                       *
//*--------------------------------------------------------------------*
//PJC09P28 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PJP20P19,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.CBJCPZ09.CUENTAS.NOEXISTE,
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
//* PASO       : PJC09P27                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : REALIZA EL ORDENAMIENTO POR CLIENTE                   *
//*--------------------------------------------------------------------*
//PJC09P27 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.CBJCPZ09.CUENTAS.NOEXISTE,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.CBJCPZ09.CUENTAS.ORD,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=512,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,80),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJP22T10),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PJC09P26                                              *
//* UTILERIA   : IKJEFT1A/ZM4CVTC0                                     *
//* OBJETIVO   : INSERTAR REGISTROS EN TABLA ZMDT800.                  *
//*--------------------------------------------------------------------*
//PJC09P26 EXEC PGM=IKJEFT1A,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.CBJCPZ09.CUENTAS.ORD,
//            DISP=SHR
//*
//SALIDA01 DD DSN=MXCP.ZM.FIX.CBJCPZ09.RECLAS.REP2800,
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
//*@DGCM04-I
// ENDIF
//*@DGCM04-F
//*@DGCM03-F
//*
//**********************************************************************
//*                    -- ZM4MJ145  --    (FONDO DE FONDOS)            *
//*  GENERA ARCHIVO  SECUENCIAL CON EL RESULTADO DE LA RECLASIFICACION *
//*  DE SERIES DE UN MISMO FONDO VALOR 24, 48, 72 HRS. (DEFINITIVO)    *
//* (SE EJECUTA 1ER DIA HABIL DEL MES Y DIA HABIL SIGUIENTE AL EVENTO  *
//*  MANUAL DE RECLASIFICACION DEFINITIVA POR PARTE DEL USUARIO)       *
//**********************************************************************
//PJC09P25 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJ145A1 DD DSN=MXCP.ZM.TMP.SDI.ECBP.RECLAS.VN.SI9,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=280,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//ZMJ145A2 DD DSN=MXCP.ZM.TMP.SDI.EBCM.RECLAS.VN.SI9,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=280,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*RECMV-I
//ZMJ145A3 DD DSN=MXCP.ZM.TMP.SDI.SALP.RECLAS.VN.SI9,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=913,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(005,05),RLSE)
//*RECMV-F
//AZMDT800 DD DSN=MXCP.ZM.TMP.SDI.EBCM.RZMDT800.VN.SI9,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=200,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(10,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJC09T05),DISP=SHR
//*
//*@RECMV-I
//**********************************************************************
//*                    --  ZM4RJ800 --                                 *
//**********************************************************************
//PJC9P25A EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//AZMDT800 DD DSN=MXCP.ZM.TMP.SDI.EBCM.RZMDT800.VN.SI9,DISP=MOD
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
//PJC09PA5 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.SDI.SALP.RECLAS.VN.SI9,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.SDI.SALP.RECLAS.VN.SRT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=913,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJC09TA5),
//            DISP=SHR
//*
//**********************************************************************
//*                          -- ZM4MJ190  --                           *
//* COMPLEMENTA EL ARCHIVO DE SALDO PROMEDIO CON LA INFORMACION DE LAS *
//* POSICIONES QUE NO LLEGARON A FIN DE MES                            *
//**********************************************************************
//PJC09PB5 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJ190E1 DD DSN=MXCP.ZM.TMP.SDI.SALP.RECLAS.VN.SRT,
//            DISP=SHR
//ZMJ190S1 DD DSN=MXCP.ZM.FIX.SDI.SALP.RECLAS.VN.SI9,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJC09TB5),DISP=SHR
//*@RECMV-F
//**********************************************************************
//*                     * SORT   * CASA DE BOLSA  (FONDO DE FONDOS)    *
//* OBJETIVO: ORDENA LOS REGISTROS GENERADOS PARA LA RECLASIFICACION   *
//*           AUTOMATICA DE SERIES DE UN MISMO FONDO DE SOC. DE INV.   *
//* (SE EJECUTA 1ER DIA HABIL DEL MES Y DIA HABIL SIGUIENTE AL EVENTO  *
//*  MANUAL DE RECLASIFICACION DEFINITIVA POR PARTE DEL USUARIO)       *
//*                            (DEFINITIVO)                            *
//**********************************************************************
//PJC09P24 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.SDI.ECBP.RECLAS.VN.SI9,DISP=SHR
//*@DGCM02-I
//*SORTOUT  DD DSN=MXCP.ZM.FIX.SDI.ECBP.RECLAS.VN.SI9,
//SORTOUT  DD DSN=MXCP.ZM.FIX.SDI.ECBP.CBJCPZ09.SI9,
//*@DGCM02-F
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=280,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJC09T06),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   * BANCA PATRIMONIAL (FONDO DE FONDOS) *
//* OBJETIVO: ORDENA LOS REGISTROS GENERADOS PARA LA RECLASIFICACION   *
//*           AUTOMATICA DE SERIES DE UN MISMO FONDO DE SOC. DE INV.   *
//* (SE EJECUTA 1ER DIA HABIL DEL MES Y DIA HABIL SIGUIENTE AL EVENTO  *
//*  MANUAL DE RECLASIFICACION DEFINITIVA POR PARTE DEL USUARIO)       *
//*                            (DEFINITIVO)                            *
//**********************************************************************
//PJC09P23 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.SDI.EBCM.RECLAS.VN.SI9,DISP=SHR
//*@DGCM02-I
//*SORTOUT  DD DSN=MXCP.ZM.FIX.SDI.EBCM.RECLAS.VN.SI9,
//SORTOUT  DD DSN=MXCP.ZM.FIX.SDI.EBCM.CBJCPZ09.SI9,
//*@DGCM02-F
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=280,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJC09T06),DISP=SHR
//*@DGCM02-I
//*--------------------------------------------------------------------*
//* PASO       : PJC09P22                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : REALIZA EL ORDENAMIENTO POR CUENTA                    *
//*--------------------------------------------------------------------*
//PJC09P22 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.SDI.EBCM.CBJCPZ09.SI9,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.SDI.EBCM.CBJCPZ09.SI9.ORD,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=280,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,80),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(PJC09P22),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PJC09P21                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : REALIZA EL ORDENAMIENTO POR CUENTA                    *
//*--------------------------------------------------------------------*
//PJC09P21 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.SDI.ECBP.CBJCPZ09.SI9,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.SDI.ECBP.CBJCPZ09.SI9.ORD,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=280,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,80),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(PJC09P22),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PJC09P20                                              *
//* UTILERIA   : ZM3MJ184                                              *
//* OBJETIVO   : GENERA MATCH DE LAS CUENTAS UDI VS CUENTAS QUE VAN A  *
//*              APLICAR RECLASIFICACION.                              *
//*--------------------------------------------------------------------*
//PJC09P20 EXEC PGM=ZM3MJ184,COND=(4,LT)
//*
//E1DQENT1 DD DSN=MXCP.ZM.FIX.SDI.EBCM.CBJCPZ09.SI9.ORD,
//            DISP=SHR
//*
//E2DQENT2 DD DSN=MXCP.ZM.FIX.SDI.CBJPCZ23.CTASAPL,
//            DISP=SHR
//*
//S1DQSAL1 DD DSN=MXCP.ZM.FIX.CBJCPZ09.EBCM.ACTUAL,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,250),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=280,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO       : PJC09P19                                              *
//* UTILERIA   : ZM3MJ184                                              *
//* OBJETIVO   : GENERA MATCH DE LAS CUENTAS UDI VS CUENTAS QUE VAN A  *
//*              APLICAR RECLASIFICACION.                              *
//*--------------------------------------------------------------------*
//PJC09P19 EXEC PGM=ZM3MJ184,COND=(4,LT)
//*
//E1DQENT1 DD DSN=MXCP.ZM.FIX.SDI.ECBP.CBJCPZ09.SI9.ORD,
//            DISP=SHR
//*
//E2DQENT2 DD DSN=MXCP.ZM.FIX.SDI.CBJPCZ23.CTASAPL,
//            DISP=SHR
//*
//S1DQSAL1 DD DSN=MXCP.ZM.FIX.CBJCPZ09.ECBP.ACTUAL,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,250),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=280,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO       : PJC09P18                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : REALIZA EL ORDENAMIENTO POR CUENTA                    *
//*--------------------------------------------------------------------*
//PJC09P18 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.CBJCPZ09.ECBP.ACTUAL,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.SDI.ECBP.RECLAS.VN.SI9,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=280,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,80),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJC09T06),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PJC09P17                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : REALIZA EL ORDENAMIENTO POR CUENTA                    *
//*--------------------------------------------------------------------*
//PJC09P17 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.CBJCPZ09.EBCM.ACTUAL,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.SDI.EBCM.RECLAS.VN.SI9,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=280,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,80),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJC09T06),DISP=SHR
//*@DGCM02-F
//*
//**********************************************************************
//*                    -- ZM4MJ160  -- (FONDO DE FONDOS)               *
//*  GENERA ARCHIVO SECUENCIAL DE LA RECLASIFICACION AUTOMATICA        *
//*  DE SERIES DE UN MISMO FONDO DE SOCIEDADES DE INVERSION PARA SER   *
//*  ENVIADO  A UN SERVIDOR Y ABRIRLO CON EXCEL        (DEFINITIVO)    *
//* (SE EJECUTA 1ER DIA HABIL DEL MES Y DIA HABIL SIGUIENTE AL EVENTO  *
//*  MANUAL DE RECLASIFICACION DEFINITIVA POR PARTE DEL USUARIO)       *
//**********************************************************************
//PJC09P16 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZME160A1 DD DSN=MXCP.ZM.FIX.SIN.P3.EBCM.DEFI.PP09,DISP=SHR
//ZME160A2 DD DSN=MXCP.ZM.FIX.SDI.ECBP.RECLAS.VN.SI9,DISP=SHR
//ZME160A3 DD DSN=MXCP.ZM.FIX.SDI.EBCM.RECLAS.VN.SI9,DISP=SHR
//*
//ZME160A4 DD DSN=MXCP.ZM.TMP.SDI.ECBP.RCL.VN.SI9.DARC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*@DGCM01-I
//*           DCB=(DSORG=PS,LRECL=400,RECFM=FB,BLKSIZE=0),
//*@DGCM03-I
//*           DCB=(DSORG=PS,LRECL=455,RECFM=FB,BLKSIZE=0),
//            DCB=(DSORG=PS,LRECL=475,RECFM=FB,BLKSIZE=0),
//*@DGCM03-F
//*@DGCM01-F
//            SPACE=(CYL,(100,50),RLSE)
//ZME160A5 DD DSN=MXCP.ZM.TMP.SDI.EBCM.RCL.VN.SI9.DARC,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJC09T07),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4MJ150  -- (FONDO DE FONDOS)               *
//*  GENERA LISTADO CON EL RESULTADO DE LA RECLASIFICACION AUTOMATICA  *
//*  DE SERIES DE UN MISMO FONDO MARCADO POR EL USUARIO MEDIANTE LA    *
//*  OPCION 533                                                        *
//* (SE EJECUTA 1ER DIA HABIL DEL MES Y DIA HABIL SIGUIENTE AL EVENTO  *
//*  MANUAL DE RECLASIFICACION DEFINITIVA POR PARTE DEL USUARIO)       *
//*                            (DEFINITIVO)                            *
//**********************************************************************
//*@DGCM01-I
//*PJC09P15 EXEC PGM=IKJEFT01,COND=(0,NE,PJC09P19)
//PJC09P15 EXEC PGM=IKJEFT01,COND=(4,LT)
//*@DGCM01-F
//ZME150A1 DD DSN=MXCP.ZM.FIX.SIN.P3.EBCM.DEFI.PP09,DISP=SHR
//ZME150A2 DD DSN=MXCP.ZM.FIX.SDI.ECBP.RECLAS.VN.SI9,DISP=SHR
//ZME150A3 DD DSN=MXCP.ZM.FIX.SDI.EBCM.RECLAS.VN.SI9,DISP=SHR
//*
//ZME150LC DD DSN=MXCP.ZM.TMP.SDI.ECBP.RCL.VN.SI9.DEF,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//ZME150LB DD DSN=MXCP.ZM.TMP.SDI.EBCM.RCL.VN.SI9.DEF,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJC09T08),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4MJ170  --   (FONDO DE FONDOS)             *
//*  GENERA LAS VENTAS Y COMPRAS DERIVADO DE LA RECLASIFICACION MENSUAL*
//*  PERIODICA DE LAS SERIES DE UN MISMO FONDO DE SOCIEDADES DE INVER. *
//* (SE EJECUTA 1ER DIA HABIL DEL MES Y DIA HABIL SIGUIENTE AL EVENTO  *
//*  MANUAL DE RECLASIFICACION DEFINITIVA POR PARTE DEL USUARIO)       *
//*                            (DEFINITIVO)                            *
//**********************************************************************
//*@DGCM04-I
//*PJC09P14 EXEC PGM=IKJEFT01,COND=(0,NE,PJC09P19)
//PJC09P14 EXEC PGM=IKJEFT01,COND=(0,NE,PJC09P25)
//*@DGCM04-F
//ZME170A1 DD DSN=MXCP.ZM.FIX.SIN.P3.EBCM.DEFI.PP09,DISP=SHR
//ZME170A2 DD DSN=MXCP.ZM.FIX.SDI.ECBP.RECLAS.VN.SI9,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.SDI.EBCM.RECLAS.VN.SI9,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJC09T09),DISP=SHR
//*
//**********************************************************************
//*        SE ADICIONA CONDICION PARA EL BCJINT09 X RECLASIFICACION    *
//*                PARA QUE SEA TOMADA POR CTL-M                       *
//* (SE EJECUTA 1ER DIA HABIL DEL MES Y DIA HABIL SIGUIENTE AL EVENTO  *
//*  MANUAL DE RECLASIFICACION DEFINITIVA POR PARTE DEL USUARIO)       *
//*            (FONDO DE FONDOS)(DEFINITIVO)                           *
//**********************************************************************
//PJC09P13 EXEC  PGM=CTMCND,PARM='ADD COND BCJINT09_IN_OK WDATE',
//         COND=(4,LT)
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD SYSOUT=*
//SYSPRINT DD DUMMY
//SYSUDUMP DD DUMMY
//DAPRINT  DD SYSOUT=*
//DACNDIN  DD DDNAME=SYSIN
//*
//**********************************************************************
//*                        == ZM4DJ203 ==                              *
//*                      (FONDO DE FONDOS)                             *
//* OBJETIVO : MOVIMIENTOS AUTOMATICOS CUENTAS CONCENTRADORAS MUV V.N. *
//*            BANCA PATRIMONIAL                                       *
//**********************************************************************
//PJC09P12 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJ203P1 DD DSN=MXCP.ZM.FIX.SIN.P3.EBCM.DEFI.PP09,DISP=SHR
//ZMJ203R1 DD DSN=MXCP.ZM.FIX.SIN.DF.EBCM.ZMJ203R1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//* INDRA-I
//ZMJ203R2 DD DSN=MXCP.ZM.FIX.SIN.DF.EBCM.ZMJ203R2,
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
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJC09T03),DISP=SHR
//*
//**********************************************************************
//*                        == ZM4DJ202 ==                              *
//*                      (FONDO DE FONDOS)                             *
//* OBJETIVO : COMPRA/VENTA AUTOMATICAS DE LOS FONDOS DE S.I.          *
//**********************************************************************
//PJC09P11 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJ202P1 DD DSN=MXCP.ZM.FIX.SIN.P3.ECBP.DEFI.PP09,DISP=SHR
//ZMJ202R1 DD DSN=MXCP.ZM.FIX.SIN.DF.ECBP.ZMJ202R1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//* INDRA-I
//ZMJ202R2 DD DSN=MXCP.ZM.FIX.SIN.DF.ECBP.ZMJ202R2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=132,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*FS-1.0.0-01-INI
//ZMJ202R3 DD DSN=MXCP.ZM.FIX.SIN.DF.ECBP.ZMJ202R3,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*FS-1.0.0-01-FIN
//* INDRA-F
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJC09T04),DISP=SHR
//*
//**********************************************************************
//* OBJETIVO : UNIFICA REPORTES PARA ENVIO A SERVIDOR                  *
//* PROGRAMA : ICEGENER                                                *
//**********************************************************************
//PJC09P10 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.SIN.DF.ECBP.ZMJ274R1,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.SIN.DF.EBCM.ZMJ274R1,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.SIN.DF.GENE.ZMJ274R1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(20,10),RLSE)
//SYSIN    DD DUMMY
//*
//**********************************************************************
//* OBJETIVO : UNIFICA REPORTES PARA ENVIO A SERVIDOR                  *
//* PROGRAMA : ICEGENER                                                *
//**********************************************************************
//PJC09P09 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.SIN.DF.EBCM.ZMJ203R1,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.SIN.DF.ECBP.ZMJ202R1,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.SIN.DF.GENE.ZMJ202R1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(20,10),RLSE)
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                    -- ZM4COP03  -- (CIERRE DEFINITIVO)             *
//*CALCULO DE COSTO PROMEDIO PONDERADO COMERCIAL      (PROCESO NORMAL)
//*FONDOS DE S.I.                                                      *
//**********************************************************************
//*PJC09P9A EXEC PGM=IKJEFT01,COND=(4,LT)                               01151027
//**                                                                    01153001
//*ZMUD01S1 DD DSN=MXCP.ZM.FIX.SIN.DF.Z03.LOGERR.F&FECHA,
//*            DISP=(NEW,CATLG,DELETE),
//*            UNIT=3390,
//*            SPACE=(CYL,(10,5),RLSE),
//*            DCB=(RECFM=FB,LRECL=300,BLKSIZE=0,DSORG=PS)
//**                                                                    01155001
//*ZMUD01S2 DD DSN=MXCP.ZM.FIX.SIN.DF.Z03.CCONTROL.F&FECHA,
//*            DISP=(NEW,CATLG,DELETE),
//*            UNIT=3390,
//*            SPACE=(CYL,(10,5),RLSE),
//*            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//**                                                                    01155001
//*ZMUD01S3 DD DSN=MXCP.ZM.FIX.SIN.DF.Z03.CANCELA.F&FECHA,
//*            DISP=(NEW,CATLG,DELETE),
//*            UNIT=3390,
//*            SPACE=(CYL,(10,5),RLSE),
//*            DCB=(RECFM=FB,LRECL=150,BLKSIZE=0,DSORG=PS)
//**                                                                    01155001
//*SYSTSPRT DD SYSOUT=*                                                 01170038
//*SYSPRINT DD SYSOUT=*                                                 01180038
//*SYSOUT   DD SYSOUT=*                                                 01190038
//*SYSDBOUT DD SYSOUT=*                                                 01200038
//*SYSABOUT DD DUMMY                                                    01210000
//*SYSUDUMP DD DUMMY                                                    01220000
//**                                                                    01155001
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC25T18),DISP=SHR                  01230041
//*
//**********************************************************************
//*                    -- ICEGENER  -- ENVIA A CTL-D (FONDO DE FONDOS) *
//*        REPORTE S.D.I. CASA DE BOLSA RECLASIF. AUT. DE SERIES       *
//* (SE EJECUTA 1ER DIA HABIL DEL MES Y DIA HABIL SIGUIENTE AL EVENTO  *
//*  MANUAL DE RECLASIFICACION DEFINITIVA POR PARTE DEL USUARIO)       *
//*                            (DEFINITIVO)                            *
//**********************************************************************
//*@DGCM04-I
//*PJC09P08 EXEC PGM=ICEGENER,COND=(0,NE,PJC09P19)
//PJC09P08 EXEC PGM=ICEGENER,COND=(0,NE,PJC09P25)
//*@DGCM04-F
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.TMP.SDI.ECBP.RCL.VN.SI9.DEF,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                    -- ICEGENER  -- ENVIA A CTL-D (FONDO DE FONDOS) *
//*        REPORTE S.D.I. BANCA PATRIMONIAL RECLASIF. AUT. DE SERIES   *
//* (SE EJECUTA 1ER DIA HABIL DEL MES Y DIA HABIL SIGUIENTE AL EVENTO  *
//*  MANUAL DE RECLASIFICACION DEFINITIVA POR PARTE DEL USUARIO)       *
//*                            (DEFINITIVO)                            *
//**********************************************************************
//*@DGCM04-I
//*PJC09P07 EXEC PGM=ICEGENER,COND=(0,NE,PJC09P19)
//PJC09P07 EXEC PGM=ICEGENER,COND=(0,NE,PJC09P25)
//*@DGCM04-F
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.TMP.SDI.EBCM.RCL.VN.SI9.DEF,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*                (FONDOS DE FONDOS)                                  *
//*        IMPRIME EN CONTROL-D LOS REPORTES DE VALUACION DE SOC. INV. *
//**********************************************************************
//PJC09P05 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.SIN.DF.ECBP.ZMJ274R1,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.SIN.DF.EBCM.ZMJ274R1,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*                   (FONDOS DE FONDOS)                               *
//*        IMPRIME EN CONTROL-D LOS REPORTES DE COMPRAS/VENTAS         *
//*        AUTOMATICAS VALOR NORMAL (CUENTAS CONCENTRADORAS Y FONDOS)  *
//**********************************************************************
//PJC09P02 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.SIN.DF.EBCM.ZMJ203R1,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.SIN.DF.ECBP.ZMJ202R1,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//**********************************************************************
//** PEND         FIN DEL PROCEDIMIENTO ZMJCPZ09                       *
//**********************************************************************
