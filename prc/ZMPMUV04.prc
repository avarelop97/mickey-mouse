//ZMPMUV04 PROC
//**********************************************************************
//* SISTEMA  : MU  MUV                                                 *
//*                                                                    *
//* PROCESO  : ZMPMUV04                                                *
//*                                                                    *
//* OBJETIVO : GENERA EL ACUMULADO DE MESES PARA EL SAT                *
//*            APLICATIVO: FONDOS DE INVERSION MUV                     *
//*            GENERA ARCHIVO DEL MES DE ENERO AL MES DE DICIEMBRE     *
//* FECHA    : JUNIO 2010                                              *
//**********************************************************************
//*********************************************************************
//* PASO     : ZMPMU025
//* OBJETIVO : GENERA ARCHIVO VACIO PARA SORT CON EL MES DE ENERO
//* PROGRAMA : IEFBR14
//*********************************************************************
//ZMPMU025 EXEC PGM=IEFBR14
//ARVACIO  DD DSN=MXCP.ZM.FIX.SAT.VECTOR.VACIO.MUV,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(RECFM=FB,LRECL=201,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(4,2),RLSE)
//*********************************************************************
//* PASO     : ZMPMU024
//* OBJETIVO : SORT DEL INVENTARIO
//*            SELECCIONANDO UNICAMENTE LOS CAMPOS NECESARIOS
//*            ORDENANDO LA INFORMACION POR ANIO DE INFORMACION,BANCO,
//*            CONTRATO, SECUENCIA,PRODUCTO Y DIVISA.
//*                *********   ENERO  ************
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMPMU024 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.SAT.MUVFI.ENE,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMPMUV04.INVOK.SORT.ENE,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=242,DSORG=PS,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPWMU04),
//            DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMPMU023
//* OBJETIVO : CRUZA LA INFORMACION DEL SAT CONTRA LA DEL INVENTARIO
//*            PARA OBTENER LOS SALDOS CORRESPONDIENTES DE LA FECHA
//*            DE INFORMACION
//* PROGRAMA : ZM3MU012
//*********************************************************************
//ZMPMU023  EXEC PGM=ZM3MU012,COND=(4,LT)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPMUV04.INVOK.SORT.ENE,
//             DISP=SHR
//MISSAT    DD DSN=MXCP.ZM.FIX.SAT.VECTOR.VACIO.MUV,
//             DISP=SHR
//MISNVO    DD DSN=MXCP.ZM.FIX.ZMPMUV04.INVOK.SAT.ENE,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=201,DSORG=PS,BLKSIZE=0)
//*
//*********************************************************************
//* PASO     : ZMPMU022
//* OBJETIVO : SORT DEL INVENTARIO
//*            SELECCIONANDO UNICAMENTE LOS CAMPOS NECESARIOS
//*            ORDENANDO LA INFORMACION POR ANIO DE INFORMACION,BANCO,
//*            CONTRATO, SECUENCIA,PRODUCTO Y DIVISA.
//*                *********   FEBRERO  ************
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMPMU022 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.SAT.MUVFI.FEB,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMPMUV04.INVOK.SORT.FEB,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=242,DSORG=PS,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPWMU04),
//            DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMPMU021
//* OBJETIVO : CRUZA LA INFORMACION DEL SAT CONTRA LA DEL INVENTARIO
//*            PARA OBTENER LOS SALDOS CORRESPONDIENTES DE LA FECHA
//*            DE INFORMACION
//* PROGRAMA : ZM3MU012
//*********************************************************************
//ZMPMU021  EXEC PGM=ZM3MU012,COND=(4,LT)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPMUV04.INVOK.SORT.FEB,
//             DISP=SHR
//MISSAT    DD DSN=MXCP.ZM.FIX.ZMPMUV04.INVOK.SAT.ENE,
//             DISP=SHR
//MISNVO    DD DSN=MXCP.ZM.FIX.ZMPMUV04.INVOK.SAT.FEB,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=201,DSORG=PS,BLKSIZE=0)
//*
//*********************************************************************
//* PASO     : ZMPMU020
//* OBJETIVO : SORT DEL INVENTARIO
//*            SELECCIONANDO UNICAMENTE LOS CAMPOS NECESARIOS
//*            ORDENANDO LA INFORMACION POR ANIO DE INFORMACION,BANCO,
//*            CONTRATO, SECUENCIA,PRODUCTO Y DIVISA.
//*                *********   MARZO    ************
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMPMU020 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.SAT.MUVFI.MAR,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMPMUV04.INVOK.SORT.MAR,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=242,DSORG=PS,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPWMU04),
//            DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMPMU019
//* OBJETIVO : CRUZA LA INFORMACION DEL SAT CONTRA LA DEL INVENTARIO
//*            PARA OBTENER LOS SALDOS CORRESPONDIENTES DE LA FECHA
//*            DE INFORMACION
//* PROGRAMA : ZM3MU012
//*********************************************************************
//ZMPMU019  EXEC PGM=ZM3MU012,COND=(4,LT)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPMUV04.INVOK.SORT.MAR,
//             DISP=SHR
//MISSAT    DD DSN=MXCP.ZM.FIX.ZMPMUV04.INVOK.SAT.FEB,
//             DISP=SHR
//MISNVO    DD DSN=MXCP.ZM.FIX.ZMPMUV04.INVOK.SAT.MAR,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=201,DSORG=PS,BLKSIZE=0)
//*
//*********************************************************************
//* PASO     : ZMPMU018
//* OBJETIVO : SORT DEL INVENTARIO
//*            SELECCIONANDO UNICAMENTE LOS CAMPOS NECESARIOS
//*            ORDENANDO LA INFORMACION POR ANIO DE INFORMACION,BANCO,
//*            CONTRATO, SECUENCIA,PRODUCTO Y DIVISA.
//*                *********   ABRIL    ************
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMPMU018 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.SAT.MUVFI.ABR,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMPMUV04.INVOK.SORT.ABR,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=242,DSORG=PS,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPWMU04),
//            DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMPMU017
//* OBJETIVO : CRUZA LA INFORMACION DEL SAT CONTRA LA DEL INVENTARIO
//*            PARA OBTENER LOS SALDOS CORRESPONDIENTES DE LA FECHA
//*            DE INFORMACION
//* PROGRAMA : ZM3MU012
//*********************************************************************
//ZMPMU017  EXEC PGM=ZM3MU012,COND=(4,LT)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPMUV04.INVOK.SORT.ABR,
//             DISP=SHR
//MISSAT    DD DSN=MXCP.ZM.FIX.ZMPMUV04.INVOK.SAT.MAR,
//             DISP=SHR
//MISNVO    DD DSN=MXCP.ZM.FIX.ZMPMUV04.INVOK.SAT.ABR,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=201,DSORG=PS,BLKSIZE=0)
//*
//*********************************************************************
//* PASO     : ZMPMU016
//* OBJETIVO : SORT DEL INVENTARIO
//*            SELECCIONANDO UNICAMENTE LOS CAMPOS NECESARIOS
//*            ORDENANDO LA INFORMACION POR ANIO DE INFORMACION,BANCO,
//*            CONTRATO, SECUENCIA,PRODUCTO Y DIVISA.
//*                *********   MAYO     ************
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMPMU016 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.SAT.MUVFI.MAY,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMPMUV04.INVOK.SORT.MAY,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=242,DSORG=PS,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPWMU04),
//            DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMPMU015
//* OBJETIVO : CRUZA LA INFORMACION DEL SAT CONTRA LA DEL INVENTARIO
//*            PARA OBTENER LOS SALDOS CORRESPONDIENTES DE LA FECHA
//*            DE INFORMACION
//* PROGRAMA : ZM3MU012
//*********************************************************************
//ZMPMU015  EXEC PGM=ZM3MU012,COND=(4,LT)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPMUV04.INVOK.SORT.MAY,
//             DISP=SHR
//MISSAT    DD DSN=MXCP.ZM.FIX.ZMPMUV04.INVOK.SAT.ABR,
//             DISP=SHR
//MISNVO    DD DSN=MXCP.ZM.FIX.ZMPMUV04.INVOK.SAT.MAY,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=201,DSORG=PS,BLKSIZE=0)
//*
//*********************************************************************
//* PASO     : ZMPMU014
//* OBJETIVO : SORT DEL INVENTARIO
//*            SELECCIONANDO UNICAMENTE LOS CAMPOS NECESARIOS
//*            ORDENANDO LA INFORMACION POR ANIO DE INFORMACION,BANCO,
//*            CONTRATO, SECUENCIA,PRODUCTO Y DIVISA.
//*                *********   JUNIO    ************
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMPMU014 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.SAT.MUVFI.JUN,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMPMUV04.INVOK.SORT.JUN,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=242,DSORG=PS,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPWMU04),
//            DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMPMU013
//* OBJETIVO : CRUZA LA INFORMACION DEL SAT CONTRA LA DEL INVENTARIO
//*            PARA OBTENER LOS SALDOS CORRESPONDIENTES DE LA FECHA
//*            DE INFORMACION
//* PROGRAMA : ZM3MU012
//*********************************************************************
//ZMPMU013  EXEC PGM=ZM3MU012,COND=(4,LT)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPMUV04.INVOK.SORT.JUN,
//             DISP=SHR
//MISSAT    DD DSN=MXCP.ZM.FIX.ZMPMUV04.INVOK.SAT.MAY,
//             DISP=SHR
//MISNVO    DD DSN=MXCP.ZM.FIX.ZMPMUV04.INVOK.SAT.JUN,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=201,DSORG=PS,BLKSIZE=0)
//*
//*********************************************************************
//* PASO     : ZMPMU012
//* OBJETIVO : SORT DEL INVENTARIO
//*            SELECCIONANDO UNICAMENTE LOS CAMPOS NECESARIOS
//*            ORDENANDO LA INFORMACION POR ANIO DE INFORMACION,BANCO
//*            CONTRATO, SECUENCIA,PRODUCTO Y DIVISA.
//*                *********   JULIO    ************
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMPMU012 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.SAT.MUVFI.JUL,
//           DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMPMUV04.INVOK.SORT.JUL,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=242,DSORG=PS,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPWMU04),
//            DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMPMU011
//* OBJETIVO : CRUZA LA INFORMACION DEL SAT CONTRA LA DEL INVENTARIO
//*            PARA OBTENER LOS SALDOS CORRESPONDIENTES DE LA FECHA
//*            DE INFORMACION
//* PROGRAMA : ZM3MU012
//*********************************************************************
//ZMPMU011  EXEC PGM=ZM3MU012,COND=(4,LT)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPMUV04.INVOK.SORT.JUL,
//             DISP=SHR
//MISSAT    DD DSN=MXCP.ZM.FIX.ZMPMUV04.INVOK.SAT.JUN,
//             DISP=SHR
//MISNVO    DD DSN=MXCP.ZM.FIX.ZMPMUV04.INVOK.SAT.JUL,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=201,DSORG=PS,BLKSIZE=0)
//*
//*********************************************************************
//* PASO     : ZMPMU010
//* OBJETIVO : SORT DEL INVENTARIO
//*            SELECCIONANDO UNICAMENTE LOS CAMPOS NECESARIOS
//*            ORDENANDO LA INFORMACION POR ANIO DE INFORMACION,
//*            CONTRATO, SECUENCIA,PRODUCTO Y DIVISA.
//*                *********   AGOSTO   ************
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMPMU010 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.SAT.MUVFI.AGO,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMPMUV04.INVOK.SORT.AGO,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=242,DSORG=PS,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPWMU04),
//            DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMPMU009
//* OBJETIVO : CRUZA LA INFORMACION DEL SAT CONTRA LA DEL INVENTARIO
//*            PARA OBTENER LOS SALDOS CORRESPONDIENTES DE LA FECHA
//*            DE INFORMACION
//* PROGRAMA : ZM3MU012
//*********************************************************************
//ZMPMU009  EXEC PGM=ZM3MU012,COND=(4,LT)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPMUV04.INVOK.SORT.AGO,
//             DISP=SHR
//MISSAT    DD DSN=MXCP.ZM.FIX.ZMPMUV04.INVOK.SAT.JUL,
//             DISP=SHR
//MISNVO    DD DSN=MXCP.ZM.FIX.ZMPMUV04.INVOK.SAT.AGO,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=201,DSORG=PS,BLKSIZE=0)
//*
//*********************************************************************
//* PASO     : ZMPMU008
//* OBJETIVO : SORT DEL INVENTARIO
//*            SELECCIONANDO UNICAMENTE LOS CAMPOS NECESARIOS
//*            ORDENANDO LA INFORMACION POR ANIO DE INFORMACION,BANCO
//*            CONTRATO, SECUENCIA,PRODUCTO Y DIVISA.
//*                *********   SEPTIEMBRE ************
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMPMU008 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.SAT.MUVFI.SEP,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMPMUV04.INVOK.SORT.SEP,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=242,DSORG=PS,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPWMU04),
//            DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMPMU007
//* OBJETIVO : CRUZA LA INFORMACION DEL SAT CONTRA LA DEL INVENTARIO
//*            PARA OBTENER LOS SALDOS CORRESPONDIENTES DE LA FECHA
//*            DE INFORMACION
//* PROGRAMA : ZM3MU012
//*********************************************************************
//ZMPMU007  EXEC PGM=ZM3MU012,COND=(4,LT)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPMUV04.INVOK.SORT.SEP,
//             DISP=SHR
//MISSAT    DD DSN=MXCP.ZM.FIX.ZMPMUV04.INVOK.SAT.AGO,
//             DISP=SHR
//MISNVO    DD DSN=MXCP.ZM.FIX.ZMPMUV04.INVOK.SAT.SEP,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=201,DSORG=PS,BLKSIZE=0)
//*
//*********************************************************************
//* PASO     : ZMPMU006
//* OBJETIVO : SORT DEL INVENTARIO
//*            SELECCIONANDO UNICAMENTE LOS CAMPOS NECESARIOS
//*            ORDENANDO LA INFORMACION POR ANIO DE INFORMACION,BANCO
//*            CONTRATO, SECUENCIA,PRODUCTO Y DIVISA.
//*                *********   OCTUBRE    ************
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMPMU006 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.SAT.MUVFI.OCT,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMPMUV04.INVOK.SORT.OCT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=242,DSORG=PS,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPWMU04),
//            DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMPMU005
//* OBJETIVO : CRUZA LA INFORMACION DEL SAT CONTRA LA DEL INVENTARIO
//*            PARA OBTENER LOS SALDOS CORRESPONDIENTES DE LA FECHA
//*            DE INFORMACION
//* PROGRAMA : ZM3MU012
//*********************************************************************
//ZMPMU005  EXEC PGM=ZM3MU012,COND=(4,LT)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPMUV04.INVOK.SORT.OCT,
//             DISP=SHR
//MISSAT    DD DSN=MXCP.ZM.FIX.ZMPMUV04.INVOK.SAT.SEP,
//             DISP=SHR
//MISNVO    DD DSN=MXCP.ZM.FIX.ZMPMUV04.INVOK.SAT.OCT,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=201,DSORG=PS,BLKSIZE=0)
//*
//*********************************************************************
//* PASO     : ZMPMU004
//* OBJETIVO : SORT DEL INVENTARIO
//*            SELECCIONANDO UNICAMENTE LOS CAMPOS NECESARIOS
//*            ORDENANDO LA INFORMACION POR ANIO DE INFORMACION,BANCO
//*            CONTRATO, SECUENCIA,PRODUCTO Y DIVISA.
//*                *********   NOVIEMBRE  ************
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMPMU004 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.SAT.MUVFI.NOV,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMPMUV04.INVOK.SORT.NOV,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=242,DSORG=PS,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPWMU04),
//            DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMPMU003
//* OBJETIVO : CRUZA LA INFORMACION DEL SAT CONTRA LA DEL INVENTARIO
//*            PARA OBTENER LOS SALDOS CORRESPONDIENTES DE LA FECHA
//*            DE INFORMACION
//* PROGRAMA : ZM3MU012
//*********************************************************************
//ZMPMU003  EXEC PGM=ZM3MU012,COND=(4,LT)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPMUV04.INVOK.SORT.NOV,
//             DISP=SHR
//MISSAT    DD DSN=MXCP.ZM.FIX.ZMPMUV04.INVOK.SAT.OCT,
//             DISP=SHR
//MISNVO    DD DSN=MXCP.ZM.FIX.ZMPMUV04.INVOK.SAT.NOV,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=201,DSORG=PS,BLKSIZE=0)
//*
//*********************************************************************
//* PASO     : ZMPMU002
//* OBJETIVO : SORT DEL INVENTARIO
//*            SELECCIONANDO UNICAMENTE LOS CAMPOS NECESARIOS
//*            ORDENANDO LA INFORMACION POR ANIO DE INFORMACION,BANCO
//*            CONTRATO, SECUENCIA,PRODUCTO Y DIVISA.
//*                *********   DICIEMBRE  ************
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMPMU002 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.SAT.MUVFI.DIC,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMPMUV04.INVOK.SORT.DIC,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=242,DSORG=PS,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPWMU04),
//            DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMPMU001
//* OBJETIVO : CRUZA LA INFORMACION DEL SAT CONTRA LA DEL INVENTARIO
//*            PARA OBTENER LOS SALDOS CORRESPONDIENTES DE LA FECHA
//*            DE INFORMACION
//* PROGRAMA : ZM3MU012
//*********************************************************************
//ZMPMU001  EXEC PGM=ZM3MU012,COND=(4,LT)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPMUV04.INVOK.SORT.DIC,
//             DISP=SHR
//MISSAT    DD DSN=MXCP.ZM.FIX.ZMPMUV04.INVOK.SAT.NOV,
//             DISP=SHR
//MISNVO    DD DSN=MXCP.ZM.FIX.VECTOR.MUV09.MERCAP01,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=201,BLKSIZE=0,DSORG=PS)
//*
