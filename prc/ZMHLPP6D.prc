//ZMHLPP6D PROC
//*
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  MERCADO DE DINERO >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMHLPP6D                                            *
//*                                                                    *
//*   OBJETIVO  :  GENERA ARCHIVO DE OPERACIONES DE COMPRA Y VENTA DIA-*
//*                RIAS  PARA BANXICO DIA OPERACION P04 - 3.           *
//*                                                                    *
//*   CORRE ANTES DE  :  CBHLPZ6D                                      *
//*   CORRE ANTES DE  :  CBHTNE59                                      *
//*                                                                    *
//*   CORRE DESPUES DE:  SIVAXGXG                                      *
//*                                                                    *
//*   PERIODICIDAD    :  A PETICION DEL USUARIO                        *
//*                                                                    *
//*   ELABORADO POR: GETRONICS.                                        *
//*                                                                    *
//*   FECHA:  NOVIEMBRE DE 2004.                                       *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*SOFTTE|5-NOV-2004|IDCEX68|P01,P02 |ADICIONAR CONDICIONES DE CTL-D   *
//*STK   |ABRIL,2006|IDCEX56|        |SE REDISEñA PROCESO BANXICO      *
//*--------------------------------------------------------------------*
//* MODIFICA       :  OSCAR URBANO F. (AZERTIA).                       *
//* FECHA          :  NOVIEMBRE 2008.                                  *
//*-------------------------------------------------------------------**
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA  *
//*  PHL06P29     EN ARCHIVO SECUENCIAL.                               *
//*                                                         ZM3DG001   *
//*-------------------------------------------------------------------**
//PHL06P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.VAL.EMP.ZMHLPD06,
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
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-M                 *
//****************************************************************
//PHL06P01 EXEC PGM=CTMCND,PARM='ADD COND SIVAXBM3_IN_OK WDATE',
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
//DACNDIN  DD   DDNAME=SYSIN
//*
