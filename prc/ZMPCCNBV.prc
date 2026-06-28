//ZMPCCNBV PROC
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
//* DD-JIGV     ZMH7095  28MAR22 INCREMENTO DE LONGITID PARA MOVIMIEN- *
//*                              TOS EN TRANSITO.                      *
//*XMX7810-I
//*    XMX7810  XMX7810  141022   SE AUMENTA LONGITUD EN ARCHIVO DE    *
//*                               SALIDA POR RECUPERAR CAMPO DE DESCR  *
//*                               PASOS ZMCNCP96, ZMCNCP95             *
//*XMX7810-F                                                           *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*   PASO    : ZMCNC99A                                               *
//*   OBJETIVO: DESCARGA DE LA TABLA CUENTA PARA LA GENERACION DE      *
//*             REPORTE SALDO-EMISORA-CLIENTE MENSUAL                  *
//*--------------------------------------------------------------------*
//ZMCNC99A EXEC PGM=ADUUMAIN,
//         PARM='MXP1,ZMCNC99A,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ECBP.UNLOAD.CBJCCNBV.CUENTA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMCNC99A),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMCNCP99                                              *
//* UTILERIA   : IKJEFT1A/ZM4CNB27                                     *
//* OBJETIVO   : GENERA ARCHIVO SALDO EMISORA CLIENTE MENSUAL          *
//*--------------------------------------------------------------------*
//ZMCNCP99 EXEC PGM=IKJEFT1A,COND=(04,LT)
//*
//CUENTAS  DD DSN=MXCP.ZM.FIX.ECBP.UNLOAD.CBJCCNBV.CUENTA,
//            DISP=SHR
//*
//POSICION DD DSN=MXCP.ZM.FIX.ECBP.CBJCCNBV.SDOCTE.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//*DD-JIGV-I
//*           DCB=(RECFM=FB,LRECL=333,BLKSIZE=0,DSORG=PS)
//            DCB=(RECFM=FB,LRECL=347,BLKSIZE=0,DSORG=PS)
//*DD-JIGV-F
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCNCP99),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMCNCP98                                              *
//* UTILERIA   : IKJEFT1A/ZM4CNB28                                     *
//* OBJETIVO   : GENERA ARCHIVO DE ASIGNACION DE MERCADO DE DINERO     *
//*--------------------------------------------------------------------*
//ZMCNCP98 EXEC PGM=IKJEFT1A,COND=(4,LT)
//*
//ASIGNACI DD DSN=MXCP.ZM.FIX.ECBP.CBJCCNBV.ASIGMDD.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=500,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCNCP98),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMCNCP97                                              *
//* UTILERIA   : IKJEFT1A/ZM4CNB29                                     *
//* OBJETIVO   : GENERA ARCHIVO DE ASIGNACION DE MERCADO DE CAPITALES  *
//*--------------------------------------------------------------------*
//ZMCNCP97 EXEC PGM=IKJEFT1A,COND=(4,LT)
//*
//ASIGNACI DD DSN=MXCP.ZM.FIX.ECBP.CBJCCNBV.ASIGMDC.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=500,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCNCP97),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMCNCP96                                              *
//* UTILERIA   : IKJEFT1A/ZM4CNB30                                     *
//* OBJETIVO   : GENERA ARCHIVO DE CLIENTES DADO BAJA                  *
//*--------------------------------------------------------------------*
//ZMCNCP96 EXEC PGM=IKJEFT1A,COND=(4,LT)
//*
//ASIGNACI DD DSN=MXCP.ZM.FIX.ECBP.CBJCCNBV.CLIENTE.F&FECHA,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCNCP96),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMCNCP95                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : ORDENA ARCHIVO DE CLIENTES DADO BAJA POR CUENTA.      *
//*--------------------------------------------------------------------*
//ZMCNCP95 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECBP.CBJCCNBV.CLIENTE.F&FECHA,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECBP.CBJCCNBV.CTEBAJA.F&FECHA,
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
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMCNCP95),
//            DISP=SHR
//*@DGCM01-I
//*--------------------------------------------------------------------*
//* PASO       : ZMCNCP94.                                             *
//* PROGRAMA   : IOACND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA EJECUTAR PROCESO DE PDV          *
//*--------------------------------------------------------------------*
//ZMCNCP94 EXEC PGM=IOACND,PARM='ADD COND CBJCCNBV_OK &FEC',
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
//*             FIN DE PROCESO  ZMPCCNBV                               *
//*--------------------------------------------------------------------*
