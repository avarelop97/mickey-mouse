//ZMHIPS01 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<<   V A L O R E S   >>>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMHIPS01.                                           *
//*                                                                    *
//*   OBJETIVO  :  OBTENER CADA SEMANA LA POSICION DE TODAS LAS        *
//*                EMISORAS DE TODOS LOS CLIENTES                      *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    :  SEMANAL                                       *
//*                                                                    *
//*   ELABORADO POR: SOFTTEK / GIANCARLO RODRIGUEZ (GIRM)              *
//*                                                                    *
//*   FECHA:  MAYO  2004.                                              *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//* ACV  |          |       |        |                              .  *
//* ------- ------- ---------- ----------------------------------------*
//* JGF01   XME1788 20200904  -SE MIGRAN LAS TRANSFERENCIAS DEL        *
//*                            SERVIDOR SBBV04 AL NASBBVAMXP.          *
//* ------- ------- ---------- ----------------------------------------*
//**********************************************************************
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4SH025                                                *
//* FUNCION:  GENERA ARCHIVO DE TODA LA POSICION POR EMISORA DE TODOS *
//*           LOS CLIENTES AL CIERRE DE LA SEMANA.                    *
//*-------------------------------------------------------------------*
//PHI01P03 EXEC PGM=IKJEFT01
//PI601765 DD DUMMY
//RIB025T1 DD DSN=MXCP.ZM.FIX.E&EMP..S&SUC..ZMHIPS01.RIB025S,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=277,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHS01T03),DISP=SHR
//*-------------------------------------------------------------------*
//* PROGRAMA: DMBATCH                                                 *
//* FUNCION:  TRANSFERIR UN ARCHIVO DEL HOST AL SERVIDOR              *
//*-------------------------------------------------------------------*
//*PHI01P02 EXEC PGM=DMBATCH,COND=(4,LT)
//**
//*STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR
//*DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//*DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//*DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//*DMPRINT   DD SYSOUT=*
//*SYSPRINT  DD SYSOUT=*
//*NDMCMDS   DD SYSOUT=*
//*SYSUDUMP  DD DUMMY
//*SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZHS01T02),DISP=SHR
//**
//*-------------------------------------------------------------------*
//* PROGRAMA: DMBATCH                                                 *
//* FUNCION:  TRANSFERIR UN ARCHIVO DEL HOST AL SERVIDOR              *
//*-------------------------------------------------------------------*
//*PHI01P02 EXEC PGM=DMBATCH,PARM=(YYSLYNN),COND=(4,LT)
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
//*&DSNI='MXCP.ZM.FIX.ECBP.SZPR.ZMHIPS01.RIB025S'                   -
//*&DSNO='\\NASBBVAMXP\PUBLIC\BANXICO\RIB025S.TXT'                  -
//*&SYSOPTS='DATATYPE(TEXT) STRIP.BLANKS(NO)'
//*SIGNOFF
//**
//**JGF01 FIN
//*-------------------------------------------------------------------*
//* PROGRAMA: ICEMAN                                                  *
//* FUNCION:  COPIA ARCHIVO A GDG                                     *
//*-------------------------------------------------------------------*
//PHI01P01 EXEC PGM=ICEMAN,COND=(4,LT)
//PI601765 DD DUMMY
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.E&EMP..S&SUC..ZMHIPS01.RIB025S,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.GDGD.E&EMP..S&SUC..HIPS01A1(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            RECFM=FB,LRECL=277,BLKSIZE=0,
//            UNIT=3390,DCB=BKUP.MODEL
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHS01T01),DISP=SHR                   00183716
//*
