//ZMJINDM1 PROC                                                         00000100
//*                                                                     00000200
//**********************************************************************00000300
//**                                                                   *00000400
//** SISTEMA        :  MUV                                             *00000500
//**                                                                   *00000600
//** PROCESO        :  ZMJINDM1(BCJINDM1)                              *00000700
//**                                                                   *00000800
//** OBJETIVO       :  GENERA CONDICION DE ENTRADA DEL PROCESO AJJCEXCI*00000900
//**                                                                   *00001000
//** CORRE ANTES DE :  AJJCEXCI                                        *00001100
//**                                                                   *00001200
//**                                                                   *00001300
//** DESPUES DE     :  N/A                                             *00001400
//**                                                                   *00001500
//**                                                                   *00001600
//** OBSERVACIONES  :  CORRE A PETICION DEL USUARIO                    *00001700
//**                                                                   *00001800
//**                                                                   *00001900
//** REALIZO        :  AZERTIA (F.V.C.)                                *00002000
//*                    FEBRERO 2008.                                   *00002100
//**********************************************************************00002200
//* BITACORA DE MODIFICACIONES :                                       *00002300
//*--------------------------------------------------------------------*00002400
//*MODIF |  FECHA   |USUARIO|  PASO |DESCRIPCION                       *00002500
//*--------------------------------------------------------------------*00002600
//*--------------------------------------------------------------------*00002700
//* PROGRAMA:                                                          *00002800
//* OBJETIVO: ADICIONA CONDICION PARA QUE SE DISPARE EL  PROCESO       *00002900
//*           AJJCEXCI PARA SOBRE ESCRIBIR CONSTANCIAS SAT.            *00003000
//*--------------------------------------------------------------------*00003100
//PJINDP01 EXEC PGM=IOACND,PARM='ADD COND BCJINDM1_OK WDATE'            00003200
//         INCLUDE MEMBER=IOASET                                        00003400
//         INCLUDE MEMBER=IOAENV                                        00003500
//SYSIN    DD DUMMY                                                     00003600
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG                  00003700
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES                  00003800
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD                  00003900
//PRTDBG   DD  SYSOUT=*                                                 00004000
//SYSPRINT DD  DUMMY                                                    00004100
//DAPRINT  DD  SYSOUT=*                                                 00004200
//DACNDIN  DD  DDNAME=SYSIN                                             00004300
//*                                                                     00004400
