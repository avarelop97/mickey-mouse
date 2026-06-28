//ZMLLPD05 PROC
//*
//**********************************************************************
//**
//** SISTEMA        :  MUV
//**
//** PROCESO        :  ZMLLPD05
//**
//** OBJETIVO       :  GENERA ARCHIVO DE AJENOS (P-10) TOMANDO LA INF.
//**                   DE LA TABLA DE ASIGNACION ZMDT633.
//**
//** CORRE ANTES DE :  PROCESO DE AJENOS
//**
//**
//** DESPUES DE     :  BCLLND04
//**
//**
//** OBSERVACIONES  :
//**
//**
//**
//**
//** REALIZO        :  GETRONICS
//*                    AGOSTO  2004.                                   *
//*                                                                    *
//*                                                                    *
//**********************************************************************
//* BITACORA DE MODIFICACIONES :                                       *
//*--------------------------------------------------------------------*
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//* IEF  |2005-02-04|IDCEX52|PLL05P02|SE RENOMBRA ARCHIVO DE ENVIO     *
//*GETRONICS        |       |        |A AJENOS                         *
//**********************************************************************
//* PROGRAMA: ZM3DG001
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO
//*           PARA SIGUIENTES PASOS
//**********************************************************************
//PLL05P03 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','  ','  ','  ',)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLLPD05,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DLX03
//* OBJETIVO: GENERA ARCHIVO DE AJENOS (P-10) TOMANDO LA INFORMACIóN
//*           DE LA TABLA DE ASIGNACION ZMDT633.
//*---------------------------------------------------------------------
//PLL05P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZMLX03A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLLPD05,DISP=SHR
//ZMLX03A2 DD DSN=MXCP.ZM.FIX.E&EMP..AJENOS.ENVIA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(1,1),RLSE),
//            DCB=(DSORG=PS,LRECL=100,BLKSIZE=0,RECFM=FB),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL05T02),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA:
//* OBJETIVO: ADICIONA CONDICION PARA QUE SE DISPARE EL
//*           PROCESO DE AJENOS
//*---------------------------------------------------------------------
//PLL05P01 EXEC  PGM=CTMCND,
//         PARM='ADD COND BCLLND05_&EMP_SIV_OK WDATE',
//         COND=(0,NE,PLL05P02)
//STEPLIB  DD   DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD   SYSOUT=*
//SYSPRINT DD   DUMMY
//SYSUDUMP DD   DUMMY
//DAPRINT  DD   SYSOUT=*
//DACNDIN  DD   DDNAME=SYSIN
//*
