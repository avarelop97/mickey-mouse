//ZMPCAS02 PROC
//**********************************************************************
//* SISTEMA  : MUV                                                     *
//*                                                                    *
//* PROCESO  : ZMPCAS02                                                *
//*                                                                    *
//* OBJETIVO : CRUZA CONTRA PERSONAS PARA DEJAR GDG CON SALDOS         *
//*            SUMARIZADOS PARA EL SAT                                 *
//*            APLICATIVO: FONDOS CASA DE BOLSA                        *
//* REALIZO  :                                                         *
//* FECHA    :                                                         *
//*-*-*-*-*-*-*-*                                                      *
//**********************************************************************
//*********************************************************************
//* PASO     : ZMWFC012
//* OBJETIVO : SORT  POR CONTRATO PARA CRUCE CON EL CATALOGO DEL
//*            APLICATIVO
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMWCB011  EXEC PGM=ICEMAN
//SYSOUT    DD SYSOUT=*
//SORTIN    DD DSN=MXCP.ZM.FIX.ZMPCAS01.FDOINV.A&ANIO,
//             DISP=SHR
//SORTOUT   DD DSN=MXCP.ZM.FIX.ZMPCAS02.HISTINV.SORT,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=201,DSORG=PS,BLKSIZE=0)
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZMWCB011),
//             DISP=SHR
//*
//**********************************************************************
//* PASO       : ZMWFC011
//* PROGRAMA   : ZM3SAT10                                              *
//* OBJETIVO   : CAMBIA LOS REGISTROS CON RFC EN BLANCO                *
//**********************************************************************
//ZMWCB010  EXEC PGM=ZM3SAT11,COND=(4,LT)
//INISAT1   DD DSN=MXCP.ZM.FIX.SP.CATALOGO.CASA,
//             DISP=SHR
//SALIDA1   DD DSN=MXCP.ZM.FIX.ZMPCAS02.CASA.NOK3,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=469,BLKSIZE=0,DSORG=PS,BUFNO=30)
//SALIDA2   DD DSN=MXCP.ZM.FIX.ZMPCAS02.CASA.OK3,
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
//* PASO     : ZMWFC010
//* OBJETIVO : SORT POR NO. DE CONTRATO AL CATALOGO DEL APLICATIVO
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMWCB009  EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT    DD SYSOUT=*
//SORTIN    DD DSN=MXCP.ZM.FIX.ZMPCAS02.CASA.OK3,
//             DISP=SHR
//SORTOUT   DD DSN=MXCP.ZM.FIX.ZMPCAS02.CATALOGO.SORT,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=469,BLKSIZE=0,DSORG=PS)
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZMWCB012),
//             DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMWFC009
//* OBJETIVO : CRUZA LA INFORMACION DEL SAT CONTRA EL CATALOGO
//*            PARA OBTENER DATOS ADMINISTRATIVOS
//*            ASIGNA TIPO DE PRODUCTO,DIVISA EMPRESA Y SECTOR
//* PROGRAMA : SA4MU021
//*********************************************************************
//ZMWCB008  EXEC PGM=ZM3CB001,COND=(4,LT)
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPCAS02.HISTINV.SORT,
//             DISP=SHR
//MISCLIEN  DD DSN=MXCP.ZM.FIX.ZMPCAS02.CATALOGO.SORT,
//             DISP=SHR
//REPORTE2  DD DSN=MXCP.ZM.FIX.ZMPCAS02.CLIENTE.ADMIN,
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
//* PASO    : ZMWFC008
//* OBJETIVO: SORT POR ANIO,BANCO,PRODUCTO, DIVISA, CONTRATO , SECUENCIA
//* PROGRAMA: ICEMAN
//*********************************************************************
//ZMWCB007  EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT    DD SYSOUT=*
//SORTIN    DD DSN=MXCP.ZM.FIX.ZMPCAS02.CLIENTE.ADMIN,
//             DISP=SHR
//SORTOUT   DD DSN=MXCP.ZM.FIX.ZMPCAS02.CLIENTE.ADMIN.SORT,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=626,BLKSIZE=0,DSORG=PS)
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZMWCB015),
//             DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMWFC007
//* OBJETIVO : GENERAR REPORTE DE LOS CONTRATOS QUE NO TIENE
//*            INFORMADOS LOS CAMPOS REQUERIDOS PARA ENVIO AL SAT.
//* PROGRAMA : ZM3MU021
//*********************************************************************
//ZMWCB006  EXEC PGM=ZM3CB021,COND=(4,LT)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPCAS02.CLIENTE.ADMIN.SORT,
//             DISP=SHR
//REPSAT01  DD DSN=MXCP.ZM.FIX.ZMPCAS02.CONTRATO.REP,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=262,BLKSIZE=0,DSORG=PS)
//REPSAT02  DD DSN=MXCP.ZM.FIX.ZMPCAS02.CUENTAS.OK,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=626,BLKSIZE=0,DSORG=PS)
//*
//*********************************************************************
//* PASO    : ZMWFC006
//* OBJETIVO: SORT POR CONTRATO, SECUENCIA Y PRODUCTO
//* PROGRAMA: ICEMAN
//*********************************************************************
//ZMWCB005  EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT    DD SYSOUT=*
//SORTIN    DD DSN=MXCP.ZM.FIX.ZMPCAS02.CUENTAS.OK,
//             DISP=SHR
//SORTOUT   DD DSN=MXCP.ZM.FIX.ZMPCAS02.CUENTAS.SORT,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=626,BLKSIZE=0,DSORG=PS)
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZMWCB016),
//             DISP=SHR
//*
//*********************************************************************
//* PASO    : ZMWFC005
//* OBJETIVO: SORT POR CONTRATO, SECUENCIA Y PRODUCTO
//* PROGRAMA: ICEMAN
//*********************************************************************
//ZMWCB004  EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT    DD SYSOUT=*
//SORTIN    DD DSN=MXCP.ZM.FIX.SAT.CASA.SALPROM,
//             DISP=SHR
//SORTOUT   DD DSN=MXCP.ZM.FIX.ZMPCAS02.CONSOLID.SORT,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=227,BLKSIZE=0,DSORG=PS)
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZMWCB017),
//             DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMWFC004
//* OBJETIVO : OBTIENE EL SALDOME Y LA TASA
//* PROGRAMA : ZM3MF022
//*********************************************************************
//ZMWCB003  EXEC PGM=ZM3CB022,COND=(4,LT)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPCAS02.CUENTAS.SORT,
//             DISP=SHR
//MISCONSO  DD DSN=MXCP.ZM.FIX.ZMPCAS02.CONSOLID.SORT,
//             DISP=SHR
//REPSAT01  DD DSN=MXCP.ZM.FIX.ZMPCAS02.CTASCONS.REP,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=762,BLKSIZE=0,DSORG=PS)
//*
//*********************************************************************
//* PASO    : ZMWFC003
//* OBJETIVO: SORT POR ANIO,BANCO,PRODUCTO, DIVISA, CONTRATO , SECUENCIA
//* PROGRAMA: ICEMAN
//*********************************************************************
//ZMWCB002  EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT    DD SYSOUT=*
//SORTIN    DD DSN=MXCP.ZM.FIX.ZMPCAS02.CTASCONS.REP,
//             DISP=SHR
//SORTOUT   DD DSN=MXCP.ZM.FIX.ZMPCAS02.CTASCONS.REP.SORT,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=762,BLKSIZE=0,DSORG=PS)
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZMWCB018),
//             DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMWFB002
//* OBJETIVO : GENERAR ARCHIVO FINAL PARA EL SAT, CON EL HEADER,
//*            DETALLE Y SUMARIO POR ANIO,PRODUCTO Y DIVISA.
//* PROGRAMA : SA4BF024
//*********************************************************************
//ZMWCB001  EXEC PGM=IKJEFT01,COND=(4,LT)
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPCAS02.CTASCONS.REP.SORT,
//             DISP=SHR
//REPSAT01  DD DSN=MXCP.ZM.FIX.ZMPCAS02.CBS09.FDOINV,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=604,BLKSIZE=0,DSORG=PS)
//REPSAT02  DD DSN=MXCP.ZM.FIX.DOMICI.CBS09.FDOINV,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=604,BLKSIZE=0,DSORG=PS)
//REPSAT04  DD DSN=MXCP.ZM.FIX.ZMPCAS02.CBS09.CIFRA,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=36,BLKSIZE=0,DSORG=PS)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//SYSTSIN   DD DSN=ZIVA.ZME.CONTROL(ZMWFB001),DISP=SHR
//*
