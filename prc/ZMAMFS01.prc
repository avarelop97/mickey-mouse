//ZMAMFS01 PROC
//*--------------------------------------------------------------------*
//*                     ===============================                *
//*                     <<< FONDOS ASSET MANAGEMENT >>>                *
//*                     ===============================                *
//*   APLICACION       : MODULO UNICO DE VALORES (M U V)               *
//*   PROCEDIMIENTO    : ZMAMFS01                                      *
//*   JCL              : BCAMFR01                                      *
//*   LO EJECUTA       : TRANSACCION ZC98 CICLICAMENTE.                *
//*   OBJETIVO         : ADICIONA CONDICION BCAMFR01_OK AL PROCESO     *
//*                      BCAMFR01 PARA GENERAR REPORTE DE CORROS       *
//*   FECHA            :                                               *
//*   PERIODICIDAD     : CICLICO.                                      *
//*   AUTOR            :                                               *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//* PROGRAMA: ZM3DG001                                                 *
//* FUNCION : GENERACION DE ARCHIVO DE PARAMETROS.                     *
//*--------------------------------------------------------------------*
//ZMFS0102 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMHH01A1 DD DSN=MXCP.ZM.FIX.PAR.ZMAMFR01,
//            DISP=(NEW,DELETE,DELETE),
//            SPACE=(CYL,(5,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-M                 *
//****************************************************************
//ZMFS0101 EXEC  PGM=CTMCND,PARM='ADD COND BCAMFR01_OK WDATE',
//         COND=(4,LT)
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//SYSUDUMP DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//*
