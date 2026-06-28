//ZMJLNEAF PROC
//*--------------------------------------------------------------------*
//*                                                                    *
//* SISTEMA  : ZM@                                                     *
//*                                                                    *
//* JCL      : CBJLNEAF                                                *
//* PROCESO  : ZMJLNEAF                                                *
//*                                                                    *
//* OBJETIVO : GENERA CONDICIÓN PARA CARGA DE PRECIOS COVAF Y REPORTOS *
//*                                                                    *
//* PERIODICIDAD: SE EJECUTA DIARIAMENTE A LAS 7:00 A.M                *
//*                                                                    *
//* FECHA    : FEBRERO DE 2012                                         *
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
//PHF08T02 EXEC PGM=CTMCND,PARM='ADD COND CBJLNEAF_IN_OK WDATE',
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
//* PROGRAMA: CTMCND                                                   *
//*           GENERA CONDICION PARA CONTROL M                          *
//**********************************************************************
//PHF08T01 EXEC PGM=CTMCND,PARM='ADD COND CBJLNEAM_IN_OK WDATE',
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
//*                     FIN DEL  PROCESO ZMJLNEAF                      *
//**********************************************************************
