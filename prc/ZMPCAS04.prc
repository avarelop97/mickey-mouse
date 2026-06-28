//ZMPCAS04 PROC
//**********************************************************************
//*      L O G    D E   M O D I F I C A C I O N E S                    *
//**********************************************************************
//* FECHA       PASO          DESCRIPCION                     USUARIO  *
//*--------------------------------------------------------------------*
//**********************************************************************
//* SISTEMA  : CASA                                                    *
//*                                                                    *
//* PROCESO  : ZMPCAS04                                                *
//*                                                                    *
//* OBJETIVO : GENERA EL ACUMULADO DE MESES PARA EL SAT                *
//*            APLICATIVO: MERCADO DE CAPITALES CASA DE BOLSA          *
//*            GENERA ARCHIVO DEL MES DE ENERO AL MES DE DICIEMBRE     *
//* REALIZO  :                                                         *
//* FECHA    :                                                         *
//**********************************************************************
//*********************************************************************
//* PASO     : ZMWCB025
//* OBJETIVO : GENERA ARCHIVO VACIO PARA SORT CON EL MES DE ENERO
//* PROGRAMA : IEFBR14
//*********************************************************************
//ZMWCB025 EXEC PGM=IEFBR14
//ARVACIO  DD DSN=MXCP.ZM.FIX.SAT.VECTOR.VACIO.CBS,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(RECFM=FB,LRECL=201,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(4,2),RLSE)
//*********************************************************************
//* PASO     : ZMWCB024
//* OBJETIVO : SORT DEL INVENTARIO
//*            SELECCIONANDO UNICAMENTE LOS CAMPOS NECESARIOS
//*            ORDENANDO LA INFORMACION POR ANIO DE INFORMACION,BANCO,
//*            CONTRATO, SECUENCIA,PRODUCTO Y DIVISA.
//*                *********   ENERO  ************
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMWCB024 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT    DD SYSOUT=*
//SORTIN    DD DSN=MXCP.ZM.FIX.SAT.CBSFI.ENE,
//             DISP=SHR
//SORTOUT   DD DSN=MXCP.ZM.FIX.ZMPCAS04.INVOK.SORT.ENE,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=242,DSORG=PS,BLKSIZE=0)
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZMWCB014),
//             DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMWCB023
//* OBJETIVO : CRUZA LA INFORMACION DEL SAT CONTRA LA DEL INVENTARIO
//*            PARA OBTENER LOS SALDOS CORRESPONDIENTES DE LA FECHA
//*            DE INFORMACION
//* PROGRAMA : ZM3CB013
//*********************************************************************
//ZMWCB023  EXEC PGM=ZM3CB013,COND=(4,LT)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPCAS04.INVOK.SORT.ENE,
//             DISP=SHR
//MISSAT    DD DSN=MXCP.ZM.FIX.SAT.VECTOR.VACIO.CBS,
//             DISP=SHR
//MISNVO    DD DSN=MXCP.ZM.FIX.ZMPCAS04.INVOK.SAT.ENE,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=201,DSORG=PS,BLKSIZE=0)
//*
//*********************************************************************
//* PASO     : ZMWCB022
//* OBJETIVO : SORT DEL INVENTARIO
//*            SELECCIONANDO UNICAMENTE LOS CAMPOS NECESARIOS
//*            ORDENANDO LA INFORMACION POR ANIO DE INFORMACION,BANCO,
//*            CONTRATO, SECUENCIA,PRODUCTO Y DIVISA.
//*                *********   FEBRERO  ************
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMWCB022 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT    DD SYSOUT=*
//SORTIN    DD DSN=MXCP.ZM.FIX.SAT.CBSFI.FEB,
//             DISP=SHR
//SORTOUT   DD DSN=MXCP.ZM.FIX.ZMPCAS04.INVOK.SORT.FEB,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=242,DSORG=PS,BLKSIZE=0)
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZMWCB014),
//             DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMWCB021
//* OBJETIVO : CRUZA LA INFORMACION DEL SAT CONTRA LA DEL INVENTARIO
//*            PARA OBTENER LOS SALDOS CORRESPONDIENTES DE LA FECHA
//*            DE INFORMACION
//* PROGRAMA : ZM3CB013
//*********************************************************************
//ZMWCB021  EXEC PGM=ZM3CB013,COND=(4,LT)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPCAS04.INVOK.SORT.FEB,
//             DISP=SHR
//MISSAT    DD DSN=MXCP.ZM.FIX.ZMPCAS04.INVOK.SAT.ENE,
//             DISP=SHR
//MISNVO    DD DSN=MXCP.ZM.FIX.ZMPCAS04.INVOK.SAT.FEB,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=201,DSORG=PS,BLKSIZE=0)
//*
//*********************************************************************
//* PASO     : ZMWCB020
//* OBJETIVO : SORT DEL INVENTARIO
//*            SELECCIONANDO UNICAMENTE LOS CAMPOS NECESARIOS
//*            ORDENANDO LA INFORMACION POR ANIO DE INFORMACION,BANCO,
//*            CONTRATO, SECUENCIA,PRODUCTO Y DIVISA.
//*                *********   MARZO    ************
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMWCB020 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT    DD SYSOUT=*
//SORTIN    DD DSN=MXCP.ZM.FIX.SAT.CBSFI.MAR,
//             DISP=SHR
//SORTOUT   DD DSN=MXCP.ZM.FIX.ZMPCAS04.INVOK.SORT.MAR,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=242,DSORG=PS,BLKSIZE=0)
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZMWCB014),
//             DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMWCB019
//* OBJETIVO : CRUZA LA INFORMACION DEL SAT CONTRA LA DEL INVENTARIO
//*            PARA OBTENER LOS SALDOS CORRESPONDIENTES DE LA FECHA
//*            DE INFORMACION
//* PROGRAMA : ZM3CB013
//*********************************************************************
//ZMWCB019  EXEC PGM=ZM3CB013,COND=(4,LT)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPCAS04.INVOK.SORT.MAR,
//             DISP=SHR
//MISSAT    DD DSN=MXCP.ZM.FIX.ZMPCAS04.INVOK.SAT.FEB,
//             DISP=SHR
//MISNVO    DD DSN=MXCP.ZM.FIX.ZMPCAS04.INVOK.SAT.MAR,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=201,DSORG=PS,BLKSIZE=0)
//*
//*********************************************************************
//* PASO     : ZMWCB018
//* OBJETIVO : SORT DEL INVENTARIO
//*            SELECCIONANDO UNICAMENTE LOS CAMPOS NECESARIOS
//*            ORDENANDO LA INFORMACION POR ANIO DE INFORMACION,BANCO,
//*            CONTRATO, SECUENCIA,PRODUCTO Y DIVISA.
//*                *********   ABRIL    ************
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMWCB018 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT    DD SYSOUT=*
//SORTIN    DD DSN=MXCP.ZM.FIX.SAT.CBSFI.ABR,
//             DISP=SHR
//SORTOUT   DD DSN=MXCP.ZM.FIX.ZMPCAS04.INVOK.SORT.ABR,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=242,DSORG=PS,BLKSIZE=0)
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZMWCB014),
//             DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMWCB017
//* OBJETIVO : CRUZA LA INFORMACION DEL SAT CONTRA LA DEL INVENTARIO
//*            PARA OBTENER LOS SALDOS CORRESPONDIENTES DE LA FECHA
//*            DE INFORMACION
//* PROGRAMA : ZM3CB013
//*********************************************************************
//ZMWCB017  EXEC PGM=ZM3CB013,COND=(4,LT)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPCAS04.INVOK.SORT.ABR,
//             DISP=SHR
//MISSAT    DD DSN=MXCP.ZM.FIX.ZMPCAS04.INVOK.SAT.MAR,
//             DISP=SHR
//MISNVO    DD DSN=MXCP.ZM.FIX.ZMPCAS04.INVOK.SAT.ABR,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=201,DSORG=PS,BLKSIZE=0)
//*
//*********************************************************************
//* PASO     : ZMWCB016
//* OBJETIVO : SORT DEL INVENTARIO
//*            SELECCIONANDO UNICAMENTE LOS CAMPOS NECESARIOS
//*            ORDENANDO LA INFORMACION POR ANIO DE INFORMACION,BANCO,
//*            CONTRATO, SECUENCIA,PRODUCTO Y DIVISA.
//*                *********   MAYO     ************
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMWCB016 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT    DD SYSOUT=*
//SORTIN    DD DSN=MXCP.ZM.FIX.SAT.CBSFI.MAY,
//             DISP=SHR
//SORTOUT   DD DSN=MXCP.ZM.FIX.ZMPCAS04.INVOK.SORT.MAY,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=242,DSORG=PS,BLKSIZE=0)
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZMWCB014),
//             DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMWCB015
//* OBJETIVO : CRUZA LA INFORMACION DEL SAT CONTRA LA DEL INVENTARIO
//*            PARA OBTENER LOS SALDOS CORRESPONDIENTES DE LA FECHA
//*            DE INFORMACION
//* PROGRAMA : ZM3CB013
//*********************************************************************
//ZMWCB015  EXEC PGM=ZM3CB013,COND=(4,LT)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPCAS04.INVOK.SORT.MAY,
//             DISP=SHR
//MISSAT    DD DSN=MXCP.ZM.FIX.ZMPCAS04.INVOK.SAT.ABR,
//             DISP=SHR
//MISNVO    DD DSN=MXCP.ZM.FIX.ZMPCAS04.INVOK.SAT.MAY,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=201,DSORG=PS,BLKSIZE=0)
//*
//*********************************************************************
//* PASO     : ZMWCB014
//* OBJETIVO : SORT DEL INVENTARIO
//*            SELECCIONANDO UNICAMENTE LOS CAMPOS NECESARIOS
//*            ORDENANDO LA INFORMACION POR ANIO DE INFORMACION,BANCO,
//*            CONTRATO, SECUENCIA,PRODUCTO Y DIVISA.
//*                *********   JUNIO    ************
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMWCB014 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT    DD SYSOUT=*
//SORTIN    DD DSN=MXCP.ZM.FIX.SAT.CBSFI.JUN,
//             DISP=SHR
//SORTOUT   DD DSN=MXCP.ZM.FIX.ZMPCAS04.INVOK.SORT.JUN,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=242,DSORG=PS,BLKSIZE=0)
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZMWCB014),
//             DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMWCB013
//* OBJETIVO : CRUZA LA INFORMACION DEL SAT CONTRA LA DEL INVENTARIO
//*            PARA OBTENER LOS SALDOS CORRESPONDIENTES DE LA FECHA
//*            DE INFORMACION
//* PROGRAMA : ZM3CB013
//*********************************************************************
//ZMWCB013  EXEC PGM=ZM3CB013,COND=(4,LT)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPCAS04.INVOK.SORT.JUN,
//             DISP=SHR
//MISSAT    DD DSN=MXCP.ZM.FIX.ZMPCAS04.INVOK.SAT.MAY,
//             DISP=SHR
//MISNVO    DD DSN=MXCP.ZM.FIX.ZMPCAS04.INVOK.SAT.JUN,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=201,DSORG=PS,BLKSIZE=0)
//*
//*********************************************************************
//* PASO     : ZMWCB012
//* OBJETIVO : SORT DEL INVENTARIO
//*            SELECCIONANDO UNICAMENTE LOS CAMPOS NECESARIOS
//*            ORDENANDO LA INFORMACION POR ANIO DE INFORMACION,BANCO
//*            CONTRATO, SECUENCIA,PRODUCTO Y DIVISA.
//*                *********   JULIO    ************
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMWCB012 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT    DD SYSOUT=*
//SORTIN    DD DSN=MXCP.ZM.FIX.SAT.CBSFI.JUL,
//             DISP=SHR
//SORTOUT   DD DSN=MXCP.ZM.FIX.ZMPCAS04.INVOK.SORT.JUL,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=242,DSORG=PS,BLKSIZE=0)
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZMWCB014),
//             DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMWCB011
//* OBJETIVO : CRUZA LA INFORMACION DEL SAT CONTRA LA DEL INVENTARIO
//*            PARA OBTENER LOS SALDOS CORRESPONDIENTES DE LA FECHA
//*            DE INFORMACION
//* PROGRAMA : ZM3CB013
//*********************************************************************
//ZMWCB011  EXEC PGM=ZM3CB013,COND=(4,LT)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPCAS04.INVOK.SORT.JUL,
//             DISP=SHR
//MISSAT    DD DSN=MXCP.ZM.FIX.ZMPCAS04.INVOK.SAT.JUN,
//             DISP=SHR
//MISNVO    DD DSN=MXCP.ZM.FIX.ZMPCAS04.INVOK.SAT.JUL,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=201,DSORG=PS,BLKSIZE=0)
//*
//*********************************************************************
//* PASO     : ZMWCB010
//* OBJETIVO : SORT DEL INVENTARIO
//*            SELECCIONANDO UNICAMENTE LOS CAMPOS NECESARIOS
//*            ORDENANDO LA INFORMACION POR ANIO DE INFORMACION,
//*            CONTRATO, SECUENCIA,PRODUCTO Y DIVISA.
//*                *********   AGOSTO   ************
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMWCB010 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT    DD SYSOUT=*
//SORTIN    DD DSN=MXCP.ZM.FIX.SAT.CBSFI.AGO,
//             DISP=SHR
//SORTOUT   DD DSN=MXCP.ZM.FIX.ZMPCAS04.INVOK.SORT.AGO,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=242,DSORG=PS,BLKSIZE=0)
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZMWCB014),
//             DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMWCB009
//* OBJETIVO : CRUZA LA INFORMACION DEL SAT CONTRA LA DEL INVENTARIO
//*            PARA OBTENER LOS SALDOS CORRESPONDIENTES DE LA FECHA
//*            DE INFORMACION
//* PROGRAMA : ZM3CB013
//*********************************************************************
//ZMWCB009  EXEC PGM=ZM3CB013,COND=(4,LT)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPCAS04.INVOK.SORT.AGO,
//             DISP=SHR
//MISSAT    DD DSN=MXCP.ZM.FIX.ZMPCAS04.INVOK.SAT.JUL,
//             DISP=SHR
//MISNVO    DD DSN=MXCP.ZM.FIX.ZMPCAS04.INVOK.SAT.AGO,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=201,DSORG=PS,BLKSIZE=0)
//*
//*********************************************************************
//* PASO     : ZMWCB008
//* OBJETIVO : SORT DEL INVENTARIO
//*            SELECCIONANDO UNICAMENTE LOS CAMPOS NECESARIOS
//*            ORDENANDO LA INFORMACION POR ANIO DE INFORMACION,BANCO
//*            CONTRATO, SECUENCIA,PRODUCTO Y DIVISA.
//*                *********   SEPTIEMBRE ************
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMWCB008 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT    DD SYSOUT=*
//SORTIN    DD DSN=MXCP.ZM.FIX.SAT.CBSFI.SEP,
//             DISP=SHR
//SORTOUT   DD DSN=MXCP.ZM.FIX.ZMPCAS04.INVOK.SORT.SEP,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=242,DSORG=PS,BLKSIZE=0)
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZMWCB014),
//             DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMWCB007
//* OBJETIVO : CRUZA LA INFORMACION DEL SAT CONTRA LA DEL INVENTARIO
//*            PARA OBTENER LOS SALDOS CORRESPONDIENTES DE LA FECHA
//*            DE INFORMACION
//* PROGRAMA : ZM3CB013
//*********************************************************************
//ZMWCB007  EXEC PGM=ZM3CB013,COND=(4,LT)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPCAS04.INVOK.SORT.SEP,
//             DISP=SHR
//MISSAT    DD DSN=MXCP.ZM.FIX.ZMPCAS04.INVOK.SAT.AGO,
//             DISP=SHR
//MISNVO    DD DSN=MXCP.ZM.FIX.ZMPCAS04.INVOK.SAT.SEP,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=201,DSORG=PS,BLKSIZE=0)
//*
//*********************************************************************
//* PASO     : ZMWCB006
//* OBJETIVO : SORT DEL INVENTARIO
//*            SELECCIONANDO UNICAMENTE LOS CAMPOS NECESARIOS
//*            ORDENANDO LA INFORMACION POR ANIO DE INFORMACION,BANCO
//*            CONTRATO, SECUENCIA,PRODUCTO Y DIVISA.
//*                *********   OCTUBRE    ************
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMWCB006 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT    DD SYSOUT=*
//SORTIN    DD DSN=MXCP.ZM.FIX.SAT.CBSFI.OCT,
//             DISP=SHR
//SORTOUT   DD DSN=MXCP.ZM.FIX.ZMPCAS04.INVOK.SORT.OCT,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=242,DSORG=PS,BLKSIZE=0)
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZMWCB014),
//             DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMWCB005
//* OBJETIVO : CRUZA LA INFORMACION DEL SAT CONTRA LA DEL INVENTARIO
//*            PARA OBTENER LOS SALDOS CORRESPONDIENTES DE LA FECHA
//*            DE INFORMACION
//* PROGRAMA : ZM3CB013
//*********************************************************************
//ZMWCB005  EXEC PGM=ZM3CB013,COND=(4,LT)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPCAS04.INVOK.SORT.OCT,
//             DISP=SHR
//MISSAT    DD DSN=MXCP.ZM.FIX.ZMPCAS04.INVOK.SAT.SEP,
//             DISP=SHR
//MISNVO    DD DSN=MXCP.ZM.FIX.ZMPCAS04.INVOK.SAT.OCT,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=201,DSORG=PS,BLKSIZE=0)
//*
//*********************************************************************
//* PASO     : ZMWCB004
//* OBJETIVO : SORT DEL INVENTARIO
//*            SELECCIONANDO UNICAMENTE LOS CAMPOS NECESARIOS
//*            ORDENANDO LA INFORMACION POR ANIO DE INFORMACION,BANCO
//*            CONTRATO, SECUENCIA,PRODUCTO Y DIVISA.
//*                *********   NOVIEMBRE  ************
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMWCB004 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT    DD SYSOUT=*
//SORTIN    DD DSN=MXCP.ZM.FIX.SAT.CBSFI.NOV,
//             DISP=SHR
//SORTOUT   DD DSN=MXCP.ZM.FIX.ZMPCAS04.INVOK.SORT.NOV,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=242,DSORG=PS,BLKSIZE=0)
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZMWCB014),
//             DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMWCB003
//* OBJETIVO : CRUZA LA INFORMACION DEL SAT CONTRA LA DEL INVENTARIO
//*            PARA OBTENER LOS SALDOS CORRESPONDIENTES DE LA FECHA
//*            DE INFORMACION
//* PROGRAMA : ZM3CB013
//*********************************************************************
//ZMWCB003  EXEC PGM=ZM3CB013,COND=(4,LT)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPCAS04.INVOK.SORT.NOV,
//             DISP=SHR
//MISSAT    DD DSN=MXCP.ZM.FIX.ZMPCAS04.INVOK.SAT.OCT,
//             DISP=SHR
//MISNVO    DD DSN=MXCP.ZM.FIX.ZMPCAS04.INVOK.SAT.NOV,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=201,DSORG=PS,BLKSIZE=0)
//*
//*********************************************************************
//* PASO     : ZMWCB002
//* OBJETIVO : SORT DEL INVENTARIO
//*            SELECCIONANDO UNICAMENTE LOS CAMPOS NECESARIOS
//*            ORDENANDO LA INFORMACION POR ANIO DE INFORMACION,BANCO
//*            CONTRATO, SECUENCIA,PRODUCTO Y DIVISA.
//*                *********   DICIEMBRE  ************
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMWCB002 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT    DD SYSOUT=*
//SORTIN    DD DSN=MXCP.ZM.FIX.SAT.CBSFI.DIC,
//             DISP=SHR
//SORTOUT   DD DSN=MXCP.ZM.FIX.ZMPCAS04.INVOK.SORT.DIC,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=242,DSORG=PS,BLKSIZE=0)
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZMWCB014),
//             DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMWCB001
//* OBJETIVO : CRUZA LA INFORMACION DEL SAT CONTRA LA DEL INVENTARIO
//*            PARA OBTENER LOS SALDOS CORRESPONDIENTES DE LA FECHA
//*            DE INFORMACION
//* PROGRAMA : ZM3CB013
//*********************************************************************
//ZMWCB001  EXEC PGM=ZM3CB013,COND=(4,LT)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPCAS04.INVOK.SORT.DIC,
//             DISP=SHR
//MISSAT    DD DSN=MXCP.ZM.FIX.ZMPCAS04.INVOK.SAT.NOV,
//             DISP=SHR
//MISNVO    DD DSN=MXCP.ZM.FIX.VECTOR.CBS09.MERCAP01,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=201,BLKSIZE=0,DSORG=PS)
//*
