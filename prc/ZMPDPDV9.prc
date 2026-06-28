//ZMPDPDV9 PROC                                                         00000100
//*--------------------------------------------------------------------*00000200
//*                                                                    *00000900
//*               C A S A     D E     B O L S A                        *00000300
//*               -----------------------------                        *00000400
//*               PRACTICA DE VENTAS SIVA                              *00000500
//*                                                                    *00000600
//*   OBJETIVO:   REPORTE DE MATCH DE SUITABILITY CON PDV              *00000700
//*                                                                    *00000800
//*                                                                    *00000900
//*--------------------------------------------------------------------*00001000
//*  ELABORO: ISAAC DANIEL FILISOLA VILLASENOR (ACCENTURE)             *00001100
//*  FECHA  : ENERO DE 2015                                            *00001200
//*--------------------------------------------------------------------*00001300
//*  MODIFICACIONES                                                    *00001400
//* FECHA    DESCRIPCION                                               *00001500
//*--------------------------------------------------------------------*00005000
//*--------------------------------------------------------------------*00005010
//*             L O G   D E   M O D I F I C A C I O N E S              *00005020
//*--------------------------------------------------------------------*00005030
//*   MARCA    AUTOR      FECHA   DESCRIPCION                          *00005040
//*---------- -------    ------- --------------------------------------*00005050
//*EVERIS-INI EVERIS     25MAY17 SE AMPLIA DE 322 A 400 EL ARCHIVO DE  *
//*EVERIS-FIN                    SUITABILITY                           *
//*AVLG-INI   AVLG       26JUN19 SE AMPLIA DE 400 A 500 LA LONGITUD DEL*
//*AVLG-FIN                      ARCHIVO DE SUITABILITY.               *
//*INDRA-I    IEF        MAR2021 SE INCLUYE PASO PARA PEGAR EL CTO MUV *
//*INDRA-F                       AL ARCHIVO MYHPPSUI.MATCHSUI          *
//*--------------------------------------------------------------------*00005070
//*---------------------------------------------------------------------
//* PASO    : PZMPDV01         (MYHPPSUI.MATCHSUI)                     *
//* PROGRAMA: ICEMAN                                                   *
//* OBJETIVO: COPIA EL ARCHIVO DE REPORTE DE PDV A SIVA                *
//*---------------------------------------------------------------------
//PZMPDV01 EXEC PGM=ICEMAN
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXBP.YH.FIX.F&FECHA..MYHPPSUI.MATCHSUI,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.F&FECHA..MYHPPSUI.MATCHSUI,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            RECFM=FB,LRECL=500,BLKSIZE=0,
//            SPACE=(CYL,(100,50),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPDV9P1),DISP=SHR
//*
//*---------------------------------------------------------------------
//*INDRA-I                                                             *
//* PASO    : PZMPDV1A                                                 *
//* PROGRAMA: ICEMAN                                                   *
//* OBJETIVO: ELIMINA EL ENCABEZADO DEL ARCHIVO MYHPPSUI.MATCHSUI      *
//*---------------------------------------------------------------------
//PZMPDV1A EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD  DSN=MXCP.ZM.FIX.F&FECHA..MYHPPSUI.MATCHSUI,
//         DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.MYHPPSUI.MATCHSUI.SORT11,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=500,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPDV91A),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PASO    : PZMPDV1B                                                 *
//* PROGRAMA: IKJEFT01                                                 *
//* OBJETIVO: INCLUYE EL NUMERO DE CUENTA MUV EN   MYHPPSUI.MATCHSUI   *
//*---------------------------------------------------------------------
//PZMPDV1B EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PI601765 DD  DUMMY
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//*
//ZMGV12A2 DD  DSN=MXCP.ZM.FIX.MYHPPSUI.MATCHSUI.SORT11,
//         DISP=SHR
//*
//S1DGV12  DD  DSN=MXCP.ZM.FIX.MYHPPSUI.MATCHSUI.CTAMUV,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             DCB=(DSORG=PS,LRECL=103,RECFM=FB,BLKSIZE=0),
//             SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPDV91B),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PASO    : PZMPDV1C                                                 *
//* PROGRAMA: ICEMAN                                                   *
//* OBJETIVO: ORDENA EL ARCHIVO MATCHSUI.CTAMUV POR CUENTA MUV         *
//*---------------------------------------------------------------------
//PZMPDV1C EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD  DSN=MXCP.ZM.FIX.MYHPPSUI.MATCHSUI.CTAMUV,
//         DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.MYHPPSUI.MATCHSUI.CTAMUV.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=103,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPDV91C),DISP=SHR
//*
//*INDRA-F
//*---------------------------------------------------------------------
//* PASO    : PZMPDV02         (MYHPPVAA.EVALMER)                      *
//* PROGRAMA: ICEMAN                                                   *
//* OBJETIVO: COPIA EL ARCHIVO VECTOR VALMER DE PDV A SIVA             *
//*---------------------------------------------------------------------
//PZMPDV02 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXBP.YH.FIX.F&FECHA..MYHPPVAA.EVALMER,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.F&FECHA..MYHPPVAA.EVALMER,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            RECFM=FB,LRECL=368,BLKSIZE=0,
//            SPACE=(CYL,(10,5),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPDV9P2),DISP=SHR
//*
//**********************************************************************00045600
//*        TERMINA PROCESO ZMPDPDV9 BANCA PATRIMONIAL                  *00045700
//**********************************************************************00045800
