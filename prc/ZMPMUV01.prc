//ZMPMUV01 PROC
//**********************************************************************
//* SISTEMA  : SP  MIS PRODUCTOS                                       *
//*                                                                    *
//* PROCESO  : ZMPMUV01                                                *
//*                                                                    *
//* OBJETIVO : GENERA EL ACUMULADO DE MESES PARA EL SAT                *
//*            APLICATIVO: FONDOS DE INVERSION MUV                     *
//*            GENERA ARCHIVO DEL MES DE ENERO AL MES DE DICIEMBRE     *
//* REALIZO  : RICARDO ZAMBRANO (GESFOR)                               *
//* FECHA    : MARZO 2008                                              *
//**********************************************************************
//*********************************************************************
//* PASO     : ZMWFM024
//* OBJETIVO : SORT DEL INVENTARIO
//*            SELECCIONANDO UNICAMENTE LOS CAMPOS NECESARIOS
//*            ORDENANDO LA INFORMACION POR ANIO DE INFORMACION,BANCO,
//*            CONTRATO, SECUENCIA,PRODUCTO Y DIVISA.
//*                *********   ENERO  ************
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMPWMU24 EXEC PGM=ICEMAN,PARM='DYNALLOC=(3390,255)'
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.SAT.MUVFI.ENE,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMPMUV01.INVOK.SORT.ENE,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=242,DSORG=PS,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPWMU04),
//            DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMWFM023
//* OBJETIVO : CRUZA LA INFORMACION DEL SAT CONTRA LA DEL INVENTARIO
//*            PARA OBTENER LOS SALDOS CORRESPONDIENTES DE LA FECHA
//*            DE INFORMACION
//* PROGRAMA : ZM3MF012
//*********************************************************************
//ZMPWMU23  EXEC PGM=ZM3MF012,COND=(4,LT)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPMUV01.INVOK.SORT.ENE,
//             DISP=SHR
//MISSAT    DD DSN=MXCP.ZM.FIX.SAT.VECTOR.VACIO.MUV,
//             DISP=SHR
//MISNVO    DD DSN=MXCP.ZM.FIX.ZMPMUV01.INVOK.SAT.ENE,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=201,DSORG=PS,BLKSIZE=0)
//*
//*********************************************************************
//* PASO     : ZMWFM022
//* OBJETIVO : SORT DEL INVENTARIO
//*            SELECCIONANDO UNICAMENTE LOS CAMPOS NECESARIOS
//*            ORDENANDO LA INFORMACION POR ANIO DE INFORMACION,BANCO,
//*            CONTRATO, SECUENCIA,PRODUCTO Y DIVISA.
//*                *********   FEBRERO  ************
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMPWMU22 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.SAT.MUVFI.FEB,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMPMUV01.INVOK.SORT.FEB,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=242,DSORG=PS,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPWMU04),
//            DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMWFM021
//* OBJETIVO : CRUZA LA INFORMACION DEL SAT CONTRA LA DEL INVENTARIO
//*            PARA OBTENER LOS SALDOS CORRESPONDIENTES DE LA FECHA
//*            DE INFORMACION
//* PROGRAMA : ZM3MF012
//*********************************************************************
//ZMPWMU21  EXEC PGM=ZM3MF012,COND=(4,LT)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPMUV01.INVOK.SORT.FEB,
//             DISP=SHR
//MISSAT    DD DSN=MXCP.ZM.FIX.ZMPMUV01.INVOK.SAT.ENE,
//             DISP=SHR
//MISNVO    DD DSN=MXCP.ZM.FIX.ZMPMUV01.INVOK.SAT.FEB,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=201,DSORG=PS,BLKSIZE=0)
//*
//*********************************************************************
//* PASO     : ZMWFM020
//* OBJETIVO : SORT DEL INVENTARIO
//*            SELECCIONANDO UNICAMENTE LOS CAMPOS NECESARIOS
//*            ORDENANDO LA INFORMACION POR ANIO DE INFORMACION,BANCO,
//*            CONTRATO, SECUENCIA,PRODUCTO Y DIVISA.
//*                *********   MARZO    ************
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMPWMU20 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.SAT.MUVFI.MAR,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMPMUV01.INVOK.SORT.MAR,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=242,DSORG=PS,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPWMU04),
//            DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMWFM019
//* OBJETIVO : CRUZA LA INFORMACION DEL SAT CONTRA LA DEL INVENTARIO
//*            PARA OBTENER LOS SALDOS CORRESPONDIENTES DE LA FECHA
//*            DE INFORMACION
//* PROGRAMA : ZM3MF012
//*********************************************************************
//ZMPWMU19  EXEC PGM=ZM3MF012,COND=(4,LT)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPMUV01.INVOK.SORT.MAR,
//             DISP=SHR
//MISSAT    DD DSN=MXCP.ZM.FIX.ZMPMUV01.INVOK.SAT.FEB,
//             DISP=SHR
//MISNVO    DD DSN=MXCP.ZM.FIX.ZMPMUV01.INVOK.SAT.MAR,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(100,200),RLSE),
//             DCB=(RECFM=FB,LRECL=201,DSORG=PS,BLKSIZE=0)
//*
//*********************************************************************
//* PASO     : ZMWFM018
//* OBJETIVO : SORT DEL INVENTARIO
//*            SELECCIONANDO UNICAMENTE LOS CAMPOS NECESARIOS
//*            ORDENANDO LA INFORMACION POR ANIO DE INFORMACION,BANCO,
//*            CONTRATO, SECUENCIA,PRODUCTO Y DIVISA.
//*                *********   ABRIL    ************
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMPWMU18 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.SAT.MUVFI.ABR,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMPMUV01.INVOK.SORT.ABR,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=242,DSORG=PS,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPWMU04),
//            DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMWFM017
//* OBJETIVO : CRUZA LA INFORMACION DEL SAT CONTRA LA DEL INVENTARIO
//*            PARA OBTENER LOS SALDOS CORRESPONDIENTES DE LA FECHA
//*            DE INFORMACION
//* PROGRAMA : ZM3MF012
//*********************************************************************
//ZMPWMU17  EXEC PGM=ZM3MF012,COND=(4,LT)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPMUV01.INVOK.SORT.ABR,
//             DISP=SHR
//MISSAT    DD DSN=MXCP.ZM.FIX.ZMPMUV01.INVOK.SAT.MAR,
//             DISP=SHR
//MISNVO    DD DSN=MXCP.ZM.FIX.ZMPMUV01.INVOK.SAT.ABR,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=201,DSORG=PS,BLKSIZE=0)
//*
//*********************************************************************
//* PASO     : ZMWFM016
//* OBJETIVO : SORT DEL INVENTARIO
//*            SELECCIONANDO UNICAMENTE LOS CAMPOS NECESARIOS
//*            ORDENANDO LA INFORMACION POR ANIO DE INFORMACION,BANCO,
//*            CONTRATO, SECUENCIA,PRODUCTO Y DIVISA.
//*                *********   MAYO     ************
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMWFM016 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.SAT.MUVFI.MAY,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMPMUV01.INVOK.SORT.MAY,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=242,DSORG=PS,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPWMU04),
//            DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMWFM015
//* OBJETIVO : CRUZA LA INFORMACION DEL SAT CONTRA LA DEL INVENTARIO
//*            PARA OBTENER LOS SALDOS CORRESPONDIENTES DE LA FECHA
//*            DE INFORMACION
//* PROGRAMA : ZM3MF012
//*********************************************************************
//ZMWFM015  EXEC PGM=ZM3MF012,COND=(4,LT)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPMUV01.INVOK.SORT.MAY,
//             DISP=SHR
//MISSAT    DD DSN=MXCP.ZM.FIX.ZMPMUV01.INVOK.SAT.ABR,
//             DISP=SHR
//MISNVO    DD DSN=MXCP.ZM.FIX.ZMPMUV01.INVOK.SAT.MAY,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=201,DSORG=PS,BLKSIZE=0)
//*
//*********************************************************************
//* PASO     : ZMWFM014
//* OBJETIVO : SORT DEL INVENTARIO
//*            SELECCIONANDO UNICAMENTE LOS CAMPOS NECESARIOS
//*            ORDENANDO LA INFORMACION POR ANIO DE INFORMACION,BANCO,
//*            CONTRATO, SECUENCIA,PRODUCTO Y DIVISA.
//*                *********   JUNIO    ************
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMWFM014 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.SAT.MUVFI.JUN,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMPMUV01.INVOK.SORT.JUN,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=242,DSORG=PS,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPWMU04),
//            DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMWFM013
//* OBJETIVO : CRUZA LA INFORMACION DEL SAT CONTRA LA DEL INVENTARIO
//*            PARA OBTENER LOS SALDOS CORRESPONDIENTES DE LA FECHA
//*            DE INFORMACION
//* PROGRAMA : ZM3MF012
//*********************************************************************
//ZMWFM013  EXEC PGM=ZM3MF012,COND=(4,LT)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPMUV01.INVOK.SORT.JUN,
//             DISP=SHR
//MISSAT    DD DSN=MXCP.ZM.FIX.ZMPMUV01.INVOK.SAT.MAY,
//             DISP=SHR
//MISNVO    DD DSN=MXCP.ZM.FIX.ZMPMUV01.INVOK.SAT.JUN,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=201,DSORG=PS,BLKSIZE=0)
//*
//*********************************************************************
//* PASO     : ZMWFM012
//* OBJETIVO : SORT DEL INVENTARIO
//*            SELECCIONANDO UNICAMENTE LOS CAMPOS NECESARIOS
//*            ORDENANDO LA INFORMACION POR ANIO DE INFORMACION,BANCO
//*            CONTRATO, SECUENCIA,PRODUCTO Y DIVISA.
//*                *********   JULIO    ************
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMWFM012 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.SAT.MUVFI.JUL,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMPMUV01.INVOK.SORT.JUL,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=242,DSORG=PS,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPWMU04),
//            DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMWFM011
//* OBJETIVO : CRUZA LA INFORMACION DEL SAT CONTRA LA DEL INVENTARIO
//*            PARA OBTENER LOS SALDOS CORRESPONDIENTES DE LA FECHA
//*            DE INFORMACION
//* PROGRAMA : ZM3MF012
//*********************************************************************
//ZMWFM011  EXEC PGM=ZM3MF012,COND=(4,LT)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPMUV01.INVOK.SORT.JUL,
//             DISP=SHR
//MISSAT    DD DSN=MXCP.ZM.FIX.ZMPMUV01.INVOK.SAT.JUN,
//             DISP=SHR
//MISNVO    DD DSN=MXCP.ZM.FIX.ZMPMUV01.INVOK.SAT.JUL,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=201,DSORG=PS,BLKSIZE=0)
//*
//*********************************************************************
//* PASO     : ZMWFM010
//* OBJETIVO : SORT DEL INVENTARIO
//*            SELECCIONANDO UNICAMENTE LOS CAMPOS NECESARIOS
//*            ORDENANDO LA INFORMACION POR ANIO DE INFORMACION,
//*            CONTRATO, SECUENCIA,PRODUCTO Y DIVISA.
//*                *********   AGOSTO   ************
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMWFM010 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.SAT.MUVFI.AGO,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMPMUV01.INVOK.SORT.AGO,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=242,DSORG=PS,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPWMU04),
//            DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMWFM009
//* OBJETIVO : CRUZA LA INFORMACION DEL SAT CONTRA LA DEL INVENTARIO
//*            PARA OBTENER LOS SALDOS CORRESPONDIENTES DE LA FECHA
//*            DE INFORMACION
//* PROGRAMA : ZM3MF012
//*********************************************************************
//ZMWFM009  EXEC PGM=ZM3MF012,COND=(4,LT)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPMUV01.INVOK.SORT.AGO,
//             DISP=SHR
//MISSAT    DD DSN=MXCP.ZM.FIX.ZMPMUV01.INVOK.SAT.JUL,
//             DISP=SHR
//MISNVO    DD DSN=MXCP.ZM.FIX.ZMPMUV01.INVOK.SAT.AGO,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=201,DSORG=PS,BLKSIZE=0)
//*
//*********************************************************************
//* PASO     : ZMWFM008
//* OBJETIVO : SORT DEL INVENTARIO
//*            SELECCIONANDO UNICAMENTE LOS CAMPOS NECESARIOS
//*            ORDENANDO LA INFORMACION POR ANIO DE INFORMACION,BANCO
//*            CONTRATO, SECUENCIA,PRODUCTO Y DIVISA.
//*                *********   SEPTIEMBRE ************
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMWFM008 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.SAT.MUVFI.SEP,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMPMUV01.INVOK.SORT.SEP,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=242,DSORG=PS,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPWMU04),
//            DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMWFM007
//* OBJETIVO : CRUZA LA INFORMACION DEL SAT CONTRA LA DEL INVENTARIO
//*            PARA OBTENER LOS SALDOS CORRESPONDIENTES DE LA FECHA
//*            DE INFORMACION
//* PROGRAMA : ZM3MF012
//*********************************************************************
//ZMWFM007  EXEC PGM=ZM3MF012,COND=(4,LT)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPMUV01.INVOK.SORT.SEP,
//             DISP=SHR
//MISSAT    DD DSN=MXCP.ZM.FIX.ZMPMUV01.INVOK.SAT.AGO,
//             DISP=SHR
//MISNVO    DD DSN=MXCP.ZM.FIX.ZMPMUV01.INVOK.SAT.SEP,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=201,DSORG=PS,BLKSIZE=0)
//*
//*********************************************************************
//* PASO     : ZMWFM006
//* OBJETIVO : SORT DEL INVENTARIO
//*            SELECCIONANDO UNICAMENTE LOS CAMPOS NECESARIOS
//*            ORDENANDO LA INFORMACION POR ANIO DE INFORMACION,BANCO
//*            CONTRATO, SECUENCIA,PRODUCTO Y DIVISA.
//*                *********   OCTUBRE    ************
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMWFM006 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.SAT.MUVFI.OCT,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMPMUV01.INVOK.SORT.OCT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=242,DSORG=PS,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPWMU04),
//            DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMWFM005
//* OBJETIVO : CRUZA LA INFORMACION DEL SAT CONTRA LA DEL INVENTARIO
//*            PARA OBTENER LOS SALDOS CORRESPONDIENTES DE LA FECHA
//*            DE INFORMACION
//* PROGRAMA : ZM3MF012
//*********************************************************************
//ZMWFM005  EXEC PGM=ZM3MF012,COND=(4,LT)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPMUV01.INVOK.SORT.OCT,
//             DISP=SHR
//MISSAT    DD DSN=MXCP.ZM.FIX.ZMPMUV01.INVOK.SAT.SEP,
//             DISP=SHR
//MISNVO    DD DSN=MXCP.ZM.FIX.ZMPMUV01.INVOK.SAT.OCT,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=201,DSORG=PS,BLKSIZE=0)
//*
//*********************************************************************
//* PASO     : ZMWFM004
//* OBJETIVO : SORT DEL INVENTARIO
//*            SELECCIONANDO UNICAMENTE LOS CAMPOS NECESARIOS
//*            ORDENANDO LA INFORMACION POR ANIO DE INFORMACION,BANCO
//*            CONTRATO, SECUENCIA,PRODUCTO Y DIVISA.
//*                *********   NOVIEMBRE  ************
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMWFM004 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.SAT.MUVFI.NOV,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMPMUV01.INVOK.SORT.NOV,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=242,DSORG=PS,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPWMU04),
//            DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMWFM003
//* OBJETIVO : CRUZA LA INFORMACION DEL SAT CONTRA LA DEL INVENTARIO
//*            PARA OBTENER LOS SALDOS CORRESPONDIENTES DE LA FECHA
//*            DE INFORMACION
//* PROGRAMA : ZM3MF012
//*********************************************************************
//ZMWFM003  EXEC PGM=ZM3MF012,COND=(4,LT)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPMUV01.INVOK.SORT.NOV,
//             DISP=SHR
//MISSAT    DD DSN=MXCP.ZM.FIX.ZMPMUV01.INVOK.SAT.OCT,
//             DISP=SHR
//MISNVO    DD DSN=MXCP.ZM.FIX.ZMPMUV01.INVOK.SAT.NOV,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=201,DSORG=PS,BLKSIZE=0)
//*
//*********************************************************************
//* PASO     : ZMWFM002
//* OBJETIVO : SORT DEL INVENTARIO
//*            SELECCIONANDO UNICAMENTE LOS CAMPOS NECESARIOS
//*            ORDENANDO LA INFORMACION POR ANIO DE INFORMACION,BANCO
//*            CONTRATO, SECUENCIA,PRODUCTO Y DIVISA.
//*                *********   DICIEMBRE  ************
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMWFM002 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.SAT.MUVFI.DIC,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMPMUV01.INVOK.SORT.DIC,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=242,DSORG=PS,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPWMU04),
//            DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMWFM001
//* OBJETIVO : CRUZA LA INFORMACION DEL SAT CONTRA LA DEL INVENTARIO
//*            PARA OBTENER LOS SALDOS CORRESPONDIENTES DE LA FECHA
//*            DE INFORMACION
//* PROGRAMA : ZM3MF012
//*********************************************************************
//ZMWFM001  EXEC PGM=ZM3MF012,COND=(4,LT)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPMUV01.INVOK.SORT.DIC,
//             DISP=SHR
//MISSAT    DD DSN=MXCP.ZM.FIX.ZMPMUV01.INVOK.SAT.NOV,
//             DISP=SHR
//MISNVO    DD DSN=MXCP.ZM.FIX.ZMPMUV01.MUV.A&ANIO,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=201,BLKSIZE=0,DSORG=PS)
//*
