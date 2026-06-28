//ZMGLPZ54  PROC
//*====================================================================*
//* COMPANIA    : BBVA BANCOMER - MEXICO                               *
//* SISTEMA     : ZM / BANCA PATRIMONIAL                               *
//* PROCESO     : ZMGLPZ54                                             *
//*                                                                    *
//*                       - O B J E T I V O -                          *
//*                                                                    *
//* REPROCESO DE ARCHIVOS DE LA PLD                                    *
//*                                                                    *
//*====================================================================*
//*                    - LOG DE MODIFICACIONES -                       *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//*--------------------------------------------------------------------*
//* PASO    : PGL54P21                                                 *
//* UTIL/PGM: ZM4DRE04                                                 *
//* OBJETIVO: GENERA TARJETAS DE CONTROL CON LA FECHA.                 *
//*--------------------------------------------------------------------*
//PGL54P21 EXEC PGM=IKJEFT01,PARM=&FECHA2
//E1DQ0001 DD DSN=ZIVA.ZME.CONTROL(ZGL50T09),DISP=SHR
//E1DQ0002 DD DSN=ZIVA.ZME.CONTROL(ZMDA0102),DISP=SHR
//S1DQ0001 DD DSN=MXCP.ZM.TMP.ZGL50T09.CTC,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//         SPACE=(CYL,(1,1),RLSE),
//         UNIT=3390
//*
//S1DQ0002 DD DSN=MXCP.ZM.TMP.ZMDA0102.CTC,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//         SPACE=(CYL,(1,1),RLSE),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGL54T01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO    : PGL54P20                                                 *
//* UTIL/PGM: ZM4DRE04                                                 *
//* OBJETIVO: GENERA TARJETAS DE CONTROL CON LA FECHA.                 *
//*--------------------------------------------------------------------*
//PGL54P20 EXEC PGM=IKJEFT01,PARM=&FECHA2,COND=(4,LT)
//E1DQ0001 DD DSN=ZIVA.ZME.CONTROL(ZGL51T09),DISP=SHR
//E1DQ0002 DD DSN=ZIVA.ZME.CONTROL(ZGL51T08),DISP=SHR
//S1DQ0001 DD DSN=MXCP.ZM.TMP.ZGL51T09.CTC,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//         SPACE=(CYL,(1,1),RLSE),
//         UNIT=3390
//*
//S1DQ0002 DD DSN=MXCP.ZM.TMP.ZGL51T08.CTC,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//         SPACE=(CYL,(1,1),RLSE),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGL54T01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO    : PGL54P19                                                 *
//* UTIL/PGM: ZM4DRE04                                                 *
//* OBJETIVO: GENERA TARJETAS DE CONTROL CON LA FECHA.                 *
//*--------------------------------------------------------------------*
//PGL54P19 EXEC PGM=IKJEFT01,PARM=&FECHA2,COND=(4,LT)
//E1DQ0001 DD DSN=ZIVA.ZME.CONTROL(ZGL50T09),DISP=SHR
//E1DQ0002 DD DSN=ZIVA.ZME.CONTROL(ZGL50T08),DISP=SHR
//S1DQ0001 DD DSN=MXCP.ZM.TMP.ZGL50T09.CTA,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//         SPACE=(CYL,(1,1),RLSE),
//         UNIT=3390
//*
//S1DQ0002 DD DSN=MXCP.ZM.TMP.ZGL50T08.CTC,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//         SPACE=(CYL,(1,1),RLSE),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGL54T01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO    : PGL54P18                                                 *
//* UTIL/PGM: ZM4DRE04                                                 *
//* OBJETIVO: GENERA TARJETAS DE CONTROL CON LA FECHA.                 *
//*--------------------------------------------------------------------*
//PGL54P18 EXEC PGM=IKJEFT01,PARM=&FECHA2,COND=(4,LT)
//E1DQ0001 DD DSN=ZIVA.ZME.CONTROL(ZGL49T09),DISP=SHR
//E1DQ0002 DD DSN=ZIVA.ZME.CONTROL(ZGL49T08),DISP=SHR
//S1DQ0001 DD DSN=MXCP.ZM.TMP.ZGL49T09.CTC,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//         SPACE=(CYL,(1,1),RLSE),
//         UNIT=3390
//*
//S1DQ0002 DD DSN=MXCP.ZM.TMP.ZGL49T08.CTC,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//         SPACE=(CYL,(1,1),RLSE),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGL54T01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO    : PGL54P17                                                 *
//* UTIL/PGM: ZM4DRE04                                                 *
//* OBJETIVO: GENERA TARJETAS DE CONTROL CON LA FECHA.                 *
//*--------------------------------------------------------------------*
//PGL54P17 EXEC PGM=IKJEFT01,PARM=&FECHA2,COND=(4,LT)
//E1DQ0001 DD DSN=ZIVA.ZME.CONTROL(ZGL48T09),DISP=SHR
//E1DQ0002 DD DSN=ZIVA.ZME.CONTROL(ZGL48T08),DISP=SHR
//S1DQ0001 DD DSN=MXCP.ZM.TMP.ZGL48T09.CTC,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//         SPACE=(CYL,(1,1),RLSE),
//         UNIT=3390
//*
//S1DQ0002 DD DSN=MXCP.ZM.TMP.ZGL48T08.CTC,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//         SPACE=(CYL,(1,1),RLSE),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGL54T01),DISP=SHR
//*
//**********************************************************************
//* PASO     : PGL54P16                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA PRUEBSVP.ZMDT107 DONDE SE OBTIENEN *
//*            TODAS LAS CANCELACIONES QUE SE HAYAN REALIZADO DURANTE  *
//*            EL PERIODO DEL ULTIMO ANIO.                             *
//**********************************************************************
//PGL54P16  EXEC PGM=ADUUMAIN,COND=(4,LT),
//          PARM='MXP1,ZMGLPZ48,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.CBGLPZ48.DESCA107.CANCELA.ANUAL,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            BLKSIZE=0,DSORG=PS
//*
//SYSCNTL  DD  DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZGL48T09),DISP=SHR
//SYSIN    DD DSN=MXCP.ZM.TMP.ZGL48T09.CTC,DISP=SHR
//*
//**********************************************************************
//* PASO     : PGL54P15                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA PRUEBSVP.ZMDT107 DONDE SE OBTIENEN *
//*            TODAS LAS COMPRAS Y VENTAS QUE SE HAYAN REALIZADO DURAN-*
//*            TE EL PERIODO DEL ULTIMO ANIO.                          *
//**********************************************************************
//PGL54P15  EXEC PGM=ADUUMAIN,COND=(4,LT),
//          PARM='MXP1,CBGLPZ48,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.CBGLPZ48.DESCA107.COMPRAS.ANUAL,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            BLKSIZE=0,DSORG=PS
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZGL48T08),DISP=SHR
//SYSIN    DD DSN=MXCP.ZM.TMP.ZGL48T08.CTC,DISP=SHR
//**********************************************************************
//* PASO     : PGL54P14                                                *
//* PROGRAMA : PGM=IKJEFT01                                            *
//* OBJETIVO : PROGRAMA QUE GENERA LA FECHA DEL SISTEMA A PARTIR DEL   *
//*            PARAMETRO DE REPROCESO                                  *
//*--------------------------------------------------------------------*
//PGL54P14 EXEC PGM=IKJEFT01,PARM=('&FECHA'),COND=(4,LT)
//ARCHDATE DD DSN=MXCP.ZM.FIX.CBGLPZ54.DATE.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(1,1),RLSE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGL54T02),DISP=SHR
//*
//**********************************************************************
//* PASO    : PGL48P01                                                 *
//* PROGRAMA: IKJEFT01                                                 *
//* PROGRAMA: ZM3PLD01                                                 *
//* OBJETIVO: SE GENERA UN REPORTE DE OPERACIONES DE COMPRAS Y VENTAS  *
//*           DE SOCIEDADES DE INVERSION CORRESPONDIENTE A UN ANIO     *
//**********************************************************************
//PGL54P13 EXEC PGM=ZM3PLD01,COND=(4,LT),PARM=('ANUAL')
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.CBGLPZ54.DATE.F&FECHA,
//            DISP=SHR
//ENTRADA2 DD DSN=MXCP.ZM.FIX.CBGLPZ48.DESCA107.COMPRAS.ANUAL,
//            DISP=SHR
//ENTRADA3 DD DSN=MXCP.ZM.FIX.CBGLPZ48.DESCA107.CANCELA.ANUAL,
//            DISP=SHR
//SALIDA1  DD DSN=MXCP.ZM.FIX.REP.OPER.VTAS.COMPRAS.SII.ANUAL,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,LRECL=133,BLKSIZE=0,DSORG=PS)
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSOUX   DD SYSOUT=*
//**********************************************************************
//* PASO     : PGL54P12                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA PRUEBSVP.ZMDT107 DONDE SE OBTIENEN *
//*            TODAS LAS CANCELACIONES QUE SE HAYAN REALIZADO DURANTE  *
//*            EL PERIODO DEL ULTIMO ANIO.                             *
//**********************************************************************
//PGL54P12  EXEC PGM=ADUUMAIN,COND=(4,LT),
//          PARM='MXP1,ZMGLPZ49,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.CBGLPZ49.DESCA107.CANCELA.ANUAL,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            BLKSIZE=0,DSORG=PS
//*
//SYSCNTL  DD  DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZGL50T09),DISP=SHR
//SYSIN    DD DSN=MXCP.ZM.TMP.ZGL50T09.CTC,DISP=SHR
//**********************************************************************
//* PASO     : PGL54P11                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA PRUEBSVP.ZMDT107 DONDE SE OBTIENEN *
//*            TODAS LAS COMPRAS Y VENTAS QUE SE HAYAN REALIZADO DURAN-*
//*            TE EL PERIODO DEL ULTIMO ANIO.                          *
//**********************************************************************
//PGL54P11  EXEC PGM=ADUUMAIN,COND=(4,LT),
//          PARM='MXP1,ZMGLPZ49,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.CBGLPZ49.DESCA107.COMPRAS.ANUAL,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            BLKSIZE=0,DSORG=PS
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZGL50T08),DISP=SHR
//SYSIN    DD DSN=MXCP.ZM.TMP.ZGL50T08.CTC,DISP=SHR
//*
//**********************************************************************
//* PASO    : PGL54P10                                                 *
//* PROGRAMA: ZM3PLD02                                                 *
//* OBJETIVO: SE GENERA UN REPORTE DE OPERACIONES DE COMPRAS Y VENTAS  *
//*           DE MERCADO DE DINERO CORRESPONDIENTE A UN ANIO           *
//**********************************************************************
//PGL54P10 EXEC PGM=ZM3PLD02,COND=(4,LT),PARM=('ANUAL')
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.CBGLPZ54.DATE.F&FECHA,
//            DISP=SHR
//ENTRADA2 DD DSN=MXCP.ZM.FIX.CBGLPZ49.DESCA107.COMPRAS.ANUAL,
//            DISP=SHR
//ENTRADA3 DD DSN=MXCP.ZM.FIX.CBGLPZ49.DESCA107.CANCELA.ANUAL,
//            DISP=SHR
//SALIDA1  DD DSN=MXCP.ZM.FIX.REP.OPER.VTAS.COMPRAS.MDD.ANUAL,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,LRECL=133,BLKSIZE=0,DSORG=PS)
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSOUX   DD SYSOUT=*
//*
//**********************************************************************
//* PASO     : PGL54P09                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA PRUEBSVP.ZMDT107 DONDE SE OBTIENEN *
//*            TODAS LAS CANCELACIONES QUE SE HAYAN REALIZADO DURANTE  *
//*            EL PERIODO DEL ULTIMO ANIO.                             *
//**********************************************************************
//PGL54P09  EXEC PGM=ADUUMAIN,COND=(4,LT),
//          PARM='MXP1,ZMGLPZ50,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.CBGLPZ50.DESCA107.CANCELA.ANUAL,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            BLKSIZE=0,DSORG=PS
//*
//SYSCNTL  DD  DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZGL49T09),DISP=SHR
//SYSIN    DD DSN=MXCP.ZM.TMP.ZGL49T09.CTC,DISP=SHR
//*
//**********************************************************************
//* PASO     : PGL54P08                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA PRUEBSVP.ZMDT107 DONDE SE OBTIENEN *
//*            TODAS LAS COMPRAS Y VENTAS QUE SE HAYAN REALIZADO DURAN-*
//*            TE EL PERIODO DEL ULTIMO ANIO.                          *
//**********************************************************************
//PGL54P08  EXEC PGM=ADUUMAIN,COND=(4,LT),
//          PARM='MXP1,ZMGLPZ50,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.CBGLPZ50.DESCA107.COMPRAS.ANUAL,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            BLKSIZE=0,DSORG=PS
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZGL49T08),DISP=SHR
//SYSIN    DD DSN=MXCP.ZM.TMP.ZGL49T08.CTC,DISP=SHR
//*
//**********************************************************************
//* PASO    : PGL54P07                                                 *
//* PROGRAMA: IKJEFT01                                                 *
//* PROGRAMA: ZM3PLD03                                                 *
//* OBJETIVO: SE GENERA UN REPORTE DE OPERACIONES DE COMPRAS Y VENTAS  *
//*           MERCADO DE CAPITALES CORRESPONDIENTE A UN ANIO          *
//**********************************************************************
//PGL54P07 EXEC PGM=ZM3PLD03,COND=(4,LT),PARM=('ANUAL')
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.CBGLPZ54.DATE.F&FECHA,
//            DISP=SHR
//ENTRADA2 DD DSN=MXCP.ZM.FIX.CBGLPZ50.DESCA107.COMPRAS.ANUAL,
//            DISP=SHR
//ENTRADA3 DD DSN=MXCP.ZM.FIX.CBGLPZ50.DESCA107.CANCELA.ANUAL,
//            DISP=SHR
//SALIDA1  DD DSN=MXCP.ZM.FIX.REP.OPER.VTAS.COMPRAS.MDC.ANUAL,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,LRECL=133,BLKSIZE=0,DSORG=PS)
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSOUX   DD SYSOUT=*
//*
//**********************************************************************
//* PASO     : PGL54P06                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA PRUEBSVP.ZMDT107 DONDE SE OBTIENEN *
//*            TODAS LAS CANCELACIONES QUE SE HAYAN REALIZADO DURANTE  *
//*            EL PERIODO DEL ULTIMO ANIO.                             *
//**********************************************************************
//PGL54P06  EXEC PGM=ADUUMAIN,COND=(4,LT),
//          PARM='MXP1,ZMGPLD51,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.CBGPLD51.DESCA107.CANCELA.ANUAL,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            BLKSIZE=0,DSORG=PS
//*
//SYSCNTL  DD  DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZGL51T09),DISP=SHR
//SYSIN    DD DSN=MXCP.ZM.TMP.ZGL51T09.CTC,DISP=SHR
//*
//**********************************************************************
//* PASO     : PGL54P05                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA PRUEBSVP.ZMDT107 DONDE SE OBTIENEN *
//*            TODAS LAS COMPRAS Y VENTAS QUE SE HAYAN REALIZADO DURAN-*
//*            TE EL PERIODO DEL ULTIMO ANIO.                          *
//**********************************************************************
//PGL54P05  EXEC PGM=ADUUMAIN,COND=(4,LT),
//          PARM='MXP1,ZMGPLD51,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.CBGPLD51.DESCA107.COMPRAS.ANUAL,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            BLKSIZE=0,DSORG=PS
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZGL51T08),DISP=SHR
//SYSIN    DD DSN=MXCP.ZM.TMP.ZGL51T08.CTC,DISP=SHR
//*
//**********************************************************************
//* PASO    : PGL54P03                                                 *
//* PROGRAMA: IKJEFT01                                                 *
//* PROGRAMA: ZM3PLD04                                                 *
//* OBJETIVO: SE GENERA UN REPORTE DE OPERACIONES DE COMPRAS Y VENTAS  *
//*           DE REPORTOS CORRESPONDIENTE A UN ANIO                    *
//**********************************************************************
//PGL54P03 EXEC PGM=ZM3PLD04,COND=(4,LT),PARM=('ANUAL')
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.CBGLPZ54.DATE.F&FECHA,
//            DISP=SHR
//ENTRADA2 DD DSN=MXCP.ZM.FIX.CBGPLD51.DESCA107.COMPRAS.ANUAL,
//            DISP=SHR
//ENTRADA3 DD DSN=MXCP.ZM.FIX.CBGPLD51.DESCA107.CANCELA.ANUAL,
//            DISP=SHR
//SALIDA1  DD DSN=MXCP.ZM.FIX.REP.OPER.REPO.REPORTO.MDD.ANUAL,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,LRECL=133,BLKSIZE=0,DSORG=PS)
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSOUX   DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//*   PASO    : ZMDA0102                                               *
//*   OBJETIVO: DESCARGA DE LA TABLA ZMDT107 LOS REGISTROS DE LAS      *
//*             OPERACIONES REALIZADAS EN EL ANIO ANTERIOR             *
//*--------------------------------------------------------------------*
//PGL54P02 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMDA0102,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ECBP.ZMDT107.ANUAL,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMDA0102),DISP=SHR
//SYSIN    DD DSN=MXCP.ZM.TMP.ZMDA0102.CTC,DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : PGL54P01                                               *
//*   OBJETIVO: GENERA REPORTE DE ESTADISTICAS DE LOS CLIENTES DE      *
//*             CASA DE BOLSA QUE OPERARON EN EL ANIO ANTERIOR         *
//*                     -- ZM4PLD02 --                                 *
//*--------------------------------------------------------------------*
//PGL54P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.ECBP.ZMDT107.ANUAL,
//            DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.ECBP.OPERA.ANUAL.REPORTE,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=127,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDA0101),DISP=SHR
//*
