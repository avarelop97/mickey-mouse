//ZMJDDPRM PROC
//**********************************************************************
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                   >>>>  SOCIEDADES DE INVERSION  <<<<              *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   DISPARADOR:  BCJDDPRM   (CTL-M)                                  *
//*   PROCEDIM. :  ZMJDDPRM                                            *
//*                                                                    *
//*   OBJETIVO  :  GENERA REPORTE DATOS BANQUERO (PROMOTOR PATRIMONIAL)*
//*                                                                    *
//*                                                                    *
//*   CORRE ANTES DE  :                                                *
//*                                                                    *
//*   CORRE DESPUES DE:                                                *
//*                                                                    *
//*   PERIODICIDAD    :  DIARIO                                        *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*AGREGA| 02/12/22 |MB13732|PNZPRM03|SE AGREGA PASO PARA TOMA DE ARCHI*
//*                         |PNZPRM04|VO POR DATAX PARA DATIO+= CIFRAS *
//*@MEX01| 11/01/23 |MI13599|PNZPRM05|SE AGREGA PASO PARA LEVANTAR     *
//*                                  |CONDICION HACIA DATIO.           *
//**********************************************************************
//* PASO       : PNZ0RP15                                              *
//* OBJETIVO   : COPIA ARCHIVO DESCARGA DE TABLA YHDTBAN (PDV) PARA    *
//*              OBTENER FACULTADES, SORTEADO POR ID BANQUEDO (M...)   *
//**********************************************************************
//PNZPRM03 EXEC PGM=ICEMAN
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXBP.YH.FIX.F&FECHA..MYHPPD05.YHDTBAN,DISP=SHR
//*ORTIN   DD DSN=MXCP.ZM.FIX.F&FECHA..MYHPPD05.YHDTBAN,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.ZMJDDPRM.YHDTBAN,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(RECFM=FB,LRECL=072,BLKSIZE=0),
//            SPACE=(CYL,(10,5),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMZPRM03),DISP=SHR
//*
//**********************************************************************
//* PASO       : PNZPRM02                                              *
//* OBJETIVO   : COPIA ARCHIVO CON DATOS DE BANQUERO PATRIMONIAL Y LO  *
//*              SORTEA POR CLAVE DE BANQUERO (M..)                    *
//**********************************************************************
//PNZPRM02 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.MDD.ECBP.ZMLCPD39.BANQUERO.S,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.ZMJDDPRM.BANQUERS,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(RECFM=FB,LRECL=144,BLKSIZE=0),
//            SPACE=(CYL,(10,5),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMZPRM02),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PNZPRM01                                              *
//* UTILERIA   : IKJEFT1A/ZM3CDPRM                                     *
//* OBJETIVO   : HACER MATCH DATOS PROMOTOR MUV VS DATOS PROM PDV      *
//*--------------------------------------------------------------------*
//PNZPRM01 EXEC PGM=ZM3CDPRM,PARM=('&FECHA'),COND=(4,LT)
//*
//ZMRRA1E1 DD DSN=MXCP.ZM.TMP.ZMJDDPRM.BANQUERS,DISP=SHR
//ZMRRA1E2 DD DSN=MXCP.ZM.TMP.ZMJDDPRM.YHDTBAN,DISP=SHR
//*
//ZMRRA1S1 DD DSN=MXCP.ZM.TMP.ZMJDDPRM.BANQUERS.MATCH,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(RECFM=FB,LRECL=145,BLKSIZE=0),
//            SPACE=(CYL,(10,5),RLSE)
//*
//ZMRRA1S2 DD DSN=MXCP.ZM.TMP.ZMJDDPRM.BANQUERS.SOLOMUV,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(RECFM=FB,LRECL=144,BLKSIZE=0),
//            SPACE=(CYL,(10,5),RLSE)
//*
//ZMRRA1S3 DD DSN=MXCP.ZM.TMP.ZMJDDPRM.BANQUERS.SOLOPDV,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(RECFM=FB,LRECL=72,BLKSIZE=0),
//            SPACE=(CYL,(10,5),RLSE)
//*
//ZMRRA1S4 DD DSN=MXCP.ZM.TMP.ZMJDDPRM.CIFRAS.CONTROL,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(RECFM=FB,LRECL=126,BLKSIZE=0),
//            SPACE=(CYL,(01,1),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//**********************************************************************
//* PASO       : PNZPRM03                                              *
//* OBJETIVO   : COPIA ARCHIVO CON DATOS DE BANQUERO PATRIMONIAL Y     *
//*              SUSTITUYE ';' POR '|' Y LO DEJA COMO FIX PARA DATAX   *
//**********************************************************************
//PNZPRM03 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.ZMJDDPRM.BANQUERS.MATCH,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMJDDPRM.BANQUERS.MATCH,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(RECFM=FB,LRECL=145,BLKSIZE=0),
//            SPACE=(CYL,(10,5),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMZPRM04),DISP=SHR
//*
//**********************************************************************
//* PASO       : PNZPRM04                                              *
//* OBJETIVO   : COPIA ARCHIVO DE CIFRAS TMP A ARCHIVO FIX             *
//**********************************************************************
//PNZPRM04 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.ZMJDDPRM.CIFRAS.CONTROL,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMJDDPRM.CIFRAS.CONTROL,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(RECFM=FB,LRECL=126,BLKSIZE=0),
//            SPACE=(CYL,(01,1),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMZPRM05),DISP=SHR
//*
//*@MEX01-I
//*--------------------------------------------------------------------*
//* PASO       : PNZPRM05.                                             *
//* PROGRAMA   : IOACND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA EJECUTAR PROCESO DE DATIO        *
//*--------------------------------------------------------------------*
//PNZPRM05 EXEC PGM=IOACND,PARM='ADD COND MX2CRX_BCJDDPRM00 &FEC',
//          COND=(4,LT)
//*
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD DUMMY
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
//*@MEX01-F
