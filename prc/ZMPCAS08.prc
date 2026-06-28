//ZMPCAS08 PROC
//**********************************************************************
//**********************************************************************
//*      L O G    D E   M O D I F I C A C I O N E S                    *
//**********************************************************************
//* FECHA       PASO          DESCRIPCION                     USUARIO  *
//*--------------------------------------------------------------------*
//**********************************************************************
//* SISTEMA  : MUV                                                     *
//*                                                                    *
//* PROCESO  : ZMPCAS08                                                *
//*                                                                    *
//* OBJETIVO : CRUZA CONTRA PERSONAS PARA DEJAR GDG CON SALDOS         *
//*            SUMARIZADOS PARA EL SAT                                 *
//*            APLICATIVO: MERCADO DE CAPITALES CASA DE BOLSA          *
//* REALIZO  :                                                         *
//* FECHA    :                                                         *
//*-*-*-*-*-*-*-*                                                      *
//**********************************************************************
//**********************************************************************
//*********************************************************************
//* PASO     : ZMWCB012
//* OBJETIVO : SORT  POR CONTRATO PARA CRUCE CON EL CATALOGO DEL
//*            APLICATIVO
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMWCB012  EXEC PGM=ICEMAN
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.ZMPCAS07.MERCAP.A&ANIO,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMPCAS08.HISTINV.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=201,DSORG=PS,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMWCB011),
//            DISP=SHR
//*
//**********************************************************************
//* PASO       : ZMWCB011
//* PROGRAMA   : ZM3SAT10                                              *
//* OBJETIVO   : CAMBIA LOS REGISTROS CON RFC EN BLANCO                *
//**********************************************************************
//ZMWCB011  EXEC PGM=ZM3SAT11,COND=(4,LT)
//INISAT1  DD DSN=MXCP.ZM.FIX.SP.CATALOGO.CASA,
//            DISP=SHR
//SALIDA1  DD DSN=MXCP.ZM.FIX.ZMPCAS08.CASA.NOK1,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=469,BLKSIZE=0,DSORG=PS,BUFNO=30)
//SALIDA2  DD DSN=MXCP.ZM.FIX.ZMPCAS08.CASA.OK1,
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
//* PASO     : ZMWCB010
//* OBJETIVO : SORT POR NO. DE CONTRATO AL CATALOGO DEL APLICATIVO
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMWCB010  EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.ZMPCAS08.CASA.OK1,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMPCAS08.CATALOGO.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=469,BLKSIZE=0,DSORG=PS)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMWCB012),
//            DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMWCB009
//* OBJETIVO : CRUZA LA INFORMACION DEL SAT CONTRA EL CATALOGO
//*            PARA OBTENER DATOS ADMINISTRATIVOS
//*            ASIGNA TIPO DE PRODUCTO,DIVISA EMPRESA Y SECTOR
//* PROGRAMA : SA4MU021
//*********************************************************************
//ZMWCB009  EXEC PGM=ZM3CB001,COND=(4,LT)
//MISPRODU DD DSN=MXCP.ZM.FIX.ZMPCAS08.HISTINV.SORT,
//             DISP=SHR
//MISCLIEN DD DSN=MXCP.ZM.FIX.ZMPCAS08.CATALOGO.SORT,
//             DISP=SHR
//REPORTE2 DD DSN=MXCP.ZM.FIX.ZMPCAS08.CLIENTE.ADMIN,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=626,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//*********************************************************************
//* PASO    : ZMWCB008
//* OBJETIVO: SORT POR ANIO,BANCO,PRODUCTO, DIVISA, CONTRATO , SECUENCIA
//* PROGRAMA: ICEMAN
//*********************************************************************
//ZMWCB008  EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.ZMPCAS08.CLIENTE.ADMIN,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMPCAS08.CLIENTE.ADMIN.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=626,BLKSIZE=0,DSORG=PS)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMWCB015),
//            DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMWCB007
//* OBJETIVO : GENERAR REPORTE DE LOS CONTRATOS QUE NO TIENE
//*            INFORMADOS LOS CAMPOS REQUERIDOS PARA ENVIO AL SAT.
//* PROGRAMA : ZM3MU021
//*********************************************************************
//ZMWCB007  EXEC PGM=ZM3CB021,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//MISPRODU DD DSN=MXCP.ZM.FIX.ZMPCAS08.CLIENTE.ADMIN.SORT,
//             DISP=SHR
//REPSAT01 DD DSN=MXCP.ZM.FIX.ZMPCAS08.CONTRATO.REP,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=262,BLKSIZE=0,DSORG=PS)
//REPSAT02 DD DSN=MXCP.ZM.FIX.ZMPCAS08.CUENTAS.OK,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=626,BLKSIZE=0,DSORG=PS)
//*
//*********************************************************************
//* PASO    : ZMWCB006
//* OBJETIVO: SORT POR CONTRATO, SECUENCIA Y PRODUCTO
//* PROGRAMA: ICEMAN
//*********************************************************************
//ZMWCB006  EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.ZMPCAS08.CUENTAS.OK,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMPCAS08.CUENTAS.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=626,BLKSIZE=0,DSORG=PS)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMWCB016),
//            DISP=SHR
//*
//*********************************************************************
//* PASO    : ZMWCB005
//* OBJETIVO: SORT POR CONTRATO, SECUENCIA Y PRODUCTO
//* PROGRAMA: ICEMAN
//*********************************************************************
//ZMWCB005  EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.SAT.CASA.SALPROM,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMPCAS08.CONSOLID.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=227,BLKSIZE=0,DSORG=PS)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMWCB017),
//            DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMWCB004
//* OBJETIVO : OBTIENE EL SALDOME Y LA TASA
//* PROGRAMA : ZM3MU023
//*********************************************************************
//ZMWCB004  EXEC PGM=ZM3CB023,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//MISPRODU DD DSN=MXCP.ZM.FIX.ZMPCAS08.CUENTAS.SORT,
//             DISP=SHR
//MISCONSO DD DSN=MXCP.ZM.FIX.ZMPCAS08.CONSOLID.SORT,
//             DISP=SHR
//REPSAT01 DD DSN=MXCP.ZM.FIX.ZMPCAS08.CTASCONS.REP,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=780,BLKSIZE=0,DSORG=PS)
//*
//*********************************************************************
//* PASO    : ZMWCB003
//* OBJETIVO: SORT POR ANIO,BANCO,PRODUCTO, DIVISA, CONTRATO , SECUENCIA
//* PROGRAMA: ICEMAN
//*********************************************************************
//ZMWCB003  EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.ZMPCAS08.CTASCONS.REP,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMPCAS08.CTASCONS.REP.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=780,BLKSIZE=0,DSORG=PS)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMWCB018),
//            DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMWCB002
//* OBJETIVO : GENERAR ARCHIVO FINAL PARA EL SAT, CON EL HEADER,
//*            DETALLE Y SUMARIO POR ANIO,PRODUCTO Y DIVISA.
//* PROGRAMA : SA4BP025
//*********************************************************************
//ZMWCB002 EXEC PGM=IKJEFT01,COND=(4,LT)
//MISPRODU DD DSN=MXCP.ZM.FIX.ZMPCAS08.CTASCONS.REP.SORT,
//             DISP=SHR
//REPSAT01 DD DSN=MXCP.ZM.FIX.ZMPCAS08.CBS09.MERCAP,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=604,BLKSIZE=0,DSORG=PS)
//REPSAT02 DD DSN=MXCP.ZM.FIX.DOMICI.CBS09.MERCAP,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=604,BLKSIZE=0,DSORG=PS)
//REPSAT04  DD DSN=MXCP.ZM.FIX.ZMPCAS08.CBS09.CIFRA,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=36,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSIN   DD DSN=ZIVA.ZME.CONTROL(ZMWFM001),DISP=SHR
//*
