//ZMCONF01 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - FAMILY OFFICE.                                 *
//* PROCESO      : ZMCONF01.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : REPORTES DE CONFIRMACION                            *
//* FECHA        : JUNIO 2016.                                         *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//* PASO       : ZFM01T95.                                             *
//* UTILERIA   : IKJEFT01/ZM4CO200                                     *
//* OBJETIVO   : OBTIENE FECHAS PARA PROCESAR CONFIRMACION             *
//*--------------------------------------------------------------------*
//ZCO01T95 EXEC PGM=IKJEFT01
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.CON.ZM4CO200.FEC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=48,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZCO01T95),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZFM01T90.                                             *
//* UTILERIA   : IKJEFT01/ZM4CO210                                     *
//* OBJETIVO   : OBTIENE CONTRATOS PARA  PROCESAR CONFIRMACION         *
//*--------------------------------------------------------------------*
//ZCO01T90 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJ091S1 DD DSN=MXCP.ZM.FIX.CON.ZM4CO210.CTAS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=348,BLKSIZE=0,DSORG=PS)
//*
//ZMJ091S2 DD DSN=MXCP.ZM.FIX.CON.ZM4CO210.INC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZCO01T90),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZFM01T85.                                             *
//* UTILERIA   : IKJEFT01/ZM4CO220                                     *
//* OBJETIVO   : OBTIENE CONTRATOS PARA  PROCESAR CONFIRMACION MDD, SOC*
//*--------------------------------------------------------------------*
//ZCO01T85 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.CON.ZM4CO200.FEC,DISP=SHR
//*
//ENTRADA2 DD DSN=MXCP.ZM.FIX.CON.ZM4CO210.CTAS,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.CON.ZM4CO220.MDD,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//*HITSS-I
//*           DCB=(RECFM=FB,LRECL=156,BLKSIZE=0,DSORG=PS)
//            DCB=(RECFM=FB,LRECL=165,BLKSIZE=0,DSORG=PS)
//*HITSS-F
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZCO01T85),DISP=SHR
//*
//**********************************************************************
//*  SORT ARCHIVO DE  MERCADO DE DINERO Y SOC DE INVERSION             *
//*  ORDENADO POR :                                                    *
//*  CONTRATO, TIPO DE INSTRUMENTO (CAP, DIN Y SII), EMISORA, SERIE,   *
//*  TIPO DE MOVIMIENTO (C / V) Y FECHA DE LIQUIDACIóN.                *
//**********************************************************************
//ZCO01T80 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.CON.ZM4CO220.MDD,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.CON.ZM4CO220.SORT,
//            DISP=(NEW,CATLG,DELETE),
//*HITSS-I
//*           DCB=(DSORG=PS,LRECL=156,RECFM=FB,BLKSIZE=0),
//            DCB=(DSORG=PS,LRECL=165,RECFM=FB,BLKSIZE=0),
//*HITSS-F
//            SPACE=(CYL,(50,25),RLSE),UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZCO01T80),DISP=SHR
//*
//**********************************************************************
//*                        == ZM3CO200 ==                              *
//*                                                                    *
//* OBJETIVO : ACUMULA X  CUENTA EMISORA,SERIE , TIPO DE INSTRUMENTO   *
//*            TIPO DE MOVIMIENTO                                      *
//**********************************************************************
//ZCO01T75 EXEC PGM=ZM3CO200,COND=(4,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.CON.ZM4CO220.SORT,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.CON.ZM3CO200,
//            DISP=(NEW,CATLG,DELETE),
//*HITSS-I
//*           DCB=(DSORG=PS,RECFM=FB,LRECL=156,BLKSIZE=0),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=165,BLKSIZE=0),
//*HITSS-F
//            UNIT=3390,
//            SPACE=(CYL,(6,3),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//*  SORT ARCHIVO DE ARCHIVO DE CUENTAS POR CUENTA                     *
//**********************************************************************
//ZCO01T70 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.CON.ZM4CO210.CTAS,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.CON.ZM4CO210.CTAS.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=348,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(50,25),RLSE),UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZCO01T70),DISP=SHR
//*
//*
//**********************************************************************
//*  SORT ARCHIVO DE ARCHIVO DE OPERACION POR CUENTA                   *
//**********************************************************************
//ZCO01T65 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.CON.ZM3CO200,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.CON.ZM3CO200.SORT,
//            DISP=(NEW,CATLG,DELETE),
//*HITSS-I
//*           DCB=(DSORG=PS,LRECL=156,RECFM=FB,BLKSIZE=0),
//            DCB=(DSORG=PS,LRECL=170,RECFM=FB,BLKSIZE=0),
//*HITSS-F
//            SPACE=(CYL,(50,25),RLSE),UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZCO01T65),DISP=SHR
//*
//*
//**********************************************************************
//*                        == ZM3CO210 ==                              *
//*                                                                    *
//* OBJETIVO : GENERA REPORTE                                          *
//*                                                                    *
//**********************************************************************
//ZCO01T60 EXEC PGM=ZM3CO210,COND=(4,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.CON.ZM4CO210.CTAS.SORT,DISP=SHR
//ENTRADA2 DD DSN=MXCP.ZM.FIX.CON.ZM3CO200.SORT,DISP=SHR
//*
//*HITSS-I
//*SALIDA   DD DSN=MXCP.ZM.FIX.CON.ZM3CO210.NAC,
//SALIDA   DD DSN=MXCP.ZM.FIX.CON.ZM3CO210.NACOR,
//            DISP=(NEW,CATLG,DELETE),
//*           DCB=(DSORG=PS,RECFM=FB,LRECL=542,BLKSIZE=0),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=556,BLKSIZE=0),
//*HITSS-F
//            UNIT=3390,
//            SPACE=(CYL,(6,3),RLSE)
//*
//*HITSS-I
//*SALIDA2  DD DSN=MXCP.ZM.FIX.CON.ZM3CO210.INT,
//SALIDA2  DD DSN=MXCP.ZM.FIX.CON.ZM3CO210.INTOR,
//            DISP=(NEW,CATLG,DELETE),
//*           DCB=(DSORG=PS,RECFM=FB,LRECL=563,BLKSIZE=0),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=577,BLKSIZE=0),
//*HITSS-F
//            UNIT=3390,
//            SPACE=(CYL,(6,3),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//*                        == ZM4CO240 ==                              *
//*                                                                    *
//* OBJETIVO : INSERTA EN LA ZMDTCON                                   *
//*                                                                    *
//**********************************************************************
//ZCO01T55 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.CON.ZM4CO210.CTAS.SORT,DISP=SHR
//ENTRADA2 DD DSN=MXCP.ZM.FIX.CON.ZM3CO200.SORT,DISP=SHR
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZCO01T55),DISP=SHR
//
