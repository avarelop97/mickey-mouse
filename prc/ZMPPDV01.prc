//ZMPPDV01 PROC
//**********************************************************************
//* SISTEMA  :  SISTEMA PRACTICA DE VENTAS (YH)                        *
//* PROCESO  :  ZMPPDV01                                               *
//* OBJETIVO :  GENERACION DE REPORTE REPERFILADO SEMANAL PARA         *
//*             TRANSFERENCIA                                          *
//* ARCHIVOS :                                                         *
//*                                                                    *
//* REALIZO  :  JLJH INDRA                                             *
//* FECHA    :  NOV 2022.                                              *
//**********************************************************************
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//*--------------------------------------------------------------------*
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*  PASO       : YHPSUI01                                             *
//*  PROGRAMA   : ICEGENER                                             *
//*  DESCRIPCION: GENERA ARCHIVO PARA TRANSFERENCIA                    *
//*--------------------------------------------------------------------*
//ZPP01T01 EXEC PGM=ICEGENER
//*
//SYSUT1   DD  DSN=MBV&AMB..TT.FIX.MTTPPTR1.F&FECHA..REPORTE2,
//             DISP=SHR
//*
//SYSUT2   DD  DSN=MXC&AMB..ZM.FIX.MTTPPTR1.F&FECHA..REPORTE2,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(150,50),RLSE),
//             DCB=(RECFM=FB,LRECL=153,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DUMMY
//*--------------------------------------------------------------------*
//*                    FIN DE PROCESO ZMPPDV01                         *
//*--------------------------------------------------------------------*
