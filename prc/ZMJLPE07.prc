//ZMJLPE07 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                     >>>>  TESORERIA   <<<<                         *
//*                                                                    *
//*                                                                    *
//*   PROCEDIMESO : SIVAXRDL (OPC. 568)                                *
//*                 PRODUCCION TESORERIA RELACION DE DEPOSITOS X LIN.  *
//*                                                                    *
//*   OBJETIVO  : IMPRESION DE RELACION DE DEPOSITOS POR LINEA.        *
//*                                                                    *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*                                                                    *
//*   PERIODICIDAD    :  CORRE A SOLICITUD DEL USUARIO                 *
//*                                                                    *
//*   FECHA:  JUNIO / 2002                                             *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//* FECHA     DESCRIPCION                                              *
//*--------------------------------------------------------------------*
//* JUL /2006 SE AGREGA IDATO3, SE CAMBIA LONGITUD DEL SECUENCIAL      *
//**********************************************************************
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA  *00030000
//*  PJL07P08     EN ARCHIVO SECUENCIAL.                               *00040000
//*                                                         ZM3DG001   *00020000
//*           PASO    REINICIABLE                                      *00040000
//**********************************************************************00060000
//PJL07P08 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.WKF.TES.E&EMP..S&SUC..ZMJLPE07,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************00010000
//*                         -- ZM4EJ754 --                             *
//*                                                                    *00020000
//*  PASO:  2     RELACION DE DEPOSITOS POR LINEA.                     *00030000
//*  PJL07P07                                                          *00040000
//*           PASO NO REINICIABLE REINICIAR A PARTIR DEL PASO ANTERIOR *00040000
//**********************************************************************00060000
//PJL07P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMJ754A1 DD DSN=MXCP.ZM.WKF.TES.E&EMP..S&SUC..ZMJLPE07,DISP=SHR
//*
//ZMJ754S1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//ZMJ754T1 DD DSN=MXCP.ZM.WKF.TES.E&EMP..S&SUC..JLPE07.ARCHTEMP,
//            DISP=(NEW,CATLG,CATLG),
//            DCB=(RECFM=FB,LRECL=270,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(6,3),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL07T06),DISP=SHR
//*
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  4     CREACION DEL ARCHIVO DE TRANSFERENCIAS VIA LINEA     *00030000
//*  PJL07P05     BANCARIA.                                            *00040000
//*                                                         ZM4EJ795   *00040000
//*           PASO NO REINICIABLE                                      *00040000
//**********************************************************************00060000
//PJL07P05 EXEC PGM=ZM4EJ795,COND=(4,LT)
//*
//ZMJ795B1 DD DSN=MXCP.ZM.VSL.TES.LINBANC,DISP=SHR
//*
//ZMJ795B2 DD DSN=MXCP.ZM.WKF.TES.E&EMP..S&SUC..TRANSFER,
//            DISP=(NEW,CATLG,DELETE),                                  00540000
//            DCB=(RECFM=FB,LRECL=180,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(6,3),RLSE),UNIT=3390                          00550000
//*
//ZMJ795A1 DD DSN=MXCP.ZM.WKF.TES.E&EMP..S&SUC..ZMJLPE07,DISP=SHR
//*
//ZMJ795R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJL07T05),DISP=SHR
//*
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR TRANSFER              *
//*                                                              *
//****************************************************************
//PJL07P00 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXRDL_IN_SEP_OK WDATE',
//         COND=(4,LT)
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
//*
//**********************************************************************00010000
//*                 F I N     Z M J L P E 0 7                          *00020000
//**********************************************************************00060000
