//ZMARCD15 PROC
//*--------------------------------------------------------------------*
//* PROCESO      : ZMARCD15                                            *
//* PERIODICIDAD : DIARIO                                              *
//* OBJETIVO     : ADICIONA CONDICION.                                 *
//*                                                                    *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//*--------------------------------------------------------------------*
//*   PASO    :    ZMARCD01                                            *
//*   PROGRAMA:    IOACND                                              *
//*   OBJETIVO:    ADICIONA CONDICION PARA QUE SEA TOMADA POR MEDC.    *
//*--------------------------------------------------------------------*
//ZMARCD01 EXEC PGM=IOACND,
//         PARM='ADD COND CBXCRX_MMZMHCP9001 &DIA.&MES'
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
//*                         TERMINA ZMARCD15                           *
//*--------------------------------------------------------------------*
