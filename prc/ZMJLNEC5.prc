//ZMJLNEC5 PROC
//*--------------------------------------------------------------------*
//*                                                                    *
//* SISTEMA  : ZM@                                                     *
//*                                                                    *
//* JCL      : CBJLNEC5                                                *
//* PROCESO  : ZMJLNEC5                                                *
//*                                                                    *
//* OBJETIVO : GENERA CONDICIÓN PARA CARGA DE PRECIOS COVAF           *
//*                                                                    *
//* PERIODICIDAD: SE EJECUTA DIARIAMENTE A LAS 7:00 A.M                *
//*                                                                    *
//* FECHA    : DICIEMBRE DE 2013.                                      *
//*                                                                    *
//*--------------------------------------------------------------------*
//**********************************************************************
//*        L O G    D E   M O D I F I C A C I O N E S
//**********************************************************************
//*  MARCA   AUTHOR  FECHA         DESCRIPCION
//*  -----   ------  -----         -----------------------
//**********************************************************************
//*
//**********************************************************************
//**********************************************************************
//* PROGRAMA: CTMCND                                                   *
//*           GENERA CONDICION PARA CONTROL M                          *
//**********************************************************************
//ZMNEC501 EXEC PGM=CTMCND,PARM='ADD COND CBJLNEC5_IN_OK WDATE',
//          COND=(4,LT)
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
//**********************************************************************
//*                     FIN DEL  PROCESO ZMJLNEC5                      *
//**********************************************************************
