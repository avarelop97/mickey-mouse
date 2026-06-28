//ZMLLPD06 PROC
//*
//**********************************************************************
//**
//** SISTEMA        :  MUV
//**
//** PROCESO        :  ZMLLPD06
//**
//** OB. RECIBE ARCHIVO DE AJENOS Y ACTUALIZA LA TABLA ZMDT633 (ASIGNA)
//**     SI EL CODIGO DE RETORNO ES EXITOSO PONE 'C' AL SESTATUS EN
//**     CASO CONTRATO PONE 'P' EN SESTATUS.
//**
//** CORRE ANTES DE :
//**
//**
//** DESPUES DE     :  PROCESO DE AJENOS
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
//*MODIF |  FECHA   |USUARIO|  PASO |DESCRIPCION                       *
//*--------------------------------------------------------------------*
//* XXX  |XX-XXX-XX |IDCEXXX|       |XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX  *
//*                                                                    *
//**********************************************************************
//* PROGRAMA: ZM3DG001
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO
//*           PARA SIGUIENTES PASOS
//**********************************************************************
//PLL06P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','  ','  ','  ',)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLLPD06,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DLX04
//* OBJETIVO:
//*  RECIBE ARCHIVO DE AJENOS Y ACTUALIZA LA TABLA ZMDT633 (ASIGNA)
//*  SI EL CODIGO DE RETORNO ES EXITOSO PONE 'C' AL SESTATUS EN
//*  CASO CONTRATO PONE 'P' EN SESTATUS.
//*---------------------------------------------------------------------
//PLL06P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMLX04A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLLPD06,DISP=SHR
//ZMLX04A2 DD DSN=MXCP.ZM.FIX.MDD.E&EMP..AJENOS.RESULTA,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL06T03),DISP=SHR
//*
