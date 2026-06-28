//ZMCYPC32 PROC INT1='BCM000CTRL-M  0000000                        ',
// INT2='                                             ',EMP=BCM,SUC=000
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - CASA DE BOLSA.                                 *
//* PROCESO      : ZMCYPC32.                                           *
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
//* PASO       : ZMPYPY35                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : VALIDA QUE ARCHIVO MXCP.ZM.FIX.OPERA.VAL.NORMAL       *
//*              VENGA INFORMADO                                       *
//*--------------------------------------------------------------------*
//*TECNOCOM-I
//*ZMPYPY35 EXEC PGM=IDCAMS
//*SYSUT1   DD DSN=MXC&AMB..ZM.FIX.OPERA.VAL.NORMAL,DISP=SHR
//*SYSOUT   DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZUE40Y30),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMPYPY30                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : VALIDA QUE ARCHIVO MXCP.ZM.FIX.OPERA.VAL.HOY          *
//*              VENGA INFORMADO                                       *
//*--------------------------------------------------------------------*
//*ZMPYPY30 EXEC PGM=IDCAMS,COND=(3,LT)
//*SYSUT1   DD DSN=MXC&AMB..ZM.FIX.OPERA.VAL.HOY,DISP=SHR
//*SYSOUT   DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZUE40Y30),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMPYPY25                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : VALIDA QUE ARCHIVO MXCP.ZM.FIX.SALDOS.VAL.HOY         *
//*              VENGA INFORMADO                                       *
//*--------------------------------------------------------------------*
//*ZMPYPY25 EXEC PGM=IDCAMS,COND=(3,LT)
//*SYSUT1   DD DSN=MXC&AMB..ZM.FIX.SALDOS.VAL.HOY,DISP=SHR
//*SYSOUT   DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZUE40Y30),DISP=SHR
//*
//*TECNOCOM-F
//*--------------------------------------------------------------------*
//* PASO       : ZMPYPY20                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : GENERA REPRO DE CALYPSO A MUV PROC ZMLLPC01 CONC      *
//*--------------------------------------------------------------------*
//ZMPYPY20 EXEC PGM=ICEMAN
//*
//SORTIN   DD  DSN=MXC&AMB..ZM.FIX.OPERA.VAL.NORMAL,
//             DISP=SHR
//*
//SORTOUT  DD  DSN=MX&CAL.&AMB..&SYST..FIX.OPERA.VAL.NORMAL,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE),
//             DCB=(LRECL=190,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD  SYSOUT=*
//*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZUE30Y32),
//             DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMPYPY15                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : GENERA REPRO DE CALYPSO A MUV PROC ZMLLPC01 CONC      *
//*--------------------------------------------------------------------*
//ZMPYPY15 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD  DSN=MXC&AMB..ZM.FIX.OPERA.VAL.HOY,
//             DISP=SHR
//*
//SORTOUT  DD  DSN=MX&CAL.&AMB..&SYST..FIX.OPERA.VAL.HOY,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE),
//             DCB=(LRECL=190,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD  SYSOUT=*
//*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZUE30Y32),
//             DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMPYPY10                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : GENERA REPRO DE CALYPSO A MUV PROC ZMLLPC01 CONC      *
//*--------------------------------------------------------------------*
//ZMPYPY10 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD  DSN=MXC&AMB..ZM.FIX.SALDOS.VAL.HOY,
//             DISP=SHR
//*
//SORTOUT  DD  DSN=MX&CAL.&AMB..&SYST..FIX.SALDOS.VAL.HOY,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE),
//             DCB=(LRECL=142,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD  SYSOUT=*
//*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZUE30Y32),
//             DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMPYPY05                                              *
//* OBJETIVO   : RECIBE LOS PARAMETROS ENVIADOS DE CSP Y LOS GRABA     *
//*              EN ARCHIVO                                            *
//*--------------------------------------------------------------------*
//ZMPYPY05 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','&INT1','&INT2',),
//            COND=(4,LT)
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPC00,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMPYPY00                                              *
//* OBJETIVO   : GENERA CONDICION PARA QUE SEA TOMADA POR EL PROCESO   *
//*              BCLLPC01                                              *
//*--------------------------------------------------------------------*
//ZMPYPY00 EXEC  PGM=CTMCND,
//         PARM='ADD COND BCLLPC01_BCM_SIVA_OK WDATE',COND=(4,LT)
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
//*                     FIN DEL PROCESO ZMCYPC32                       *
//*--------------------------------------------------------------------*
