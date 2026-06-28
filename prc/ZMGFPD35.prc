//ZMGFPD35 PROC
//*
//**********************************************************************
//**    G R U P O - F I N A N C I E R O - P R O B U R S A   (B B V)
//**
//** SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)
//**
//** PROCESO        :  CBGFND35
//**
//** OBJETIVO       :  OBTIENE ARCHIVO PARA SISTEMA DE GLOBAL RISK.
//**
//** CORRE ANTES DE :  XXXXXXXX
//**
//** DESPUES DE     :  CBLFND23
//**
//** OBSERVACIONES  : ESTE PROCESO UNICAMNETE GENERA EL ARCHIVO PARA
//**                  EL SISTEMA DE GLOBAL RISK, NO AFECTA NINGUNA
//**                  TABLA CORRE CON FECHA DE DIA(P05)
//**
//**
//** REALIZO        :  ASATECK S. A. DE C.V. (JLGO)
//*                    OCTUBRE 2002.                                   *
//*                                                                    *
//*                                                                    *
//**********************************************************************
//* BITACORA DE MODIFICACIONES :                                       *
//*--------------------------------------------------------------------*
//*MODIF |  FECHA   |USUARIO|  PASO |DESCRIPCION                       *
//*--------------------------------------------------------------------*
//* ACV  |16-JUL-03 |IDCEX30|       |ADECUACION A ESTANDARES DE P.U.   *
//*                                                                    *
//* JLG  |24-JUL-03 |IDCEX15|       |SE AGREGA PROGRAMA DEPURADOR      *
//*                                  SE RENOMBRAN TARJETA Y PASOS PARA *
//*                                  ESTAR EN ESTANDARES               *
//*                                                                    *
//* IEF  |29-JUN-04 |IDCEX31|       |SE AGREGAN ZM4DGR45 Y ZM4DGR46    *
//*                                  A SOLICITUD DEL USUARIO DE RIESGOS*
//*                                                                    *
//* IEF  |03-JUN-05 |IDCEX31|       |SE MODIFICA LA LONGITUD DEL       *
//*                                  ARCHIVO GX PARA SISTEMA           *
//*                                  ALGORITHMICS                      *
//*                                                                    *
//* IEF  |28-SEP-05 |IDCEX31|       |SE MODIFICA LA LONGITUD DEL       *
//*                                  ARCHIVO GX PARA SISTEMA           *
//*                                  INFORMACION JURIDICA              *
//**********************************************************************
//*ACV*SIVA*PENDIENTE*HPC***********************************************
//**********************************************************************
//* PROGRAMA: ZM3DG001
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO
//*           PARA SIGUIENTES PASOS
//**********************************************************************
//PGF35P08 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','  ','  ','  ',)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..ZMGFPD35,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DGR45
//* OBJETIVO: GENERA ARCHIVO CON INF. PARA SISTEMA GLOBAL RISK
//*           DESGLOSADA POSICION POR CONTRATO SE AGREGA TIPO VALOR BMV
//* NO ACTUALIZA TABLAS.
//* PASO REINICIABLE POR RESTART.
//*---------------------------------------------------------------------
//PGF35P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZMGR45A2 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..ZMGFPD35,DISP=SHR
//ZMGR45A1 DD DSN=SIVA.SIN.FIX.E&EMP..GLOBAL.CTO,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,LRECL=911,BLKSIZE=0,RECFM=FB),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGF35T07),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DGR46
//* OBJETIVO: EN ESTE PASO CORRE EL ZM4DGR46, GENERANDO LA PARTE
//*           PASIVA DEL ARCHIVO DE RIESGOS GLOBAL RISK
//*           DESGLOSADA POSICION POR CONTRATO SE AGREGA TIPO VALOR BMV
//* NO ACTUALIZA TABLAS
//*---------------------------------------------------------------------
//PGF35P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMGR46P1 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..ZMGFPD35,DISP=SHR
//ZMGR46A1 DD DSN=SIVA.SIN.FIX.E&EMP..GLOBAL.CTO,DISP=MOD
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGF35T06),DISP=SHR
//*
//*-------------------------------------------------------------------*
//* PROGRAMA: DMBATCH                                                 *
//* FUNCION:  TRANSFERIR UN ARCHIVO DEL HOST AL SERVIDOR              *
//*-------------------------------------------------------------------*
//*PGF35P05 EXEC PGM=DMBATCH,COND=(4,LT)
//**
//*STEPLIB   DD DISP=SHR,DSN=SYS3.CONNECT.TGT.LINKLIB
//*DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.NETMAP
//*DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//*DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.MSG
//*DMPRINT   DD SYSOUT=*
//*SYSPRINT  DD SYSOUT=*
//*NDMCMDS   DD SYSOUT=*
//*SYSUDUMP  DD DUMMY
//*SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZGF35T05),DISP=SHR
//**
//*-------------------------------------------------------------------*
//*---------------------------------------------------------------------
//* OBJETIVO: COPIA DEL ARCHIVO SIVA.SIN.FIX.E&EMP..GLOBAL.CTO
//*           A                 SIVA.MDC.FIX.ECBP.GLOBAL.CTO
//*---------------------------------------------------------------------
//PGF35P05 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD  DSN=SIVA.SIN.FIX.E&EMP..GLOBAL.CTO,DISP=SHR
//SYSUT2   DD  DSN=MXCP.ZM.FIX.ECBP.GLOBAL.CTO,
//             DISP=(NEW,CATLG,DELETE),
//             DCB=(DSORG=PS,RECFM=FB,LRECL=911,BLKSIZE=0),
//             UNIT=3390,SPACE=(CYL,(40,20),RLSE)
//SYSIN    DD  DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//*-------------------------------------------------------------------*
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4DGR39
//* OBJETIVO: GENERA ARCHIVO CON INF. PARA SISTEMA GLOBAL RISK
//* NO ACTUALIZA TABLAS.
//* PASO REINICIABLE POR RESTART.
//*---------------------------------------------------------------------
//PGF35P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZMGR39A2 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..ZMGFPD35,DISP=SHR
//*MGR39A1 DD DSN=SIVA.SIN.FIX.E&EMP..GLOBAL.RISK,
//ZMGR39A1 DD DSN=MXCP.ZM.FIX.E&EMP..GLOBAL.RISK,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,LRECL=775,BLKSIZE=0,RECFM=FB),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGF35T04),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DGR40
//* OBJETIVO: EN ESTE PASO CORRE EL ZM4DGR40, GENERANDO LA PARTE
//*           PASIVA DEL ARCHIVO DE RIESGOS GLOBAL RISK
//* NO ACTUALIZA TABLAS
//*---------------------------------------------------------------------
//PGF35P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMGR40P1 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..ZMGFPD35,DISP=SHR
//*MGR40A1 DD DSN=SIVA.SIN.FIX.E&EMP..GLOBAL.RISK,DISP=MOD
//ZMGR40A1 DD DSN=MXCP.ZM.FIX.E&EMP..GLOBAL.RISK,DISP=MOD
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGF35T03),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DGR41
//* OBJETIVO: GENERA CLIENTES DEL ARCHIVO DE RIESGOS GLOBAL RISK
//* NO ACTUALIZA TABLAS
//*---------------------------------------------------------------------
//PGF35P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZMGR41P1 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..ZMGFPD35,DISP=SHR
//*MGR41A1 DD DSN=SIVA.SIN.FIX.E&EMP..GRISK.CLIENTE,
//ZMGR41A1 DD DSN=MXCP.ZM.FIX.E&EMP..GRISK.CLIENTE,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,LRECL=770,BLKSIZE=0,RECFM=FB),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGF35T02),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DGR44
//* OBJETIVO: DEPURA LA TABLA PARAM 'ISK' CON IPARAM 'CIN%'
//* BORRA PARAM
//*---------------------------------------------------------------------
//PGF35P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGF35T01),DISP=SHR
//*
//*---------------------------------------------------------------------
//* OBJETIVO: COPIA DEL ARCHIVO SIVA.SIN.FIX.ECBP.GLOBAL.CTO
//*           A                 SIVA.MDC.FIX.ECBP.GLOBAL.CTO
//*---------------------------------------------------------------------
//PGF35P00 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD  DSN=SIVA.SIN.FIX.ECBP.GLOBAL.CTO,DISP=SHR
//SYSUT2   DD  DSN=SIVA.MDC.FIX.ECBP.GLOBAL.CTO,
//             DISP=(NEW,CATLG,DELETE),
//             DCB=(DSORG=PS,RECFM=FB,LRECL=911,BLKSIZE=0),
//             UNIT=3390,SPACE=(CYL,(40,20),RLSE)
//SYSIN    DD  DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR TRANSFER              *
//****************************************************************
//*PGF35P0A EXEC  PGM=CTMCND,PARM='ADD COND CBTHND35_IN_OK ODATE',
//*         COND=(4,LT)
//*STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//*DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//*         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//*DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//*DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//*PRTDBG   DD SYSOUT=*
//*SYSPRINT DD DUMMY
//*SYSUDUMP DD DUMMY
//*DAPRINT  DD SYSOUT=*
//*DACNDIN  DD DDNAME=SYSIN
//**********************************************************************
