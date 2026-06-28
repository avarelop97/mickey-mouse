//ZMJCPD03 PROC
//**********************************************************************
//**                    C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  T E S O R E R I A >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   DISPARADOR:  CBJCND03                                            *
//*   PROCEDIM. :  ZMJCPD03                                            *
//*                                                                    *
//*   OBJETIVO  :   CIERRE GLOBAL DE TESORERIA DE LA EMPRESA PROPORC.  *
//*                                                                    *
//*   CORRE ANTES DE  :  FDD0100 (FINDIA)                              *
//*                                                                    *
//*   CORRE DESPUES DE:  SIVAXCGB (SU OPERACION DEL DIA)               *
//*                                                                    *
//*   PERIODICIDAD    :  DIARIO                                        *
//**********************************************************************
//*
//*
//**********************************************************************
//*                         -- ZM4DJH75 --                             *
//* OBJETIVO:     GENERACION DE MOVIMIENTOS CONTRATO PUENTE BANCO      *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PJC03P03 EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//PI601765 DD DUMMY
//*
//ZMJH75A1 DD DSN=MXCP.ZM.FIX.TES.E&EMP..CIEGLBAL,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJC03T03),DISP=SHR
//*@STK-01-I
//**********************************************************************
//*                         -- ZM4DJF28 --                             *
//* OBJETIVO:     CAMBIA DE ITIPOTEN DE 'I' POR 'D'                    *
//*               A LOS INTERESES INDICATIVOS DE C.VARIOS              *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PJC03P2A EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//PI601765 DD DUMMY
//*
//ZMJT53A1 DD DSN=MXCP.ZM.FIX.TES.E&EMP..CIEGLBAL,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJC03T2A),DISP=SHR
//*@STK-01-F
//*
//**********************************************************************
//*                         -- ZM4DJF28 --                             *
//* OBJETIVO:     CAMBIA DE ITIPOTEN DE 'I' POR 'D'                    *
//*               A LOS INTERESES INDICATIVOS DE C.VARIOS              *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PJC03P02 EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//PI601765 DD DUMMY
//*
//ZMJT53A1 DD DSN=MXCP.ZM.FIX.TES.E&EMP..CIEGLBAL,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJC03T04),DISP=SHR
//*
//**********************************************************************
//*                         -- ZM4DJF31 --                             *
//* OBJETIVO:     MARCA EL FIN DEL CIERRE DE TESORERIA (TS0)           *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PJC03P01 EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//PI601765 DD DUMMY
//*
//ZMJT53A1 DD DSN=MXCP.ZM.FIX.TES.E&EMP..CIEGLBAL,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJC03T05),DISP=SHR
//*
//**********************************************************************
//*                         -- ZM4DJT52 --                             *
//* OBJETIVO:     REPORTE DE CANCELACION DE CREDITOS    (DIARIO)       *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*PJC03P05 EXEC PGM=IKJEFT01,COND=(0,NE)
//**
//*PI601765 DD DUMMY
//**
//*ZMJT52A1 DD DSN=MXCP.ZM.FIX.TES.E&EMP..CIEGLBAL,DISP=SHR
//**
//*ZMJT52R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD SYSOUT=*
//*SYSUDUMP DD DUMMY
//**
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJC03T01),DISP=SHR
//**
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//**********************************************************************
//*                         -- ZM4DJT53 --                             *
//* OBJETIVO:     REPORTE DE CHEQUE EMITIDOS A TERCEROS (DIARIO)       *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*PJC03P04 EXEC PGM=IKJEFT01,COND=(0,NE)
//**
//*PI601765 DD DUMMY
//**
//*ZMJT53A1 DD DSN=MXCP.ZM.FIX.TES.E&EMP..CIEGLBAL,DISP=SHR
//**
//*ZMJT53R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD SYSOUT=*
//*SYSUDUMP DD DUMMY
//**
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJC03T02),DISP=SHR
//**
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//**********************************************************************
//*        TERMINA PROCESO ZMJCPD03 SIVA MULTIEMPRESA                  *
//**********************************************************************
