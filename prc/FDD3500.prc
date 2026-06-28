//FDD3500  PROC
//*
//**********************************************************************
//**********************************************************************
//**    G R U P O - F I N A N C I E R O - P R O B U R S A   (B B V)
//**
//** SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)
//**
//** PROCESO        :  PFDFDD35
//**
//** OBJETIVO       :  OBTIENE ARCHIVO PARA SISTEMA DE GLOBAL RISK.
//**
//** CORRE ANTES DE :  PFDFDD28
//**
//** DESPUES DE     :  PFDFDD23
//**
//** OBSERVACIONES  : ESTE PROCESO UNICAMNETE GENERA EL ARCHIVO PARA
//**                  EL SISTEMA DE GLOBAL RISK, NO AFECTA NINGUNA
//**                  TABLA CORRE CON FECHA DE DIA(P05)
//**
//**
//** REALIZO        :  LUIS XICOTENCATL         21/FEB/02.
//*                                                                    *
//*                                                                    *
//*                                                                    *
//*                                                                    *
//* BITACORA DE MODIFICACIONES :                                       *
//*                                                                    *
//* M O D I F.      D E S C R I P C I O N                 F E C H A    *
//* ----------     --------------------------------       ----------   *
//* IEF(ASATECK)   GENERACION DE PASIVOS GLOBAL RISK      5-JUN-2002   *
//* IEF(ASATECK)   GENERACION DE CLIENTES GLOBAL RISK    14-OCT-2002   *
//*                                                                    *
//**********************************************************************
//*
//**********************************************************************
//* PROGRAMA: VOBR39D                                                  *
//* FUNCION:  GENERA ARCHIVO CON INF. PARA SISTEMA GLOBAL RISK         *
//*                                                                    *
//* NO ACTUALIZA TABLAS.                                               *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//*------------------------------------------------------------------   00032303
//FDD3501A EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=2048K
//*
//VOBR39A1 DD  DSN=SIVA.SIN.FIX.GLOBAL.RISK,
//             DISP=(NEW,CATLG,DELETE),UNIT=SYSDA,
//             SPACE=(CYL,(10,20),RLSE),
//             DCB=(LRECL=775,BLKSIZE=0,RECFM=FB)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD3501),DISP=SHR
//******************************************************************
//* EN ESTE PASO CORRE EL VOBR40D, GENERANDO LA PARTE PASIVA       *
//* DEL ARCHIVO DE RIESGOS GLOBAL RISK                             *
//* NO ACTUALIZA TABLAS                                            *
//******************************************************************
//*
//FDD3501  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=2048K
//*
//VOBR40A1 DD  DSN=SIVA.SIN.FIX.GLOBAL.RISK,DISP=MOD
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD3501A),DISP=SHR
//******************************************************************
//* EN ESTE PASO CORRE EL VOBR41D, GENERANDO LA PARTE DE CLIENTES  *
//* DEL ARCHIVO DE RIESGOS GLOBAL RISK                             *
//* NO ACTUALIZA TABLAS                                            *
//******************************************************************
//*
//FDD3501B  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=2048K
//*
//VOBR41A1 DD  DSN=SIVA.SIN.FIX.GRISK.CLIENTE,
//             DISP=(NEW,CATLG,DELETE),UNIT=SYSDA,
//             SPACE=(CYL,(10,20),RLSE),
//             DCB=(LRECL=770,BLKSIZE=0,RECFM=FB)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD3501B),DISP=SHR
//*
