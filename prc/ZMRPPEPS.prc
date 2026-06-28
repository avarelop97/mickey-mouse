//ZMRPPEPS PROC
//*
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     ========C=====B==========                      *
//*                     <<  ESTADOS DE CUENTA  >>                      *
//*                     <<     (MENSUALES)     >>                      *
//*                                                                    *
//* APLICACION: SISTEMA INTEGRAL DE VALORES    (S.I.V.A.)              *
//*                                                                    *
//* PROCESO   : ZMRPPEPS/CBRP0EPS                                      *
//*                                                                    *
//* OBJETIVO  : VERIFICA LA CONDICION LINEA  'CBEPSDIC_CIC_PR', QUE EL *
//*             USUARIO (ANS  FIJO) DISPARA, PARA ASI, FORZAR LA CARGA *
//*             EN EL ACTIVO  DE LA MALLA 'CBEPSDIC',  RELACIONADA CON *
//*             EL GRUPO  DE  REPROCESO CB,  QUE PERMITE  EJECUTAR SUS *
//*             JOB'S  EN CADENA O INDIVIDUALMENTE.                    *
//*                                                                    *
//* CONDICION       MALLA     JOB      DESCRIPCION DE REPROCESO        *
//* --------------- --------- -------- ------------------------------- *
//* CBEPSDIC_CIC_PR CBEPSDIC  CBRP0EPS SELLOS, VERIFICA CONDICION      *
//* --------------- --------- -------- ------------------------------- *
//*                 CONTIENE: MZMP9IN3 TRANSFIERE ARCHIVO CON SELLO... *
//*                           CBUENM32 PRENDE CONDICION DE OK A PU ... *
//*                           CBUENM35 PRENDE CONDICION DE OK A PU ... *
//*                           MZMP9ME1 TRANSFER DE ARCHIVO FORMATEA... *
//*                           MZMP9IN1 RECUPERA ARCHIVOS DE SELLOS ... *
//*                           CBUENM20 GENERACION DE ESTADOS DE CUE... *
//*                           CBUENM28 RESPALDO DE ARCHIVOS DE ESTA... *
//*                                                                    *
//* REALIZO   : HITSS        (XM01480 / VICENTE VILLARRUEL RAYON)      *
//*                                                                    *
//* FECHA     : MAYO DE 2015                                           *
//*                                                                    *
//*====================================================================*
//* PASO      : ZMPEPS05                                               *
//* PROGRAMA  : CTMCND                                                 *
//* FUNCION   : VERIFICAR CONDICION PARA CONTROL-M.                    *
//*--------------------------------------------------------------------*
//ZMPEPS05 EXEC  PGM=CTMCND,PARM='CHECK COND CBEPSDIC_CIC_PR WDATE'
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
