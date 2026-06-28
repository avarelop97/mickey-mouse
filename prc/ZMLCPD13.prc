//ZMLCPD13 PROC
//**********************************************************************
//**    G R U P O - F I N A N C I E R O - P R O B U R S A   (B B V)
//**
//** SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)
//**
//** PROCESO        :  CBLCND13
//**
//** OBJETIVO       :  CARGA DEL VECTOR ESPEJO TABLA ZMDT726
//**
//** CORRE ANTES DE :  NO APLICA
//**
//** DESPUES DE     :  SIVAXCNL
//**
//** OBSERVACIONES  :
//**
//**
//**
//** REALIZO        :  JORGE A PEREZ CONTRERAS   (AZERTIA) JPC
//**                   ABRIL  2008.
//**                                                                   *
//**********************************************************************
//* BITACORA DE MODIFICACIONES :                                       *
//*--------------------------------------------------------------------*
//*MODIF |  FECHA   |USUARIO|  PASO |DESCRIPCION                       *
//*--------------------------------------------------------------------*
//* XXX  |DD-MMM-AA |XXXXXXX|       |XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//**********************************************************************
//* PROGRAMA: ZM4EHB90
//* OBJETIVO: CARGA PRECIOS DE CAPITALES EN TABLAS VECPRE Y PRECIO.
//**********************************************************************
//PLC13P90 EXEC PGM=IKJEFT01,
//         PARM=('&EMP','&SUC')
//ZMHB90P1 DD DSN=MXCP.ZM.FIX.MDD.E&EMP..S&SUC..ZMLCPD12,DISP=SHR
//*
//ZMHB90A1 DD DSN=SIVA.VAL.FIX.VECPRE,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL90T01),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ZM4EHB91
//* OBJETIVO: ACTUALIZACION DE PRECIOS DE MERCADO DE DINERO.
//**********************************************************************
//PLC13080 EXEC PGM=IKJEFT01,COND=(4,LT),
//         PARM=('&AMB','&EMP','&SUC',)
//ZMHB91P1 DD DSN=MXCP.ZM.FIX.MDD.E&EMP..S&SUC..ZMLCPD12,DISP=SHR
//*
//ZMHB91A1 DD DSN=SIVA.VAL.FIX.VECPRE,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL91T01),DISP=SHR
//*
//*--------------------------------------------------------------------*00010000
//*                 F I N   Z M L C P D 1 3                            *00020000
//*--------------------------------------------------------------------*00010000
