//ZMJIPD02 PROC
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
//*  1   |2004/06/11|IDCEX73|        | SE ELIMINAN LOS PASOS A PARTIR  *
//*      |          |       |        | DEL PJI02P05 POR POZOS Y SE     *
//*      |          |       |        | MUEVEN AL PROC ZMJIPD05         *
//**********************************************************************
//*
//**********************************************************************
//*    RECIBE LOS PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN ARCHIVO
//*********************************************************************
//*
//PJI02P20 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC',' ',' ',)
//*
//PI601765 DD DUMMY
//*
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
//* OBJETIVO : CREAR ARCHIVO PARA FONDOS DE BANCA PATRIMONIAL      -   *
//**********************************************************************
//*
//PJI02P19 EXEC  PGM=IEFBR14,COND=(4,LT)
//PI601765 DD  DUMMY
//SYSUT1   DD  DUMMY
//DD01     DD  DSN=SIVA.TES.FIX.EBCM.FAHORRO.CHEQUES,
//             DISP=(NEW,CATLG,DELETE),
//             DCB=(DSORG=PS,LRECL=85,RECFM=FB,BLKSIZE=0),
//             UNIT=3390,SPACE=(CYL,(2,1),RLSE)
//SYSOUT   DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DUMMY
//*
//**********************************************************************
//* OBJETIVO : GENERA LOS MOVIMIENTOS 601 PARA LOS PREAVISOS           *
//**********************************************************************
//*
//PJI02P18 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
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
//* OBJETIVO : GENERA EL REPORTE DE MOVIMENTOS CANCELADOS, CONFIRMA-   *
//*            DOS Y PENDIENTES HECHOS EN EL PASO ANTERIOR.            *
//*            SI EL PASO ANTERIOR NO TERMINA CON CODIGO 00 LA CADENA  *
//*            NO PUEDE CONTINUAR. ESTA CONDICION LA DA EL IF-THEN     *
//**********************************************************************
// IF PJI02P18.RC EQ 0 THEN
//PJI02P17 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PI601765 DD DUMMY
//*
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
//**********************************************************************
//*
//PJI02P16 EXEC  PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD  DSN=MXCP.ZM.TMP.FIX.E&EMP..ZM4DJ093.D&FECHA,DISP=SHR
//SYSUT2   DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSOUT   DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DUMMY
//*
//**********************************************************************
//* OBJETIVO : GENERA ARCHIVO MENSUAL DE OPERACIONES RELEVANTES        *
//**********************************************************************
//*
//PJI02P15 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PI601765 DD DUMMY
//*
//ZMGU07R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMGU07R2 DD DSN=MXCP.ZM.TMP.TES.E&EMP..OPEREL.REP,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FB,BLKSIZE=0)
//ZMGU07A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..OPERELE,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=156,RECFM=FB,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMGU07P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJIPD02,
//         DISP=SHR
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJI02T15),DISP=SHR
//*
//**********************************************************************
//*                                                                    *
//* OBJETIVO : RESPALDA EN GDG EL REPORTE MENSUAL DE OP. RELEVANTES    *
//*                                                                    *
//**********************************************************************
//*
//PJI02P14 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//PI601765 DD DUMMY
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//SYSUT1   DD DSN=MXCP.ZM.TMP.TES.E&EMP..OPEREL.REP,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.GDGD.MDC.E&EMP..OPEREL.REP(+1),
//            DISP=(NEW,CATLG,DELETE),
//            RECFM=FB,LRECL=133,BLKSIZE=0,
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390,DCB=BKUP.MODEL
//*
//**********************************************************************
//*                                                                    *
//* OBJETIVO : RESPALDA EN GDG EL ARCHIVO MENSUAL DE OP. RELEVANTES    *
//*                                                                    *
//**********************************************************************
//*
//PJI02P13 EXEC PGM=ICEGENER,COND=(0,NE,PJI02P15)
//*
//PI601765 DD DUMMY
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//SYSUT1   DD DSN=MXCP.ZM.TMP.TES.E&EMP..OPERELE,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.GDGD.MDC.E&EMP..OPEREL(+1),
//            DISP=(NEW,CATLG,DELETE),
//            RECFM=FB,LRECL=156,BLKSIZE=0,
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390,DCB=BKUP.MODEL
//*
//**********************************************************************
//*                                                                    *
//* OBJETIVO : CONCATENA VERSIONES DE GDG EN UN SOLO ARCHIVO           *
//*                                                                    *
//**********************************************************************
//*
//PJI02P12 EXEC PGM=ICEGENER,COND=(0,NE)
//*
//PI601765 DD DUMMY
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//SYSUT1   DD DSN=MXCP.ZM.GDGD.MDC.E&EMP..OPEREL(-10),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.MDC.E&EMP..OPEREL(-9),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.MDC.E&EMP..OPEREL(-8),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.MDC.E&EMP..OPEREL(-7),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.MDC.E&EMP..OPEREL(-6),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.MDC.E&EMP..OPEREL(-5),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.MDC.E&EMP..OPEREL(-4),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.MDC.E&EMP..OPEREL(-3),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.MDC.E&EMP..OPEREL(-2),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.MDC.E&EMP..OPEREL(-1),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.MDC.E&EMP..OPEREL(0),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.MDC.E&EMP..OPEREL(+1),DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.TMP.TES.E&EMP..OPEREL.ACUM,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=156,BLKSIZE=0),
//            SPACE=(CYL,(300,150),RLSE)
//*
//**********************************************************************
//*                           ZM4DGU74                                 *
//* OBJETIVO : GENERA ARCHIVO POR PERIODO PARA LA CNBV                 *
//*                                                                    *
//**********************************************************************
//*
//PJI02P11 EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//PI601765 DD DUMMY
//*GCM
//ZMGU74A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJIPD02,
//         DISP=SHR
//*
//INFORGDG DD DSN=MXCP.ZM.TMP.TES.E&EMP..OPEREL.ACUM,DISP=SHR
//INFORELE DD DSN=MXCP.ZM.TMP.TES.E&EMP..OPEREL.PERS,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(200,100),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=156,RECFM=FB,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJI02T11),DISP=SHR
//*
//**********************************************************************
//*                                                                    *
//* OBJETIVO : RESPALDA EN GDG EL ARCHIVO DE PERIODO DE OP. RELEVANTES *
//*                                                                    *
//**********************************************************************
//*
//PJI02P10 EXEC PGM=ICEGENER,COND=(0,NE)
//*
//PI601765 DD DUMMY
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//SYSUT1   DD DSN=MXCP.ZM.TMP.TES.E&EMP..OPEREL.PERS,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.GDGD.MDC.E&EMP..OPEREL.PERIOD(+1),
//            DISP=(NEW,CATLG,DELETE),
//            RECFM=FB,LRECL=156,BLKSIZE=0,
//            SPACE=(CYL,(200,100),RLSE),
//            UNIT=3390,DCB=BKUP.MODEL
//*
//*************************************************************
//*                                       (ANTES UN SPUFI BATCH)
//*    PROGRAMA P/ACTIVAR IMPRESORA TROY
//*
//*************************************************************
//*
//PJI02P09 EXEC PGM=IKJEFT01,COND=(4,LT)
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
//*                                                                    *
//* OBJETIVO : BORRAR ARCHIVOS A UTILIZAR EN EL PROCESO.               *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//*
//PJI02P08 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZJI02T08),DISP=SHR
//*
//**********************************************************************
//*                        -- ZM4DGG14 --                              *
//* OBJETIVO : MARCA EL INICIO DE INIDIA DE TESORERIA                  *
//*            (CONTINGENCIA)    CTLPROC IT1                           *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                       *** TESORERIA   *
//**********************************************************************
//*
//PJI02P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//*GCM
//ZMGG14A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJIPD02,
//         DISP=SHR
//*
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
//*                          === ZM4DGG18 ===                          *
//*                                                                    *
//* OBJETIVO : GENERAR REGISTROS PARA EDITYES DE FONDO DE AHORRO       *
//*            EN EL SI-VA.                                            *
//*                                                                    *
//* ACTUALIZA TABLA : OPERTET, SIVATE                                  *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                       *** TESORERIA   *
//**********************************************************************
//*
//PJI02P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSUDUMP DD DUMMY
//SYSDBOUT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//CHEQUES  DD DSN=SIVA.TES.FIX.E&EMP..FAHORRO.CHEQUES,DISP=SHR
//SYSOUT   DD SYSOUT=*
//PRINT    DD SYSOUT=*
//*
//ZMGG18P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJIPD02,
//         DISP=SHR
//*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZJI02T06),DISP=SHR
//*
//**********************************************************************
// ENDIF
//**********************************************************************
//* PEND            FIN DE PROCEDIMIENTO ZMJIPD02                      *
//**********************************************************************
