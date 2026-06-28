//ZMHCPD99 PROC                                                         00040000
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  CBHCND99 (PRC-ZMHCPD99).                         *
//*                                                                    *
//* OBJETIVO       :  REALIZA CARGA DE OPERACIONES A LA TABLA HISTORICA*
//*                   DE OPERACIONES.                                  *
//*                                                                    *
//* PERIODICIDAD   :  MENSUAL                                          *
//*                                                                    *
//* ELABORADO POR  :  CDA INFORMATICA(FOU).                            *
//*                                                                    *
//**********************************************************************
//*        L O G    D E   M O D I F I C A C I O N E S                  *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//* FS-0.0.0-00  XXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*                                                                    *
//**********************************************************************
//*--------------------------------------------------------------------*
//* PASO    : PHC99P01                                                 *
//* PROGRAMA: ZM4EHO03                                                 *
//* OBJETIVO: PROGRAMA QUE INGRESA OPERACIONES REALIZADAS DURANTE EL   *
//*           MES EN CURSO EN LA TABLA HISTORICA DE OPERACIONES        *
//*           (ZMDT107).                                               *
//*---------------------------------------------------------------------
//PHC99P01 EXEC PGM=IKJEFT01
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHC99P01),DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************00003000
//*                          FINAL DEL PROCESO
//**********************************************************************00003000
