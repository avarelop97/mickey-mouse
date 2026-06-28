//ZMHTPD02 PROC
//**********************************************************************
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<<   V A L O R E S   >>>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMHTPD02.                                           *
//*                                                                    *
//*   OBJETIVO  :  TRANSMITIR LOS ARCHIVOS DE CUSTODIA DE HOST A       *
//*                SERVIDOR, CONCILIACION CAJON Y EMISORAS.            *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  CBHLNE72                                      *
//*                                                                    *
//*   PERIODICIDAD    :  A SOLICITUD DE USUARIO.                       *
//*                                                                    *
//*   ELABORADO POR   :  GETRONICS /  J. JAIME FLORES ESTRADA          *
//*
//*   FECHA:  ABRIL 2005.                                              *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//**********************************************************************
//* ------- ------- ---------- ----------------------------------------*
//* JGF01   XME1788 20200609  -SE MIGRAN LAS TRANSFERENCIAS DEL        *
//*                            SERVIDOR PUBLIC.                        *
//*                           -SE CREA UN PASO POR TRANSFERENCIA.      *
//* ------- ------- ---------- ----------------------------------------*
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM3DG001                                                *
//* FUNCION:  RECIBE LOS PARAMETROS ENVIADOS POR EL SUBMITIDOR        *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHT02P03 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//ZMG001A1 DD DSN=MXCP.ZM.WKF.E&EMP..S&SUC..ZMHTPD02,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=96,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//*-------------------------------------------------------------------*
//* PROGRAMA: DMBATCH                                                 *
//* FUNCION:  TRANSFERIR UN ARCHIVO DEL SERVIDOR AL HOST              *
//*-------------------------------------------------------------------*
//*PHT02P02 EXEC PGM=DMBATCH,COND=(4,LT)
//**
//*STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR
//*DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//*DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//*DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//*DMPRINT   DD SYSOUT=*
//*SYSPRINT  DD SYSOUT=*
//*NDMCMDS   DD SYSOUT=*
//*SYSUDUMP  DD DUMMY
//*SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZHT02T02),DISP=SHR
//*
//*JGF INI
//*--------------------------------------------------------------------*
//* PASO     : PHT02P02                                                *
//* PROGRAMA : DMBATCH                                                 *
//* OBJETIVO : TRANSFERENCIA DE ARCHIVOS                               *
//*--------------------------------------------------------------------*
//PHT02P02 EXEC PGM=DMBATCH,PARM=(YYSLYNN),COND=(4,LT)
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
  SUBMIT PROC=MSAHDDX1                                -
  &HOST=SYSP.PROP.HOST1                               -
  &DIST=CDWVPCDTXREPOMX0                              -
  &DSNI='MXCP.ZM.TMP.VAL.BCM.CTD.ARCHAJON'            -
  &DSNO='\\NASBBVAMXP\B_PLA004\CUSTODIA\POSCAJON.TXT' -
  &SYSOPTS='DATATYPE(TEXT) STRIP.BLANKS(NO)'
  SIGNOFF
//*
//*-------------------------------------------------------------------*
//* PROGRAMA: DMBATCH                                                 *
//* FUNCION:  TRANSFERIR UN ARCHIVO DEL SERVIDOR AL HOST              *
//*-------------------------------------------------------------------*
//*PHT02P01 EXEC PGM=DMBATCH,COND=(4,LT)
//*
//*STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR
//*DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//*DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//*DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//*DMPRINT   DD SYSOUT=*
//*SYSPRINT  DD SYSOUT=*
//*NDMCMDS   DD SYSOUT=*
//*SYSUDUMP  DD DUMMY
//*SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZHT02T01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : PHT02P01                                                *
//* PROGRAMA : DMBATCH                                                 *
//* OBJETIVO : TRANSFERENCIA DE ARCHIVOS                               *
//*--------------------------------------------------------------------*
//PHT02P01 EXEC PGM=DMBATCH,PARM=(YYSLYNN),COND=(4,LT)
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
  SUBMIT PROC=MSAHDDX1                                   -
  &HOST=SYSP.PROP.HOST1                                  -
  &DIST=CDWVPCDTXREPOMX0                                 -
  &DSNI='MXCP.ZM.TMP.VAL.BCM.CTD.ARCHEMIS'               -
  &DSNO='\\NASBBVAMXP\B_PLA004\CUSTODIA\POSEMISO.TXT'    -
  &SYSOPTS='DATATYPE(TEXT) STRIP.BLANKS(NO)'
  SIGNOFF
//*
//*JGF FIN
