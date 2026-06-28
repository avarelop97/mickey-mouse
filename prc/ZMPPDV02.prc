//ZMPPDV02 PROC
//**********************************************************************
//* SISTEMA  :  SISTEMA PRACTICA DE VENTAS (YH)                        *
//* PROCESO  :  ZMPPDV02                                               *
//* OBJETIVO :  GENERACION DE REPORTE REPERFILADO MENSUAL PARA         *
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
//*  PASO       : ZPP01T01                                             *
//*  PROGRAMA   : ICEGENER                                             *
//*  DESCRIPCION: GENERA ARCHIVO PARA TRANSFERENCIA                    *
//*--------------------------------------------------------------------*
//ZPP01T01 EXEC PGM=ICEGENER
//*
//SYSUT1   DD  DSN=MBV&AMB..WI.FIX.WIJDRME1.REPSERVM,
//             DISP=SHR
//*
//SYSUT2   DD  DSN=MXC&AMB..ZM.FIX.WIJDRME1.REPSERVM,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE),
//             DCB=(LRECL=223,RECFM=FB,DSORG=PS,BLKSIZE=0)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DUMMY
//*--------------------------------------------------------------------*
//*                    FIN DE PROCESO ZMPPDV02                         *
//*--------------------------------------------------------------------*
