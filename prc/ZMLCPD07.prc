//ZMLCPD07 PROC
//**********************************************************************
//**    G R U P O - F I N A N C I E R O - P R O B U R S A   (B B V)
//**
//** SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)
//**
//** PROCESO        :  CBLCND07
//**
//** OBJETIVO       :  OBTIENE ARCHIVO DE INTERFAZ MUVSTAR.
//**
//** CORRE ANTES DE :  NO APLICA
//**
//** DESPUES DE     :  NO APLICA
//**
//** OBSERVACIONES  : ESTE PROCESO UNICAMNETE GENERA EL ARCHIVO PARA
//**                  EL SISTEMA STAR, NO AFECTA NINGUNA TABLA SE  -
//**                  EJECUTA CON FECHA DE DIA(P05)
//**
//** REALIZO        :  AZERTIA
//*                    AGOSTO 2007.                                    *
//*                                                                    *
//**********************************************************************
//* BITACORA DE MODIFICACIONES :                                       *
//*--------------------------------------------------------------------*
//*MODIF |  FECHA   |USUARIO|  PASO |DESCRIPCION                       *
//*--------------------------------------------------------------------*
//* XXX  |DD-MMM-AA |XXXXXXX|       |XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//**********************************************************************
//* PROGRAMA: ZM4DGR48
//* OBJETIVO: GENERA ARCHIVO CON INTERFAZ MUV-STAR
//**********************************************************************
//PLC07P01 EXEC PGM=IKJEFT01,
//         PARM=('&EMP','&FEC','&FOR',)
//ZMGR48A1 DD DSN=MXCP.ZM.FIX.MDD.ECBP.MUVSTAR.C&FEC,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(DSORG=PS,LRECL=139,BLKSIZE=0,RECFM=FB),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLC07090),DISP=SHR
//*
