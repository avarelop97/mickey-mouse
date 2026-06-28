//ZMCFDI26  PROC                                                        00010025
//*====================================================================*
//* COMPANIA    : SIVA - MULTIEMPRESA                                  *
//* SISTEMA     : ZM / CASA DE BOLSA                                   *
//* PROCESO     : ZMCFDI26                                             *
//*                                                                    *
//*                       - O B J E T I V O -                          *
//*                                                                    *
//* ACTUALIZA NOMBRE DE TITULAR O COTITULAR DE LOS CONTRATOS DE LAS    *
//* CONSTANCIAS GENERADAS PARA CASA DE BOLSA                           *
//*====================================================================*
//*                    - LOG DE MODIFICACIONES -                       *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//*                                                                    *
//*====================================================================*
//* PASO     : ZHDI2601                                                *
//* PROGRAMA : IKJEFT01/ZM4CFI04                                       *
//* OBJETIVO : ACTUALIZA DE NOMBRE DE TITULAR Y COTITULAR              *
//*====================================================================*
//ZHDI2601 EXEC PGM=IKJEFT01                                            01151027
//*                                                                     01153001
//ENTRADA  DD DSN=MXCP.ZM.FIX.ECBP.CFDI.ADMMEDC.FS.RESP,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//*                                                                     01155001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHDI2601),DISP=SHR                   01230041
//*
//*====================================================================*
//*         F I N    D E L    P R O C E S O    Z M H C P D 2 5         *
//*====================================================================*
