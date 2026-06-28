//ZMCONF24 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - CONFIRMACION                                   *
//* PROCESO      : ZMCONF24                                            *
//* PERIODICIDAD : A 24 HORAS                                          *
//* OBJETIVO     : REPORTES DE CONFIRMACION                            *
//* FECHA        : JUNIO 2016.                                         *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*
//*--------------------------------------------------------------------*
//* PASO       : ZCO24T85.                                             *
//* UTILERIA   : IKJEFT01/ZM4CO220                                     *
//* OBJETIVO   : OBTIENE OPERACIONES DE MD A 24 HORAS.                 *
//*--------------------------------------------------------------------*
//ZCO24T85 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.CON.ZM4CO200.FEC,DISP=SHR
//*
//ENTRADA2 DD DSN=MXCP.ZM.FIX.CON.ZM4CO210.CTAS,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.CON.ZM4CO220.MDD24,
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
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZCO24T85),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZCO24T8A.                                             *
//* UTILERIA   : IKJEFT01/ZM4CO230                                     *
//* OBJETIVO   : OBTIENE OPERACIONES DE CAP Y OBL A 24 HORAS           *
//*--------------------------------------------------------------------*
//ZCO24T8A EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.CON.ZM4CO200.FEC,DISP=SHR
//*
//ENTRADA2 DD DSN=MXCP.ZM.FIX.CON.ZM4CO210.CTAS,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.CON.ZM4CO230.CAP24,
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
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZCO24T8A),DISP=SHR
//**********************************************************************
//*  SORT ARCHIVO DE  MERCADO DE DINERO Y SOC DE INVERSION             *
//*  ORDENADO POR :                                                    *
//*  CONTRATO, TIPO DE INSTRUMENTO (CAP, DIN Y SII), EMISORA, SERIE,   *
//*  TIPO DE MOVIMIENTO (C / V) Y FECHA DE LIQUIDACIóN.                *
//**********************************************************************
//ZCO24T80 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.CON.ZM4CO220.MDD24,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.CON.ZM4CO230.CAP24,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.CON.ZM4CO220.OPER24.SORT,
//            DISP=(NEW,CATLG,DELETE),
//*HITSS-I
//*           DCB=(DSORG=PS,LRECL=156,RECFM=FB,BLKSIZE=0),
//            DCB=(DSORG=PS,LRECL=165,RECFM=FB,BLKSIZE=0),
//*HITSS-F
//            SPACE=(CYL,(50,25),RLSE),UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZCO24T80),DISP=SHR
//*
//**********************************************************************
//*                        == ZM3CO200 ==                              *
//*                                                                    *
//* OBJETIVO : ACUMULA X  CUENTA EMISORA,SERIE , TIPO DE INSTRUMENTO   *
//*            TIPO DE MOVIMIENTO                                      *
//**********************************************************************
//ZCO24T75 EXEC PGM=ZM3CO200,COND=(4,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.CON.ZM4CO220.OPER24.SORT,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.CON.ZM3CO200.OPER24,
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
//*                        == ZM4CO250 ==                              *
//* OBJETIVO : DESCARGA LOS DATOS DE LA ZMDTCON                        *
//**********************************************************************
//ZCO24T70 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.CON.ZM4CO200.FEC,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.CON.ZM4CO250.CON24,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=156,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZCO24T70),DISP=SHR
//*
//**********************************************************************
//*                        == ZM3CO220 ==                              *
//*                                                                    *
//* OBJETIVO : EXTRAE LOS CANCELADOS                                   *
//*                                                                    *
//**********************************************************************
//ZCO24T65 EXEC PGM=ZM3CO220,COND=(4,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.CON.ZM3CO200.OPER24,DISP=SHR
//ENTRADA2 DD DSN=MXCP.ZM.FIX.CON.ZM4CO250.CON24,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.CON.ZM3CO220.CANCE24,
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
//*                        == ZM3CO230 ==                              *
//*                                                                    *
//* OBJETIVO : EXTRAE LOS REGISTROS-MODIFICADOS Y NVOS                 *
//*                                                                    *
//**********************************************************************
//ZCO24T60 EXEC PGM=ZM3CO230,COND=(4,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.CON.ZM4CO250.CON24,DISP=SHR
//ENTRADA2 DD DSN=MXCP.ZM.FIX.CON.ZM3CO200.OPER24,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.CON.ZM3CO230.NVOS24,
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
//*  SORT ARCHIVO DE ARCHIVO DE OPERACION CANCELADAS POR CUENTA        *
//**********************************************************************
//ZCO24T55 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.CON.ZM3CO220.CANCE24,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.CON.OPER.CANCEL24,
//            DISP=(NEW,CATLG,DELETE),
//*HITSS-I
//*           DCB=(DSORG=PS,LRECL=156,RECFM=FB,BLKSIZE=0),
//            DCB=(DSORG=PS,LRECL=165,RECFM=FB,BLKSIZE=0),
//*HITSS-F
//            SPACE=(CYL,(50,25),RLSE),UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZCO24T80),DISP=SHR
//**********************************************************************
//*  SORT ARCHIVO DE ARCHIVO DE OPERACION POR CUENTA                   *
//**********************************************************************
//ZCO24T50 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.CON.ZM3CO230.NVOS24,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.CON.OPER.NUEVAS24,
//            DISP=(NEW,CATLG,DELETE),
//*HITSS-I
//*           DCB=(DSORG=PS,LRECL=156,RECFM=FB,BLKSIZE=0),
//            DCB=(DSORG=PS,LRECL=165,RECFM=FB,BLKSIZE=0),
//*HITSS-F
//            SPACE=(CYL,(50,25),RLSE),UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZCO24T80),DISP=SHR
//*
//**********************************************************************
//*                        == ZM4CO270 ==                              *
//* OBJETIVO : ESTE PROGRAMA ACTUALIZA O BORRA REGISTROS CANCELADOS    *
//**********************************************************************
//ZCO24T45 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.CON.OPER.CANCEL24,DISP=SHR
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZCO24T45),DISP=SHR
//**********************************************************************
//*                        == ZM4CO260 ==                              *
//* OBJETIVO : ESTE PROGRAMA ACTUALIZA O INSERTA LOS DATOS NVOS        *
//**********************************************************************
//ZCO24T40 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.CON.OPER.NUEVAS24,DISP=SHR
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZCO24T50),DISP=SHR
//*
//**********************************************************************
//*  SORT ARCHIVO DE ARCHIVO DE OPERACION POR CUENTA                   *
//**********************************************************************
//ZCO24T35 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.CON.OPER.NUEVAS24,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.CON.OPER.CANCEL24,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.CON.OPER.NUEVAS.SINDUP24,
//            DISP=(NEW,CATLG,DELETE),
//*HITSS-I
//*           DCB=(DSORG=PS,LRECL=156,RECFM=FB,BLKSIZE=0),
//            DCB=(DSORG=PS,LRECL=165,RECFM=FB,BLKSIZE=0),
//*HITSS-F
//            SPACE=(CYL,(50,25),RLSE),UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZCO24T40),DISP=SHR
//**********************************************************************
//*                        == ZM4CO280 ==                              *
//* OBJETIVO : ESTE PROGRAMA EXTRAE INFORMACION DE LA ZMDTCON          *
//**********************************************************************
//ZCO24T30 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.CON.OPER.NUEVAS.SINDUP24,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.CON.ZM4CO280.FINAL24,
//            DISP=(NEW,CATLG,DELETE),
//*HITSS-I
//*           DCB=(DSORG=PS,RECFM=FB,LRECL=156,BLKSIZE=0),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=170,BLKSIZE=0),
//*HITSS-F
//            UNIT=3390,
//            SPACE=(CYL,(6,3),RLSE)
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZCO24T35),DISP=SHR
//*
//**********************************************************************
//*                        == ZM3CO210 ==                              *
//*                                                                    *
//* OBJETIVO : GENERA REPORTE                                          *
//*                                                                    *
//**********************************************************************
//ZCO24T25 EXEC PGM=ZM3CO210,COND=(4,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.CON.ZM4CO210.CTAS.SORT,DISP=SHR
//ENTRADA2 DD DSN=MXCP.ZM.FIX.CON.ZM4CO280.FINAL24,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.CON.ZM3CO210.NAC24,
//            DISP=(NEW,CATLG,DELETE),
//*HITSS-I
//*           DCB=(DSORG=PS,RECFM=FB,LRECL=542,BLKSIZE=0),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=556,BLKSIZE=0),
//*HITSS-F
//            UNIT=3390,
//            SPACE=(CYL,(6,3),RLSE)
//*
//SALIDA2  DD DSN=MXCP.ZM.FIX.CON.ZM3CO210.INT24,
//            DISP=(NEW,CATLG,DELETE),
//*HITSS-I
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
//**********************************************************************
//*                        == ZM4CO290 ==                              *
//* OBJETIVO : MARCA YA LOS REGISTROS CANCELADOS                       *
//**********************************************************************
//ZCO24T20 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.CON.OPER.CANCEL24,DISP=SHR
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZCO24T20),DISP=SHR
