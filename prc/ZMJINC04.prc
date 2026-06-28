//ZMJINC04  PROC                                                        00010025
//*====================================================================*
//* COMPANIA    : BBVA BANCOMER - MEXICO                               *
//* SISTEMA     : ZM / CASA DE BOLSA                                   *
//* PROCESO     : ZMJINC04                                             *
//*____________________________________________________________________*
//*                                                                    *
//*                       - O B J E T I V O -                          *
//*                                                                    *
//* PROCESO DE ACTUALIZACION DE TITULOS Y COSTO PROMEDIO LIQUIDADO     *
//*                                                                    *
//*====================================================================*
//*                    - LOG DE MODIFICACIONES -                       *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//*                                                                    *
//*====================================================================*
//* PASO     : PHINCP03                                                *
//* PROGRAMA : IKJEFT01/ZM4EVIS4                                       *
//* OBJETIVO : REPROCESO DE COSTO PROMEDIO LIQUIDADO                   *
//*====================================================================*
//PHINCP05 EXEC PGM=IKJEFT01                                            01151027
//*                                                                     01153001
//UNLOAD2  DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//*                                                                     01155001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHINCT05),DISP=SHR                   01230041
//*
