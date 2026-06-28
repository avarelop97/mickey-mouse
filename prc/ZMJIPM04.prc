//ZMJIPM04 PROC                                                         00010000
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     << MERCADO DE VALORES   >>                     *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMJIPM04                                            *
//*                                                                    *
//*   OBJETIVO  :  REPORTE DE CLIENTES DE SAT                          *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  CBJINM02                                      *
//*                                                                    *
//*   PERIODICIDAD    : MENSUAL.                                       *
//*                                                                    *
//*   ELABORADO POR   : BBV-BANCOMER / JOSE LUIS GUTIERREZ ORTEGA      *
//*                                                                    *
//*   FECHA           : NOVIEMBRE DEL 2005                             *
//**********************************************************************
//*AUTOR:ALEJANDRO SEGURA CUADROS               FECHA: MARZO-2019.     *
//*TEMA:MIGRACION SAT. SE ADICIONAN 4 CAMPOS INDICATIVO FID,           *
//*                    INDICADOR FONDO/OPERATIVA,RECIDENCIA PAIS,      *
//*                    INDICADOR CTOS EXT/MEX.                         *
//*INICIAL DE MODIFICACION  ASC XME0646.                               *
//**********************************************************************
//**********************************************************************
//*                           --ZM4MGS01--                             *
//* OBJETIVO    : GENERAR REPORTE DE CLIENTES DE SAT                   *
//*               ZM4MGS01                                             *
//*                                                                    *
//**********************************************************************
//PJI04P04 EXEC PGM=IKJEFT01
//*
//ZMGS01R1 DD DSN=MXCP.ZM.FIX.TES.SATMUV,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=621,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//*
//ZMGS01R2 DD DSN=MXCP.ZM.FIX.TES.SATSIVA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=621,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//*
//ZMGS01R3 DD DSN=MXCP.ZM.FIX.TES.SATCTD,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=621,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//*
//ZMGS01R4 DD DSN=MXCP.ZM.FIX.TES.SATPOP,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=621,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJI04T02),DISP=SHR
//*
//**********************************************************************
//*                           ----                                     *
//* OBJETIVO    : CONCATENAMIENTO DE ARCHIVOS                          *
//*                                                                    *
//*                                                                    *
//**********************************************************************
//PJI04P03 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.TES.SATMUV,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.TES.SATSIVA,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.TES.SATCTD,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.TES.SATPOP,DISP=SHR
//*
//SYSUT2   DD DSN=MXCP.ZM.FIX.TES.SAT.CONCATEN,
//            DISP=(NEW,CATLG,CATLG),
//            DCB=(LRECL=621,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                           --ICEMAN--                               *
//* OBJETIVO    : SORTEA EL ARCHIVO CONCATENADO Y QUITA ENCABEZADO     *
//* MODIFICO: XMY3220                                                  *
//**********************************************************************
//PJI04P02 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.TES.SAT.CONCATEN,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.TES.SAT.CONCATEN.SORT,
//             DISP=(NEW,CATLG,CATLG),
//             DCB=(LRECL=621,RECFM=FB,BLKSIZE=0,DSORG=PS),
//             UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSCNTL  DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJI04T04),DISP=SHR
//**********************************************************************
//*                           --ZM4MGS02--                             *
//* OBJETIVO    : GENERAR REPORTE DE CLIENTES DE SAT                   *
//*               SE INTEGRAN 4 CAMPOS.                                *
//* MODIFICO: ASC XME0646                                              *
//**********************************************************************
//PJI04P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//FILEIN   DD DSN=MXCP.ZM.FIX.TES.SAT.CONCATEN.SORT,DISP=SHR
//FILEOUT  DD DSN=MXCP.ZM.FIX.TES.SAT.ARCSAT,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(80,40),RLSE),
//            DCB=(DSORG=PS,LRECL=681,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJI04T03),DISP=SHR
//*
//**********************************************************************
//*                           -- DMBATCH  --                           *
//* OBJETIVO    :  PARA TRANSFERENCIA DE ARCHIVOS.                     *
//* ACTUALIZA   :                                                      *
//**********************************************************************
//*PJI04P00 EXEC PGM=DMBATCH,PARM=(YYSLYNQ),COND=(4,LT)
//**
//*STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR
//*DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//*DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//*DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//*DMPRINT   DD SYSOUT=*
//*SYSPRINT  DD SYSOUT=*
//*NDMCMDS   DD SYSOUT=*
//*SYSUDUMP  DD DUMMY
//*SYSIN     DD DSN=ZIVA.ZME.CONTROL(PJI04P01),DISP=SHR
//**
//**********************************************************************
