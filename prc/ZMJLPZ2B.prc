//ZMJLPZ2B PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                 <<  SOCIEDADES DE INVERSION   >>                   *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  SIVAXSI2 (SUBMITIDOR)                            *
//*                   ZMJLPZ2B (PROCEDIMIENTO)                         *
//*                   OPCION SIVA : 631 OPCION 2 .- BANCO              *
//*                                                                    *
//* OBJETIVO       :  GENERA Y TRANSFIERE A SERVIDOR EL ARCHIVO DEL    *
//*                   ANEXO 3 DE SOCIEDADES DE INVERSION ASI COMO EL   *
//*                   REPORTE PARA EXCEL DEL BANCO                     *
//*                   (INCLUYE DIFO, BPIGO, CUSTODIA INTERNACIONAL)    *
//*                                                                    *
//*                   (TRANSFERENCIA DE SIVA A SERVIDOR )              *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  NINGUNO                                          *
//*                                                                    *
//* DESPUES DE     :  NINGUNO                                          *
//*                                                                    *
//* PERIODICIDAD   :  A PETICION DEL USUARIO                           *
//*                                                                    *
//**********************************************************************
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//**********************************************************************
//*
//* ------- ------- ---------- ----------------------------------------*
//* JGF01   XME1788 20200904  -SE MIGRAN LAS TRANSFERENCIAS DEL        *
//*                            SERVIDOR SBBV04 AL NASBBVAMXP.          *
//* ------- ------- ---------- ----------------------------------------*
//**********************************************************************
//* PROGRAMA: ZM4DJ130                 (DIFO, BPIGO, CUSTODIA)         *
//* FUNCION:  GEN. ARCHIVO DEL ANEXO 3 CON INFORMACION DEL BANCO       *
//**********************************************************************
//PJL20P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMG001A1 DD  DSN=MXCP.ZM.TMP.EBCM.ZMJLPB20,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  DUMMY
//SYSABEND DD  DUMMY
//SYSDBOUT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//PRINT    DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//*
//ZMJ130A1 DD  DSN=MXCP.ZM.FIX.EBCM.ANEXO.BANCO1,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(20,10),RLSE),
//             DCB=(RECFM=FB,LRECL=400,BLKSIZE=0)
//*
//ZMJ130R1 DD  DSN=MXCP.ZM.FIX.EBCM.ANEXO.BANCO2,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(20,10),RLSE),
//             DCB=(RECFM=FB,LRECL=462,BLKSIZE=0)
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZSF28T05),DISP=SHR
//*
//*JGF01 INI
//**********************************************************************
//*                        == DMBATCH  ==                              *
//* OBJETIVO :   TRANSFERENCIA DEL ARCHIVOS HOST A SERVIDOR            *
//**********************************************************************
//*PJL20P01 EXEC PGM=DMBATCH,PARM=(YYSLYNN),COND=(4,LT)
//**
//*STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR
//*DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//*DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//*DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//*DMPRINT   DD SYSOUT=*
//*SYSPRINT  DD SYSOUT=*
//*NDMCMDS   DD SYSOUT=*
//*SYSUDUMP  DD DUMMY
//*SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZJT20T02),DISP=SHR
//**
//**********************************************************************
//*                        == DMBATCH  ==                              *
//* OBJETIVO :   TRANSFERENCIA DEL ARCHIVOS HOST A SERVIDOR            *
//**********************************************************************
//PJL20P02 EXEC PGM=DMBATCH,PARM=(YYSLYNN),COND=(4,LT)
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
  &DSNI='MXCP.ZM.FIX.EBCM.ANEXO.BANCO1'                            -
  &DSNO='\\NASBBVAMXP\PUBLIC\ANEXO3\BANCO1.TXT'                    -
  &SYSOPTS='DATATYPE(TEXT) STRIP.BLANKS(NO)'
  SIGNOFF
//*
//**********************************************************************
//*                        == DMBATCH  ==                              *
//* OBJETIVO :   TRANSFERENCIA DEL ARCHIVOS HOST A SERVIDOR            *
//**********************************************************************
//PJL20P01 EXEC PGM=DMBATCH,PARM=(YYSLYNN),COND=(4,LT)
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
  &DSNI='MXCP.ZM.FIX.EBCM.ANEXO.BANCO2'                            -
  &DSNO='\\NASBBVAMXP\PUBLIC\ANEXO3\BANCO2.TXT'                    -
  &SYSOPTS='DATATYPE(TEXT) STRIP.BLANKS(NO)'
  SIGNOFF
//*
//*JGF01 FIN
//**********************************************************************
//*                 F I N   Z M J L P Z 2 B                            *
//**********************************************************************
