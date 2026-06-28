//ZMND3700 PROC CONDI='IMPRIME_MDD',
//         FECHA=0101
//**********************************************************************
//* SISTEMA        :  MODULO DE SIVA MULTI EMPRESA ALTAMIRIZADO (ZM)   *
//*                                                                    *
//* PROCESO        :  CBUDND37   (DISPARADOR)                          *
//*                   ZMND3700   PROCEDIMIENTO                         *
//*                                                                    *
//* OBJETIVO       :  DAR DE ALTA LA CONDICION PARA ARRANCAR LA        *
//*                   MISION DE IMPRESION AUTOMATICA SOC. DE INV.      *
//**                                                                   *
//* REALIZO        :  SOFTTEK (ANLR)                                   *
//* FECHA          :  MAYO 2010                                        *
//**********************************************************************
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*   MARCA      AUTOR    FECHA   DESCRIPCION                          *
//*-----------  -------  -------  ------------------------------------ *
//*FS-0.0.0-00  XXXXXXX  DDMMMAA  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//ZLF37P05 EXEC  PGM=CTMCND,PARM='ADD COND &CONDI &FECHA'
//STEPLIB  DD   DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD,DISP=SHR                 02650000
//DALOG    DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                 02660000
//DARESF   DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                 02680000
//DAPARM   DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//PRTDBG   DD   SYSOUT=Z                                                00300000
//SYSPRINT DD   DUMMY                                                   00310000
//SYSUDUMP DD   DUMMY                                                   00320000
//DAPRINT  DD   SYSOUT=Z                                                00330000
//DACNDIN  DD   DDNAME=SYSIN                                            00340000
//*--------------------------------------------------------------------*
//*                      FIN ZMND3700                                  *
//*--------------------------------------------------------------------*
