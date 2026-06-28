//ZMHNOW03  PROC                                                        00010025
//*====================================================================*
//* COMPANIA    : BBVA BANCOMER - MEXICO                               *
//* SISTEMA     : ZM / BANCA PATRIMONIAL                               *
//* PROCESO     : ZMHNOW03                                             *
//*                                                                    *
//*                       - O B J E T I V O -                          *
//*                                                                    *
//* GENERACION DE ARCHIVO PLANO CON NOTAS Y WARRANTS ENVIADOS A GLOMO -*
//*====================================================================*
//*                    - LOG DE MODIFICACIONES -                       *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//*
//*====================================================================*
//* PASO     : PGI21P01                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE INFORMACION PARA DEMANDAS                   *
//*====================================================================*
//PNW03P01 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MBVP.PE.FIX.NSEQ.PEDT008.D&FECHA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.NSEQSORT.PEDT008.FIRDIF,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=37,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(500,250),RLSE),UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZNWO3P01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PNW03P02.                                             *
//* PROGRAMA   : ZM4TEN01                                              *
//* OBJETIVO   : GENERA REPORTE CON LA INFORMACION DE CLIENTES CON     *
//*              AUTORIZADOR VIGENTE                                   *
//*--------------------------------------------------------------------*
//PNW03P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMNWO3A1 DD DSN=MXCP.ZM.FIX.NSEQSORT.PEDT008.FIRDIF,DISP=SHR
//ZMNWO3A2 DD DSN=MXCP.ZM.FIX.PEDT008.ZM4NOW03.FIRDIF,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=68,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(30,15),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZNWO3P03),DISP=SHR
//*
//**********************************************************************
//*                     F I N    Z M H N O W 0 3                       *
//**********************************************************************
