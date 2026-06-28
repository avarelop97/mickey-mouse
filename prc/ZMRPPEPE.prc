//ZMRPPEPE PROC
//*
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     ========C=====B==========                      *
//*                     <<  ESTADOS DE CUENTA  >>                      *
//*                     <<     (MENSUALES)     >>                      *
//*                                                                    *
//* APLICACION: SISTEMA INTEGRAL DE VALORES    (S.I.V.A.)              *
//*                                                                    *
//* PROCESO   : ZMRPPEPE/CBRP0EPE                                      *
//*                                                                    *
//* OBJETIVO  : VERIFICA LA CONDICION LINEA  'CBEPEDIC_CIC_PR', QUE EL *
//*             USUARIO (ANS  FIJO) DISPARA, PARA ASI, FORZAR LA CARGA *
//*             EN EL ACTIVO  DE LA MALLA 'CBEPEDIC',  RELACIONADA CON *
//*             EL GRUPO  DE  REPROCESO CB,  QUE PERMITE  EJECUTAR SUS *
//*             JOB'S  EN CADENA O INDIVIDUALMENTE.                    *
//*                                                                    *
//* CONDICION       MALLA     JOB      DESCRIPCION DE REPROCESO        *
//* --------------- --------- -------- ------------------------------- *
//* CBEPEDIC_CIC_PR CBEPEDIC  CBRP0EPE CB, VERIFICA CONDICION          *
//* --------------- --------- -------- ------------------------------- *
//*                 CONTIENE: CBUENM53 CARGA INFORMACION PARA ESTAD... *
//*                           CBUENM54 GENERA ESTADOS DE CUENTA PAR... *
//*                           CBUENM57 GENERA LISTADO PRECIOS VS. V... *
//*                           CBUENR01 GENERA RENDIMIENTOS EC CBP 1... *
//*                           CBUENR02 GENERA RENDIMIENTOS EC CBP 2... *
//*                           CBUENR03 GENERA RENDIMIENTOS EC CBP 3... *
//*                           CBUENM56 GENERA ARCHIVO PARA EDC DE C... *
//*                           CBUENM60 TRANSFIERE ARCHIVOS A SERVID... *
//*                           BCEGNM02 GENERA ARCHIVO CON POSIC. DE... *
//*                           CBUEGU60 TRANSFIERE ARCHIVOS A SERVID... *
//*                                                                    *
//* REALIZO   : HITSS        (XM01480 / VICENTE VILLARRUEL RAYON)      *
//*                                                                    *
//* FECHA     : MARZO DE 2015                                          *
//*                                                                    *
//*====================================================================*
//* PASO      : ZMPEPE05                                               *
//* PROGRAMA  : CTMCND                                                 *
//* FUNCION   : VERIFICAR CONDICION PARA CONTROL-M.                    *
//*--------------------------------------------------------------------*
//ZMPEPE05 EXEC  PGM=CTMCND,PARM='CHECK COND CBEPEDIC_CIC_PR WDATE'
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
