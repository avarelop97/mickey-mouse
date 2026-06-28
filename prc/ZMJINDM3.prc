//ZMJINDM3 PROC
//*
//**********************************************************************
//**                                                                   *
//** SISTEMA        :  MUV                                             *
//**                                                                   *
//** PROCESO        :  ZMJINDM2(BCJINDM3)                              *
//**                                                                   *
//** OBJETIVO       :  GENERA CONDICION DE ENTRADA DEL PROCESO AJJCEXCI*
//**                                                                   *
//** CORRE ANTES DE :  AJJCEXCI                                        *
//**                                                                   *
//**                                                                   *
//** DESPUES DE     :  N/A                                             *
//**                                                                   *
//**                                                                   *
//** OBSERVACIONES  :  CORRE A PETICION DEL USUARIO                    *
//**                                                                   *
//**                                                                   *
//** REALIZO        :                                                  *
//*                    FEBRERO 2014.                                   *
//**********************************************************************
//* BITACORA DE MODIFICACIONES :                                       *
//*--------------------------------------------------------------------*
//*MODIF |  FECHA   |USUARIO|  PASO |DESCRIPCION                       *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//* PROGRAMA:                                                          *
//* OBJETIVO: ADICIONA CONDICION PARA QUE SE DISPARE EL  PROCESO       *
//*           AJJCEXCI PARA SOBRE ESCRIBIR CONSTANCIAS SAT.            *
//*--------------------------------------------------------------------*
//PJINDP01 EXEC PGM=IOACND,PARM='ADD COND BCJINDM3_OK WDATE'
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
