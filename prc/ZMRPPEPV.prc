//ZMRPPEPV PROC
//*
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     ========C=====B==========                      *
//*                     <<  ESTADOS DE CUENTA  >>                      *
//*                     <<     (MENSUALES)     >>                      *
//*                                                                    *
//* APLICACION: SISTEMA INTEGRAL DE VALORES    (S.I.V.A.)              *
//*                                                                    *
//* PROCESO   : ZMRPPEPV/CBRP0EPV                                      *
//*                                                                    *
//* OBJETIVO  : VERIFICA LA CONDICION LINEA  'CBEPVDIC_CIC_PR', QUE EL *
//*             USUARIO (ANS  FIJO) DISPARA, PARA ASI, FORZAR LA CARGA *
//*             EN EL ACTIVO  DE LA MALLA 'CBEPVDIC',  RELACIONADA CON *
//*             EL GRUPO  DE  REPROCESO CB,  QUE PERMITE  EJECUTAR SUS *
//*             JOB'S  EN CADENA O INDIVIDUALMENTE.                    *
//*                                                                    *
//* CONDICION       MALLA     JOB      DESCRIPCION DE REPROCESO        *
//* --------------- --------- -------- ------------------------------- *
//* CBEPVDIC_CIC_PR CBEPVDIC  CBRP0EPV VOBO, VERIFICA CONDICION        *
//* --------------- --------- -------- ------------------------------- *
//*                 CONTIENE: CBUENM61 CARGA DE INFORMACION PRIMERA... *
//*                           CBUENM62 CARGA DE INFORMACION SEGUNDA... *
//*                           CBUENM63 GENERA INFORMACION DE ESTADO... *
//*                           MZMP9ME2 TRANSFER DE ARCHIVO FORMATEA... *
//*                           CBUENM64 GENERA ESTADOS DE CUENTA    ... *
//*                           CBUENM67 GENERA MUESTRA Y REPORTE DE ... *
//*                           CBUENM70 GENERA ESTADOS DE CUENTA CON... *
//*                           CBUENM71 GENERA ESTADOS DE CUENTA CON... *
//*                           CBUENM72 PEGA SELLO FISCAL AL ARCHIVO... *
//*                                                                    *
//* REALIZO   : HITSS        (XM01480 / VICENTE VILLARRUEL RAYON)      *
//*                                                                    *
//* FECHA     : MAYO DE 2015                                           *
//*                                                                    *
//*====================================================================*
//* PASO      : ZMPEPV05                                               *
//* PROGRAMA  : CTMCND                                                 *
//* FUNCION   : VERIFICAR CONDICION PARA CONTROL-M.                    *
//*--------------------------------------------------------------------*
//ZMPEPV05 EXEC  PGM=CTMCND,PARM='CHECK COND CBEPVDIC_CIC_PR WDATE'
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
