//ZMHEPD08 PROC
//**********************************************************************
//**    G R U P O - F I N A N C I E R O - P R O B U R S A   (B B V)
//**
//** SISTEMA        :  SUBASTAS
//**
//** PROCESO        :  ZMHEPD08
//**
//** OBJETIVO       :  CORREGIR INFORMACION SOBRE EL IVA EN LA
//**                   TABLA ZMDT655
//**
//** CORRE ANTES DE :  NO APLICA
//**
//** DESPUES DE     :  NO APLICA
//**
//** OBSERVACIONES  :  CORRE POR UNICA VEZ
//**
//**
//**
//** REALIZO        :  JORGE A PEREZ CONTRERAS   (AZERTIA) JPC
//**                   ENERO     2010.
//**                                                                   *
//**********************************************************************
//* BITACORA DE MODIFICACIONES :                                       *
//*--------------------------------------------------------------------*
//*MODIF |  FECHA   |USUARIO|  PASO |DESCRIPCION                       *
//*--------------------------------------------------------------------*
//* XXX  |DD-MMM-AA |XXXXXXX|       |XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*********************************************************************
//*   EJECUCION DEL PROGRAMA:  ZM4PE653
//*********************************************************************
//ZMHEP001 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHE08T03),DISP=SHR
//*
