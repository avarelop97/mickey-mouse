//ZMCFDI27  PROC                                                        00010025
//*====================================================================*
//* COMPANIA    : SIVA - MULTIEMPRESA                                  *
//* SISTEMA     : ZM / BANCA PATRIMONIAL                               *
//* PROCESO     : ZMCFDI27                                             *
//*                                                                    *
//*                       - O B J E T I V O -                          *
//*                                                                    *
//* ACTUALIZA DATOS FISCALES POR REPROCESAMIENTO DE SELLOS DEBIDO A    *
//* CANCELACION DE CONSTANCIAS PARA BANCA PATRIMONIAL                  *
//*====================================================================*
//*                    - LOG DE MODIFICACIONES -                       *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//*                                                                    *
//*====================================================================*
//* PASO     : ZHDI2702                                                *
//* OBJETIVO : ORDENA ARCHIVO DE SELLOS FISCALES                       *
//*====================================================================*
//ZHDI2702 EXEC PGM=ICEMAN
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.EBCM.SELLOMDC.REP,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.EBCM.CFDI.SELLOS.REP,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=1044,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(300,150),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHCF2T01),DISP=SHR
//*
//*====================================================================*
//* PASO     : ZHDI270A                                                *
//* PROGRAMA : IKJEFT01/ZM4CFI16                                       *
//* OBJETIVO : GUARDA INFORMACION DE UUID RELACIONADO                  *
//*====================================================================*
//ZHDI270A EXEC PGM=IKJEFT01,COND=(04,LT)                               01151027
//*                                                                     01153001
//SELLOS   DD DSN=MXCP.ZM.FIX.EBCM.CFDI.SELLOS.REP,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//*                                                                     01155001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHDI270A),DISP=SHR                   01230041
//*
//*====================================================================*
//* PASO     : ZHDI2701                                                *
//* PROGRAMA : IKJEFT01/ZM4CFI05                                       *
//* OBJETIVO : ACTUALIZA DE NOMBRE DE TITULAR Y COTITULAR              *
//*====================================================================*
//ZHDI2701 EXEC PGM=IKJEFT01,COND=(04,LT)                               01151027
//*                                                                     01153001
//SELLOS   DD DSN=MXCP.ZM.FIX.EBCM.CFDI.SELLOS.REP,DISP=SHR
//*
//ADMITIVO DD DSN=MXCP.ZM.FIX.EBCM.CFDI.ADMMEDC.REPR,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//*                                                                     01155001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHDI2701),DISP=SHR                   01230041
//*
