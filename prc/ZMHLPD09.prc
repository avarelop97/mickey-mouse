//ZMHLPD09 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     << SISTEMA DE VALORES >>                       *
//*                                                                    *
//*   APLICACION      :  SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *
//*                                                                    *
//*   OBJETIVO        :  ACTIVA CONDICION PARA EJECUTAR EL PROCESO QUE *
//*                      VALIDA EL ARCHIVO DE MOVIMIENTOS DEL INDEVAL. *
//*                                                                    *
//*   PERIODICIDAD    :  DIARIO  (A PETICION DEL USUARIO)              *
//*                                                                    *
//*   ELABORADO POR   :  SOFTTEK                                       *
//*                                                                    *
//*   FECHA           :  ABRIL, 2006                                   *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//*--------------------------------------------------------------------*00010000
//*  PASO:  1     SE ADICIONA CONDICION PARA QUE SEA TOMADA POR        *
//*  PHL09P01     CTRL-M.                                              *
//*--------------------------------------------------------------------*00010000
//PHL09P01 EXEC PGM=CTMCND,PARM='ADD COND CBHLND09_IN_PR_OK WDATE'
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
//*                 F I N   Z M H L P D 0 9                            *00020000
//*--------------------------------------------------------------------*00010000
