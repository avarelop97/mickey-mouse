//ZMPMUV09 PROC
//**********************************************************************
//* SISTEMA  : ZM  MUV                                                 *
//*                                                                    *
//* PROCESO  : ZMPMUV09                                                *
//*                                                                    *
//* OBJETIVO : CRUZA CONTRA PERSONAS PARA DEJAR GDG CON SALDOS         *
//*            SUMARIZADOS PARA EL SAT                                 *
//*            APLICATIVO: FONDOS MUV                                  *
//*-*-*-*-*-*-*-*                                                      *
//**********************************************************************
//*********************************************************************
//* PASO     : ZMWFM012
//* OBJETIVO : SORT  POR CONTRATO PARA CRUCE CON EL CATALOGO DEL
//*            APLICATIVO
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMWFM012 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.VECTOR.MUV09.MERCAP,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMPWCM08.HISTINV.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=201,DSORG=PS,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPWMU21),
//            DISP=SHR
//*
//**********************************************************************
//* PASO       : ZMWFM011
//* PROGRAMA   : SA3SAT10                                              *
//* OBJETIVO   : CAMBIA LOS REGISTROS CON RFC EN BLANCO                *
//**********************************************************************
//ZMWFM011  EXEC PGM=ZM3SAT10,COND=(4,LT)
//INISAT1  DD DSN=MXCP.ZM.FIX.SP.CATALOGO.MUV,
//            DISP=SHR
//SALIDA1  DD DSN=MXCP.ZM.FIX.ZMPWCM08.MUV.NOK2,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=469,BLKSIZE=0,DSORG=PS,BUFNO=30)
//SALIDA2  DD DSN=MXCP.ZM.FIX.ZMPWCM08.MUV.OK2,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=469,BLKSIZE=0,DSORG=PS,BUFNO=30)
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*                                                                     00110000
//*********************************************************************
//* PASO     : ZMWFM010
//* OBJETIVO : SORT POR NO. DE CONTRATO AL CATALOGO DEL APLICATIVO
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMWFM010 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.ZMPWCM08.MUV.OK2,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMPWCM08.CATALOGO.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=469,BLKSIZE=0,DSORG=PS)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPWMU22),
//            DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMWFM009
//* OBJETIVO : CRUZA LA INFORMACION DEL SAT CONTRA EL CATALOGO
//*            PARA OBTENER DATOS ADMINISTRATIVOS
//*            ASIGNA TIPO DE PRODUCTO,DIVISA EMPRESA Y SECTOR
//* PROGRAMA : SA4MU021
//*********************************************************************
//ZMWFM009  EXEC PGM=ZM3MU001,COND=(4,LT)
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPWCM08.HISTINV.SORT,
//             DISP=SHR
//MISCLIEN  DD DSN=MXCP.ZM.FIX.ZMPWCM08.CATALOGO.SORT,
//             DISP=SHR
//REPORTE2  DD DSN=MXCP.ZM.FIX.ZMPWCM08.CLIENTE.ADMIN,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=626,BLKSIZE=0,DSORG=PS)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//*
//*********************************************************************
//* PASO    : ZMWFM008
//* OBJETIVO: SORT POR ANIO,BANCO,PRODUCTO, DIVISA, CONTRATO , SECUENCIA
//* PROGRAMA: ICEMAN
//*********************************************************************
//ZMWFM008 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.ZMPWCM08.CLIENTE.ADMIN,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMPWCM08.CLIENTE.ADMIN.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=626,BLKSIZE=0,DSORG=PS)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPWMU24),
//            DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMWFM007
//* OBJETIVO : GENERAR REPORTE DE LOS CONTRATOS QUE NO TIENE
//*            INFORMADOS LOS CAMPOS REQUERIDOS PARA ENVIO AL SAT.
//* PROGRAMA : SA3MU021
//*********************************************************************
//ZMWFM007  EXEC PGM=ZM3MU021,COND=(4,LT)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPWCM08.CLIENTE.ADMIN.SORT,
//             DISP=SHR
//REPSAT01  DD DSN=MXCP.ZM.FIX.ZMPWCM08.CONTRATO.REP,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=262,BLKSIZE=0,DSORG=PS)
//REPSAT02  DD DSN=MXCP.ZM.FIX.ZMPWCM08.CUENTAS.OK,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=626,BLKSIZE=0,DSORG=PS)
//*
//*********************************************************************
//* PASO    : ZMWFM006
//* OBJETIVO: SORT POR CONTRATO, SECUENCIA Y PRODUCTO
//* PROGRAMA: ICEMAN
//*********************************************************************
//ZMWFM006 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.ZMPWCM08.CUENTAS.OK,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMPWCM08.CUENTAS.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=626,BLKSIZE=0,DSORG=PS)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPWMU26),
//            DISP=SHR
//*
//*********************************************************************
//* PASO    : ZMWFM005
//* OBJETIVO: SORT POR CONTRATO, SECUENCIA Y PRODUCTO
//* PROGRAMA: ICEMAN
//*********************************************************************
//ZMWFM005 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.SAT.MUV.SALPROM,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMPWCM08.CONSOLID.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=227,BLKSIZE=0,DSORG=PS)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPWMU27),
//            DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMWFM004
//* OBJETIVO : OBTIENE EL SALDOME Y LA TASA
//* PROGRAMA : SA3MU023
//*********************************************************************
//ZMWFM004  EXEC PGM=ZM3MU023,COND=(4,LT)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPWCM08.CUENTAS.SORT,
//             DISP=SHR
//MISCONSO  DD DSN=MXCP.ZM.FIX.ZMPWCM08.CONSOLID.SORT,
//             DISP=SHR
//REPSAT01  DD DSN=MXCP.ZM.FIX.ZMPWCM08.CTASCONS.REP,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=780,BLKSIZE=0,DSORG=PS)
//*
//*********************************************************************
//* PASO    : ZMWFM003
//* OBJETIVO: SORT POR ANIO,BANCO,PRODUCTO, DIVISA, CONTRATO , SECUENCIA
//* PROGRAMA: ICEMAN
//*********************************************************************
//ZMWFM003 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.ZMPWCM08.CTASCONS.REP,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMPWCM08.CTASCONS.REP.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=780,BLKSIZE=0,DSORG=PS)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPWMU28),
//            DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMWFM002
//* OBJETIVO : GENERAR ARCHIVO FINAL PARA EL SAT, CON EL HEADER,
//*            DETALLE Y SUMARIO POR ANIO,PRODUCTO Y DIVISA.
//* PROGRAMA : SA4BP025
//*********************************************************************
//ZMWFM002  EXEC PGM=IKJEFT01,COND=(4,LT)
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPWCM08.CTASCONS.REP.SORT,
//             DISP=SHR
//REPSAT01  DD DSN=MXCP.ZM.FIX.ZMPMUV09.MUV09.MERCAP,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=604,BLKSIZE=0,DSORG=PS)
//REPSAT02  DD DSN=MXCP.ZM.FIX.DOMICI.MUV.MERCAP,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=604,BLKSIZE=0,DSORG=PS)
//REPSAT04  DD DSN=MXCP.ZM.FIX.ZMPMUV09.MUV09.CIFRA,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=35,BLKSIZE=0,DSORG=PS)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//SYSTSIN   DD DSN=ZIVA.ZME.CONTROL(ZMWFM002),DISP=SHR
//*
