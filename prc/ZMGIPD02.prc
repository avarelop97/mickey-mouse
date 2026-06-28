//ZMGIPD02 PROC
//*
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                    <<SOCIEDADES DE INVERSION>>                     *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   OBJETIVO  :  INICIO DE DIA DE TESORERIA Y CONTRATOS.             *
//*                                                                    *
//*   REALIZACION : HECTOR PAZ CONCHA (SISCON SYSTEMS, S.A. DE C.V.    *
//*                                                                    *
//*   FECHA:  NOVIEMBRE 2002                                           *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*  1   |2004/06/11|IDCEX73|        | ESTE PROCESO CORRE ANTES DE     *
//*      |          |       |        | POZOS Y DESPUES DE POZOS SE     *
//*      |          |       |        | EJECUTA EL PROC    ZMJIPD04     *
//**********************************************************************
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA         DESCRIPCION                   *
//* ----------- --------- -------  ------------------------------------*
//*  @DGCM01    XMZ8533  15MAY18 -SE INCLUYEN PASOS PARA LA CONSIDERAR *
//*                               RECLASIFICACION POR MANDATOS.        *
//*                              -SE RENUMERAN LOS PASOS.              *
//*  @DGCM02    XMZ8533  02JUL18 -SE AUMENTA LONGITUD EN REPORTES DE   *
//*                               SALIDA P/RELASIFICACION              *
//*  @DGCM03    XMZ8533  02ENE19 -SE AGREGA PASO DE INSERT A ZMDTPRC   *
//*  @RECLMV    XMY4145  06JUN20 -SE CALCULA VTC ANTES DE LA RECLA.    *
//*  @RECMV2    XMY4145  25SEP20 - SE AGREGA EL REPORTE DE SALDO PROM. *
//*  @DIFREC    XMBB157  18MAR21 - SE ELIMINAN LOS PASOS PJI02P24 AL   *
//*                                PJI02PSI PARA EL PROCESAMIENTO DE   *
//*                                CANJES, PASANDOLOS AL PROCESO       *
//*                                BCGIPC01.                           *
//*  @ASAERK    XMY0603  10MAY22 - SE REALIZAN LAS MODIFICACIONES DE   *
//*                                REFORMA FISCAL (CFDI 4.0).          *
//*  @MEX001    M76893   16MAY24 - SE AGREGA CONDICION PARA ENVIO DE   *
//*                                ARCHIVO A DATIO.                    *
//*--------------------------------------------------------------------*
//*
//**********************************************************************
//*    RECIBE LOS PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN ARCHIVO    *
//*           (SE EJECUTA TODOS LOS DIAS)                              *
//**********************************************************************
//*
//PJI02P25 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC',' ',' ',)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJIPD02,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//           UNIT=3390,
//           SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************
//*                    -- ZM4DJ092  --                                 *
//* OBJETIVO : GENERA LOS MOVTOS. PARA LOS PREAVISOS A 1 DIA Y 7 DIAS  *
//*           (SE EJECUTA TODOS LOS DIAS)                              *
//**********************************************************************
//*
//PJI02P18 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMDJ92P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJIPD02,
//         DISP=SHR
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJI02T18),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4DJ093  --                                 *
//* OBJETIVO : GENERA EL REPORTE DE MOVIMENTOS CANCELADOS, CONFIRMA-   *
//*            DOS Y PENDIENTES HECHOS EN EL PASO ANTERIOR.            *
//*            SI EL PASO ANTERIOR NO TERMINA CON CODIGO 00 LA CADENA  *
//*            NO PUEDE CONTINUAR. ESTA CONDICION LA DA EL IF-THEN     *
//*           (SE EJECUTA TODOS LOS DIAS)                              *
//**********************************************************************
//PJI02P17 EXEC PGM=IKJEFT01,COND=(0,NE,PJI02P18)
//R1DQ093D DD DSN=MXCP.ZM.TMP.FIX.E&EMP..ZM4DJ093.D&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(200,100),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMDJ93P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJIPD02,
//         DISP=SHR
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJI02T17),DISP=SHR
//*
//**********************************************************************
//* OBJETIVO : MANDA EL REPORTE ANTERIOR A LA BANDEJA DE REPORTES  -   *
//*           (SE EJECUTA TODOS LOS DIAS)                              *
//**********************************************************************
//*
//PJI02P16 EXEC  PGM=ICEGENER,COND=(0,NE,PJI02P18)
//SYSUT1   DD  DSN=MXCP.ZM.TMP.FIX.E&EMP..ZM4DJ093.D&FECHA,DISP=SHR
//SYSUT2   DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSOUT   DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DUMMY
//*
//**********************************************************************
//*    PROGRAMA P/ACTIVAR IMPRESORA TROY                               *
//*           (SE EJECUTA TODOS LOS DIAS)                              *
//**********************************************************************
//*
//PJI02P15 EXEC PGM=IKJEFT01,COND=(0,NE,PJI02P18)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJI02&EMP),DISP=SHR
//*
//**********************************************************************
//*                            === IDCAMS  ===                         *
//* OBJETIVO : BORRAR ARCHIVOS A UTILIZAR EN EL PROCESO.               *
//*           (SE EJECUTA TODOS LOS DIAS)                              *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//*
//PJI02P14 EXEC PGM=IDCAMS,COND=(0,NE,PJI02P18)
//SYSPRINT DD SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZJI02T08),DISP=SHR
//*
//**********************************************************************
//*                        -- ZM4DGG14 --                              *
//* OBJETIVO : MARCA EL INICIO DE INIDIA DE TESORERIA                  *
//*            (CONTINGENCIA)    CTLPROC IT1                           *
//*           (SE EJECUTA TODOS LOS DIAS)                              *
//* PASO REINICIABLE POR RESTART                       *** TESORERIA   *
//**********************************************************************
//*
//PJI02P13 EXEC PGM=IKJEFT01,COND=(0,NE,PJI02P18)
//ZMGG14A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJIPD02,
//         DISP=SHR
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZJI02T07),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4DJ094  --                                 *
//* OBJETIVO : GENERA VENTAS POR DONACION PARTIENDO DE LAS VENTAS      *
//*            SOLICITADAS POR EL CLIENTE                              *
//*           (SE EJECUTA TODOS LOS DIAS)                              *
//**********************************************************************
//PJI02P12 EXEC PGM=IKJEFT01,COND=(0,NE,PJI02P18)
//ZMD094A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJIPD02,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJI02T29),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4DJ095  --                                 *
//* OBJETIVO : GENERA VENTAS POR DONACION PARTIENDO DE LA POSICION DE  *
//*            LA CARTERA DEL CLIENTE                                  *
//*           (SE EJECUTA TODOS LOS DIAS)                              *
//**********************************************************************
//PJI02P11 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMD095A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJIPD02,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJI02T30),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4DJ096  --                                 *
//*  GENERA LISTADO CON EL DETALLE DE LAS VENTAS DEL DIA POR DONACION  *
//*  A LA FUNDACION BANCOMER DEJANDO EL ABONO EN UNA CUENTA PUENTE     *
//*           (SE EJECUTA TODOS LOS DIAS)                              *
//**********************************************************************
//PJI02P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZME096A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJIPD02,DISP=SHR
//*
//ZME096LC DD DSN=MXCP.ZM.TMP.SDI.ECBP.VTASXDON.DIARIAS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//ZME096LB DD DSN=MXCP.ZM.TMP.SDI.EBCM.VTASXDON.DIARIAS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//ZME096A2 DD DSN=MXCP.ZM.FIX.SDI.EBCM.VTASXDON.ARCHIVO,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=376,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJI02T33),DISP=SHR
//*
//**********************************************************************
//*                    -- ICEGENER  -- ENVIA A CTL-D                   *
//*        REPORTE DIARIO DETALLE DE VENTAS X DONACION CASA DE BOLSA   *
//*           (SE EJECUTA TODOS LOS DIAS)                              *
//**********************************************************************
//PJI02PCB EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.TMP.SDI.ECBP.VTASXDON.DIARIAS,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                    -- ICEGENER  -- ENVIA A CTL-D                   *
//*        REPORTE DIARIO DETALLE DE VENTAS X DONACION BANCA PATRIM.   *
//*           (SE EJECUTA TODOS LOS DIAS)                              *
//**********************************************************************
//PJI02PBC EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.TMP.SDI.EBCM.VTASXDON.DIARIAS,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                    -- ZM4DJ097  --                                 *
//*  GENERA LISTADO CON EL TOTAL DE VENTAS DE CADA CLIENTE REALIZADAS  *
//*  EN EL MES PARA DONACION A LA FUNDACION BANCOMER.                  *
//*  REALIZA CARGO A LA CUENTA PUENTE Y ABONO A LA CUENTA DE LA FUNDAC.*
//*           (SE EJECUTA EL ULTIMO DIA HABIL DEL MES)                 *
//**********************************************************************
//PJI02P09 EXEC PGM=IKJEFT01,COND=(0,NE,PJI02P11)
//ZME097A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJIPD02,DISP=SHR
//ZME097A2 DD DSN=MXCP.ZM.FIX.SDI.EBCM.VTASXDON.ARCHIVO,DISP=SHR
//*
//ZME097LC DD DSN=MXCP.ZM.TMP.SDI.ECBP.VTASXDON.MENSUAL,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//ZME097LB DD DSN=MXCP.ZM.TMP.SDI.EBCM.VTASXDON.MENSUAL,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//ZME097A3 DD DSN=MXCP.ZM.FIX.SDI.EBCM.DEPFUBCM.ARCHIVO,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*@ASAERK-I
//*           DCB=(DSORG=PS,LRECL=520,RECFM=FB,BLKSIZE=0),
//            DCB=(DSORG=PS,LRECL=713,RECFM=FB,BLKSIZE=0),
//*@ASAERK-F
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJI02T31),DISP=SHR
//*
//**********************************************************************
//*                    -- ICEGENER  -- ENVIA A CTL-D                   *
//*        REPORTE DIARIO DETALLE DE VENTAS X DONACION CASA DE BOLSA   *
//*           (SE EJECUTA EL ULTIMO DIA HABIL DEL MES)                 *
//**********************************************************************
//PJI02P9C EXEC PGM=ICEGENER,COND=(0,NE,PJI02P11)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.TMP.SDI.ECBP.VTASXDON.MENSUAL,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                    -- ICEGENER  -- ENVIA A CTL-D                   *
//*        REPORTE DIARIO DETALLE DE VENTAS X DONACION BANCA PATRIM.   *
//*           (SE EJECUTA EL ULTIMO DIA HABIL DEL MES)                 *
//**********************************************************************
//PJI02P9B EXEC PGM=ICEGENER,COND=(0,NE,PJI02P11)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.TMP.SDI.EBCM.VTASXDON.MENSUAL,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                    -- ZM4DJ098  --                                 *
//*  GENERA LISTADO CON EL RESUMEN MENSUAL DE LAS VENTAS POR DONACION  *
//*  A LA FUNDACION BANCOMER                                           *
//*           (SE EJECUTA EL ULTIMO DIA HABIL DEL MES)                 *
//**********************************************************************
//PJI02P08 EXEC PGM=IKJEFT01,COND=(0,NE,PJI02P11)
//ZME098A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJIPD02,DISP=SHR
//*
//ZME098LS DD DSN=MXCP.ZM.TMP.SDI.RSMN.VTASXDON.MENSUAL,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJI02T32),DISP=SHR
//*
//**********************************************************************
//*                    -- ICEGENER  -- ENVIA A CTL-D                   *
//*        REPORTE RESUMEN DE VENTAS MENSUALES POR DONACION F. BANCOMER*
//*           (SE EJECUTA EL ULTIMO DIA HABIL DEL MES)                 *
//**********************************************************************
//PJI02P8C EXEC PGM=ICEGENER,COND=(0,NE,PJI02P11)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.TMP.SDI.RSMN.VTASXDON.MENSUAL,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*        SE ADICIONA CONDICION PARA EL BCJINT03 X VTAS.DONATIVOS     *
//*                PARA QUE SEA TOMADA POR CTL-M                       *
//*           (SE EJECUTA EL ULTIMO DIA HABIL DEL MES)                 *
//**********************************************************************
//PJI02PVT EXEC  PGM=CTMCND,PARM='ADD COND BCJINT03_IN_OK WDATE',
//         COND=(0,NE,PJI02P11)
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
//*RECLMV-I
//*--------------------------------------------------------------------*
//* PASO       : PJP20P09                                              *
//* UTILERIA   : IKJEFT1A/ZM4CVTC0                                     *
//* OBJETIVO   : INSERTAR REGISTROS EN TABLA ZMDT800.                  *
//*--------------------------------------------------------------------*
//PJI02PA6 EXEC PGM=IKJEFT1A,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.CBJPCZ22.CUENTAS.ORD,
//            DISP=SHR
//*
//SALIDA01 DD DSN=MXCP.ZM.FIX.ZMGIPD02.RECLAS.REP2800,
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
//*RECLMV-F
//**********************************************************************
//*                    -- ZM4MJ140  --                                 *
//*  GENERA ARCHIVO  SECUENCIAL CON EL RESULTADO DE LA RECLASIFICACION *
//*  DE SERIES DE UN MISMO FONDO                       (DEFINITIVO)    *
//* (SE EJECUTA 1ER DIA HABIL DEL MES Y DIA HABIL SIGUIENTE AL EVENTO  *
//*  MANUAL DE RECLASIFICACION DEFINITIVA POR PARTE DEL USUARIO)       *
//**********************************************************************
//PJI02P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJ140A1 DD DSN=MXCP.ZM.TMP.SDI.ECBP.RECLAS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=280,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//ZMJ140A2 DD DSN=MXCP.ZM.TMP.SDI.EBCM.RECLAS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=280,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*RECMV2-I
//ZMJ140A3 DD DSN=MXCP.ZM.TMP.SDI.RECLAS.SALPRO,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=913,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(005,05),RLSE)
//*RECMV2-F
//AZMDT800 DD DSN=MXCP.ZM.TMP.SDI.EBCM.AZMDT800.RECLAS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=200,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(10,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJI02T24),DISP=SHR
//*
//*@RECMV2-I
//**********************************************************************
//*                    --  ZM4RJ800 --                                 *
//**********************************************************************
//PJI02P6A EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//AZMDT800 DD DSN=MXCP.ZM.TMP.SDI.EBCM.AZMDT800.RECLAS,DISP=MOD
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
//PJI02PB6 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.SDI.RECLAS.SALPRO,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.SDI.RECLAS.SALPRO.SRT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=913,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJI02U24),
//            DISP=SHR
//*
//**********************************************************************
//*                          -- ZM4MJ190  --                           *
//* COMPLEMENTA EL ARCHIVO DE SALDO PROMEDIO CON LA INFORMACION DE LAS *
//* POSICIONES QUE NO LLEGARON A FIN DE MES                            *
//**********************************************************************
//PJI02PC6 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJ190E1 DD DSN=MXCP.ZM.TMP.SDI.RECLAS.SALPRO.SRT,
//            DISP=SHR
//ZMJ190S1 DD DSN=MXCP.ZM.FIX.SDI.RECLAS.SALPRO,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJI02V24),DISP=SHR
//*@RECMV2-F
//**********************************************************************
//*                     * SORT   * CASA DE BOLSA                       *
//* OBJETIVO: ORDENA LOS REGISTROS GENERADOS PARA LA RECLASIFICACION   *
//*           AUTOMATICA DE SERIES DE UN MISMO FONDO DE SOC. DE INV.   *
//* (SE EJECUTA 1ER DIA HABIL DEL MES Y DIA HABIL SIGUIENTE AL EVENTO  *
//*  MANUAL DE RECLASIFICACION DEFINITIVA POR PARTE DEL USUARIO)       *
//*                            (DEFINITIVO)                            *
//**********************************************************************
//*@DGCM01-I
//*PJI02P05 EXEC PGM=ICEMAN,COND=(0,NE,PJI02P06)
//PJI02P05 EXEC PGM=ICEMAN,COND=(4,LT)
//*@DGCM01-F
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.SDI.ECBP.RECLAS,DISP=SHR
//*@DGCM01-I
//*SORTOUT  DD DSN=MXCP.ZM.FIX.SDI.ECBP.RECLAS,
//SORTOUT  DD DSN=MXCP.ZM.FIX.SDI.ECBP.RECLAS.AUX,
//*@DGCM01-F
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=280,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJI02T26),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   * BANCA PATRIMONIAL                   *
//* OBJETIVO: ORDENA LOS REGISTROS GENERADOS PARA LA RECLASIFICACION   *
//*           AUTOMATICA DE SERIES DE UN MISMO FONDO DE SOC. DE INV.   *
//* (SE EJECUTA 1ER DIA HABIL DEL MES Y DIA HABIL SIGUIENTE AL EVENTO  *
//*  MANUAL DE RECLASIFICACION DEFINITIVA POR PARTE DEL USUARIO)       *
//*                            (DEFINITIVO)                            *
//**********************************************************************
//*@DGCM01-I
//*PJI02P04 EXEC PGM=ICEMAN,COND=(0,NE,PJI02P06)
//PJI02P04 EXEC PGM=ICEMAN,COND=(4,LT)
//*@DGCM01-F
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.SDI.EBCM.RECLAS,DISP=SHR
//*@DGCM01-I
//*SORTOUT  DD DSN=MXCP.ZM.FIX.SDI.EBCM.RECLAS,
//SORTOUT  DD DSN=MXCP.ZM.FIX.SDI.EBCM.RECLAS.AUX,
//*@DGCM01-F
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=280,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJI02T26),DISP=SHR
//*@DGCM01-I
//*--------------------------------------------------------------------*
//* PASO       : PJI02006                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : REALIZA EL ORDENAMIENTO POR CUENTA                    *
//*--------------------------------------------------------------------*
//PJI02006 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.SDI.EBCM.RECLAS.AUX,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.SDI.EBCM.RECLAS.ORD,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=280,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,80),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(PJI02006),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PJI02005                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : REALIZA EL ORDENAMIENTO POR CUENTA                    *
//*--------------------------------------------------------------------*
//PJI02005 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.SDI.ECBP.RECLAS.AUX,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.SDI.ECBP.RECLAS.ORD,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=280,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,80),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(PJI02006),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PJI02004                                              *
//* UTILERIA   : ZM3MJ184                                              *
//* OBJETIVO   : GENERA MATCH DE LAS CUENTAS UDI VS CUENTAS QUE VAN A  *
//*              APLICAR RECLASIFICACION.                              *
//*--------------------------------------------------------------------*
//PJI02004 EXEC PGM=ZM3MJ184,COND=(4,LT)
//*
//E1DQENT1 DD DSN=MXCP.ZM.FIX.SDI.EBCM.RECLAS.ORD,
//            DISP=SHR
//*
//E2DQENT2 DD DSN=MXCP.ZM.FIX.SDI.CBJPCZ23.CTASAPL,
//            DISP=SHR
//*
//S1DQSAL1 DD DSN=MXCP.ZM.FIX.BCJICD02.EBCM.ACTUAL,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,250),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=280,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO       : PJI02003                                              *
//* UTILERIA   : ZM3MJ184                                              *
//* OBJETIVO   : GENERA MATCH DE LAS CUENTAS UDI VS CUENTAS QUE VAN A  *
//*              APLICAR RECLASIFICACION.                              *
//*--------------------------------------------------------------------*
//PJI02003 EXEC PGM=ZM3MJ184,COND=(4,LT)
//*
//E1DQENT1 DD DSN=MXCP.ZM.FIX.SDI.ECBP.RECLAS.ORD,
//            DISP=SHR
//*
//E2DQENT2 DD DSN=MXCP.ZM.FIX.SDI.CBJPCZ23.CTASAPL,
//            DISP=SHR
//*
//S1DQSAL1 DD DSN=MXCP.ZM.FIX.BCJICD02.ECBP.ACTUAL,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,250),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=280,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO       : PJI02002                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : REALIZA EL ORDENAMIENTO POR CUENTA                    *
//*--------------------------------------------------------------------*
//PJI02002 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.BCJICD02.ECBP.ACTUAL,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.SDI.ECBP.RECLAS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=280,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,80),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJI02T26),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PJI02001                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : REALIZA EL ORDENAMIENTO POR CUENTA                    *
//*--------------------------------------------------------------------*
//PJI02001 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.BCJICD02.EBCM.ACTUAL,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.SDI.EBCM.RECLAS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=280,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,80),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJI02T26),DISP=SHR
//*@DGCM01-F
//*
//**********************************************************************
//*                    -- ZM4MJ160  --                                 *
//*  GENERA ARCHIVO SECUENCIAL DE LA RECLASIFICACION AUTOMATICA        *
//*  DE SERIES DE UN MISMO FONDO DE SOCIEDADES DE INVERSION PARA SER   *
//*  ENVIADO  A UN SERVIDOR Y ABRIRLO CON EXCEL        (DEFINITIVO)    *
//* (SE EJECUTA 1ER DIA HABIL DEL MES Y DIA HABIL SIGUIENTE AL EVENTO  *
//*  MANUAL DE RECLASIFICACION DEFINITIVA POR PARTE DEL USUARIO)       *
//**********************************************************************
//PJI02P03 EXEC PGM=IKJEFT01,COND=(0,NE,PJI02P06)
//ZME160A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJIPD02,DISP=SHR
//ZME160A2 DD DSN=MXCP.ZM.FIX.SDI.ECBP.RECLAS,DISP=SHR
//ZME160A3 DD DSN=MXCP.ZM.FIX.SDI.EBCM.RECLAS,DISP=SHR
//*
//ZME160A4 DD DSN=MXCP.ZM.TMP.SDI.ECBP.RECLAS.DEF.ARC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*@DGCM02-I
//*           DCB=(DSORG=PS,LRECL=455,RECFM=FB,BLKSIZE=0),
//            DCB=(DSORG=PS,LRECL=475,RECFM=FB,BLKSIZE=0),
//*@DGCM02-F
//            SPACE=(CYL,(100,50),RLSE)
//ZME160A5 DD DSN=MXCP.ZM.TMP.SDI.EBCM.RECLAS.DEF.ARC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*@DGCM02-I
//*           DCB=(DSORG=PS,LRECL=455,RECFM=FB,BLKSIZE=0),
//            DCB=(DSORG=PS,LRECL=475,RECFM=FB,BLKSIZE=0),
//*@DGCM02-F
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJI02T27),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4MJ150  --                                 *
//*  GENERA LISTADO CON EL RESULTADO DE LA RECLASIFICACION AUTOMATICA  *
//*  DE SERIES DE UN MISMO FONDO MARCADO POR EL USUARIO MEDIANTE LA    *
//*  OPCION 533                                                        *
//* (SE EJECUTA 1ER DIA HABIL DEL MES Y DIA HABIL SIGUIENTE AL EVENTO  *
//*  MANUAL DE RECLASIFICACION DEFINITIVA POR PARTE DEL USUARIO)       *
//*                            (DEFINITIVO)                            *
//**********************************************************************
//PJI02P02 EXEC PGM=IKJEFT01,COND=(0,NE,PJI02P06)
//ZME150A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJIPD02,DISP=SHR
//ZME150A2 DD DSN=MXCP.ZM.FIX.SDI.ECBP.RECLAS,DISP=SHR
//ZME150A3 DD DSN=MXCP.ZM.FIX.SDI.EBCM.RECLAS,DISP=SHR
//*
//ZME150LC DD DSN=MXCP.ZM.TMP.SDI.ECBP.RECLAS.DEF,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//ZME150LB DD DSN=MXCP.ZM.TMP.SDI.EBCM.RECLAS.DEF,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJI02T25),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4MJ170  --                                 *
//*  GENERA LAS VENTAS Y COMPRAS DERIVADO DE LA RECLASIFICACION MENSUAL*
//*  PERIODICA DE LAS SERIES DE UN MISMO FONDO DE SOCIEDADES DE INVER. *
//* (SE EJECUTA 1ER DIA HABIL DEL MES Y DIA HABIL SIGUIENTE AL EVENTO  *
//*  MANUAL DE RECLASIFICACION DEFINITIVA POR PARTE DEL USUARIO)       *
//*                            (DEFINITIVO)                            *
//**********************************************************************
//PJI02P01 EXEC PGM=IKJEFT01,COND=(0,NE,PJI02P06)
//ZME170A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJIPD02,DISP=SHR
//ZME170A2 DD DSN=MXCP.ZM.FIX.SDI.ECBP.RECLAS,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.SDI.EBCM.RECLAS,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJI02T28),DISP=SHR
//*
//**********************************************************************
//*                    -- ICEGENER  -- ENVIA A CTL-D                   *
//*        REPORTE S.D.I. CASA DE BOLSA RECLASIF. AUT. DE SERIES       *
//* (SE EJECUTA 1ER DIA HABIL DEL MES Y DIA HABIL SIGUIENTE AL EVENTO  *
//*  MANUAL DE RECLASIFICACION DEFINITIVA POR PARTE DEL USUARIO)       *
//*                            (DEFINITIVO)                            *
//**********************************************************************
//PJI02P1C EXEC PGM=ICEGENER,COND=(0,NE,PJI02P06)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.TMP.SDI.ECBP.RECLAS.DEF,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                    -- ICEGENER  -- ENVIA A CTL-D                   *
//*        REPORTE S.D.I. BANCA PATRIMONIAL RECLASIF. AUT. DE SERIES   *
//* (SE EJECUTA 1ER DIA HABIL DEL MES Y DIA HABIL SIGUIENTE AL EVENTO  *
//*  MANUAL DE RECLASIFICACION DEFINITIVA POR PARTE DEL USUARIO)       *
//*                            (DEFINITIVO)                            *
//**********************************************************************
//PJI02P1B EXEC PGM=ICEGENER,COND=(0,NE,PJI02P06)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.TMP.SDI.EBCM.RECLAS.DEF,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*        SE ADICIONA CONDICION PARA EL BCJINT02 X RECLASIFICACION    *
//*                PARA QUE SEA TOMADA POR CTL-M                       *
//* (SE EJECUTA 1ER DIA HABIL DEL MES Y DIA HABIL SIGUIENTE AL EVENTO  *
//*  MANUAL DE RECLASIFICACION DEFINITIVA POR PARTE DEL USUARIO)       *
//*                            (DEFINITIVO)                            *
//**********************************************************************
//PJI02PRC EXEC  PGM=CTMCND,PARM='ADD COND BCJINT02_IN_OK WDATE',
//         COND=(0,NE,PJI02P06)
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
//*@DGCM03-I
//*--------------------------------------------------------------------*
//* PASO       : PJI02P1D                                              *
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : REALIZA LA DESCARGA DE LAS TABLAS ZMDT622, CONCEPT Y  *
//*              PARAM.                                                *
//*--------------------------------------------------------------------*
//PJI02P1D EXEC PGM=ADUUMAIN,COND=(0,NE,PJI02P06),
//         PARM='MXP1,PJP20P00,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.F&FECHA..BCJICD02.UNLOAD.DATRECL,
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
//* PASO       : PJI02P1E                                              *
//* UTILERIA   : IKJEFT1A/ZM4RCL05                                     *
//* OBJETIVO   : INSERTA REGISTROS EN LA TABLA ZMDTPRC                 *
//*--------------------------------------------------------------------*
//PJI02P1E EXEC PGM=IKJEFT1A,COND=(0,NE,PJI02P06)
//*
//E1DQENT1 DD DSN=MXCP.ZM.FIX.F&FECHA..BCJICD02.UNLOAD.DATRECL,
//            DISP=SHR
//*
//S1DQSAL1 DD DSN=MXCP.ZM.FIX.F&FECHA..BCJICD02.INSERTA,
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
//*@DGCM03-F
//*
//*@MEX001-I
//**********************************************************************
//*  SE ADICIONA CONDICION QUE SERA ENVIADA POR DATIO PARA LA          *
//*  TRANSMISION DEL ARCHIVO MXCP.ZM.FIX.SDI.EBCM.DEPFUBCM.ARCHIVO     *
//**********************************************************************
//PJI02P1F EXEC  PGM=CTMCND,PARM='ADD COND CBXCRX_BCJICD0200 WDATE',
//         COND=(0,NE,PJI02P11)
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
//*@MEX001-F
//*
//**********************************************************************
//* PEND            FIN DE PROCEDIMIENTO ZMGIPD02                      *
//**********************************************************************
