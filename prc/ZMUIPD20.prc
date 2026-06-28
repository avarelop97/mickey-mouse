//ZMUIPD20 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - CASA DE BOLSA.                                 *
//* PROCESO      : ZMUIPD20.                                           *
//* PERIODICIDAD : DIARIA.                                             *
//* OBJETIVO     : PROCESAR ARC. SOLICITADO AL SERVIDOR                *
//* REALIZO      : FABRICA DE SOFTWARE CAPGEMINI.                      *
//* FECHA        : 29 DE NOVIEMBRE DE 2021.                            *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*
//*********************************************************************
//*   PROGRAMA:    IOACND                                             *
//*   OBJETIVO:    ADICIONA CONDICION PARA QUE SEA TOMADA POR AJ Y    *
//*                EJECUTE AUTOMATICAMENTE EL PROCESO NAJCCB31.       *
//*********************************************************************
//ZM20PD01 EXEC PGM=IOACND,PARM='ADD COND BCUIND20_OK_PR WDATE',
//         COND=(4,LT)
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD DUMMY
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
//*
//*------------------------------ -------------------------------------*
//*                    FIN DEL PROCESO ZMUIPD26                        *
//*--------------------------------------------------------------------*
