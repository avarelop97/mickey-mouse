//ZMSTPD02 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     << SISTEMA DE VALORES >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMSTPD02                                            *
//*                                                                    *
//*   OBJETIVO  :  REALIZA TRANSFERENCIA DE LOS ARCHIVOS DEL           *
//*                ESTADISTICO AL SERVIDOR SBBV04                      *
//*                                                                    *
//*                (TRANSFERENCIA DEL SIVA AL SERVIDOR)                *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  PTEPED02                                      *
//*                                                                    *
//*   PERIODICIDAD    : DIARIO                                         *
//*                                                                    *
//*   ELABORADO POR: GETRONICS.                                        *
//*                                                                    *
//*   FECHA:  MAYO    2004.                                            *
//*                                                                    *
//*   ACTUALIZA : NINGUNA TABLA                                        *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//*-------------------------------------------------------------------**
//*                                                                    *00020000
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA  *00030000
//*  PST02P02     EN ARCHIVO SECUENCIAL.                               *00040000
//*                                                         ZM3DG001   *00020000
//*-------------------------------------------------------------------**
//PST02P01 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765  DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMSTPD02,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*-------------------------------------------------------------------**
//*                                                                    *00020000
//*  PASO:  2     REALIZA LA TRANSFERENCIA DE LOS ARCHIVOS ESTADISTICOS*00030000
//*  PHT59P02     AL SERVIDOR.                                         *00040000
//*                                                                    *00020000
//*-------------------------------------------------------------------**
//*PST02P02 EXEC PGM=DMBATCH,PARM=(YYSLYNN),COND=(4,LT)
//**
//*STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR
//*DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//*DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//*DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//*DMPRINT   DD SYSOUT=*
//*SYSPRINT  DD SYSOUT=*
//*NDMCMDS   DD SYSOUT=*
//*SYSUDUMP  DD DUMMY
//*SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZST02T01),DISP=SHR
//*
//*-------------------------------------------------------------------**
//*  PASO:  3     REALIZA LA TRANSFERENCIA DE LOS ARCHIVOS ESTADISTICOS*00030000
//*  PHT59P03     AL SERVIDOR.                                         *00040000
//*-------------------------------------------------------------------**
//PST02P03 EXEC PGM=DMBATCH,PARM=(YYSLYNN),COND=(4,LT)
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
  &DSNI='MXCP.ZM.GDGD.SIE.EBCM.IDINDIA(0)'                         -
  &DSNO='\\NASBBVAMXP\PUBLIC\CADFOND\IDINDIAC.TXT'                 -
  &SYSOPTS='DATATYPE(TEXT) STRIP.BLANKS(NO)'
  SIGNOFF
//*
//*-------------------------------------------------------------------**
//*  PASO:  4     REALIZA LA TRANSFERENCIA DE LOS ARCHIVOS ESTADISTICOS*00030000
//*  PHT59P04     AL SERVIDOR.                                         *00040000
//*-------------------------------------------------------------------**
//*PST02P04 EXEC PGM=DMBATCH,PARM=(YYSLYNN),COND=(4,LT)
//**
//*STEPLIB  DD DISP=SHR,DSN=SYS3.CONNECT.TGT.LINKLIB
//*DMNETMAP DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//*DMPUBLIB DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//*DMMSGFIL DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//*DMPRINT  DD SYSOUT=*
//*SYSDUMP  DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*NDMCMDS  DD SYSOUT=*
//*SYSIN    DD *
//*SIGNON CASE(YES) ESF=NO
//*SUBMIT PROC=MSAHDDX1                                             -
//*&HOST=SYSP.PROP.HOST1                                            -
//*&DIST=CDWVPCDTXREPOMX0                                           -
//*&DSNI='SIVA.SIE.FIX.CONTRATO.NUEVO'                              -
//*&DSNO='\\NASBBVAMXP\PUBLIC\CADFOND\CONTRATO.TXT'                 -
//*&SYSOPTS='DATATYPE(TEXT) STRIP.BLANKS(NO)'
//*SIGNOFF
//**
//*-------------------------------------------------------------------**
//*  PASO:  5     REALIZA LA TRANSFERENCIA DE LOS ARCHIVOS ESTADISTICOS*00030000
//*  PHT59P05     AL SERVIDOR.                                         *00040000
//*-------------------------------------------------------------------**
//PST02P05 EXEC PGM=DMBATCH,PARM=(YYSLYNN),COND=(4,LT)
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
  &DSNI='MXCP.ZM.FIX.SIN.ECBP.TENDIA.FIN2'                         -
  &DSNO='\\NASBBVAMXP\PUBLIC\SOCINV\TENDIAFIN2.TXT'                -
  &SYSOPTS='DATATYPE(TEXT) STRIP.BLANKS(NO)'
  SIGNOFF
//*
//*
//*--------------------------------------------------------------------*00010000
//*                 F I N   Z M S T P M 0 2                            *00020000
//*--------------------------------------------------------------------*00010000
