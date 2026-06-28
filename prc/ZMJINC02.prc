//ZMJINC02  PROC                                                        00010025
//*====================================================================*
//* COMPANIA    : BBVA BANCOMER - MEXICO                               *
//* SISTEMA     : ZM / CASA DE BOLSA                                   *
//* PROCESO     : ZMJINC02                                             *
//*____________________________________________________________________*
//*                                                                    *
//*                       - O B J E T I V O -                          *
//*                                                                    *
//* REPROCESO DE CALCULO DE COSTO PROMEDIO LIQUIDADO POR CANCELACION   *
//* PARA SOCIEDADES DE INVERSION                                       *
//*====================================================================*
//*                    - LOG DE MODIFICACIONES -                       *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//*                                                                    *
//*====================================================================*
//* PASO     : PHINCP02                                                *
//* PROGRAMA : IKJEFT01/ZM4ISR12                                       *
//* OBJETIVO : REPROCESO DE COSTO PROMEDIO LIQUIDADO POR CANCELACION   *
//*====================================================================*
//PHINCP02 EXEC PGM=IKJEFT01                                            01151027
//*                                                                     01153001
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//*                                                                     01155001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHINCT02),DISP=SHR                   01230041
//*
