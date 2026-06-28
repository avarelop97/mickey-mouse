//ZMGFPD36 PROC
//*
//**********************************************************************
//**    G R U P O - F I N A N C I E R O - P R O B U R S A   (B B V)
//**
//** SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)
//**
//** PROCESO        :  ZMGFPD36
//**
//** OBJETIVO       :  OBTIENE ARCHIVO PARA SISTEMA DE GLOBAL RISK
//**                   DE FIN DE DIA SE ACCESA CARTERA EN VEZ DE SECART.
//** CORRE ANTES DE :  XXXXXXXX
//**
//** DESPUES DE     :  PFDFDD01
//**
//** OBSERVACIONES  : ESTE PROCESO ACCESA A INFORMACION DE CARTERA
//**                  Y NO DE SECART COMO LO HACE EL ZMGFPD35
//**
//**
//** REALIZO        :  OGETRONICS.
//*                    ENERO   2006.                                   *
//**********************************************************************
//* BITACORA DE MODIFICACIONES :                                       *
//*--------------------------------------------------------------------*
//*MODIF |  FECHA   |USUARIO|  PASO |DESCRIPCION                       *
//*--------------------------------------------------------------------*
//* XXX  |XX-XXX-XX |IDCEXXX|       |XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX   *
//*                                                                    *
//**********************************************************************
//* ------- ------- ---------- ----------------------------------------*
//* JGF01   XME1788 20200904  -SE MIGRAN LAS TRANSFERENCIAS DEL        *
//*                            SERVIDOR SBBV04 AL NASBBVAMXP.          *
//* ------- ------- ---------- ----------------------------------------*
//**********************************************************************
//* PROGRAMA: ZM3DG001
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO
//*           PARA SIGUIENTES PASOS
//**********************************************************************
//PGF36P20 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','  ','  ','  ',)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..ZMGFPD36,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DGR47
//* OBJETIVO: GENERA POSICION PROPIA DE GLOBAL RISK
//* NO ACTUALIZA TABLAS;PASO REINICIABLE POR RESTART.
//*---------------------------------------------------------------------
//PGF36P15 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZMGR47A2 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..ZMGFPD36,DISP=SHR
//ZMGR47A1 DD DSN=SIVA.SIN.FIX.E&EMP..GLOBAL.CTO.FND,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGF36T15),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DGR46
//* OBJETIVO: GENERA PASIVOS PARA EL ARCHIVO DE GLOBAL RISK
//* NO ACTUALIZA TABLAS;PASO REINICIABLE POR RESTART.
//*---------------------------------------------------------------------
//PGF36P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMGR46P1 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..ZMGFPD36,DISP=SHR
//ZMGR46A1 DD DSN=SIVA.SIN.FIX.E&EMP..GLOBAL.CTO.FND,DISP=MOD
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGF36T10),DISP=SHR
//*
//*JGF01 INI
//*-------------------------------------------------------------------*
//* PROGRAMA: DMBATCH                                                 *
//* FUNCION:  TRANSFERIR UN ARCHIVO DEL HOST AL SERVIDOR              *
//* \\SBBV04\PUBLIC\GLOBAL_RISK\REPRO\GXGLOFND.TXT                    *
//*-------------------------------------------------------------------*
//*PGF36P05 EXEC PGM=DMBATCH,COND=(4,LT)
//**
//*STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR
//*DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.NETMAP
//*DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//*DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.MSG
//*DMPRINT   DD SYSOUT=*
//*SYSPRINT  DD SYSOUT=*
//*NDMCMDS   DD SYSOUT=*
//*SYSUDUMP  DD DUMMY
//*SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZGF36T05),DISP=SHR
//**
//*-------------------------------------------------------------------*
//* PROGRAMA: DMBATCH                                                 *
//* FUNCION:  TRANSFERIR UN ARCHIVO DEL HOST AL SERVIDOR              *
//* \\NASBBVAMXP\PUBLIC\GLOBAL_RISK\REPRO\GXGLOFND.TXT                *
//*-------------------------------------------------------------------*
//PGF36P05 EXEC PGM=DMBATCH,PARM=(YYSLYNN),COND=(4,LT)
//*
//STEPLIB  DD DISP=SHR,DSN=SYS3.CONNECT.TGT.LINKLIB
//DMNETMAP DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//DMPUBLIB DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//DMMSGFIL DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//DMPRINT  DD SYSOUT=*
//SYSDUMP  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//NDMCMDS  DD SYSOUT=*
//SYSIN    DD *
  SIGNON CASE(YES) ESF=NO
  SUBMIT PROC=MSAHDDX1                                             -
  &HOST=SYSP.PROP.HOST1                                            -
  &DIST=CDWVPCDTXREPOMX0                                           -
  &DSNI='SIVA.SIN.FIX.ECBP.GLOBAL.CTO.FND'                         -
  &DSNO='\\NASBBVAMXP\PUBLIC\GLOBAL_RISK\REPRO\GXGLOFND.TXT'       -
  &SYSOPTS='DATATYPE(TEXT) STRIP.BLANKS(NO)'
  SIGNOFF
//*
//*JGF01 FIN
