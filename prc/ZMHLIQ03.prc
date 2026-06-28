//ZMHLIQ03  PROC                                                        00010025
//*====================================================================*
//* COMPANIA    : BBVA BANCOMER - MEXICO                               *
//* SISTEMA     : ZM / BANCA PATRIMONIAL                               *
//* PROCESO     : BCHLIQ03 - ZMHLIQ03                                  *
//*                                                                    *
//*                       - O B J E T I V O -                          *
//*                                                                    *
//* REALIZACION ACTUALIZACION DE CANAL PARA LAS OPERACIONES DE PREAVISO*
//* DERIVADO DE OPERACIONES DIGITALES                                  *
//*====================================================================*
//*                    - LOG DE MODIFICACIONES -                       *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//*--------------------------------------------------------------------*00240002
//* PASO    : PLQ03P10                                                 *00240002
//* UTIL/PGM: ZM3LIQ01                                                 *00240002
//* OBJETIVO: GENERA TARJETA  DE CONTROL PARA OBTENER LA FECHA.        *00240002
//*--------------------------------------------------------------------*
//PLQ03P10 EXEC PGM=ZM3LIQ01,PARM=&FECHA2                               00780700
//S1DQ0001 DD DSN=MXCP.ZM.FIX.ZMHLIQ03.F&FECHA,
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
//* PASO    : PLQ03P08                                                 *00240002
//* UTIL/PGM: ZM4LIQ01                                                 *00240002
//* OBJETIVO: GENERA TARJETAS DE CONTROL CON LA FECHA.                 *00240002
//*--------------------------------------------------------------------*
//PJI01P08 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//E1DQ0001 DD DSN=ZIVA.ZME.CONTROL(ZLQ03T06),DISP=SHR
//E1DQ0002 DD DSN=MXCP.ZM.FIX.ZMHLIQ03.F&FECHA,DISP=SHR
//S1DQ0001 DD DSN=MXCP.ZM.TMP.ZLQ03T06.CTC,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLQ03T02),DISP=SHR
//*--------------------------------------------------------------------*00240002
//*====================================================================*
//* PASO     : PLQ03P04                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA OPERA.                             *
//*====================================================================*
//PLQ03P04 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PLQ03P04,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ZMHLIQ03.PREAVISO,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.ZLQ03T06.CTC,DISP=SHR
//*--------------------------------------------------------------------*00240002
//* PASO    : PLQ03P00                                                 *00240002
//* UTIL/PGM: ZM4LIQ08                                                 *00240002
//* OBJETIVO: ACTUALIZA ZMDTSCN PARA OPERACIONES DE PREAVISO           *00240002
//*--------------------------------------------------------------------*
//PLQ03P00 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//ZMJIPE01 DD DSN=MXCP.ZM.FIX.ZMHLIQ03.PREAVISO,
//            DISP=SHR
//*
//*
//ZMJIPS01 DD DSN=MXCP.ZM.FIX.ZMHLIQ03.OPEPREV.F&FECHA,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=121,BLKSIZE=0),
//         SPACE=(CYL,(1,1),RLSE),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLQ03T05),DISP=SHR                   01230041
//**********************************************************************
//*                  F I N  Z M H L I Q 0 3                            *
//**********************************************************************
