//ZMPGPO01 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                   >>>>  FIDEICOMISOS       <<<<                    *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMPGPO01                                            *
//*                                                                    *
//*   OBJETIVO  :  EJECUTA LA CARGA INICIAL DE FIDEICOMISOS            *
//*                                                                    *
//*   CORRE ANTES DE  :                                                *
//*                                                                    *
//*   CORRE DESPUES DE:                                                *
//*                                                                    *
//*   PERIODICIDAD    :                                                *
//*                                                                    *
//*   MARZO 2009                                                       *
//*   ABRIL 2009      : JOSE OSCAR SEGURA PEREZ                        *
//*                     SE AGREGAN PASOS 2 Y 3 CARGA DE CATALOGOS DE   *
//*                     POLITICAS DE INVERSION Y CR'S.                 *
//*                                                                    *
//**********************************************************************
//*                    -- ZM4DE004  --
//* CARGA INICIAL FIDEICOMISOS, CARGA DE TABLAS:ZMDT723, ZMDT724,ZMDT725
//*
//**********************************************************************
//ZMPGP100 EXEC PGM=IKJEFT01
//A01ENTRA DD DSN=MXC&AMB..ZM.FIX.CARGA.INIGPO,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMTGPO01),DISP=SHR
//SYSIN    DD DUMMY
//*HGM01-I
//**********************************************************************
//*                    -- ZM4DE005  --                                 *
//* CARGA INICIAL FIDEICOMISOS, CARGA DE TABLA : CONTITU               *
//*                                                                    *
//**********************************************************************
//ZMPGP090 EXEC PGM=IKJEFT01,COND=(4,LT)
//A02ENTRA DD DSN=MXC&AMB..ZM.FIX.CARGA.INIGPO,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMTGPO02),DISP=SHR
//SYSIN    DD DUMMY
//*HGM01-F
//**********************************************************************
//*                    -- ZM4CRX13  --
//* ALTA EN LAS TABLAS ZMDT728 Y ZMDT729 DE LOS CATALOGOS DE TIPO DE
//* FIDEICOMISO Y POLITICAS DE INVERSION RESPECTIVAMENTE, TOMANDO
//* LA INFORMACION DEL ARCHIVO ENVIADO DE BPIGO
//*
//**********************************************************************
//ZMCCAT02 EXEC PGM=IKJEFT01,COND=(4,LT)
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
