//ZMUEPM68 PROC
//*
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMPM6801                                              *
//* UTILERIA   : IOACND                                                *
//* OBJETIVO   : ADICIONA CONDICION PARA QUE SEA TOMADA POR PU         *
//*--------------------------------------------------------------------*
//ZMPM6801 EXEC PGM=IOACND,
//         PARM='ADD COND MXPBCP_MJENCA0600_CO &DIA.&MES'
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD  DUMMY
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
//*
//*--------------------------------------------------------------------*
//*            TERMINA ZMUEPM68                                        *
//*--------------------------------------------------------------------*
