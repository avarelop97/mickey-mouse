//ZMLLPF12 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM CRS                                              *
//* PROCESO      : ZMLLPF12.                                           *
//* OBJETIVO     : GENERA ARCHIVO CRS SACRSCPR. PAGOS REPORTADOS.      *
//* REALIZO      : FSWITS.                                             *
//* FECHA        : MAYO DE 2017                                        *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR     FECHA DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*   PASO    : ZHL12P06                                               *
//*   OBJETIVO: CONSOLIDA ARCH DIVIDENDOS DE CORREO Y PRESENTE         *
//*--------------------------------------------------------------------*
//ZHL12P06 EXEC PGM=ICEGENER
//*
//SYSUT1   DD DSN=MXCP.ZM.FIX.EBCM.DIVFAT,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.EBCM.SALDOS.CRSDIVS,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=326,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*   PASO    : ZHL12P05                                               *
//*   OBJETIVO: FORMATEA ARCHIVO DE DIVIDENDOS (ORDENA A LA IZQ)       *
//*                     -- ZM4FAT23 --                                 *
//*--------------------------------------------------------------------*
//ZHL12P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMCFDIA1 DD DSN=MXCP.ZM.FIX.EBCM.SALDOS.CRSDIVS,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL12P05),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZHL12P04.                                             *
//* OBJETIVO   : SORT ARCHIVO DIVIDENDOS                               *
//*--------------------------------------------------------------------*
//ZHL12P04 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.EBCM.SALDOS.CRSDIVS,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.EBCM.SALDOS.CRSDIVS.FS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=325,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(300,150),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL12P04),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZHL12P03.                                             *
//* OBJETIVO   : SORT ARCHIVO CTOS CRS                                 *
//*--------------------------------------------------------------------*
//ZHL12P03 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.EBCM.SALDOS.CRSCTOS,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.EBCM.SALDOS.CRSCTOS.FS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=34,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(300,150),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL12P03),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZHL12P02. ZM4EFA32                                    *
//* OBJETIVO   : GENERA ARCHIVO CRS SACRSCPR. PAGOS REPORTADOS.        *
//*--------------------------------------------------------------------*
//ZHL12P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM4ECE01 DD DSN=MXCP.ZM.FIX.EBCM.SALDOS.CRSCTOS.FS,DISP=SHR
//ZM4ECE02 DD DSN=MXCP.ZM.FIX.EBCM.SALDOS.CRSDIVS.FS,DISP=SHR
//FDSALIDA DD DSN=MXCP.ZM.FIX.EBCM.SALDOS.SCRSCPR,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=820,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(300,150),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL12P02),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZHL12P01.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : SORT ARCHIVO POR CLIENTE/CUENTA.              *
//*--------------------------------------------------------------------*
//ZHL12P01 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.EBCM.SALDOS.SCRSCPR,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.EBCM.SALDOS.SCRSCPR.FS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=820,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(300,150),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL12P01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZHL12P00.                                             *
//* UTILERIA   : IEBGENER.                                             *
//* OBJETIVO   : REALIZA COPIA DE ARCHIVO DE PAGOS                     *
//*--------------------------------------------------------------------*
//ZHL12P00    EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD DSN=MXCP.ZM.FIX.EBCM.SALDOS.SCRSCPR.FS,DISP=SHR
//SYSUT2   DD DSN=MXBP.SA.FIX.CRS.MUV.PR,
//            DISP=(NEW,CATLG,CATLG),
//            DCB=(LRECL=820,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(300,150),RLSE)
//SYSIN    DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMLLPF12                        *
//*--------------------------------------------------------------------*
//*
