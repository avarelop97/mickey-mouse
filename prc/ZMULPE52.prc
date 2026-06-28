//ZMULPE52 PROC
//**********************************************************************
//*                                                                    *
//*   APLICACION:    SISTEMA ENVIO DE ALERTAS SMS & E-MAIL             *
//*                  AGOSTO 2008                                       *
//*                                                                    *
//*   OBJETIVO  :    ARCHIVO DE ENVIOS POR PERIODO                     *
//*                                                                    *
//*                                                                    *
//**********************************************************************
//*
//**********************************************************************
//*  RECEPCION DE PARAMETROS DE EJECUCION EN LINEA                     *
//**********************************************************************
//PUL52P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.EBCM.S000.ZMULPE52,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(LRECL=96,RECFM=FB,BLKSIZE=0,DSORG=PS),
//           UNIT=3390,SPACE=(CYL,(2,1),RLSE)
//*
//*******************************************************************
//*   ARCHIVO DE ENVIOS POR PERIODO                                 *
//*   PROGRAMA = ZM4DGD05                                           *
//*******************************************************************
//PUL52P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMDGD05A DD DSN=MXCP.ZM.FIX.EBCM.S000.ZMULPE52,DISP=SHR
//ZMDGD05R DD DSN=MXCP.ZM.FIX.EBCM.S000.ZMULPE52.SALIDA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(LRECL=245,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(10,5),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUL52T01),DISP=SHR
//*
//**********************************************************************
//*                           -- DMBATCH  --                           *
//* OBJETIVO: REALIZAR LA TRANSFERENCIA DE ARCHIVOS DE HOST            *
//*           AL SERVIDOR (SBBVA04)                                    *
//* ========================                                           *
//*           '\\160.8.1.67\PATRIMONIALMU1\RIESGOS\ALERTAS.TXT'        *
//*           MXCP.ZM.FIX.EBCM.S000.ZMULPE52.SALIDA                    *
//* ========================                                           *
//**********************************************************************
//PUL52P00 EXEC PGM=DMBATCH,PARM=(YYSLYNQ),COND=(4,LT)
//**
//STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//DMPRINT   DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//NDMCMDS   DD SYSOUT=*
//SYSUDUMP  DD DUMMY
//SYSTSIN   DD DSN=ZIVA.ZME.CONTROL(ZUL52T00),DISP=SHR
//****************************************************************
//****************************************************************
//*        TERMINA PROCESO ZMULPE52 SIVA MULTIEMPRESA            *
//****************************************************************
