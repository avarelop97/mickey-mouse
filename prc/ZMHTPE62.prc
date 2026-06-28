//ZMHTPE62 PROC                                                         00010000
//**********************************************************************00020000
//*                     C A S A   D E   B O L S A                      *00030000
//*                     =========================                      *00040000
//*                     <<<   V A L O R E S   >>>                      *00050000
//*                                                                    *00060000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00070000
//*                                                                    *00080000
//*   PROCEDIM. :  ZMHTPE62.                                           *00090000
//*                                                                    *00100000
//*   OBJETIVO  :  ACTIVAR LA CONDICION CBHLNE68 AL TERMINAR           *00110000
//*                LA TRANSFERENCIA DEL ARCHIVO BANXICO.               *00120000
//*                                                                    *00140000
//*   CORRE ANTES DE  :  CBHLNE68 (ZMHLPE68)                           *00150000
//*                                                                    *00160000
//*   CORRE DESPUES DE:  SIVAXBX3 (ZMHLPE62)                           *00170000
//*                                                                    *00180000
//*   PERIODICIDAD    :  A SOLICITUD DE USUARIO (POR PANTALLA)         *00190000
//*                                                                    *00200000
//*   ELABORADO POR: SOFTTEK                                           *00210000
//*                                                                    *00220000
//*   FECHA: JUNIO 2004.                                               *00230000
//*                                                                    *00240000
//**********************************************************************00250000
//*                      LOG DE MODIFICACIONES                         *00260000
//**********************************************************************00270000
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *00280000
//*--------------------------------------------------------------------*00290000
//*MODXXX|0001-01-01|USUARIO|PASO    |DESCRIPCION DE LA MODIFICACION   *00300000
//*      |          |       |        |                                 *00310000
//****************************************************************      01400000
//*                SE ADICIONA CONDICION                         *      01410000
//*                PARA QUE SEA TOMADA POR CTL-D                 *      01420000
//****************************************************************      01430000
//PHT62P01 EXEC PGM=CTMCND,PARM='ADD COND CBHLNE68_IN_PR_OK WDATE'      01440000
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
