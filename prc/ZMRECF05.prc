//ZMRECF05 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : CFDI 3.3 - CANCELACIONES                            *
//* PROCESO      : ZMRECF05                                            *
//* PERIODICIDAD : DIARIO                                              *
//* OBJETIVO     : ADICIONA CONDICION PARA QUE SEA TOMADA POR MEDC     *
//*                PARA RETIMBRAR FAC DE BANCA                         *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//*--------------------------------------------------------------------*
//*   PASO    :    ZMDB4301                                            *
//*   PROGRAMA:    IOACND                                              *
//*   OBJETIVO:    ADICIONA CONDICION PARA QUE SEA TOMADA POR MEDC     *
//*--------------------------------------------------------------------*
//ZMDB4301 EXEC PGM=IOACND,
//         PARM='ADD COND CBXCRX_MEVFNP0F79 &DIA.&MES'
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
//*                         TERMINA ZMRECF05                           *
//*--------------------------------------------------------------------*
