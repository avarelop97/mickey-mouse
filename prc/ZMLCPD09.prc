//ZMLCPD09 PROC
//**********************************************************************
//**    G R U P O - F I N A N C I E R O - P R O B U R S A   (B B V)
//**
//** SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)
//**
//** PROCESO        :
//**
//** OBJETIVO       :  ACTIVA LA CONDICION Y GENERA EL ARCHIVO TMP
//**
//** CORRE ANTES DE :  NO APLICA
//**
//** DESPUES DE     :  NO APLICA
//**
//** OBSERVACIONES  :
//**
//**
//**
//** REALIZO        :  AZERTIA
//**                   ABRIL  2008.
//**                                                                   *
//**********************************************************************
//* BITACORA DE MODIFICACIONES :                                       *
//*--------------------------------------------------------------------*
//*MODIF |  FECHA   |USUARIO|  PASO |DESCRIPCION                       *
//*--------------------------------------------------------------------*
//* XXX  |DD-MMM-AA |XXXXXXX|       |XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//**********************************************************************
//* OBJETIVO: RECIBE LOS PARAMETROS A PROCESAR Y LOS GRABA EN ARCHIVO
//**********************************************************************
//*
//PLC09P20 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC',)
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.MDD.E&EMP..S&SUC..ZMLCPD09,
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
//**********************************************************************
//* OBJETIVO : ACTIVA LA CONDICION EN CONTROL-M ZMLCPD09_CBP_SIVA_OK   *
//*            TRANSFERENCIA DE VECTOR VALMER A ZMDT726                *
//**********************************************************************
//PLC09P10 EXEC PGM=CTMCND,PARM='ADD COND SIVAXCN4_IN_OK  WDATE',
//         COND=(4,LT)
//*
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
