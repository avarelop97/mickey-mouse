//ZMHCPM16 PROC                                                         00040000
//*--------------------------------------------------------------------*00003800
//* APLICATIVO  : SISTEMA INTEGRAL DE VALORES (S.I.V.A.)               *00003900
//* OBJETIVO    : GENERA LOG DE VENTAS EN CORTO                        *00004000
//*               PROCESADOS EN EL MES.                                *00004100
//* PERIODICIDAD: MENSUAL                                              *00004110
//* FECHA       : 25 DE SEPTIEMBRE DEL 2015.                           *00004300
//*--------------------------------------------------------------------*00004400
//*            L O G    D E   M O D I F I C A C I O N E S              *00004500
//*--------------------------------------------------------------------*00004600
//*    MARCA     AUTOR    FECHA   DESCRIPCION                          *00004700
//* ---------- --------- ------- ------------------------------------- *00004800
//*  @MEX00-I  ......... ....... ..................................... *00004900
//*--------------------------------------------------------------------*00005000
//*--------------------------------------------------------------------*
//* PASO    : PHCM5P20                                                 *
//* PROGRAMA: ZM4MHCA1                                                 *
//* OBJETIVO: PROGRAMA QUE GENERA CATALOGO DE LAS EMISORAS/SERIES QUE  *
//*           HAYAN REALIZADO EJERCICIO DE DERECHO PARA DIVIDENDOS     *
//*           DURANTE EL MES                                           *
//*---------------------------------------------------------------------
//PHPM1620 EXEC PGM=IKJEFT01
//*
//LOGVCN01 DD DSN=MXCP.ZM.FIX.VENTAS.CORTO.LOG,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(LRECL=397,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHCM6T01),DISP=SHR
//*
//**********************************************************************00003000
//*                          FINAL DEL PROCESO
//**********************************************************************00003000
