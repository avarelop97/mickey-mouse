//ZMRPPERP PROC
//*
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     ========C=====B==========                      *
//*                     <<  ESTADOS DE CUENTA  >>                      *
//*                     <<     (MENSUALES)     >>                      *
//*                                                                    *
//* APLICACION: SISTEMA INTEGRAL DE VALORES    (S.I.V.A.)              *
//*                                                                    *
//* PROCESO   : ZMRPPERP/CBRP0ERP                                      *
//*                                                                    *
//* OBJETIVO  : VERIFICA LA CONDICION LINEA  'CBERPDIC_CIC_PR', QUE EL *
//*             USUARIO (ANS  FIJO) DISPARA, PARA ASI, FORZAR LA CARGA *
//*             EN EL ACTIVO  DE LA MALLA 'CBERPDIC',  RELACIONADA CON *
//*             EL GRUPO DE REPROCESO COMUN, QUE PERMITE  EJECUTAR SUS *
//*             JOB'S  EN CADENA O INDIVIDUALMENTE.                    *
//*                                                                    *
//* CONDICION       MALLA     JOB      DESCRIPCION DE REPROCESO        *
//* --------------- --------- -------- ------------------------------- *
//* CBERPDIC_CIC_PR CBERPDIC  CBRP0ERP COMUN, VERIFICA CONDICION       *
//* --------------- --------- -------- ------------------------------- *
//*                 CONTIENE: CBUENM51 COPIA TABLAS: ESPEJO ZMDTMG9... *
//*                           CBUENM52 COPIA TABLAS: ESPEJO ZMDTMG1... *
//*                                                                    *
//* REALIZO   : HITSS        (XM01480 / VICENTE VILLARRUEL RAYON)      *
//*                                                                    *
//* FECHA     : MARZO DE 2015                                          *
//*                                                                    *
//*====================================================================*
//* PASO      : ZMPERP05                                               *
//* PROGRAMA  : CTMCND                                                 *
//* FUNCION   : VERIFICAR CONDICION PARA CONTROL-M.                    *
//*--------------------------------------------------------------------*
//ZMPERP05 EXEC  PGM=CTMCND,PARM='CHECK COND CBERPDIC_CIC_PR WDATE'
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
