//ZMUENE12 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : CFDI 3.3 - TIPO EGRESOS                             *
//* PROCESO      : ZMUENE12                                            *
//* PERIODICIDAD : MENSUAL                                             *
//* OBJETIVO     : ADICIONA CONDICION PARA QUE SEA TOMADA POR MEDC     *
//*                PARA PROCESAR FACTURA DE EGRESOS                    *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//*--------------------------------------------------------------------*
//*   PASO    :    ZMNE1201                                            *
//*   PROGRAMA:    IOACND                                              *
//*   OBJETIVO:    ADICIONA CONDICION PARA QUE SEA TOMADA POR PU       *
//*--------------------------------------------------------------------*
//ZMNE1201 EXEC PGM=IOACND,
//         PARM='ADD COND CBXCRX_MEVFNP4095 &DIA.&MES'
//*
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
//*
//*--------------------------------------------------------------------*
//*                         TERMINA ZMUENE12                           *
//*--------------------------------------------------------------------*
