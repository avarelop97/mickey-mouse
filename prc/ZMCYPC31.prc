//ZMCYPC31 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - CASA DE BOLSA.                                 *
//* PROCESO      : ZMCYPC31.                                           *
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
//* OBJETIVO   : VALIDA QUE ARCHIVO MXCP.ZM.FIX.BUPDPIGO.ENVIADOS      *
//*              VENGA INFORMADO                                       *
//*--------------------------------------------------------------------*
//ZMPYPY35 EXEC PGM=IDCAMS
//SYSUT1   DD DSN=MXC&AMB..ZM.FIX.BUPDPIGO.ENVIADOS,DISP=SHR
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZUE40Y30),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMPYPY30                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : GENERA REPRO DE CALYPSO A MUV PROC ZMLLPD04 ASIG      *
//*--------------------------------------------------------------------*
//ZMPYPY30 EXEC PGM=ICEMAN,COND=(3,LT)
//*
//SORTIN   DD  DSN=MXC&AMB..ZM.FIX.BUPDPIGO.ENVIADOS,
//             DISP=SHR
//*
//SORTOUT  DD  DSN=MX&CAL.&AMB..&SYST..GDGD.BUPDPIGO.ENVIADOS(+1),
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(6,3),RLSE),
//             DCB=(BKUP.MODEL,LRECL=136,BLKSIZE=0,RECFM=FB,DSORG=PS)
//*
//SYSOUT   DD  SYSOUT=*
//*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZUE30Y31),
//             DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMPYPY20                                              *
//* OBJETIVO   : GENERA CONDICION PARA QUE SEA TOMADA POR EL PROCESO   *
//*              BCLLND04                                              *
//*--------------------------------------------------------------------*
//ZMPYPY20 EXEC  PGM=CTMCND,
//         PARM='ADD COND BCLLND04_BUC_SIVA_OK WDATE',COND=(3,LT)
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
//*                     FIN DEL PROCESO ZMCYPC31                       *
//*--------------------------------------------------------------------*
