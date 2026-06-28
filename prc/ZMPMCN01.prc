//ZMPMCN01 PROC
//*
//**********************************************************************
//* APLICACION  : ZM                                                   *
//* PROCESO     : ZMPMCN01                                             *
//* OBJETIVO    : GENERACION DE ARCHIVOS PARA LA CNBV, CON LOS MOVI-   *
//*               MIENTOS MENSUALES DE CASA DE BOLSA.                  *
//* REALIZO     : FABRICA DE SOFTWARE BBVA BANCOMER (XM09287)          *
//* FECHA       : 20/OCTUBRE/2010.                                     *
//**********************************************************************
//*           L O G    D E   M O D I F I C A C I O N E S               *
//**********************************************************************
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//* *@MEX001-    XM09431 21/12/10 GENERACION DE ARCHIVOS PARA LA CNBV, *
//*                               CON LOS MOVIMIENTOS MENSUALES DE     *
//*                               CASA DE BOLSA.                       *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA   DESCRIPCION                         *
//* ----------- -------- ------- ------------------------------------- *
//* FS-1.0.0-01 TECNOCOM 07ABR13 SE REALIZAN LAS MODIFICACIONES DE     *
//*                              ACUERDO A LA ODT5 SIVA 2012.          *
//*                                                                    *
//* @DGCM01-->  XM26165  29JUL14 SE MODIFICAN LA LONGITUD DE SALIDA    *
//*                              DE LOS PASOS PHCN0107 Y PHCN0106.     *
//*--------------------------------------------------------------------*
//**********************************************************************
//* PASO        : PHCN0112                                             *
//* PROGRAMA    : ZM3DG001                                             *
//* DESCRIPCION : GENERA EL ARCHIVO DE PARAMETROS.                     *
//**********************************************************************
//PHCN0112 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','&INT1','&INT2')
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.CNBV.E&EMP..S&SUC..ZMPMCN01,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//SYSOUT   DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//*
//**********************************************************************
//* PASO        : PHCN0111                                             *
//* PROGRAMA    : IKJEFT01/ZM4MH004                                    *
//* DESCRIPCION : GENERA ARCHIVO MENSUAL DE MOVIMIENTOS DE TESORERIA.  *
//**********************************************************************
//PHCN0111 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFH0111 DD DSN=MXCP.ZM.FIX.CNBV.TESORERA.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=260,BLKSIZE=0),
//            UNIT=3390
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHFC1T11),DISP=SHR
//*
//**********************************************************************
//* PASO        : PHCN0110                                             *
//* PROGRAMA    : IKJEFT01/ZM4MH005                                    *
//* DESCRIPCION : GENERA ARCHIVO MENSUAL DE MOVIMIENTOS DE SOCIEDADES  *
//*               DE INVERSION.                                        *
//**********************************************************************
//PHCN0110 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFH0110 DD DSN=MXCP.ZM.FIX.CNBV.SOCINV.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=165,BLKSIZE=0),
//            UNIT=3390
//*
//SYSOUT   DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//QRLSDB2  DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZHFC1T10),DISP=SHR
//*
//*@MEX001-I
//**********************************************************************
//* PASO        : PHCN0109                                             *
//* PROGRAMA    : IKJEFT01/ZM4MH006                                    *
//* DESCRIPCION : GENERA ARCHIVO MENSUAL DE MOVIMIENTOS DE VALORES.    *
//*                                                                    *
//**********************************************************************
//PHCN0109 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFH0109 DD DSN=MXCP.ZM.FIX.CNBV.VALORES.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=276,BLKSIZE=0),
//            UNIT=3390
//*
//SYSOUT   DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//QRLSDB2  DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZHFC1T09),DISP=SHR
//*
//**********************************************************************
//* PASO        : PHCN0108                                             *
//* PROGRAMA    : IKJEFT01/ZM4MH007                                    *
//* DESCRIPCION : GENERA ARCHIVO MENSUAL DE MOVIMIENTOS NO AFECTA      *
//*               BANCOS.                                              *
//**********************************************************************
//PHCN0108 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFH0108 DD DSN=MXCP.ZM.FIX.CNBV.NOAFBCO.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=130,BLKSIZE=0),
//            UNIT=3390
//*
//SYSOUT   DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//QRLSDB2  DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZHFC1T08),DISP=SHR
//*
//*@MEX001-F
//**********************************************************************
//* PASO        : PHCN0107                                             *
//* PROGRAMA    : IKJEFT01/ZM4MH008                                    *
//* DESCRIPCION : GENERA ARCHIVO MENSUAL DE CLIENTES VIGENTES.         *
//**********************************************************************
//PHCN0107 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFH0107 DD DSN=MXCP.ZM.FIX.CNBV.CTESVIGE.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//* FS-1.0.0-01-I
//*********** DCB=(DSORG=PS,RECFM=FB,LRECL=446,BLKSIZE=0),
//*           DCB=(DSORG=PS,RECFM=FB,LRECL=479,BLKSIZE=0),
//*@DGCM01-->I
//*           DCB=(DSORG=PS,RECFM=FB,LRECL=519,BLKSIZE=0),
//*           DCB=(DSORG=PS,RECFM=FB,LRECL=623,BLKSIZE=0),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=813,BLKSIZE=0),
//*@DGCM01-->F
//* FS-1.0.0-01-F
//            UNIT=3390
//*
//SYSOUT   DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//QRLSDB2  DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZHFC1T07),DISP=SHR
//*
//**********************************************************************
//* PASO        : PHCN0106                                             *
//* PROGRAMA    : IKJEFT01/ZM4MH009                                    *
//* DESCRIPCION : GENERA ARCHIVO MENSUAL DE CLIENTES DADOS DE BAJA.    *
//**********************************************************************
//PHCN0106 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFH0106 DD DSN=MXCP.ZM.FIX.CNBV.CTESBAJA.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//* FS-1.0.0-01-I
//*********** DCB=(DSORG=PS,RECFM=FB,LRECL=452,BLKSIZE=0),
//*           DCB=(DSORG=PS,RECFM=FB,LRECL=485,BLKSIZE=0),
//*@DGCM01-->I
//*           DCB=(DSORG=PS,RECFM=FB,LRECL=525,BLKSIZE=0),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=624,BLKSIZE=0),
//*@DGCM01-->F
//* FS-1.0.0-01-F
//            UNIT=3390
//*
//SYSOUT   DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//QRLSDB2  DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZHFC1T06),DISP=SHR
//*
//*@MEX001-I
//**********************************************************************
//* PASO        : PHCN0105                                             *
//* PROGRAMA    : IKJEFT01/ZM4MH016                                    *
//* DESCRIPCION : GENERA ARCHIVO MENSUAL DE COTITULARES Y BENEFICIARIOS*
//*                                                                    *
//**********************************************************************
//PHCN0105 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFH0105 DD DSN=MXCP.ZM.FIX.CNBV.COTBENE.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=288,BLKSIZE=0),
//            UNIT=3390
//*
//SYSOUT   DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//QRLSDB2  DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZHFC1T05),DISP=SHR
//*
//**********************************************************************
//* PASO        : PHCN0104                                             *
//* PROGRAMA    : IKJEFT01/ZM4MH011                                    *
//* DESCRIPCION : GENERA ARCHIVO MENSUAL DE PROMOTORES Y OPERADORES DE *
//*               PISO.                                                *
//**********************************************************************
//PHCN0104 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFH0104 DD DSN=MXCP.ZM.FIX.CNBV.PROMOPE.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=171,BLKSIZE=0),
//            UNIT=3390
//*
//SYSOUT   DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//QRLSDB2  DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZHFC1T04),DISP=SHR
//*
//**********************************************************************
//* PASO        : PHCN0103                                             *
//* PROGRAMA    : IKJEFT01/ZM4MH012                                    *
//* DESCRIPCION : GENERA ARCHIVO MENSUAL DE CLAVES DE OPERACION.       *
//*                                                                    *
//**********************************************************************
//PHCN0103 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFH0103 DD DSN=MXCP.ZM.FIX.CNBV.CVESOPE.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//SYSOUT   DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//QRLSDB2  DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZHFC1T03),DISP=SHR
//*
//**********************************************************************
//* PASO        : PHCN0102                                             *
//* PROGRAMA    : IKJEFT01/ZM4MH013                                    *
//* DESCRIPCION : GENERA ARCHIVO MENSUAL DE VALORES EN PRESTAMO.       *
//*                                                                    *
//**********************************************************************
//PHCN0102 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFH0102 DD DSN=MXCP.ZM.FIX.CNBV.PRESVAL.A&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=186,BLKSIZE=0),
//            UNIT=3390
//*
//SYSOUT   DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//QRLSDB2  DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZHFC1T02),DISP=SHR
//*
//**********************************************************************
//* PASO        : PHCN0101                                             *
//* PROGRAMA    : IKJEFT01/ZM4MH014                                    *
//* DESCRIPCION : GENERA ARCHIVO MENSUAL DE VALORES EN GARANTIA.       *
//*                                                                    *
//**********************************************************************
//PHCN0101 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFH0101 DD DSN=MXCP.ZM.FIX.CNBV.GARANTIA.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=146,BLKSIZE=0),
//            UNIT=3390
//*
//SYSOUT   DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//QRLSDB2  DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZHFC1T01),DISP=SHR
//*
//*@MEX001-F
//**********************************************************************
//* PASO        : PHCN0100                                             *
//* PROGRAMA    : ICEMAN                                               *
//* DESCRIPCION : REALIZA SORT PARA ARCHIVO DE PRESTAMOS,              *
//*               MXCP.ZM.FIX.CNBV.PRESVAL.A&FECHA                     *
//**********************************************************************
//*--------------------------------------------------------------------
//* FUNCION:  REALIZA SORT PARA ARCHIVO DE PRESTAMOS
//*--------------------------------------------------------------------
//PHCN0100 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.CNBV.PRESVAL.A&FECHA,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.CNBV.PRESVAL.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=186,BLKSIZE=0),
//            UNIT=3390
//*
//SYSOUT   DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZHFC1T00),DISP=SHR
//*
//**********************************************************************
//*                                                                    *
//*                           FIN DE PROCESO                           *
//*                                                                    *
//**********************************************************************
//*
