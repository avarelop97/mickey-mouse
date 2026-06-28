//ZMPMUV02 PROC
//**********************************************************************
//* SISTEMA  : ZM                                                      *
//*                                                                    *
//* PROCESO  : ZMPMUV02                                                *
//*                                                                    *
//* OBJETIVO : CRUZA CONTRA PERSONAS PARA DEJAR GDG CON SALDOS         *
//*            SUMARIZADOS PARA EL SAT                                 *
//*            APLICATIVO: FONDOS MUV                                  *
//* REALIZO  :                                                         *
//* FECHA    :                                                         *
//*-*-*-*-*-*-*-*                                                      *
//**********************************************************************
//*********************************************************************
//* PASO     : ZMWFM012
//* OBJETIVO : SORT  POR CONTRATO PARA CRUCE CON EL CATALOGO DEL
//*            APLICATIVO
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMPWMU12  EXEC PGM=ICEMAN
//SYSOUT    DD SYSOUT=*
//SORTIN    DD DSN=MXCP.ZM.FIX.ZMPMUV01.MUV.A&ANIO,
//             DISP=SHR
//SORTOUT   DD DSN=MXCP.ZM.FIX.ZMPMUV02.HISTINV.SORT,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=201,DSORG=PS,BLKSIZE=0)
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZMPWMU21),
//             DISP=SHR
//*
//**********************************************************************
//* PASO     : ZMWFM011
//* PROGRAMA   : ZM3SAT10                                              *
//* OBJETIVO   : CAMBIA LOS REGISTROS CON RFC EN BLANCO                *
//**********************************************************************
//ZMPWMU11  EXEC PGM=ZM3SAT10,COND=(4,LT)
//INISAT1   DD DSN=MXCP.ZM.FIX.SP.CATALOGO.MUV,
//             DISP=SHR
//SALIDA1   DD DSN=MXCP.ZM.FIX.ZMPMUV02.MUV.NOK3,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=469,BLKSIZE=0,DSORG=PS,BUFNO=30)
//SALIDA2   DD DSN=MXCP.ZM.FIX.ZMPMUV02.MUV.OK3,
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
//* PASO     : ZMWFM010
//* OBJETIVO : SORT POR NO. DE CONTRATO AL CATALOGO DEL APLICATIVO
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMPWMU10  EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT    DD SYSOUT=*
//SORTIN    DD DSN=MXCP.ZM.FIX.ZMPMUV02.MUV.OK3,
//             DISP=SHR
//SORTOUT   DD DSN=MXCP.ZM.FIX.ZMPMUV02.CATALOGO.SORT,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=469,BLKSIZE=0,DSORG=PS)
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZMPWMU22),
//             DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMWFM009
//* OBJETIVO : CRUZA LA INFORMACION DEL SAT CONTRA EL CATALOGO
//*            PARA OBTENER DATOS ADMINISTRATIVOS
//*            ASIGNA TIPO DE PRODUCTO,DIVISA EMPRESA Y SECTOR
//* PROGRAMA : SA4MU021
//*********************************************************************
//ZMPWMU09  EXEC PGM=ZM3MU001,COND=(4,LT)
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPMUV02.HISTINV.SORT,
//             DISP=SHR
//MISCLIEN  DD DSN=MXCP.ZM.FIX.ZMPMUV02.CATALOGO.SORT,
//             DISP=SHR
//REPORTE2  DD DSN=MXCP.ZM.FIX.ZMPMUV02.CLIENTE.ADMIN,
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
//ZMPWMU08  EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT    DD SYSOUT=*
//SORTIN    DD DSN=MXCP.ZM.FIX.ZMPMUV02.CLIENTE.ADMIN,
//             DISP=SHR
//SORTOUT   DD DSN=MXCP.ZM.FIX.ZMPMUV02.CLIENTE.ADMIN.SORT,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=626,BLKSIZE=0,DSORG=PS)
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZMPWMU24),
//             DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMWFM007
//* OBJETIVO : GENERAR REPORTE DE LOS CONTRATOS QUE NO TIENE
//*            INFORMADOS LOS CAMPOS REQUERIDOS PARA ENVIO AL SAT.
//* PROGRAMA : ZM3MU021
//*********************************************************************
//ZMPWMU07  EXEC PGM=ZM3MU021,COND=(4,LT)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPMUV02.CLIENTE.ADMIN.SORT,
//             DISP=SHR
//REPSAT01  DD DSN=MXCP.ZM.FIX.ZMPMUV02.CONTRATO.REP,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=262,BLKSIZE=0,DSORG=PS)
//REPSAT02  DD DSN=MXCP.ZM.FIX.ZMPMUV02.CUENTAS.OK,
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
//ZMPWMU06  EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT    DD SYSOUT=*
//SORTIN    DD DSN=MXCP.ZM.FIX.ZMPMUV02.CUENTAS.OK,
//             DISP=SHR
//SORTOUT   DD DSN=MXCP.ZM.FIX.ZMPMUV02.CUENTAS.SORT,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=626,BLKSIZE=0,DSORG=PS)
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZMPWMU26),
//            DISP=SHR
//*
//*********************************************************************
//* PASO    : ZMWFM005
//* OBJETIVO: SORT POR CONTRATO, SECUENCIA Y PRODUCTO
//* PROGRAMA: ICEMAN
//*********************************************************************
//ZMPWMU05  EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT    DD SYSOUT=*
//SORTIN    DD DSN=MXCP.ZM.FIX.SAT.MUV.SALPROM,
//             DISP=SHR
//SORTOUT   DD DSN=MXCP.ZM.FIX.ZMPMUV02.CONSOLID.SORT,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=227,BLKSIZE=0,DSORG=PS)
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZMPWMU27),
//             DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMWFM004
//* OBJETIVO : OBTIENE EL SALDOME Y LA TASA
//* PROGRAMA : ZM3MF022
//*********************************************************************
//ZMPWMU04  EXEC PGM=ZM3MF022,COND=(4,LT)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPMUV02.CUENTAS.SORT,
//             DISP=SHR
//MISCONSO  DD DSN=MXCP.ZM.FIX.ZMPMUV02.CONSOLID.SORT,
//             DISP=SHR
//REPSAT01  DD DSN=MXCP.ZM.FIX.ZMPMUV02.CTASCONS.REP,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=762,BLKSIZE=0,DSORG=PS)
//*
//*********************************************************************
//* PASO    : ZMWFM003
//* OBJETIVO: SORT POR ANIO,BANCO,PRODUCTO, DIVISA, CONTRATO , SECUENCIA
//* PROGRAMA: ICEMAN
//*********************************************************************
//ZMPWMU03  EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN    DD DSN=MXCP.ZM.FIX.ZMPMUV02.CTASCONS.REP,
//            DISP=SHR
//SORTOUT   DD DSN=MXCP.ZM.FIX.ZMPMUV02.CTASCONS.REP.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=762,BLKSIZE=0,DSORG=PS)
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZMPWMU28),
//            DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMWFB002
//* OBJETIVO : GENERAR ARCHIVO FINAL PARA EL SAT, CON EL HEADER,
//*            DETALLE Y SUMARIO POR ANIO,PRODUCTO Y DIVISA.
//* PROGRAMA : SA4BF024
//*********************************************************************
//ZMPWMU02  EXEC PGM=IKJEFT01,COND=(4,LT)
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPMUV02.CTASCONS.REP.SORT,
//             DISP=SHR
//REPSAT01  DD DSN=MXCP.ZM.FIX.ZMPMUV02.MUV09.FDOINV,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=604,BLKSIZE=0,DSORG=PS)
//REPSAT02  DD DSN=MXCP.ZM.FIX.DOMICI.MUV09.FDOINV,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=604,BLKSIZE=0,DSORG=PS)
//REPSAT04  DD DSN=MXCP.ZM.FIX.ZMPMUV02.MUV09.CIFRA,
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
//SYSTSIN   DD DSN=ZIVA.ZME.CONTROL(ZMWFB002),DISP=SHR
//*
