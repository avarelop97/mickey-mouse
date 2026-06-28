//ZMGIPD03 PROC
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
//*    RECIBE LOS PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN ARCHIVO    *
//*           (SE EJECUTA TODOS LOS DIAS)                              *
//**********************************************************************
//*
//PJI02P25 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.TES.ZMJIPD03,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//           UNIT=3390,
//           SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************
//*                    -- ZM4DJ093  --                                 *
//* OBJETIVO : GENERA EL REPORTE DE MOVIMENTOS CANCELADOS, CONFIRMA-   *
//*            DOS Y PENDIENTES HECHOS EN EL PASO ANTERIOR.            *
//*            SI EL PASO ANTERIOR NO TERMINA CON CODIGO 00 LA CADENA  *
//*            NO PUEDE CONTINUAR. ESTA CONDICION LA DA EL IF-THEN     *
//*           (SE EJECUTA TODOS LOS DIAS)                              *
//**********************************************************************
//PJI02P17 EXEC PGM=IKJEFT01,COND=(4,LT)
//R1DQ093D DD DSN=MXCP.ZM.TMP.FIX.EBCM.ZM4DJ093.D131105,
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
//ZMDJ93P1 DD DSN=MXCP.ZM.TMP.TES.EBCM.ZMJIPD02,
//         DISP=SHR
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJI02T17),DISP=SHR
//*
//**********************************************************************
//*    PROGRAMA P/ACTIVAR IMPRESORA TROY                               *
//*           (SE EJECUTA TODOS LOS DIAS)                              *
//**********************************************************************
//*
//PJI02P15 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJI02BCM),DISP=SHR
//*
//**********************************************************************
//*                            === IDCAMS  ===                         *
//* OBJETIVO : BORRAR ARCHIVOS A UTILIZAR EN EL PROCESO.               *
//*           (SE EJECUTA TODOS LOS DIAS)                              *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//*
//PJI02P14 EXEC PGM=IDCAMS,COND=(4,LT)
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
//PJI02P13 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMGG14A1 DD DSN=MXCP.ZM.TMP.TES.EBCM.ZMJIPD02,
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
//PJI02P12 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMD094A1 DD DSN=MXCP.ZM.TMP.TES.EBCM.ZMJIPD02,DISP=SHR
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
//ZMD095A1 DD DSN=MXCP.ZM.TMP.TES.EBCM.ZMJIPD02,DISP=SHR
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
//ZME096A1 DD DSN=MXCP.ZM.TMP.TES.EBCM.ZMJIPD02,DISP=SHR
//*
//ZME096LC DD DSN=MXCP.ZM.FIX.SDI.ECBP.VTASXDON.DIARIAS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//ZME096LB DD DSN=MXCP.ZM.FIX.SDI.EBCM.VTASXDON.DIARIAS,
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
