//ZMCFDI28  PROC                                                        00010025
//*====================================================================*
//* COMPANIA    : SIVA - MULTIEMPRESA                                  *
//* SISTEMA     : ZM / CASA DE BOLSA                                   *
//* PROCESO     : ZMCFDI28                                             *
//*                                                                    *
//*                       - O B J E T I V O -                          *
//*                                                                    *
//* ACTUALIZA DATOS FISCALES POR REPROCESAMIENTO DE SELLOS DEBIDO A    *
//* CANCELACION DE CONSTANCIAS PARA CASA DE BOLSA                      *
//*====================================================================*
//*                    - LOG DE MODIFICACIONES -                       *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//*                                                                    *
//*====================================================================*
//* PASO     : ZHDI2802                                                *
//* OBJETIVO : ORDENA ARCHIVO DE SELLOS FISCALES                       *
//*====================================================================*
//ZHDI2802 EXEC PGM=ICEMAN
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECBP.SELLOMDC.REP,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECBP.CFDI.SELLOS.REP,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=1044,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(300,150),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHCF4T01),DISP=SHR
//*
//*====================================================================*
//* PASO     : ZHDI280A                                                *
//* PROGRAMA : IKJEFT01/ZM4CFI16                                       *
//* OBJETIVO : GENERA ARCHIVO DE CANCELACION                           *
//*====================================================================*
//ZHDI280A EXEC PGM=IKJEFT01,COND=(04,LT)                               01151027
//*                                                                     01153001
//SELLOS   DD DSN=MXCP.ZM.FIX.ECBP.CFDI.SELLOS.REP,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//*                                                                     01155001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHDI280A),DISP=SHR                   01230041
//*
//*====================================================================*
//* PASO     : ZHDI2801                                                *
//* PROGRAMA : IKJEFT01/ZM4CFI05                                       *
//* OBJETIVO : ACTUALIZA DE NOMBRE DE TITULAR Y COTITULAR              *
//*====================================================================*
//ZHDI2801 EXEC PGM=IKJEFT01,COND=(04,LT)                               01151027
//*                                                                     01153001
//SELLOS   DD DSN=MXCP.ZM.FIX.ECBP.CFDI.SELLOS.REP,DISP=SHR
//*
//ADMITIVO DD DSN=MXCP.ZM.FIX.ECBP.CFDI.ADMMEDC.REPR,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//*                                                                     01155001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHDI2801),DISP=SHR                   01230041
//*
