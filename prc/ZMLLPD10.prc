//ZMLLPD10 PROC
//*
//**********************************************************************
//**
//** SISTEMA        :  MUV
//**
//** PROCESO        :  ZMLLPD10
//**
//** OBJETIVO       :  REALIZA LA ASIGNACION DE LAS OPERACIONES DE BUC
//**
//** CORRE ANTES DE :  BCLLND11
//**
//**
//** DESPUES DE     :  BCLLND04
//**
//**
//** OBSERVACIONES  :
//**
//**
//** REALIZO        :  GETRONICS
//*                    ENERO   2006.                                   *
//**********************************************************************
//* BITACORA DE MODIFICACIONES :                                       *
//*--------------------------------------------------------------------*
//*MODIF |  FECHA   |USUARIO|  PASO |DESCRIPCION                       *
//*--------------------------------------------------------------------*
//* LXP  |24-08-2006|IDCEX20|PLL10P02 |GENERAR REPORTE DE ASIGNACION   *
//*                                                                    *
//*--------------------------------------------------------------------*
//* JFE  |30-03-2007|IDCEX37|PLL10P02 |GENERAR REPORTE DE RECHAZO ASIG.*
//*                                                                    *
//*--------------------------------------------------------------------*
//* IEF  |01-08-2007|IDCEX52|PLL10P15 |SE INCLUYE ASIGNACION BONY.     *
//*                                                                    *
//**********************************************************************
//* PROGRAMA: ZM3DG001
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO
//*           PARA SIGUIENTES PASOS
//**********************************************************************
//PLL10P20 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','  ','  ','  ',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLLPD10,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DLX07
//* OBJETIVO: REALIZA LA ASIGNACION DE LOS REGISTROS BONY
//*---------------------------------------------------------------------
//PLL10P15 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLX02R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMLX02R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//ZM4DLXA1 DD DSN=MXCP.ZM.TMP.MDD.BONY.ASIGNA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,LRECL=209,BLKSIZE=0,RECFM=FB),
//            UNIT=3390
//*
//ZM4DLXA2 DD DSN=MXCP.ZM.TMP.MDD.BONY.REASIGNA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,LRECL=209,BLKSIZE=0,RECFM=FB),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL10T15),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DLX02
//* OBJETIVO: REALIZA LA ASIGNACION DE LAS OPERACIONES DE BUC
//*---------------------------------------------------------------------
//PLL10P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLX02R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMLX02R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL10T02),DISP=SHR
//*
//*TECNOCOM-I
//*--------------------------------------------------------------------*
//*   PASO    : PLC10P01                                               *
//*   OBJETIVO: DEAJAR EN CLARO ARCHIVO ENVIADO POR CALYPSO            *
//*             MXCP.ZM.FIX.BUPDPIGO.ENVIADOS  UNA VEZ PROCESADO       *
//*--------------------------------------------------------------------*
//PLC10P01 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=136)
//SYSUT2   DD DSN=MXCP.ZM.FIX.BUPDPIGO.ENVIADOS,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=136,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*TECNOCOM-F
//*---------------------------------------------------------------------
//* PROGRAMA:
//* OBJETIVO: ADICIONA CONDICION PARA QUE SE DISPARE EL
//*           PROCESO BCLLND11
//*---------------------------------------------------------------------
//PLL10P01 EXEC  PGM=CTMCND,
//         PARM='ADD COND BCLLND11_BCM_SIVA_OK WDATE',COND=(4,LT)
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
