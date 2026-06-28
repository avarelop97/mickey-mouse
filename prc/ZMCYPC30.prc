//ZMCYPC30 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - CASA DE BOLSA.                                 *
//* PROCESO      : ZMCYPC30.                                           *
//* PERIODICIDAD : CICLICO.                                            *
//* OBJETIVO     : GENERAR REPROS CALYPSO BUC PARA ASIGNACION Y        *
//*                CONCILIACION.                                       *
//* REALIZO      : TECNOCOM.                                           *
//* FECHA        : 16 DE ENERO DEL 2018.                               *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*                               XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//* PASO       : ZMPYPY30                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : VALIDA QUE ARCHIVO MXCP.ZM.FIX.BUQM3901.BUCMUVFO      *
//*              VENGA INFORMADO                                       *
//*--------------------------------------------------------------------*
//*TECNOCOM-I
//ZMPYPY30 EXEC PGM=IDCAMS
//SYSUT1   DD DSN=MXC&AMB..ZM.FIX.BUQM3901.BUCMUVFO,DISP=SHR
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZUE40Y30),DISP=SHR
//*TECNOCOM-F
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMPYPY25                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : GENERA REPRO DE CALYPSO A MUV PROC ZMLLPC04 MID OFFIC *
//*--------------------------------------------------------------------*
//ZMPYPY25 EXEC PGM=ICEMAN,COND=(3,LT)
//*
//SORTIN   DD  DSN=MXC&AMB..ZM.FIX.BUQM3901.BUCMUVFO,
//             DISP=SHR
//*
//SORTOUT  DD  DSN=MX&CAL.&AMB..&SYST..FIX.BUQM3901.BUCMUVFO,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(10,5),RLSE),
//             DCB=(LRECL=80,BLKSIZE=0,RECFM=FB,DSORG=PS)
//*
//SYSOUT   DD  SYSOUT=*
//*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZUE30Y30),
//             DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMPYPY20                                              *
//* OBJETIVO   : GENERA CONDICION PARA QUE SEA TOMADA POR EL PROCESO   *
//*              BCLLPC04                                              *
//*--------------------------------------------------------------------*
//ZMPYPY20 EXEC  PGM=CTMCND,
//         PARM='ADD COND BCLLPC04_BUC_SIVA_OK WDATE',COND=(3,LT)
//*
//STEPLIB  DD   DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//*
//PRTDBG   DD   SYSOUT=Z
//SYSPRINT DD   DUMMY
//SYSUDUMP DD   DUMMY
//DAPRINT  DD   SYSOUT=Z
//*
//*--------------------------------------------------------------------*
//*                     FIN DEL PROCESO ZMCYPC30                       *
//*--------------------------------------------------------------------*
