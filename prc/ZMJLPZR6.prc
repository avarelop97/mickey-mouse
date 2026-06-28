//ZMJLPZR6 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                      << T E S O R E R I A >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                  MODULO DE TESORERIA                               *
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
//*   ELABORADO POR: SOFTTEK (MHR1).                                   *
//*                                                                    *
//*   FECHA:  MARZO  2002.                                             *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//* STK  | 19/03/03 | CEX70 | P02    | ACCESO AL PGM ZM4DRG13          *
//**********************************************************************
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  2     RELACION DE CREDITOS POR LINEA.                      *00030000
//*  PJL06P02                                               ZM4DGG13   *00040000
//**********************************************************************00060000
//PJLR6P02 EXEC PGM=IKJEFT01
//PI601765 DD DUMMY
//ZMGG13A1 DD DSN=MXCP.ZM.TMP.TES.EMP.SUC.ZMJLPER6,DISP=SHR
//*
//ZMGG13T1 DD DSN=MXCP.ZM.TMP.TES.EMP.SUC.JLPER6.ARCHTEMP,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(RECFM=FB,LRECL=496,BLKSIZE=0,DSORG=PS),
//           UNIT=3390,SPACE=(CYL,(6,3),RLSE),
//           BUFNO=30
//*ARCHIVO PARA TRANSFERENCIA
//ZMJG09B1 DD DSN=SIVA.TES.WKF.EMP.SUC.ARCHINFR,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FB,LRECL=100,BLKSIZE=0),
//           UNIT=3390,SPACE=(CYL,(6,3),RLSE),
//           BUFNO=30
//*
//ZMGG13R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL06TR1),DISP=SHR
//*
//**********************************************************************00010000
//*                 F I N     Z M J L P Z 0 6                          *00020000
//**********************************************************************00060000
