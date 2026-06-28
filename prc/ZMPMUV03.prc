//ZMPMUV03 PROC
//**********************************************************************
//* SISTEMA  : ZM  MUV                                                 *
//*                                                                    *
//* PROCESO  : ZMPMUV00                                                *
//*                                                                    *
//* OBJETIVO : CRUZA CONTRA PERSONAS PARA DEJAR GDG CON SALDOS         *
//*            SUMARIZADOS PARA EL SAT                                 *
//*            APLICATIVO: FONDOS MUV                                  *
//*                                                                    *
//**********************************************************************
//*********************************************************************
//* PASO     : ZMWMU014
//* OBJETIVO : SE FORMATEA EL ARCHIVO MERCAP01 PARA EXCLUIR LOS TIPOS
//*            DE DATO DEL 25 AL 29 (DIVIDENDOS) DEBIDO A QUE SOLO SE
//*            DEBEN INFORMAR LOS QUE VIENEN DEL ARCHIVO DE INTERESES
//*            (MERCAP)
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMWMU014  EXEC PGM=ICEMAN                                             00196300
//SORTIN    DD DSN=MXCP.ZM.FIX.VECTOR.MUV09.MERCAP01,                   00196500
//             DISP=SHR                                                 00196600
//SORTOUT   DD DSN=MXCP.ZM.FIX.VECTOR.MUV09.MERCSORT,                   00196700
//             DISP=(NEW,CATLG,DELETE),                                 00196800
//             UNIT=3390,                                               00196900
//             SPACE=(CYL,(500,250),RLSE),                              00197010
//             DCB=(LRECL=201,RECFM=FB,BLKSIZE=0,DSORG=PS)              00197100
//SYSOUT    DD SYSOUT=*                                                 00198400
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZMPWMU20),                          00198300
//             DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMWMU013
//* OBJETIVO : UNION DE ARCHIVOS
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMWMU013  EXEC PGM=ICEMAN,COND=(4,LT)                                 00196300
//SORTIN    DD DSN=MXCP.ZM.FIX.VECTOR.MUV09.MERCAP,                     00196500
//             DISP=SHR                                                 00196600
//          DD DSN=MXCP.ZM.FIX.VECTOR.MUV09.MERCSORT,                   00196500
//             DISP=SHR                                                 00196600
//SORTOUT   DD DSN=MXCP.ZM.FIX.VECTOR.MUV09.TODO,                       00196700
//             DISP=(NEW,CATLG,DELETE),                                 00196800
//             UNIT=3390,                                               00196900
//             SPACE=(CYL,(500,250),RLSE),                              00197010
//             DCB=(LRECL=201,RECFM=FB,BLKSIZE=0,DSORG=PS)              00197100
//SYSOUT    DD SYSOUT=*                                                 00198400
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZMPWMU50),                          00198300
//             DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMWMU012
//* OBJETIVO : SORT  POR CONTRATO PARA CRUCE CON EL CATALOGO DEL
//*            APLICATIVO
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMWMU012  EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT    DD SYSOUT=*
//SORTIN    DD DSN=MXCP.ZM.FIX.VECTOR.MUV09.TODO,
//             DISP=SHR
//SORTOUT   DD DSN=MXCP.ZM.FIX.ZMPMUV05.HISTINV.SORT,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=201,DSORG=PS,BLKSIZE=0)
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZMPWMU21),
//             DISP=SHR
//*
//**********************************************************************
//* PASO       : ZMWMU011
//* PROGRAMA   : SA3SAT10                                              *
//* OBJETIVO   : CAMBIA LOS REGISTROS CON RFC EN BLANCO                *
//**********************************************************************
//ZMWMU011  EXEC PGM=ZM3SAT10,COND=(4,LT)
//INISAT1   DD DSN=MXCP.ZM.FIX.SP.CATALOGO.MUV,
//             DISP=SHR
//SALIDA1   DD DSN=MXCP.ZM.FIX.ZMPMUV05.MUV.NOK,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=469,BLKSIZE=0,DSORG=PS,BUFNO=30)
//SALIDA2   DD DSN=MXCP.ZM.FIX.ZMPMUV05.MUV.OK,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=469,BLKSIZE=0,DSORG=PS,BUFNO=30)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//*                                                                     00110000
//*********************************************************************
//* PASO     : ZMWMU010
//* OBJETIVO : SORT POR NO. DE CONTRATO AL CATALOGO DEL APLICATIVO
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMWMU010  EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT    DD SYSOUT=*
//SORTIN    DD DSN=MXCP.ZM.FIX.ZMPMUV05.MUV.OK,
//             DISP=SHR
//SORTOUT   DD DSN=MXCP.ZM.FIX.ZMPMUV05.CATALOGO.SORT,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=469,BLKSIZE=0,DSORG=PS)
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZMPWMU22),
//             DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMWMU009
//* OBJETIVO : CRUZA LA INFORMACION DEL SAT CONTRA EL CATALOGO
//*            PARA OBTENER DATOS ADMINISTRATIVOS
//*            ASIGNA TIPO DE PRODUCTO,DIVISA EMPRESA Y SECTOR
//* PROGRAMA : SA4MU021
//*********************************************************************
//ZMWMU009  EXEC PGM=ZM3MU001,COND=(4,LT)
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPMUV05.HISTINV.SORT,
//             DISP=SHR
//MISCLIEN  DD DSN=MXCP.ZM.FIX.ZMPMUV05.CATALOGO.SORT,
//             DISP=SHR
//REPORTE2  DD DSN=MXCP.ZM.FIX.ZMPMUV05.CLIENTE.ADMIN,
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
//* PASO    : ZMWMU008
//* OBJETIVO: SORT POR ANIO,BANCO,PRODUCTO, DIVISA, CONTRATO , SECUENCIA
//* PROGRAMA: ICEMAN
//*********************************************************************
//ZMWMU008  EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT    DD SYSOUT=*
//SORTIN    DD DSN=MXCP.ZM.FIX.ZMPMUV05.CLIENTE.ADMIN,
//             DISP=SHR
//SORTOUT   DD DSN=MXCP.ZM.FIX.ZMPMUV05.CLIENTE.ADMIN.SORT,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=626,BLKSIZE=0,DSORG=PS)
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZMPWMU24),
//             DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMWMU007
//* OBJETIVO : GENERAR REPORTE DE LOS CONTRATOS QUE NO TIENE
//*            INFORMADOS LOS CAMPOS REQUERIDOS PARA ENVIO AL SAT.
//* PROGRAMA : SA3MU021
//*********************************************************************
//ZMWMU007  EXEC PGM=ZM3MU021,COND=(4,LT)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPMUV05.CLIENTE.ADMIN.SORT,
//             DISP=SHR
//REPSAT01  DD DSN=MXCP.ZM.FIX.ZMPMUV05.CONTRATO.REP,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=262,BLKSIZE=0,DSORG=PS)
//REPSAT02  DD DSN=MXCP.ZM.FIX.ZMPMUV05.CUENTAS.OK,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=626,BLKSIZE=0,DSORG=PS)
//*
//*********************************************************************
//* PASO    : ZMWMU006
//* OBJETIVO: SORT POR CONTRATO, SECUENCIA Y PRODUCTO
//* PROGRAMA: ICEMAN
//*********************************************************************
//ZMWMU006  EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT    DD SYSOUT=*
//SORTIN    DD DSN=MXCP.ZM.FIX.ZMPMUV05.CUENTAS.OK,
//             DISP=SHR
//SORTOUT   DD DSN=MXCP.ZM.FIX.ZMPMUV05.CUENTAS.SORT,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=626,BLKSIZE=0,DSORG=PS)
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZMPWMU26),
//             DISP=SHR
//*
//*********************************************************************
//* PASO    : ZMWMU005
//* OBJETIVO: SORT POR CONTRATO, SECUENCIA Y PRODUCTO
//* PROGRAMA: ICEMAN
//*********************************************************************
//ZMWMU005  EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT    DD SYSOUT=*
//SORTIN    DD DSN=MXCP.ZM.FIX.SAT.MUV.SALPROM,
//             DISP=SHR
//SORTOUT   DD DSN=MXCP.ZM.FIX.ZMPMUV05.CONSOLID.SORT,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=227,BLKSIZE=0,DSORG=PS)
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZMPWMU27),
//             DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMWMU004
//* OBJETIVO : OBTIENE EL SALDOME Y LA TASA
//* PROGRAMA : SA3MU023
//*********************************************************************
//ZMWMU004  EXEC PGM=ZM3MU023,COND=(4,LT)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPMUV05.CUENTAS.SORT,
//             DISP=SHR
//MISCONSO  DD DSN=MXCP.ZM.FIX.ZMPMUV05.CONSOLID.SORT,
//             DISP=SHR
//REPSAT01  DD DSN=MXCP.ZM.FIX.ZMPMUV05.CTASCONS.REP,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=780,BLKSIZE=0,DSORG=PS)
//*
//*********************************************************************
//* PASO    : ZMWMU003
//* OBJETIVO: SORT POR ANIO,BANCO,PRODUCTO, DIVISA, CONTRATO , SECUENCIA
//* PROGRAMA: ICEMAN
//*********************************************************************
//ZMWMU003  EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT    DD SYSOUT=*
//SORTIN    DD DSN=MXCP.ZM.FIX.ZMPMUV05.CTASCONS.REP,
//             DISP=SHR
//SORTOUT   DD DSN=MXCP.ZM.FIX.ZMPMUV05.CTASCONS.REP.SORT,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=780,BLKSIZE=0,DSORG=PS)
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZMPWMU28),
//             DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMWMU002
//* OBJETIVO : GENERAR ARCHIVO FINAL PARA EL SAT, CON EL HEADER,
//*            DETALLE Y SUMARIO POR ANIO,PRODUCTO Y DIVISA.
//* PROGRAMA : SA4MU03N
//*********************************************************************
//ZMWMU002  EXEC PGM=IKJEFT01,COND=(4,LT)
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPMUV05.CTASCONS.REP.SORT,
//             DISP=SHR
//REPSAT01  DD DSN=MXCP.ZM.FIX.ZMPMUV03.MUV09.MERCAP,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=604,BLKSIZE=0,DSORG=PS)
//REPSAT02  DD DSN=MXCP.ZM.FIX.ZMPMUV03.MUV09.DOMICI,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=604,BLKSIZE=0,DSORG=PS)
//REPSAT04  DD DSN=MXCP.ZM.FIX.ZMPMUV03.MUV09.ENAJE,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=604,BLKSIZE=0,DSORG=PS)
//REPSAT05  DD DSN=MXCP.ZM.FIX.ZMPMUV03.MUV09.CIFRA,
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
//SYSTSIN   DD DSN=ZIVA.ZME.CONTROL(ZMWMU002),DISP=SHR
//*
