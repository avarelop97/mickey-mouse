//ZMPBCNBV PROC
//*--------------------------------------------------------------------*
//* APLICATIVO  : ZM@ - CASA DE BOLSA                                  *
//* OBJETIVO    : GENERACION DE REPORTES DE AUDITORIA PARA LA CNBV     *
//* AUTOR       : CASA DE BOLSA (XMZ8533)                              *
//* FECHA       : 22 DE ENERO DE 2020.                                 *
//*--------------------------------------------------------------------*
//*            L O G    D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA     AUTOR    FECHA   DESCRIPCION                          *
//* ---------- --------- ------- ------------------------------------- *
//*   @MEX000   XXXXXXX  DDMMMAA ..................................... *
//*   @MEX001   XMH7095  16MAR22  SE SUMARIZA EL VALOR DE MOVIMIENTOS  *
//*                              EN TRANSITO PARA TENER LA POSION TOTAL*
//*                              DEL MOVIMIENTO. CALIBRACION REPORTES  *
//*                              CNBV.                                 *
//*XMX7810-I
//*    XMX7810  XMX7810  141022   SE AUMENTA LONGITUD EN ARCHIVO DE    *
//*                               SALIDA POR RECUPERAR CAMPO DE DESCR  *
//*                               PASOS ZMCNBP96, ZMCNBP95             *
//*XMX7810-F
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*   PASO    : ZMCNC99A                                               *
//*   OBJETIVO: DESCARGA DE LA TABLA CUENTA PARA LA GENERACION DE      *
//*             REPORTE SALDO-EMISORA-CLIENTE MENSUAL                  *
//*--------------------------------------------------------------------*
//ZMCNB99A EXEC PGM=ADUUMAIN,
//         PARM='MXP1,ZMCNB99A,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.EBCM.UNLOAD.BCJCCNBV.CUENTA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMCNB99A),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMCNBP99                                              *
//* UTILERIA   : IKJEFT1A/ZM4CNB27                                     *
//* OBJETIVO   : GENERA ARCHIVO SALDO EMISORA CLIENTE MENSUAL          *
//*--------------------------------------------------------------------*
//ZMCNBP99 EXEC PGM=IKJEFT1A,COND=(04,LT)
//*
//CUENTAS  DD DSN=MXCP.ZM.FIX.EBCM.UNLOAD.BCJCCNBV.CUENTA,
//            DISP=SHR
//*
//*@MEX001-I
//*POSICION DD DSN=MXCP.ZM.FIX.EBCM.BCJCCNBV.SDOCTE.F&FECHA,
//POSICION DD DSN=MXCP.ZM.FIX.EBCM.BCJCCNBV.SDOVLO.F&FECHA,
//*@MEX001-F
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//*@MEX001-I
//*           DCB=(RECFM=FB,LRECL=333,BLKSIZE=0,DSORG=PS)
//            DCB=(RECFM=FB,LRECL=347,BLKSIZE=0,DSORG=PS)
//*@MEX001-F
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCNBP99),
//            DISP=SHR
//*
//*@MEX001-I
//*--------------------------------------------------------------------*
//*   PASO    : ZMCNB98F                                               *
//*   OBJETIVO: GENERA TARJETA DE CONTROL CON PARAMETRO DE FECHA       *
//*             DINAMICO.                                              *
//*--------------------------------------------------------------------*
//ZMCNB98F EXEC PGM=IKJEFT1A,COND=(04,LT)
//*
//SALIDA01 DD DSN=MXCP.ZM.FIX.EBCM.UNLOAD.BCJCCNBV.DINAMIC,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(1,2),RLSE),
//            DCB=(LRECL=80,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCNB98F),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : ZMCNB98E                                               *
//*   UTILERIA: ADUUMAIN
//*   OBJETIVO: DESCARGA MOVIMIENTOS EN TRANSITO.                      *
//*--------------------------------------------------------------------*
//ZMCNB98E EXEC PGM=ADUUMAIN,
//         PARM='MXP1,ZMCNB98E,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.EBCM.UNLOAD.BCJCCNBV.TRANSITO,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.FIX.EBCM.UNLOAD.BCJCCNBV.DINAMIC,DISP=SHR
//*--------------------------------------------------------------------*
//* PASO       : ZMCNB98D                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : ORDENA ARCHIVO POR CUENTA Y CONCEPTO.                 *
//*--------------------------------------------------------------------*
//ZMCNB98D EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.EBCM.UNLOAD.BCJCCNBV.TRANSITO,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.EBCM.UNLOAD.TRANSITO.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=34,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMCNB98D),
//            DISP=SHR
//*--------------------------------------------------------------------*
//* PASO       : ZMCNB98C                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : ORDENA ARCHIVO POR CUENTA Y CONCEPTO.                 *
//*--------------------------------------------------------------------*
//ZMCNB98C EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.EBCM.BCJCCNBV.SDOVLO.F&FECHA,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.EBCM.BCJCCNBV.SDOVLO.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=347,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMCNB98C),
//            DISP=SHR
//*--------------------------------------------------------------------*
//* PASO       : ZMCNBP9B                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : SUMA EL VALOR DEL MOVIMIENTO EN TRANSITO.             *
//*--------------------------------------------------------------------*
//ZMCNBP9B EXEC PGM=ZM3CNB28,COND=(4,LT)
//*
//E1DESCON DD DSN=MXCP.ZM.FIX.EBCM.BCJCCNBV.SDOVLO.SORT,
//            DISP=SHR
//E2DESASE DD DSN=MXCP.ZM.FIX.EBCM.UNLOAD.TRANSITO.SORT,
//            DISP=SHR
//*
//S1FMATCH DD DSN=MXCP.ZM.FIX.EBCM.BCJCCNBV.SDOCTE.VUELO,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE),
//            DCB=(LRECL=333,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMCNB98F                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : ORDENA ARCHIVO DEJA ENCABEZADO AL INICIO              *
//*--------------------------------------------------------------------*
//ZMCNB98A EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.EBCM.BCJCCNBV.SDOCTE.VUELO,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.EBCM.BCJCCNBV.SDOCTE.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=333,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMCNB98A),
//            DISP=SHR
//*@MEX001-F
//*--------------------------------------------------------------------*
//* PASO       : ZMCNBP98                                              *
//* UTILERIA   : IKJEFT1A/ZM4CNB28                                     *
//* OBJETIVO   : GENERA ARCHIVO DE ASIGNACION DE MERCADO DE DINERO     *
//*--------------------------------------------------------------------*
//ZMCNBP98 EXEC PGM=IKJEFT1A,COND=(4,LT)
//*
//ASIGNACI DD DSN=MXCP.ZM.FIX.EBCM.BCJCCNBV.ASIGMDD.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=500,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCNBP98),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMCNBP97                                              *
//* UTILERIA   : IKJEFT1A/ZM4CNB29                                     *
//* OBJETIVO   : GENERA ARCHIVO DE ASIGNACION DE MERCADO DE CAPITALES  *
//*--------------------------------------------------------------------*
//ZMCNBP97 EXEC PGM=IKJEFT1A,COND=(4,LT)
//*
//ASIGNACI DD DSN=MXCP.ZM.FIX.EBCM.BCJCCNBV.ASIGMDC.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=500,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCNBP97),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMCNBP96                                              *
//* UTILERIA   : IKJEFT1A/ZM4CNB30                                     *
//* OBJETIVO   : GENERA ARCHIVO DE CLIENTES DADO BAJA                  *
//*--------------------------------------------------------------------*
//ZMCNBP96 EXEC PGM=IKJEFT1A,COND=(4,LT)
//*
//ASIGNACI DD DSN=MXCP.ZM.FIX.EBCM.BCJCCNBV.CLIENTE.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//*XMX7810-I
//*           DCB=(RECFM=FB,LRECL=500,BLKSIZE=0,DSORG=PS)
//            DCB=(RECFM=FB,LRECL=526,BLKSIZE=0,DSORG=PS)
//*XMX7810-F
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCNBP96),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMCNBP95                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : ORDENA ARCHIVO DE CLIENTES DADO BAJA POR CUENTA.      *
//*--------------------------------------------------------------------*
//ZMCNBP95 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.EBCM.BCJCCNBV.CLIENTE.F&FECHA,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.EBCM.BCJCCNBV.CTEBAJA.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//*XMX7810-I
//*           DCB=(RECFM=FB,LRECL=500,BLKSIZE=0,DSORG=PS)
//            DCB=(RECFM=FB,LRECL=526,BLKSIZE=0,DSORG=PS)
//*XMX7810-F
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMCNBP95),
//            DISP=SHR
//*@DGCM01-I
//*--------------------------------------------------------------------*
//* PASO       : ZMCNBP94.                                             *
//* PROGRAMA   : IOACND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA EJECUTAR PROCESO DE PDV          *
//*--------------------------------------------------------------------*
//ZMCNBP94 EXEC PGM=IOACND,PARM='ADD COND BCJCCNBV_OK &FEC',
//          COND=(4,LT)
//*
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD DUMMY
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
//*@DGCM01-F
//*
//*--------------------------------------------------------------------*
//*             FIN DE PROCESO  ZMPBCNBV                               *
//*--------------------------------------------------------------------*
