//ZMHCPD74 PROC
//*
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SIVA-2017                                        *
//*                                                                    *
//* PROCESO        :  RECALCULO DE GANANCIA WARRANTS CON INPC DEL MES  *
//*                                                                    *
//* OBJETIVO       :  AREA NACIONAL                                    *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  NINGUNO                                          *
//*                                                                    *
//* DESPUES DE     :  AL INGRESAR EL INPC MENSUAL                      *
//*                                                                    *
//* REALIZO        :  OOM JUNIO 2017                                   *
//*                                                                    *
//* OBSERVACION    :                                                   *
//**********************************************************************
//**********************************************************************
//* OBJETIVO : ACTUALIZACION DE INPC                                   *
//*            -- ZM4WAR02 --                                          *
//*--------------------------------------------------------------------*
//ZMHC7402 EXEC PGM=IKJEFT01
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMH74T02),DISP=SHR
//*
//**********************************************************************
//* OBJETIVO : RECALCULO DE GANANCIA E ISR                             *
//*            -- ZM4WAR03 --                                          *
//*--------------------------------------------------------------------*
// IF  ZMHC7402.RC EQ 00 THEN
//ZMHC7401 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMH74T01),DISP=SHR
//*
//**********************************************************************
//* OBJETIVO : ACTUALIZACION DE GANANCIA ACUMULADA Y EDO DE CTA        *
//*            -- ZM4WAR03 --                                          *
//*--------------------------------------------------------------------*
//ZMHC7400 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMH74T00),DISP=SHR
//*
// ENDIF
