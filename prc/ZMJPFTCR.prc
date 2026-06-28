//ZMJPFTCR PROC
//*--------------------------------------------------------------------*
//* APLICATIVO  : ZM@ CASA DE BOLSA.                                   *
//* DECRIPCION  : FATCA + CRS                                          *
//* AUTOR       : INDRA JRTH                                           *
//* FECHA       : ENERO  2020.                                         *
//*                               DESCRIPCION:                         *
//*                                                                    *
//*                               1. LEVANTA CONDICION NAJFATC1_OK_PR  *
//*                                  PARA CORRER JOB DE TRANSMISION DE *
//*                                  REPORTES FATCA+CRS NAJFATC1 (BCM).*
//*                               2. LEVANTA CONDICION NAJFATC2_OK_PR  *
//*                                  PARA CORRER JOB DE TRANSMISION DE *
//*                                  REPORTES FATCA+CRS NAJFATC2 (CBP) *
//*--------------------------------------------------------------------*
//*            L O G    D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA     AUTOR    FECHA   DESCRIPCION                          *
//* ---------- --------- ------- ------------------------------------- *
//*                                                                    *
//*                                                                    *
//*                                                                    *
//*                                                                    *
//*                                                                    *
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO       : ZMFTRP02.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : ADICIONA CONDICION PARA ACTIVAR JCL DE TRANSMISION EN *
//*              ALTAMIRA.
//*--------------------------------------------------------------------*
//ZMFTRP02 EXEC  PGM=IOACND,
//         PARM='ADD COND NAJFATC2_OK_PR WDATE'
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
//*--------------------------------------------------------------------*
//* PASO       : ZMFTRP01.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : ADICIONA CONDICION PARA ACTIVAR JCL DE TRANSMISION EN *
//*              ALTAMIRA.                                             *
//*--------------------------------------------------------------------*
//ZMFTRP01 EXEC  PGM=IOACND,COND=(4,LT),
//         PARM='ADD COND NAJFATC1_OK_PR WDATE'
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
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMJPFTCR                        *
//*--------------------------------------------------------------------*
