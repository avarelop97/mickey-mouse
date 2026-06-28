//ZMJLPE80 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     << V A L O R E S >>                            *
//*                                                                    *
//*   APLICACION      :  SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *
//*                                                                    *
//*   ELABORADO POR   :  INDRA                                         *
//*                                                                    *
//*   FECHA           :  ENERO   2012.                                 *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//PJL80P01 EXEC PGM=CTMCND,PARM='ADD COND NZMJLD30_OK WDATE'
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
//*                 F I N   Z M H L P E 8 8                            *00020000
//*--------------------------------------------------------------------*00010000
