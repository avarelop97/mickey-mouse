//ZMRECF04 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : CFDI 3.3 - CANCELACIONES                            *
//* PROCESO      : ZMRECF04                                            *
//* PERIODICIDAD : DIARIO                                              *
//* OBJETIVO     : ADICIONA CONDICION PARA QUE SEA TOMADA POR MEDC     *
//*                PARA RETIMBRAR EDC DE BANCA                         *
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
//         PARM='ADD COND CBXCRX_MEVFNP0F72 &DIA.&MES'
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
//*   PASO    :    ZMDB4300                                            *
//*   PROGRAMA:    IOACND                                              *
//*   OBJETIVO:    ADICIONA CONDICION PARA QUE SEA TOMADA POR MEDC     *
//*--------------------------------------------------------------------*
//ZMDB4300 EXEC PGM=IOACND,COND=(04,LT),
//         PARM='ADD COND CBXCRX_MEVFNP0F74 &DIA.&MES'
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
//*   PASO    :    ZMDB4290                                            *
//*   PROGRAMA:    IOACND                                              *
//*   OBJETIVO:    ADICIONA CONDICION PARA QUE SEA TOMADA POR MEDC     *
//*--------------------------------------------------------------------*
//ZMDB4290 EXEC PGM=IOACND,COND=(04,LT),
//         PARM='ADD COND CBXCRX_MEVFNP0F75 &DIA.&MES'
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
//*   PASO    :    ZMDB4280                                            *
//*   PROGRAMA:    IOACND                                              *
//*   OBJETIVO:    ADICIONA CONDICION PARA QUE SEA TOMADA POR MEDC     *
//*--------------------------------------------------------------------*
//ZMDB4280 EXEC PGM=IOACND,COND=(04,LT),
//         PARM='ADD COND CBXCRX_MEVFNP0F76 &DIA.&MES'
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
//*   PASO    :    ZMDB4270                                            *
//*   PROGRAMA:    IOACND                                              *
//*   OBJETIVO:    ADICIONA CONDICION PARA QUE SEA TOMADA POR MEDC     *
//*--------------------------------------------------------------------*
//ZMDB4270 EXEC PGM=IOACND,COND=(04,LT),
//         PARM='ADD COND CBXCRX_MEVFNP0F77 &DIA.&MES'
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
//*   PASO    :    ZMDB4260                                            *
//*   PROGRAMA:    IOACND                                              *
//*   OBJETIVO:    ADICIONA CONDICION PARA QUE SEA TOMADA POR MEDC     *
//*--------------------------------------------------------------------*
//ZMDB4260 EXEC PGM=IOACND,COND=(04,LT),
//         PARM='ADD COND CBXCRX_MEVFNP0F78 &DIA.&MES'
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
//*                         TERMINA ZMCFDB43                           *
//*--------------------------------------------------------------------*
