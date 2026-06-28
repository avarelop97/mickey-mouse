//ZMPCPPVE  PROC                                                        00010025
//*====================================================================*
//* COMPANIA    : SIVA - MULTIEMPRESA                                  *
//* SISTEMA     : ZM / BANCA PATRIMONIAL                               *
//* PROCESO     : ZMPCPPVE                                             *
//*                                                                    *
//*                       - O B J E T I V O -                          *
//*                                                                    *
//* ALTA DE CUENTAS DE SIVA VS FIDUCIARIO                              *
//*====================================================================*
//*                    - LOG DE MODIFICACIONES -                       *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//*                                                                    *
//*====================================================================*
//* PASO     : ZHIB0010                                                *
//* PROGRAMA : IKJEFT01/ZM4CINSK
//* OBJETIVO : INSERT EN TABLA PARAM                                   *
//*====================================================================*
//ZHIB0010 EXEC PGM=IKJEFT01
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.BCM.CUENTA.CATPPVR,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//*                                                                     01155001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHIB00PV),DISP=SHR                   01230041
//*
//*====================================================================*
//*                    FIN DE PROCESO                                  *
//*====================================================================*
