//ZMPDPPB2 PROC
//******************************************************************** *
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     << SISTEMA DE VALORES >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  SIVAXPPB                                            *
//*                                                                    *
//*   OBJETIVO  :  ACTIVA CONDICION PARA EJECUTAR PROCESO QUE CARGA    *
//*                LAS ORDENES POR CONTINGENCIA                        *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    :  EVENTUAL (A PETICION DEL USUARIO OPC. 179)    *
//*                                                                    *
//*   ELABORADO POR   :  AXITY                                         *
//*                                                                    *
//*   FECHA           :  MARZO   2021.                                 *
//*                                                                    *
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
//*  ZMPPPB02     EN ARCHIVO SECUENCIAL.
//*                                                         ZM3DG001
//*-------------------------------------------------------------------
//ZMPPPB02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.BCJDPPB2.E&EMP..ZMPDPPB2,
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
//*-------------------------------------------------------------------
//*
//*  PASO:  2     SE ADICIONA CONDICION PARA QUE SEA TOMADA POR
//*  ZMPPPB01     CTRL-M.
//*-------------------------------------------------------------------
//ZMPPPB01 EXEC PGM=CTMCND,PARM='ADD COND NZMPOP05_IN_OK WDATE',
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
//*-------------------------------------------------------------------
//*                 F I N   Z M J L P E 4 0
//*-------------------------------------------------------------------
