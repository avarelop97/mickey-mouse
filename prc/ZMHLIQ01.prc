//ZMHLIQ01  PROC                                                        00010025
//*====================================================================*
//* COMPANIA    : BBVA BANCOMER - MEXICO                               *
//* SISTEMA     : ZM / BANCA PATRIMONIAL                               *
//* PROCESO     : ZMHLIQ01                                             *
//*                                                                    *
//*                       - O B J E T I V O -                          *
//*                                                                    *
//* REALIZACION DE VENTA DE FONDOS LIQUIDDOS PARA CONTRATOS EN CORTO   *
//* DERIVADO DE OPERACIONES DIGITALES A 24, 48, 72 HRS                 *
//*====================================================================*
//*                    - LOG DE MODIFICACIONES -                       *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//*--------------------------------------------------------------------*00240002
//* PASO    : PLQ01P16                                                 *00240002
//* UTIL/PGM: ZM3LIQ01                                                 *00240002
//* OBJETIVO: GENERA TARJETA  DE CONTROL PARA OBTENER LA FECHA.        *00240002
//*--------------------------------------------------------------------*
//PLQ01P16 EXEC PGM=ZM3LIQ01,PARM=&FECHA2                               00780700
//S1DQ0001 DD DSN=MXCP.ZM.FIX.ZM3LIQ01.FECHA,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=10,BLKSIZE=0),
//         SPACE=(CYL,(1,1),RLSE),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*--------------------------------------------------------------------*00240002
//* PASO    : PLQ01P15                                                 *00240002
//* UTIL/PGM: ZM4LIQ01                                                 *00240002
//* OBJETIVO: GENERA TARJETAS DE CONTROL CON LA FECHA.                 *00240002
//*--------------------------------------------------------------------*
//PLQ01P15 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//E1DQ0001 DD DSN=ZIVA.ZME.CONTROL(ZLQ01T01),DISP=SHR
//E1DQ0002 DD DSN=MXCP.ZM.FIX.ZM3LIQ01.FECHA,DISP=SHR
//S1DQ0001 DD DSN=MXCP.ZM.TMP.ZM4LIQ01.CTC,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//         SPACE=(CYL,(1,1),RLSE),
//         UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLQ01T02),DISP=SHR
//*--------------------------------------------------------------------*00240002
//* PASO    : PLQ01P14                                                 *00240002
//* UTIL/PGM: ZM4LIQ01                                                 *00240002
//* OBJETIVO: GENERA TARJETAS DE CONTROL CON LA FECHA.                 *00240002
//*--------------------------------------------------------------------*
//PLQ01P14 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//E1DQ0001 DD DSN=ZIVA.ZME.CONTROL(ZLQ01T03),DISP=SHR
//E1DQ0002 DD DSN=MXCP.ZM.FIX.ZM3LIQ01.FECHA,DISP=SHR
//S1DQ0001 DD DSN=MXCP.ZM.TMP.ZM4LIQ02.CTC,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//         SPACE=(CYL,(1,1),RLSE),
//         UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLQ01T02),DISP=SHR
//*--------------------------------------------------------------------*00240002
//* PASO    : PLQ01P13                                                 *00240002
//* UTIL/PGM: ZM4LIQ01                                                 *00240002
//* OBJETIVO: GENERA TARJETAS DE CONTROL CON LA FECHA.                 *00240002
//*--------------------------------------------------------------------*
//PLQ01P13 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//E1DQ0001 DD DSN=ZIVA.ZME.CONTROL(ZLQ01T04),DISP=SHR
//E1DQ0002 DD DSN=MXCP.ZM.FIX.ZM3LIQ01.FECHA,DISP=SHR
//S1DQ0001 DD DSN=MXCP.ZM.TMP.ZM4LIQ03.CTC,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//         SPACE=(CYL,(1,1),RLSE),
//         UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLQ01T02),DISP=SHR
//*====================================================================*
//* PASO     : PLQ01P12                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA OPERA.                             *
//*====================================================================*
//PLQ01P12 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PLQ01P12,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ZBTRADER.F&FECHA..ENTRADA1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.ZM4LIQ01.CTC,DISP=SHR
//*====================================================================*
//* PASO     : PLQ01P11                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA OPERA.                             *
//*====================================================================*
//PLQ01P11 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PLQ01P11,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ZBTRADER.F&FECHA..ENTRADA2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.ZM4LIQ02.CTC,DISP=SHR
//*====================================================================*
//* PASO     : PLQ01P10                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA OPERA.                             *
//*====================================================================*
//PLQ01P10 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PLQ01P10,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ZBTRADER.F&FECHA..ENTRADA3,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.ZM4LIQ03.CTC,DISP=SHR
//*--------------------------------------------------------------------*00240002
//* PASO    : PLQ01P09                                                 *00240002
//* UTIL/PGM: ZM3LIQ02                                                 *00240002
//* OBJETIVO: UNION DE ARCHIVOS DE COMPRAS, VENTAS Y COMISION DE VTAS  *00240002
//*--------------------------------------------------------------------*
//PLQ01P09 EXEC PGM=ZM3LIQ02,COND=(4,LT)                                00780700
//ZMLIQE01 DD DSN=MXCP.ZM.FIX.ZBTRADER.F&FECHA..ENTRADA1,
//            DISP=SHR
//*
//ZMLIQE02 DD DSN=MXCP.ZM.FIX.ZBTRADER.F&FECHA..ENTRADA2,
//            DISP=SHR
//*
//ZMLIQE03 DD DSN=MXCP.ZM.FIX.ZBTRADER.F&FECHA..ENTRADA3,
//            DISP=SHR
//ZMLIQS01 DD DSN=MXCP.ZM.FIX.ZBTRADER.F&FECHA..ENTRADA,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=21,BLKSIZE=0),
//         SPACE=(CYL,(1,1),RLSE),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*BTRPRO2Q24-INI                                                       00240002
//*--------------------------------------------------------------------*00240002
//* PASO    : PLQ01P08                                                 *00240002
//* UTIL/PGM: ZM4LIQ03                                                 *00240002
//* OBJETIVO: GENERA TARJETAS DE CONTROL CON LA FECHA.                 *00240002
//*--------------------------------------------------------------------*
//PLQ01P08 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//E1DQ0001 DD DSN=ZIVA.ZME.CONTROL(ZLQ01T08),DISP=SHR
//E1DQ0002 DD DSN=MXCP.ZM.FIX.ZM3LIQ01.FECHA,DISP=SHR
//S1DQ0001 DD DSN=MXCP.ZM.TMP.ZM4LIQ08.CTC,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//         SPACE=(CYL,(1,1),RLSE),
//         UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLQ01T12),DISP=SHR
//*
//*--------------------------------------------------------------------*00240002
//* PASO    : PLQ01P07                                                 *00240002
//* UTIL/PGM: ZM4LIQ06                                                 *00240002
//* OBJETIVO: GENERA TARJETAS DE CONTROL CON LA FECHA.                 *00240002
//*--------------------------------------------------------------------*
//PLQ01P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//E1DQ0001 DD DSN=ZIVA.ZME.CONTROL(ZLQ01T09),DISP=SHR
//E1DQ0002 DD DSN=MXCP.ZM.FIX.ZM3LIQ01.FECHA,DISP=SHR
//S1DQ0001 DD DSN=MXCP.ZM.TMP.ZM4LIQ09.CTC,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//         SPACE=(CYL,(1,1),RLSE),
//         UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLQ01T12),DISP=SHR
//*====================================================================*
//* PASO     : PLQ01P06                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA OPERA.                             *
//*====================================================================*
//PLQ01P06 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PLQ01P06,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ZBTRADER.F&FECHA..ENTRADA8,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.ZM4LIQ08.CTC,DISP=SHR
//*====================================================================*
//* PASO     : PLQ01P05                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA OPERA.                             *
//*====================================================================*
//PLQ01P05 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PLQ01P05,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ZBTRADER.F&FECHA..ENTRADA9,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.ZM4LIQ09.CTC,DISP=SHR
//*--------------------------------------------------------------------*00240002
//* PASO    : PLQ01P04                                                 *00240002
//* UTIL/PGM: ICEMAN                                                   *00240002
//* OBJETIVO: SUMA COMPRAS DE FONDOS MAS COMISION                      *00240002
//*--------------------------------------------------------------------*
//PL101P04 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT    DD DUMMY
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.ZBTRADER.F&FECHA..ENTRADA8,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZBTRADER.F&FECHA..SALIDA8,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLQ01T10),DISP=SHR
//*
//*--------------------------------------------------------------------*00240002
//* PASO    : PLQ01P03                                                 *00240002
//* UTIL/PGM: ICEMAN                                                   *00240002
//* OBJETIVO: SUMA VENTAS DE FONDOS MAS COMISION                       *00240002
//*--------------------------------------------------------------------*
//PL101P03 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT    DD DUMMY
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.ZBTRADER.F&FECHA..ENTRADA9,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZBTRADER.F&FECHA..SALIDA9,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLQ01T11),DISP=SHR
//*
//*--------------------------------------------------------------------*00240002
//* PASO    : PLQ01P02                                                 *00240002
//* UTIL/PGM: ZM3LIQ03                                                 *00240002
//* OBJETIVO: UNION DE ARCHIVOS DE COMPRAS, VENTAS Y COMISION DE VTAS  *00240002
//*--------------------------------------------------------------------*
//PLQ01P02 EXEC PGM=ZM3LIQ03,COND=(4,LT)                                00780700
//ZMLIQE01 DD DSN=MXCP.ZM.FIX.ZBTRADER.F&FECHA..SALIDA8,
//            DISP=SHR
//*
//ZMLIQE02 DD DSN=MXCP.ZM.FIX.ZBTRADER.F&FECHA..SALIDA9,
//            DISP=SHR
//*
//ZMLIQS01 DD DSN=MXCP.ZM.FIX.ZBTRADER.F&FECHA..SALIDAF,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=21,BLKSIZE=0),
//         SPACE=(CYL,(1,1),RLSE),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*--------------------------------------------------------------------*00240002
//* PASO    : PLQ01P01                                                 *00240002
//* UTIL/PGM: ZM3LIQ04                                                 *00240002
//* OBJETIVO: UNION DE ARCHIVOS DE ACCIONES Y FONDOS                   *00240002
//*--------------------------------------------------------------------*
//PLQ01P01 EXEC PGM=ZM3LIQ04,COND=(4,LT)                                00780700
//ZMLIQE01 DD DSN=MXCP.ZM.FIX.ZBTRADER.F&FECHA..ENTRADA,
//            DISP=SHR
//*
//ZMLIQE02 DD DSN=MXCP.ZM.FIX.ZBTRADER.F&FECHA..SALIDAF,
//            DISP=SHR
//*
//ZMLIQS01 DD DSN=MXCP.ZM.FIX.ZBTRADER.F&FECHA..ZM3LIQ04,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=39,BLKSIZE=0),
//         SPACE=(CYL,(1,1),RLSE),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*BTR2Q24-FIN
//*
//**********************************************************************
//* PASO     : PLQ01P00                                                *
//* UTILERIA   : IKJEFT01/ZM4LIQ02                                     *
//* OBJETIVO   : REALIZA VENTA DE FONDOS LIQUIDOS EN CASO DE CORTO EN  *
//*              CONTRATO.                                             *
//**********************************************************************
//PLQ01P00 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//*BTRPRO2Q24-I
//*ZMLIQE01 DD DSN=MXCP.ZM.FIX.ZBTRADER.F&FECHA..ENTRADA,
//ZMLIQE01 DD DSN=MXCP.ZM.FIX.ZBTRADER.F&FECHA..ZM3LIQ04,
//*BTRPRO2Q24-F
//            DISP=SHR
//*
//ZMLIQS01 DD DSN=MXCP.ZM.FIX.INTERFAZ.BTR.F&FECHA..VTAFOND,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//*BTRPRO2Q24-I
//*           DCB=(RECFM=FB,LRECL=104,BLKSIZE=0,DSORG=PS)
//            DCB=(RECFM=FB,LRECL=173,BLKSIZE=0,DSORG=PS)
//*BTRPRO2Q24-F
//*
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLQ01T05),DISP=SHR                   01230041
//*====================================================================*
//* PASO     : PLQ01P0A                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA CARTERA                            *
//*====================================================================*
//PLQ01P0A EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PLQ01P01,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ZBTRADER.F&FECHA..ENTRADA4,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLQ01T06),DISP=SHR
//**********************************************************************
//* PASO     : PLQ01P0B                                                *
//* UTILERIA   : IKJEFT01/ZM4LIQ0B                                     *
//* OBJETIVO   : GENERA EL ARCHIVO DE CONTRATOS EN CORTO EN BBVATRADER *
//**********************************************************************
//PLQ01P0B EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLIQE01 DD DSN=MXCP.ZM.FIX.ZBTRADER.F&FECHA..ENTRADA4,
//            DISP=SHR
//*
//ZMLIQS01 DD DSN=MXCP.ZM.FIX.INTERFAZ.BTR.F&FECHA..CORTOS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=061,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLQ01T07),DISP=SHR                   01230041
