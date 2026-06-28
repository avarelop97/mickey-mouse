//ZMHLIQ02  PROC                                                        00010025
//*====================================================================*
//* COMPANIA    : BBVA BANCOMER - MEXICO                               *
//* SISTEMA     : ZM / BANCA PATRIMONIAL                               *
//* PROCESO     : ZMHLIQ02                                             *
//*                                                                    *
//*                       - O B J E T I V O -                          *
//*                                                                    *
//* CICLICO DE TABLA LOGERR DE LOS CLIENTE DE BBVATRADER CON ERRORES   *
//* DE COMPRAS O TRANSFERENCIAS RECHAZADAS.                            *
//*====================================================================*
//*                    - LOG DE MODIFICACIONES -                       *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//*--------------------------------------------------------------------*00240002
//* PASO    : PLQ02P02                                                 *00240002
//* UTIL/PGM: ZM4LIQ04                                                 *00240002
//* OBJETIVO: GENERA TARJETAS DE CONTROL CON LA FECHA DEL DIA          *00240002
//*--------------------------------------------------------------------*
//PLQ02P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//E1DQ0001 DD DSN=ZIVA.ZME.CONTROL(ZLQ02T01),DISP=SHR
//S1DQ0001 DD DSN=MXCP.ZM.TMP.ZM4LIQ04.CTC,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLQ02T02),DISP=SHR
//*====================================================================*
//* PASO     : PLQ02P01                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA LOGERR.                            *
//*====================================================================*
//PLQ02P01 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PLQ02P01,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ZBTRLOG.ENTRADA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.ZM4LIQ04.CTC,DISP=SHR
//*====================================================================*
//* PASO     : PLQ02P00                                                *
//* PROGRAMA : ZM4LIQ05                                                *
//* OBJETIVO : REPORTE DE LOG DE ERRORES.                              *
//*====================================================================*
//PLQ02P00 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//ZMLIQE05 DD DSN=MXCP.ZM.FIX.ZBTRLOG.ENTRADA,DISP=SHR
//ZMLIQS05 DD DSN=MXCP.ZM.FIX.ZMHLIQ02.ZBTRLOG.REPORTE,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=474,BLKSIZE=0),
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLQ02T06),DISP=SHR
