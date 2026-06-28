//ZMJTNE03 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     << T E S O R E R I A  >>                       *
//*                                                                    *
//*   APLICACION      :  SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *
//*                                                                    *
//*   OBJETIVO        :  ACTIVA CONDICION PARA EJECUTAR EL PROCESO QUE *
//*                      CARGA EL ARCHIVO DE CARGOS DE TESORERIA       *
//*                                                                    *
//*   PERIODICIDAD    :  EVENTUAL (A PETICION DEL USUARIO) OPC T11     *
//*                                                                    *
//*   ELABORADO POR   :  GETRONICS                                     *
//*                                                                    *
//*   FECHA           :  AGOSTO 2007                                   *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//*--------------------------------------------------------------------*00010000
//*  PASO:  1     SE ADICIONA CONDICION PARA QUE SEA TOMADA POR        *
//*  PJT03P01     CTRL-M.                                              *
//*--------------------------------------------------------------------*00010000
//PJT03P01 EXEC PGM=CTMCND,PARM='ADD COND CBJTNE03_IN_PR_OK WDATE'
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
//*--------------------------------------------------------------------*00010000
//*                 F I N   Z M J T N E 0 3                            *00020000
//*--------------------------------------------------------------------*00010000
