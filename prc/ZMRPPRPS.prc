//ZMRPPRPS PROC
//*
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =B=\BANCA PATRIMONIAL/=P=                      *
//*                     <<  ESTADOS DE CUENTA  >>                      *
//*                     <<     (MENSUALES)     >>                      *
//*                                                                    *
//* APLICACION: SISTEMA INTEGRAL DE VALORES    (S.I.V.A.)              *
//*                                                                    *
//* PROCESO   : ZMRPPRPS/BPRP0RPS                                      *
//*                                                                    *
//* OBJETIVO  : VERIFICA LA CONDICION LINEA  'CBRPSDIB_CIC_PR', QUE EL *
//*             USUARIO (ANS  FIJO) DISPARA, PARA ASI, FORZAR LA CARGA *
//*             EN EL ACTIVO  DE LA MALLA 'CBRPSDIB',  RELACIONADA CON *
//*             EL GRUPO  DE  REPROCESO BP,  QUE PERMITE  EJECUTAR SUS *
//*             JOB'S  EN CADENA O INDIVIDUALMENTE.                    *
//*                                                                    *
//* CONDICION       MALLA     JOB      DESCRIPCION DE REPROCESO        *
//* --------------- --------- -------- ------------------------------- *
//* CBRPSDIB_CIC_PR CBRPSDIB  CBRP0RPS SELLOS, VERIFICA CONDICION      *
//* --------------- --------- -------- ------------------------------- *
//*                 CONTIENE: MZMP9I14 RECUPERA ARCHIVOS DE SELLOS ... *
//*                           MZMP9I15 RECUPERA ARCHIVOS DE CIFRAS ... *
//*                           MZMP9I16 RECUPERA ARCHIVOS DE REPORTE... *
//*                           BCUENR26 PEGA SELLOS FISCALES AL ARCH... *
//*                           MZMP9M05 TRANSMISION DE ARCHIVOS CON ... *
//*                           MZMP9I03 TRANSMISION DE ARCHIVO DE CI... *
//*                           BCUENR27 RESPALDO DE ARCHIVOS DE ESTA... *
//*                           MZMP9D09 TRANSFIERE ARCHIVOS PARA RES... *
//*                                                                    *
//* REALIZO   : HITSS        (XM01480 / VICENTE VILLARRUEL RAYON)      *
//*                                                                    *
//* FECHA     : MAYO DE 2015                                           *
//*                                                                    *
//*====================================================================*
//* PASO      : ZMPRPS05                                               *
//* PROGRAMA  : CTMCND                                                 *
//* FUNCION   : VERIFICAR CONDICION PARA CONTROL-M.                    *
//*--------------------------------------------------------------------*
//ZMPRPS05 EXEC  PGM=CTMCND,PARM='CHECK COND CBRPSDIB_CIC_PR WDATE'
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD SYSOUT=*
//SYSPRINT DD DUMMY
//SYSUDUMP DD DUMMY
//DAPRINT  DD SYSOUT=*
//DACNDIN  DD DDNAME=SYSIN
//**********************************************************************
