//ZMLLCTCO PROC
//*
//*********************************************************************
//* SISTEMA  : ZM (DESCENTRALIZACION DE TASAS)                        *
//* PROCESO  : ZMLLCTCO                                               *
//* OBJETIVO : REALIZAR LA CARGA INICIAL DE LA TABLA DE CORROS        *
//*            (DESCENTRALIZACION DE TASAS)                           *
//* REALIZO  : CAPGEMINI ARGENTINA                                    *
//* FECHA    : 07/12/2010                                             *
//*-------------------------------------------------------------------*
//*            L O G    D E   M O D I F I C A C I O N E S             *
//*-------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA  DESCRIPCION                          *
//* -----------  ------- ------- -------------------------------------*
//* FS-1.0.0-01  CAPGEMI 01ENE11 SE ELEMINIA EL PASO PCTCO010         *
//*      *           *      *                *                        *
//*-------------------------------------------------------------------*
//*FECHA DE INSTALACION 25 DE ABRIL 2011
//*********************************************************************
//*PASO        : PCTCO005                                             *
//*DESCRIPCION : REALIZAR LA CARGA INICIAL DE LA TABLA DE CORROS      *
//*              A PARTIR DE UN CURSOR (DESCENTRALIZACION DE TASAS 2) *
//*********************************************************************
//*PCTCO005 EXEC PGM=IKJEFT01,COND=(4,LT)
//PCTCO005 EXEC PGM=IKJEFT01
//*FS-1.0.0-01 - FIN
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCTCO05),DISP=SHR
//*
