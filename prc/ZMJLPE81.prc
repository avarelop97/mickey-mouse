//ZMJLPE81 PROC
//**********************************************************************
//*   APLICACION      :  ZM - DISTRIBUCION DE INGRESOS A LAS BANCAS.   *
//*                                                                    *
//*   ELABORADO POR   :  CDA INFORMATICA                               *
//*                                                                    *
//*   OBJETIVO        :  ADICIONA CONDICION PARA EJECUTAR CBJLPC32.    *
//*                                                                    *
//*   FECHA           :  26 DE SEPTIEMBRE DE 2014                      *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//**********************************************************************
//* PASO    : PJL80P01
//* PROGRAMA: CTMCND
//* FUNCION : ADICIONA CONDICION PARA EJECUTAR CBJLPC32.
//**********************************************************************
//PJL80P01 EXEC PGM=CTMCND,PARM='ADD COND CBJLPD81_OK WDATE'
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD SYSOUT=Z
//SYSPRINT DD DUMMY
//SYSUDUMP DD DUMMY
//DAPRINT  DD SYSOUT=Z
//DACNDIN  DD DDNAME=SYSIN
//*--------------------------------------------------------------------*00010000
//*                 F I N   Z M J L P E 8 1                            *00020000
//*--------------------------------------------------------------------*00010000
