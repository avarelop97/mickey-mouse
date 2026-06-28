//ZMUOPD23 PROC
//*--------------------------------------------------------------------*
//*                                                                    *
//* SISTEMA : ZM(MODULO DE SIVA MULTI EMPRESA ALTAMIRIZADO)            *
//*                                                                    *
//* PROCESO : ZMUOPD23                                                 *
//*                                                                    *
//* REALIZO : JOSE OSCAR SEGURA PEREZ                                  *
//*                                                                    *
//* FECHA   : SEPTIEMBRE, 2012                                         *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*           L O G    D E   M O D I F I C A C I O N E S               *
//*--------------------------------------------------------------------*
//*   MARCA      AUTOR   FECHA       DESCRIPCION                       *
//* ----------  ------- ------- ---------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*  PASO:PH01FN23                                                     *
//*  PROGRAMA: ZM4DU859                                                *
//*--------------------------------------------------------------------*
//PH01FN23 EXEC PGM=IKJEFT01
//SYSTSPRT DD SYSOUT=*
//POASGNET DD DSN=MBVP.AJ.FIX.MDD.POZOBG.REC,DISP=SHR
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZH01FN23),DISP=SHR
//*
