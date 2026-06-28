//ZMJLPE44 PROC
//******************************************************************** *
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     << SISTEMA DE VALORES >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMJLPE44                                            *
//*                                                                    *
//*   OBJETIVO  :  GENERA INFORMACION DEL MOVIMIENTOS DEL DíA PARA     *
//*                CONTRATOS DEL CAM.                                  *
//*                                                                    *
//*   CORRE ANTES DE  :  CBJTNE07                                     **
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                      -*
//*                                                                    *
//*   PERIODICIDAD    :  DIARIO                                       **
//*
//*   ELABORADO POR:  INDRA JOSE LUIS JIMENEZ
//*
//*   FECHA:  MAYO    2018.
//*                                                                   **
//*   ACTUALIZA :
//********************************************************************
//*                      LOG DE MODIFICACIONES
//********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION
//*-------------------------------------------------------------------
//*      |          |       |        |
//*-------------------------------------------------------------------
//*
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA
//*  JLPE4410     EN ARCHIVO SECUENCIAL.
//*                                                         ZM3DG001
//*-------------------------------------------------------------------
//JLPE4420 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.CAM.E&EMP..ZMJLPE44,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*--------------------------------------------------------------------*00010000
//*               GENERA INFORMACION DE MOVIMIENTOS POR CUENTA         *00020000
//*--------------------------------------------------------------------*00060000
//JLPE4402 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMCAM01S DD DSN=MXCP.ZM.FIX.CAM.EBCM.MOVDICAM,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(RECFM=FB,LRECL=200,BLKSIZE=0,DSORG=PS),
//           UNIT=3390,SPACE=(CYL,(6,3),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PJL41P03),DISP=SHR                   01510005
//*-------------------------------------------------------------------
//*                 F I N   Z M J L P E 4 4
//*-------------------------------------------------------------------
