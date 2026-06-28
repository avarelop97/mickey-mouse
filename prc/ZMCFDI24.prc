//ZMCFDI24  PROC                                                        00010025
//*====================================================================*
//* COMPANIA    : SIVA - MULTIEMPRESA                                  *
//* SISTEMA     : ZM / CASA DE BOLSA                                   *
//* PROCESO     : ZMCFDI24                                             *
//*                                                                    *
//*                       - O B J E T I V O -                          *
//*                                                                    *
//* VALIDA ARCHIVO DE RESPUESTA DE CANCELACION PARA CASA DE BOLSA      *
//*====================================================================*
//*                    - LOG DE MODIFICACIONES -                       *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//*                                                                    *
//*====================================================================*
//* PASO     : ZHDI2402                                                *
//* PROGRAMA : IKJEFT01/ZM4CFI18                                       *
//* OBJETIVO : GENERA ARCHIVO DE CANCELACION CON CONTRATOS             *
//*====================================================================*
//ZHDI2402 EXEC PGM=IKJEFT01,COND=(04,LT)                               01151027
//*                                                                     01153001
//ENTRADA  DD DSN=MXCP.ZM.FIX.ECBP.CANCELA.CONFIR.F&FECHA,
//            DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.ECBP.CANCELA.CONFIR.CUENTAS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=72,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(300,150),RLSE)
//*
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//*                                                                     01155001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHDI2402),DISP=SHR                   01230041
//*
//*====================================================================*
//* PASO     : ZHDI2401                                                *
//* PROGRAMA : IKJEFT01/ZM4CFI03                                       *
//* OBJETIVO : VALIDA RESPUESTA DE CANCELACION                         *
//*====================================================================*
//ZHDI2401 EXEC PGM=IKJEFT01,COND=(04,LT)                               01151027
//*                                                                     01153001
//ENTRADA  DD DSN=MXCP.ZM.FIX.ECBP.CANCELA.CONFIR.F&FECHA,
//            DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//*                                                                     01155001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHDI2401),DISP=SHR                   01230041
//*
//*====================================================================*
//*         F I N    D E L    P R O C E S O    Z M H C P D 2 5         *
//*====================================================================*
