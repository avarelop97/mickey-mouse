//ZMND3100 PROC                                                         00010002
//**********************************************************************00020002
//*                                                                    *00030002
//* SISTEMA        :  SIVA.                                            *00040002
//*                                                                    *00050002
//* PROCESO        :  ZMND3100.                                        *00060002
//*                                                                    *00080002
//* OBJETIVO       :  GENERAR REPORTE DE CANCELACION DE CREDITOS.      *00090002
//*                                                                    *00090002
//* REALIZACION    :  SOFTTEK (DASR).                 03/MAY/2010.     *00160002
//*                                                                    *00170002
//**********************************************************************
//* PASO    : ZLF31P05                                                 *
//* PROGRAMA: ZM4DLT52                                                 *
//* OBJETIVO: EMITE REPORTE DE CANCELACION DE CREDITOS                 *
//*           PASO REINICIABLE.                                        *
//**********************************************************************
//ZLF31P05 EXEC PGM=IKJEFT01
//ZM4T52R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF31T05),DISP=SHR
//*
//*******************   FIN DEL PROCESO ZMND3100   *********************
