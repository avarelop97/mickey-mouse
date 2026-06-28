//ZMCFDC46  PROC                                                        00010025
//*====================================================================*
//* COMPANIA    : SIVA - MULTIEMPRESA                                  *
//* SISTEMA     : ZM / BANCA PATRIMONIAL                               *
//* PROCESO     : ZMCFDC46                                             *
//*                                                                    *
//*                       - O B J E T I V O -                          *
//*                                                                    *
//* GENERA ARCHIVO DE CANCELACION DE CONSTANCIA FISCAL PARA BANCA      *
//* PATRIMONIAL Y REPORTE DE CONSTANCIAS CANCELADAS.                   *
//*====================================================================*
//*                    - LOG DE MODIFICACIONES -                       *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//*                                                                    *
//*====================================================================*
//* PASO     : ZMDC4602                                                *
//* OBJETIVO : GENERA ARCHIVO DE CANCELACION                           *
//*====================================================================*
//ZMDC4602 EXEC PGM=ICEMAN
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECBP.CFDI.ADMMEDM.CORR,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECBP.CONSTA.CANCEL.MASV,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=11,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(50,25),RLSE),UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMCFD106),DISP=SHR
//*====================================================================*
//* PASO     : ZMDC4601                                                *
//* PROGRAMA : IKJEFT01/ZM4CONS5                                       *
//* OBJETIVO : GENERA ARCHIVO DE CANCELACION                           *
//*====================================================================*
//ZMDC4601 EXEC PGM=IKJEFT01,COND=(4,LT)                                01151027
//CONSTAN  DD DSN=MXCP.ZM.FIX.ECBP.CONSTA.CANCEL.MASV,DISP=SHR
//*                                                                     01153001
//SALIDA01 DD DSN=MXCP.ZM.FIX.ECBP.CANCELA.CONSTF.PREV.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,10),RLSE),
//            DCB=(DSORG=PS,LRECL=182,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//CUENTAE  DD DSN=MXCP.ZM.FIX.ECBP.CIFRAS.CONTROL.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,10),RLSE),
//            DCB=(DSORG=PS,LRECL=37,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//*                                                                     01155001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDT4601),DISP=SHR                   01230041
//*
//*====================================================================*
//* PASO     : ZMDC4600                                                *
//* PROGRAMA : IKJEFT01/ZM4CONS6                                       *
//* OBJETIVO : GUARDAR DATOS CANCELACION EN ZMDTLOG PARA CLAVES 02 Y 03*
//*====================================================================*
//ZMDC4600 EXEC PGM=IKJEFT01,COND=(4,LT)                                01151027
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.ECBP.CONSTA.CANCEL.MASV,DISP=SHR
//*                                                                     01153001
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//*                                                                     01155001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDT4600),DISP=SHR                   01230041
//*
//*====================================================================*
//* PASO     : ZMDC460A                                                *
//* PROGRAMA : ZM3CAN01                                                *
//* OBJETIVO : QUITA LOS ESPACIOS DEL ARCHIVO DE CANCELACION           *
//*====================================================================*
//ZMDC460A EXEC PGM=ZM3CAN01,COND=(4,LT)                                01151027
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.ECBP.CANCELA.CONSTF.PREV.F&FECHA,
//            DISP=SHR
//*                                                                     01153001
//SALIDA   DD DSN=MXCP.ZM.FIX.ECBP.CANCELA.CONSTF.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,10),RLSE),
//            DCB=(DSORG=PS,LRECL=143,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//*
//*====================================================================*
//*         F I N    D E L    P R O C E S O    Z M H C P D 2 5         *
//*====================================================================*
