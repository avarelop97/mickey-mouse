//ZMUFPM45  PROC                                                        00010025
//*====================================================================*
//* COMPANIA    : BBVA BANCOMER - MEXICO                               *
//* SISTEMA     : ZM / CASA DE BOLSA                                   *
//* PROCESO     : ZMUFPM45                                             *
//*____________________________________________________________________*
//*                                                                    *
//* AUTOR       : FSW-DGCM                                             *
//* FECHA       : 10 DE OCTUBRE DEL 2013                               *
//*____________________________________________________________________*
//*                                                                    *
//*                       - O B J E T I V O -                          *
//*                                                                    *
//*                    PROCESO DEPURACION DE LOG                       *
//*  PARA LA EJECUCION ESPERA TERMINE PROCESOS DE RESPALDOS MENSUALES  *
//*====================================================================*
//*                    - LOG DE MODIFICACIONES -                       *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//*====================================================================*
//* PASO     : PUF45P01                                                *
//* PROGRAMA : IKJEFT01/ZM4COP04                                       *
//* OBJETIVO : DEPURACION FISICA                                       *
//*====================================================================*
//PUF45P01 EXEC PGM=IKJEFT01                                            01151027
//*                                                                     01153001
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//*                                                                     01155001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF45T01),DISP=SHR                   01230041
//*====================================================================*
//*         F I N    D E L    P R O C E S O    Z M U F P M 4 5         *
//*====================================================================*
