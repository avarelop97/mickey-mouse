//ZMRPPRPE PROC
//*
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =B=\BANCA PATRIMONIAL/=P=                      *
//*                     <<  ESTADOS DE CUENTA  >>                      *
//*                     <<     (MENSUALES)     >>                      *
//*                                                                    *
//* APLICACION: SISTEMA INTEGRAL DE VALORES    (S.I.V.A.)              *
//*                                                                    *
//* PROCESO   : ZMRPPRPE/BPRP0RPE                                      *
//*                                                                    *
//* OBJETIVO  : VERIFICA LA CONDICION LINEA  'CBRPEDIB_CIC_PR', QUE EL *
//*             USUARIO (ANS  FIJO) DISPARA, PARA ASI, FORZAR LA CARGA *
//*             EN EL ACTIVO  DE LA MALLA 'CBRPEDIB',  RELACIONADA CON *
//*             EL GRUPO  DE  REPROCESO BP,  QUE PERMITE  EJECUTAR SUS *
//*             JOB'S  EN CADENA O INDIVIDUALMENTE.                    *
//*                                                                    *
//* CONDICION       MALLA     JOB      DESCRIPCION DE REPROCESO        *
//* --------------- --------- -------- ------------------------------- *
//* CBRPEDIB_CIC_PR CBRPEDIB  CBRP0RPE BP, VERIFICA CONDICION          *
//* --------------- --------- -------- ------------------------------- *
//*                 CONTIENE: CBUENM55 GENERA ARCHIVOS BPIGO PARA I... *
//*                           CBUENM59 TRANSFIERE ARCHIVOS DE HOST ... *
//*                           CBUENM58 ACTUALIZA TABLA HISTORICA DE... *
//*                           BCUENR17 CALCULA INVERSION TOTAL     ... *
//*                           BCUENR18 CALCULO DE RENDIMIENTO MENSU... *
//*                           BCUENR19 GENERACION DE ESTADOS DE CUE... *
//*                           BCUENR20 ACTUALIZA TABLA HISTORICA DE... *
//*                           BCUENR21 GENERACION DE ESTADOS DE CUE... *
//*                           BCUENR22 GENERA ESTADOS DE CUENTA CON... *
//*                           BCUENR23 GENERA ESTADOS DE CUENTA CON... *
//*                           BCUENR24 GENERA MUESTRA CON FORMATO I... *
//*                           MZMP9M04 TRANSFER DE ARCHIVO FORMATEA... *
//*                           BCUENR32 GENERA ARCHIVOS DE SDI Y RIE... *
//*                           BCUENR34 TRANSFER DE ARCHIVOS A SDI Y... *
//*                                                                    *
//* REALIZO   : HITSS        (XM01480 / VICENTE VILLARRUEL RAYON)      *
//*                                                                    *
//* FECHA     : MAYO DE 2015                                           *
//*                                                                    *
//*====================================================================*
//* PASO      : ZMPRPE05                                               *
//* PROGRAMA  : CTMCND                                                 *
//* FUNCION   : VERIFICAR CONDICION PARA CONTROL-M.                    *
//*--------------------------------------------------------------------*
//ZMPRPE05 EXEC  PGM=CTMCND,PARM='CHECK COND CBRPEDIB_CIC_PR WDATE'
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
