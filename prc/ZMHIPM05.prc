//ZMHIPM05 PROC                                                         00010000
//**********************************************************************
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     << MERCADO DE VALORES   >>                     *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMHIPM05                                            *
//*                                                                    *
//*   OBJETIVO  :  REPORTE POSICION POR EMISORA                        *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  CBHINS01                                      *
//*                                                                    *
//*   PERIODICIDAD    : MENSUAL.                                       *
//*                                                                    *
//*   ELABORADO POR   : SOFTTEK / EDUARDO MORALES VILLAFUERTE.         *
//*                                                                    *
//*   FECHA           : OCTUBRE DEL 2005                               *
//* ------- ------- ---------- ----------------------------------------*
//* JGF01   XME1788 20200603  -SE MIGRAN LAS TRANSFERENCIAS DEL        *
//*                            SERVIDOR PUBLIC.                        *
//*                           -SE CREA UN PASO POR TRANSFERENCIA.      *
//* ------- ------- ---------- ----------------------------------------*
//*********************************************************************
//*   MODIFICACION: SOFTTEK, ABRIL 2006
//*                 SE AGREGA PASO PARA TRANSFERENCIA DE ARCHIVO.
//*********************************************************************
//*    RECIBE LOS PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN ARCHIVO
//*********************************************************************
//*
//PHI05P03 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHIPM05,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//           UNIT=3390,
//           SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************
//*                           --ZM4MH025--                             *
//* OBJETIVO    : GENERAR ARCHIVO CON LAS MISMAS CARACTERISTICAS DEL   *
//*               ZM4MH010                                             *
//* ACTUALIZA   : GENERA ARCHIVO TEMPORAL                              *
//*                                                                    *
//**********************************************************************
//PHI05P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//RIB025T1 DD  DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..ZM4SH025.O2,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(20,10),RLSE),
//             DCB=(DSORG=PS,RECFM=FB,LRECL=277,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI05T02),DISP=SHR
//*
//**********************************************************************
//*                           --ZM4SH010--                             *
//* OBJETIVO    : EMITE REPORTE POSICION POR EMISORA                   *
//*                                                                    *
//* ACTUALIZA   : GENERA REPORTE Y ARCHIVO SECUENCIAL                  *
//*                                                                    *
//* PASO NO REINICIABLE REINICIAR DEL PASO ANTERIOR O BORRAR EL        *
//* ARCHIVO SECUENCIAL SI ES QUE SE GENERO                             *
//**********************************************************************
//PHI05P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//ZM4MH0A1 DD  DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHIPM05,
//            DISP=SHR
//ZM4MH0T1 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..SIIE2,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FB,LRECL=248,BLKSIZE=0),
//           UNIT=3390,
//           SPACE=(CYL,(100,50),RLSE)
//ZM4MH010 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..CTES2,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FB,LRECL=180,BLKSIZE=0),
//           UNIT=3390,
//           SPACE=(CYL,(2,1),RLSE)
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SORTWK02 DD UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SYSOUT   DD SYSOUT=*
//ZM4MH0R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI05T01),DISP=SHR
//*
//*JGF INI
//*-------------------------------------------------------------------*
//* PROGRAMA: DMBATCH                                                 *
//* FUNCION:  TRANSFERIR UN ARCHIVO DEL HOST AL SERVIDOR              *
//*-------------------------------------------------------------------*
//*PHI05P00 EXEC PGM=DMBATCH,COND=(4,LT)
//**
//*STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR
//*DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//*DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//*DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//*DMPRINT   DD SYSOUT=*
//*SYSPRINT  DD SYSOUT=*
//*NDMCMDS   DD SYSOUT=*
//*SYSUDUMP  DD DUMMY
//*SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZHI05T00),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZHI05T00                                                *
//* PROGRAMA : DMBATCH                                                 *
//* OBJETIVO : TRANSFERENCIA DE ARCHIVOS                               *
//*--------------------------------------------------------------------*
//ZHI05T00 EXEC PGM=DMBATCH,PARM=(YYSLYNN),COND=(4,LT)
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
  SUBMIT PROC=MSAHDDX1                             -
  &HOST=SYSP.PROP.HOST1                            -
  &DIST=CDWVPCDTXREPOMX0                           -
  &DSNI='MXCP.ZM.FIX.VAL.ECBP.SZPR.ZM4SH025.O2'    -
  &DSNO='\\NASBBVAMXP\PUBLIC\POSMENCB\POSNVO.TXT'  -
  &SYSOPTS='DATATYPE(TEXT) STRIP.BLANKS(NO)'
  SIGNOFF
//*
//*JGF FIN
