//MZMPP150 PROC
//**********************************************************************
//* APLICACION  : ZM                                                   *
//* PROCESO     : MZMPP150                                             *
//* OBJETIVO    : GENERAR UN ARCHIVO DE SALIDA CON LAS ALTAS DEL DIA   *
//*               PARA TENER UNA INTERFAZ CON EL APLICATIVO MARKETING  *
//*               Y RESPALDAR LA INFORMACION DE LA TABLA CUENTA.       *
//* REALIZO     : FABRICA DE SOFTWARE ITS (XMC7014)                    *
//* FECHA       : MARZO 2012                                           *
//**********************************************************************
//*        L O G    D E   M O D I F I C A C I O N E S                  *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//* FS-1.0.0-00  XXXXXXX DDMMAA  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*                                                                    *
//**********************************************************************
//*--------------------------------------------------------------------*00075700
//* PASO    : ZMP15040                                                 *
//* PROGRAMA: ADUUMAIN                                                 *00022600
//* OBJETIVO: DESCARGA DE LA TABLA CUENTA                              *00022700
//*--------------------------------------------------------------------*00022800
//ZMP15040  EXEC PGM=ADUUMAIN,                                          00022900
//          PARM='MXP1,ZMP15039,NEW,,MSGLEVEL(1)'                       00023000
//*                                                                     00023400
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.F&FECHA..UNLOAD.CUENTA.BACKUP,            00023800
//            DISP=(NEW,CATLG,DELETE),                                  00023900
//            SPACE=(CYL,(200,100),RLSE),UNIT=3390,BLKSIZE=0            00024000
//*           DCB=(DSORG=PS,RECFM=FB,LRECL=761,BLKSIZE=0)               00024100
//*                                                                     00024200
//UTPRINT  DD SYSOUT=*                                                  00024500
//SYSPRINT DD SYSOUT=*                                                  00024600
//SYSUDUMP DD SYSOUT=*                                                  00024700
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(CCAUD130),DISP=SHR
//*
//*--------------------------------------------------------------------*00075700
//* PASO    : ZMP15035                                                 *
//* PROGRAMA: ADUUMAIN                                                 *00022600
//* OBJETIVO: SE GENERA UNA DESCARGA DE LOS CAMPOS: ZM608_NICUENTA Y   *00022700
//*           ZM608_NUMCTE DE LA TABLA ZMDT608 QUE CUMPLA EL REQUISITO *00022700
//*           SIGUIENTE: LA COLUMNA ZM608_CCTAINVPAT DEBE TENER EN SUS *00022700
//*           DOS PRIMERAS POSICIONES UN VALOR DE: 21                  *00022700
//*--------------------------------------------------------------------*00075700
//ZMP15035  EXEC PGM=ADUUMAIN,COND=(0,NE),                              00022900
//          PARM='MXP1,ZMP15035,NEW,,MSGLEVEL(1)'                       00023000
//*                                                                     00023400
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.F&FECHA..UNLOAD.ZMDT608.UGMUV,            00023800
//            DISP=(NEW,CATLG,DELETE),                                  00023900
//            SPACE=(CYL,(200,100),RLSE),UNIT=3390,BLKSIZE=0            00024000
//*           DCB=(DSORG=PS,RECFM=FB,LRECL=18,BLKSIZE=0)                00024100
//*                                                                     00024200
//UTPRINT  DD SYSOUT=*                                                  00024500
//SYSPRINT DD SYSOUT=*                                                  00024600
//SYSUDUMP DD SYSOUT=*                                                  00024700
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(CCAUD131),DISP=SHR
//*
//*--------------------------------------------------------------------*00075700
//* PASO    : ZMP15030                                                 *
//* PROGRAMA: ADUUMAIN                                                 *00022600
//* OBJETIVO: SE GENERA UNA DESCARGA DE LAS COLUMNAS: ZM611_NUGESTORA  *00022700
//*           ZM611_NIPROM DE LA TABLA ZMDT611                         *00022700
//*--------------------------------------------------------------------*00075700
//ZMP15030  EXEC PGM=ADUUMAIN,COND=(0,NE),                              00022900
//          PARM='MXP1,ZMP15030,NEW,,MSGLEVEL(1)'                       00023000
//*                                                                     00023400
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.F&FECHA..UNLOAD.ZMDT611.UGMUV,            00023800
//            DISP=(NEW,CATLG,DELETE),                                  00023900
//            SPACE=(CYL,(200,100),RLSE),UNIT=3390,BLKSIZE=0            00024000
//*           DCB=(DSORG=PS,RECFM=FB,LRECL=13,BLKSIZE=0)                00024100
//*                                                                     00024200
//UTPRINT  DD SYSOUT=*                                                  00024500
//SYSPRINT DD SYSOUT=*                                                  00024600
//SYSUDUMP DD SYSOUT=*                                                  00024700
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(CCAUD106),DISP=SHR
//*
//*--------------------------------------------------------------------*00075700
//* PASO    : ZMP15025                                                 *
//* PROGRAMA: ADUUMAIN                                                 *00022600
//* OBJETIVO: SE GENERA UNA DESCARGA DE LAS COLUMNAS: ZMTUG_ICLIENTE  * 00022700
//*           ZMTUG_NUGESTORA,ZMTUG_PECENTID,ZMTUG_OFIAPE,ZMTUG_NUMECTA*00022700
//*           ZMTUG_IUGESTOR DE LA TABLA ZMDTTUG                       *00022700
//*--------------------------------------------------------------------*00075700
//ZMP15025  EXEC PGM=ADUUMAIN,COND=(0,NE),                              00022900
//          PARM='MXP1,ZMP15025,NEW,,MSGLEVEL(1)'                       00023000
//*                                                                     00023400
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.F&FECHA..UNLOAD.ZMDTTUG.UGMUV,            00023800
//            DISP=(NEW,CATLG,DELETE),                                  00023900
//            SPACE=(CYL,(200,100),RLSE),UNIT=3390,BLKSIZE=0            00024000
//*           DCB=(DSORG=PS,RECFM=FB,LRECL=40,BLKSIZE=0)                00024100
//*                                                                     00024200
//UTPRINT  DD SYSOUT=*                                                  00024500
//SYSPRINT DD SYSOUT=*                                                  00024600
//SYSUDUMP DD SYSOUT=*                                                  00024700
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(CCAUD107),DISP=SHR
//*
//*--------------------------------------------------------------------*00075700
//* PASO    : ZMP15020                                                 *
//* PROGRAMA: IKJEFT01/ZM4MUVUG                                        *00022600
//* OBJETIVO: SINCRONIZACION DE LAS UG'S VS NUMERO DE PROMOTOR         *00022700
//*--------------------------------------------------------------------*
//ZMP15020 EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.F&FECHA..UNLOAD.CUENTA.BACKUP,DISP=SHR
//ENTRADA2 DD DSN=MXCP.ZM.FIX.F&FECHA..UNLOAD.ZMDT608.UGMUV,DISP=SHR
//ENTRADA3 DD DSN=MXCP.ZM.FIX.F&FECHA..UNLOAD.ZMDT611.UGMUV,DISP=SHR
//ENTRADA4 DD DSN=MXCP.ZM.FIX.F&FECHA..UNLOAD.ZMDTTUG.UGMUV,DISP=SHR
//*
//SALIDA1  DD DSN=MXCP.ZM.FIX.F&FECHA..SALMUV&DIA..MKT1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=62,BLKSIZE=0)
//*
//SALIDA2  DD DSN=MXCP.ZM.FIX.F&FECHA..CIFMUV&DIA..MKT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0)
//SYSPRINT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSTSPRT  DD SYSOUT=*
//SYSIN     DD DUMMY
//SYSTSIN   DD DSN=ZIVA.ZME.CONTROL(CCAUD108),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ICEMAN                                                   *
//* OBJETIVO: ORDENAR PARA HEADER                                      *
//**********************************************************************
//ZMP15015 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.F&FECHA..SALMUV&DIA..MKT1,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.F&FECHA..SALMUV&DIA..MKT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=062,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(CCAUD110),DISP=SHR
//*
