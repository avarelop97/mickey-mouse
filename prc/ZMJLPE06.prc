//ZMJLPE06 PROC
//**********************************************************************
//*  CHECARLO           C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                      << T E S O R E R I A >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                  MODULO DE SIVAERIA                                *
//*                                                                    *
//*   PROCEDIM. :  SIVAXLCR  ( PARA CAPACITACION ) (OPC. 569)          *
//*                                                                    *
//*   OBJETIVO  :  PROCEDIMIENTO DE GENERACION DE LA RELACION          *
//*                DE CREDITOS POR LINEA BANCARIA Y DEL ARCHIVO        *
//*                DE TRANSFERENCIA A EL(LOS) BANCO(S).                *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    :  CORRE A PETICION DEL USUARIO                  *
//*                                                                    *
//*   ELABORADO POR: ASATECK.                                          *
//*                                                                    *
//*   FECHA:  JUNIO  2002.                                             *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*H.P.C.|21/JUL/03 |IDCEX52|TODOS   |STANDARIZACION A PU.             *
//**********************************************************************
//*                                                                    *00020000
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA  *00030000
//*  PJL06P03     EN ARCHIVO SECUENCIAL.                               *00040000
//*                                                         ZM3DG001   *00020000
//**********************************************************************00060000
//PJL06P03 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJLPE06,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE)
//*
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  2     RELACION DE CREDITOS POR LINEA.                      *00030000
//*  PJL06P02                                               ZM4DGG13   *00040000
//**********************************************************************00060000
//PJL06P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PI601765 DD DUMMY
//*
//ZMGG13A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJLPE06,DISP=SHR
//*
//ZMGG13T1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..JLPE06.ARCHTEMP,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(RECFM=FB,LRECL=242,BLKSIZE=0,DSORG=PS),
//           UNIT=3390,SPACE=(CYL,(6,3),RLSE)
//*
//ZMJG09B1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ARCHINFO,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FB,LRECL=100,BLKSIZE=0),
//           UNIT=3390,SPACE=(CYL,(6,3),RLSE)
//*
//ZMGG13R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL06T01),DISP=SHR
//*
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  3     SE ADICIONA CONDICION PARA QUE SEA TOMADA POR CTRL-D *00030000
//*  PJL06P01                                                          *00040000
//**********************************************************************00060000
//PJL06P01 EXEC  PGM=CTMCND,PARM='ADD COND RELCREDL_IN_SEP_OK WDATE',
//         COND=(4,LT)
//*
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//*
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//SYSUDUMP DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
//*
//**********************************************************************00010000
//*                 F I N     Z M J L P E 0 6                          *00020000
//**********************************************************************00060000
