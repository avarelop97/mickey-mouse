//ZMGLPZ44 PROC
//**********************************************************************
//*  SISTEMA    : SISTEMA INTEGRAL DE VALORES (S.I.V.A.)               *
//*  PROCESO    : ZMGLPZ44                                             *
//*  OBJETIVO   : DA DE ALTA PAISES DE REGIMEN FISCAL PREFERENTE       *
//*  FECHA      : DICIEMBRE 2017                                       *
//**********************************************************************
//*                  LOG DE MODIFICACIONES                             *
//**********************************************************************
//* MODIFI       AUTOR     FECHA    DESCRIPCION                        *
//* ----------- --------- -------- ----------------------------------- *
//*--------------------------------------------------------------------*
//* PASO     : PGL44P02                                                *
//* PROGRAMA : ZM4PLPAR                                                *
//* OBJETIVO : PROGRAMA QUE DA DE ALTA PAISES                          *
//*            ODATE.                                                  *
//*--------------------------------------------------------------------*
//**********************************************************************
//* PASO    : PGL44P01                                                 *
//* PROGRAMA: IKJEFT01                                                 *
//* OBJETIVO: GENERACION DE REPORTE DE MONTOS SEMESTRAL PROMEDIO       *
//**********************************************************************
//PGL44P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E1DMENT1 DD DSN=MXCP.ZM.FIX.CBGLPZ44.PAISEREG,
//            DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGL44T01),DISP=SHR
//*
