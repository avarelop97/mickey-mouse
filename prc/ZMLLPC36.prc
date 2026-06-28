//ZMLLPC36 PROC                                                         00040000
//**********************************************************************00003000
//*                     C A S A   D E   B O L S A                      *00003000
//*                     =========================                      *00003000
//*                     <<< MERCADO DE DINERO >>>                      *00003000
//*                                                                    *00003000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00003000
//*                                                                    *00003000
//*   PROCESO   :  BCLLPC36                                            *00003000
//*                                                                    *00003000
//*   OBJETIVO  :  VALIDA CARGA MANUAL DE COMPRA VENTA DIFO            *00003000
//*                                (DEFINITIVO)                        *00003000
//*   PERIODICIDAD    :  DIARIA                                        *00003000
//*                                                                    *00003000
//**********************************************************************00003000
//*---------------------------------------------------------------------
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4OJ083
//*---------------------------------------------------------------------
//PLC36P03 EXEC PGM=IKJEFT01
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLP35T03),DISP=SHR
//*
//**********************************************************************
//*        SE ADICIONA CONDICION PARA VALUACIONES PRELIMINARES         *
//*                PARA QUE SEA TOMADA POR CTL-M                       *
//**********************************************************************
//PLC36P02 EXEC  PGM=CTMCND,PARM='ADD COND CBJLPC33_OK WDATE',
//         COND=(0,NE,PLC36P03)
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
//*     SE ADICIONA CONDICION PARA COMPRA-VENTA BATCH PRELIMINAR       *
//*                PARA QUE SEA TOMADA POR CTL-M                       *
//**********************************************************************
//PLC36P01 EXEC  PGM=CTMCND,PARM='ADD COND CBJLPC36_OK WDATE',
//         COND=(4,NE,PLC36P03)
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
