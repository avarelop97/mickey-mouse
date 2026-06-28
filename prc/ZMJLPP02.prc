//ZMJLPP02 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                      >>>>  TESORERIA   <<<<                        *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   DISPARADOR:  SIVAXERB                                            *
//*   PROCEDIM. :  ZMJLPP02                                            *
//*                PRODUCCION TESORERIA EMISION DE RECIBOS DE CRED.    *
//*                                                                    *
//*   OBJETIVO  :  EMISION DE RECIBOS DE CREDITO                       *
//*                (OPCION 567)                                        *
//*                                                                    *
//*   CORRE ANTES DE  : CBJLPZ02                                       *
//*                                                                    *
//*   CORRE DESPUES DE: NINGUNO                                        *
//*                                                                    *
//*   PERIODICIDAD    :  CORRE A PETICION DEL USUARIO.                 *
//*                                                                    *
//*                                                                    *
//**********************************************************************
//**********************************************************************
//* MODIFICO       :  ANGELICA GARCIA (AZERTIA)                        *
//* FECHA          :  OCTUBRE/ 2004                                    *
//**********************************************************************
//* MODIFICO       :  ANGELICA GARCIA (AZERTIA)                        *
//* FECHA          :  JULIO/2005                                       *
//*                   SE ELIMINA IMPRESION DE FORMATO Y SE GENERAN     *
//*                   REPORTES POR FOLIO E INSTITUCION                 *
//**********************************************************************
//*--------------------------------------------------------------------*
//* MODIFICA       :  OSCAR URBANO F. (AZERTIA).                       *
//* FECHA          :  NOVIEMBRE 2008.                                  *
//*-------------------------------------------------------------------**
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  1     RECIBE PARAMETROS ENVIADOS DE LA LINEA Y  LOS GRABA  *00030000
//*               EN ARCHIVO SECUENCIAL.                               *00040000
//**********************************************************************00060000
//PJL02P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.EMP.SUC.ZMJLPE02,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FB,LRECL=096,BLKSIZE=0),
//           UNIT=3390,SPACE=(CYL,(2,1),RLSE)
//*
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-M                 *
//****************************************************************
//PJL02P01 EXEC PGM=CTMCND,PARM='ADD COND SIVAXERB_IN_OK WDATE',
//         COND=(4,LT)
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD   SYSOUT=Z
//SYSPRINT DD   DUMMY
//SYSUDUMP DD   DUMMY
//DAPRINT  DD   SYSOUT=Z
//DACNDIN  DD   DDNAME=SYSIN
//*
