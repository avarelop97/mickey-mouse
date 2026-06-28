//ZMGFPV01 PROC
//*
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  T E S O R E R I A >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   OBJETIVO  :  REPROCESO DE LOS CARGOS DE SALDO DEUDOR             *
//*                                                                    *
//*   FECHA     :  CORRE POR UNICA VEZ EL DIA 21 DE AGOSTO DE 2002     *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//*******************************************************************
//*                       --  ZM4VG001  --
//*            GENERA REPROCESO DE LOS CARGOS DE SALDO DEUDOR
//*            PARA EL PROCESO DEL MES DE AGOSTO         ** TESORERIA
//*******************************************************************
//PGF01P01 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=0M,COND=(4,LT)
//*
//ZMG001E1 DD DSN=SIVA.MDD.FIX.ECBP.OPERINDT,DISP=SHR
//ZMG001E2 DD DSN=SIVA.MDD.FIX.ECBP.ULTOPINT,DISP=SHR
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGF01T01),DISP=SHR
//*
//*
