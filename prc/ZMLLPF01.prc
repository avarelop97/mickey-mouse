//ZMLLPF01 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM FATCA.                                           *
//* PROCESO      : ZMLLPF01.                                           *
//* OBJETIVO     : GENERA ARCHIVO FATCA SAFATCPR. PAGOS REPORTADOS.    *
//* REALIZO      : FSWITS.                                             *
//* FECHA        : 21-04-2016                                          *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR     FECHA DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*   PASO    : PHA02P06                                               *
//*   OBJETIVO: CONSOLIDA ARCH DIVIDENDOS DE CORREO Y PRESENTE         *
//*--------------------------------------------------------------------*
//PHA02P06 EXEC PGM=ICEGENER
//*
//SYSUT1   DD DSN=MXCP.ZM.FIX.ECBP.DIVFAT,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.ECBP.SALDOS.FATDIVS,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=326,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHA02P05                                               *
//*   OBJETIVO: FORMATEA ARCHIVO DE DIVIDENDOS (ORDENA A LA IZQ)       *
//*                     -- ZM4FAT21 --                                 *
//*--------------------------------------------------------------------*
//PHA02P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMCFDIA1 DD DSN=MXCP.ZM.FIX.ECBP.SALDOS.FATDIVS,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHCFAT02),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PHA02P04.                                             *
//* OBJETIVO   : SORT ARCHIVO DIVIDENDOS                               *
//*--------------------------------------------------------------------*
//PHA02P04 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.ECBP.SALDOS.FATDIVS,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECBP.SALDOS.FATDIVS.FS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=325,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(300,150),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHCFAT03),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PHA02P03.                                             *
//* OBJETIVO   : SORT ARCHIVO CTOS FATCA                               *
//*--------------------------------------------------------------------*
//PHA02P03 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.ECBP.SALDOS.FATCTOS,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECBP.SALDOS.FATCTOS.FS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=28,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(300,150),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHCFAT04),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PHA02P02.                                             *
//* UTILERIA   :                                                       *
//* OBJETIVO   : GENERA ARCHIVO FATCA SAFATCPR. PAGOS REPORTADOS.      *
//*--------------------------------------------------------------------*
//PHA02P02 EXEC PGM=ZM3EFA20,COND=(4,LT)
//*
//ZM3ECE01 DD DSN=MXCP.ZM.FIX.ECBP.SALDOS.FATCTOS.FS,DISP=SHR
//ZM3ECE02 DD DSN=MXCP.ZM.FIX.ECBP.SALDOS.FATDIVS.FS,DISP=SHR
//FDSALIDA DD DSN=MXCP.ZM.FIX.ECBP.SALDOS.SFATCPR,
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
//*--------------------------------------------------------------------*
//* PASO       : PHA02P01.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : SORT ARCHIVO  POR CLIENTE/CUENTA.                     *
//*--------------------------------------------------------------------*
//PHA02P01 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.ECBP.SALDOS.SFATCPR,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECBP.SALDOS.SFATCPR.FS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=820,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(300,150),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHCFAT06),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PHA02P00.                                             *
//* UTILERIA   : IEBGENER.                                             *
//* OBJETIVO   : REALIZA COPIA DE ARCHIVO DE PAGOS                     *
//*--------------------------------------------------------------------*
//PHA02P00    EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD DSN=MXCP.ZM.FIX.ECBP.SALDOS.SFATCPR.FS,DISP=SHR
//SYSUT2   DD DSN=MXBP.SA.FIX.ECBP.FATCA.PR,
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
//*                    FIN DEL PROCESO ZMLLPF01                        *
//*--------------------------------------------------------------------*
//*
