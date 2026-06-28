//ZMHCPM15 PROC                                                         00040000
//*--------------------------------------------------------------------*00003800
//* APLICATIVO  : SISTEMA INTEGRAL DE VALORES (S.I.V.A.)               *00003900
//* OBJETIVO    : GENERA CATALOGOS DE EJERCICIO DE DIVIDENDOS          *00004000
//*               PROCESADOS EN EL MES.                                *00004100
//* PERIODICIDAD: MENSUAL                                              *00004110
//* AUTOR       : SWF DGCM(XM26251).                                   *00004200
//* FECHA       : 18 DE DICIEMBRE DEL 2014.                            *00004300
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
//PHCM5P20 EXEC PGM=IKJEFT01
//*
//CATAL01  DD DSN=MXCP.ZM.FIX.CATAL01.SALIDA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(LRECL=210,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHCM5T02),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO    : PHCM5P15                                                 *
//* PROGRAMA: ICEMAN                                                   *
//* OBJETIVO: REALIZARA ORDENAMIENTO DE REGISTROS POR CLIENTE, FECHA Y *
//*           CUENTA                                                   *
//*---------------------------------------------------------------------
//PHCM5P15 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.CATAL01.SALIDA,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.CATEMIS.MEN.F&FECHA..ORD,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(LRECL=210,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHCM5T01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO    : PHCM5P10                                                 *
//* PROGRAMA: ZM4MHCE1                                                 *
//* OBJETIVO: PROGRAMA QUE GENERA CATALOGO CONTRATOS CON RESIDENCIA    *
//*           EN EL EXTRANJERO                                         *
//*---------------------------------------------------------------------
//PHCM5P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//CATAL02  DD DSN=MXCP.ZM.FIX.CATAL02.SALIDA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(LRECL=144,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHCM5T03),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO    : PHCM5P05                                                 *
//* PROGRAMA: ICEMAN                                                   *
//* OBJETIVO: REALIZARA ORDENAMIENTO DE REGISTROS POR EMPRESA DE LAS   *
//*           CUENTAS EXTRANJERAS                                      *
//*---------------------------------------------------------------------
//PHCM5P05 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.CATAL02.SALIDA,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.CATEXTR.MEN.F&FECHA..ORD,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(LRECL=144,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHCM5T04),DISP=SHR
//*
//**********************************************************************00003000
//*                          FINAL DEL PROCESO
//**********************************************************************00003000
