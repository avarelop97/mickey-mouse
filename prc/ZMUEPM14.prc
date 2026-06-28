//ZMUEPM14 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : CAMBIO AL NUEVO ESQUEMA EDC                         *
//* PROCESO      : ZMUEPM14                                            *
//* PERIODICIDAD : MENSUAL                                             *
//* OBJETIVO     : ADICIONA CONDICION PARA QUE SEA TOMADA POR PROCESAR *
//*                ARCHIVOS CON SELLOS FISCALES CASA DE BOLSA          *
//* REALIZO      : CAPGEMINI                                           *
//* FECHA        : 12 DE JULIO DE 2012                                 *
//*                                                                    *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//* FS-1.0.0-01  XMBB131  120712 SE ELIMINO TODOS LOS PASOS DEL PROC,  *
//*                              SE AGREGO PASO ZMPM1401               *
//*              XM07413  240912  SE CORRIGE CONDICION ARRANQUE MEDC   *
//*              CONDICION ANTERIOR:  MXPCB_CBUENM1401_CO              *
//*              CONDICION NUEVA   : MXPBCP_MJENCF0500_CO              *
//*--------------------------------------------------------------------*
//*   PASO    :    ZMPM1401                                            *
//*   PROGRAMA:    IOACND                                              *
//*   OBJETIVO:    ADICIONA CONDICION PARA QUE SEA TOMADA POR PU       *
//*                PROCESAR ARCHIVOS CON SELLOS FISCALES CASA DE BOLSA *
//*  FS-1.0.0-01   SE AGREGO PASO ZMPM1401                             *
//*--------------------------------------------------------------------*
//ZMPM1401 EXEC PGM=IOACND,
//         PARM='ADD COND MXPBCP_MJENCF0500_CO &DIA.&MES'
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//*
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
//*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*                         TERMINA ZMUEPM14                           *
//*--------------------------------------------------------------------*
