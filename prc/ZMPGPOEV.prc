//ZMPGPOEV PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                   >>>>  FIDEICOMISOS       <<<<                    *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMPGPOEV       (EVENTUAL)                           *
//*                                                                    *
//*   OBJETIVO  :  EJECUTA LA CARGA INICIAL DE FIDEICOMISOS            *
//*                                                                    *
//*   CORRE ANTES DE  :                                                *
//*                                                                    *
//*   CORRE DESPUES DE:                                                *
//*                                                                    *
//*   PERIODICIDAD    :                                                *
//*
//**********************************************************************
//*                    -- ZM4CRX13  --
//* ALTA EN LAS TABLAS ZMDT728 Y ZMDT729 DE LOS CATALOGOS DE TIPO DE
//* FIDEICOMISO Y POLITICAS DE INVERSION RESPECTIVAMENTE, TOMANDO
//* LA INFORMACION DEL ARCHIVO ENVIADO DE BPIGO
//*
//**********************************************************************
//ZMCCAT02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*SECCATAL DD DSN=MXC&AMB..AJ.FIX.CATPOL.BP,DISP=SHR
//SECCATAL DD DSN=MXC&AMB..ZM.FIX.CATPOL.BP,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCCAT02),DISP=SHR
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                    -- ZM4CRX14  --
//* CARGA DE CR´S Y POLíTICAS DE INVERSIóN, EN LA TABLA ZMDT737
//*
//*********************************************************************
//ZMCCAT01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*ARCHEC   DD DSN=MXC&AMB..AJ.FIX.DATCOM.BP,DISP=SHR
//ARCHEC   DD DSN=MXC&AMB..ZM.FIX.DATCOM.BP,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCCAT01),DISP=SHR
//SYSIN    DD DUMMY
//*
