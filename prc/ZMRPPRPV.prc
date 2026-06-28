//ZMRPPRPV PROC
//*
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =B=\BANCA PATRIMONIAL/=P=                      *
//*                     <<  ESTADOS DE CUENTA  >>                      *
//*                     <<     (MENSUALES)     >>                      *
//*                                                                    *
//* APLICACION: SISTEMA INTEGRAL DE VALORES    (S.I.V.A.)              *
//*                                                                    *
//* PROCESO   : ZMRPPRPV/BPRP0RPV                                      *
//*                                                                    *
//* OBJETIVO  : VERIFICA LA CONDICION LINEA  'CBRPVDIB_CIC_PR', QUE EL *
//*             USUARIO (ANS  FIJO) DISPARA, PARA ASI, FORZAR LA CARGA *
//*             EN EL ACTIVO  DE LA MALLA 'CBRPVDIB',  RELACIONADA CON *
//*             EL GRUPO  DE  REPROCESO BP,  QUE PERMITE  EJECUTAR SUS *
//*             JOB'S  EN CADENA O INDIVIDUALMENTE.                    *
//*                                                                    *
//* CONDICION       MALLA     JOB      DESCRIPCION DE REPROCESO        *
//* --------------- --------- -------- ------------------------------- *
//* CBRPVDIB_CIC_PR CBRPVDIB  CBRP0RPV VOBO,   VERIFICA CONDICION      *
//* --------------- --------- -------- ------------------------------- *
//*                 CONTIENE: BCUENM17 RESPALDA EN GDGR (F1) SALDOS... *
//*                           BCUENR25 RESPALDA EN GDGR (F1) SALDOS... *
//*                           MZMP9M06 TRANSFER A MEDC DE TODOS LOS... *
//*                                                                    *
//* REALIZO   : HITSS        (XM01480 / VICENTE VILLARRUEL RAYON)      *
//*                                                                    *
//* FECHA     : MAYO DE 2015                                           *
//*                                                                    *
//*====================================================================*
//* PASO      : ZMPRPV05                                               *
//* PROGRAMA  : CTMCND                                                 *
//* FUNCION   : VERIFICAR CONDICION PARA CONTROL-M.                    *
//*--------------------------------------------------------------------*
//ZMPRPV05 EXEC  PGM=CTMCND,PARM='CHECK COND CBRPVDIB_CIC_PR WDATE'
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
