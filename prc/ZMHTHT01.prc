//ZMHTHT01 PROC
//*--------------------------------------------------------------------*
//* PROCESO      : ZMHTHT01                                            *
//* PERIODICIDAD : DIARIO                                              *
//* OBJETIVO     : ADICIONA CONDICION PARA QUE SEA TOMADA POR EQUITY   *
//*                PARA RECIBIR EL ARCHIVO DE TICKETS                  *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//*--------------------------------------------------------------------*
//*   PASO    :    ZMDN4301                                            *
//*   PROGRAMA:    IOACND                                              *
//*   OBJETIVO:    ADICIONA CONDICION PARA QUE SEA TOMADA POR MEDC     *
//*--------------------------------------------------------------------*
//ZMTHTC01 EXEC PGM=IOACND,
//         PARM='ADD COND CBXCRX_MYLYRNP0001 &DIA.&MES'
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
//*                         TERMINA ZMHTHT01                           *
//*--------------------------------------------------------------------*
