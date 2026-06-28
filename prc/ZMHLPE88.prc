//ZMHLPE88 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     << V A L O R E S >>                            *
//*                                                                    *
//*   APLICACION      :  SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *
//*                                                                    *
//*   OBJETIVO        :  ACTIVA CONDICION PARA EJECUTAR EL PROCESO     *
//*                      CBHLPD87 CARGA DE PRECIOS AFORE A BOLSA       *
//*                                                                    *
//*   CORRE DESPUES   :  CBHLPD86                                      *
//*                                                                    *
//*   CORRE ANTES     :  CBHLPD87                                      *
//*                                                                    *
//*   PERIODICIDAD    :  DIARIO                                        *
//*                                                                    *
//*   ELABORADO POR   :  OSCAR URBANO F.(AZERTIA).                     *
//*                                                                    *
//*   FECHA           :  OCTUBRE 2009.                                 *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//*--------------------------------------------------------------------*00010000
//*  PASO:  1     SE ADICIONA CONDICION PARA QUE SEA TOMADA POR        *
//*  PHT88P01     CTRL-M.                                              *
//*--------------------------------------------------------------------*00010000
//PHT88P01 EXEC PGM=CTMCND,PARM='ADD COND CBHLPD86_TRANS_OK WDATE'
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
