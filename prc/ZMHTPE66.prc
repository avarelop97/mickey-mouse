//ZMHTPE66 PROC                                                         00010001
//**********************************************************************00020000
//*                     C A S A   D E   B O L S A                      *00030000
//*                     =========================                      *00040000
//*                     <<<   V A L O R E S   >>>                      *00050000
//*                                                                    *00060000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00070000
//*                                                                    *00080000
//*   PROCEDIM. :  ZMHTPE66.                                           *00090001
//*                                                                    *00100000
//*   OBJETIVO  :  ACTIVAR LA CONDICION CBHLNE72 AL TERMINAR           *00110001
//*                LA TRANSFERENCIA DEL ARCHIVO INDEVAL.               *00120001
//*                                                                    *00140000
//*   CORRE ANTES DE  :  CBHLNE72 (ZMHLPE72)                           *00150001
//*                                                                    *00160000
//*   CORRE DESPUES DE:  SIVAXCOC (ZMHLPE73)                           *00170001
//*                                                                    *00180000
//*   PERIODICIDAD    :  A SOLICITUD DE USUARIO (POR PANTALLA)         *00190000
//*                                                                    *00200000
//*   ELABORADO POR: SOFTTEK                                           *00210000
//*                                                                    *00220000
//*   FECHA: ABRIL 2005.                                               *00230001
//*                                                                    *00240000
//**********************************************************************00250000
//*                      LOG DE MODIFICACIONES                         *00260000
//**********************************************************************00270000
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *00280000
//*--------------------------------------------------------------------*00290000
//*      |          |       |        |                                 *00310000
//**********************************************************************01400002
//*                SE ADICIONA CONDICION                               *01410002
//*                PARA QUE SEA TOMADA POR CTL-D                       *01420002
//**********************************************************************01430002
//PHT66P01 EXEC PGM=CTMCND,PARM='ADD COND CBHLNE72_IN_PR_OK WDATE'      01440001
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   01460000
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   01470000
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 01480000
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   01490000
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   01500000
//PRTDBG   DD SYSOUT=*                                                  01510000
//SYSPRINT DD DUMMY                                                     01520000
//SYSUDUMP DD DUMMY                                                     01530000
//DAPRINT  DD SYSOUT=*                                                  01540000
//DACNDIN  DD DDNAME=SYSIN                                              01550000
//*                                                                     01560000
