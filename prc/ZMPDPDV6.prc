//ZMPDPDV6 PROC                                                         00000100
//*
//*--------------------------------------------------------------------*00000200
//*                                                                    *00000900
//*               C A S A     D E     B O L S A                        *00000300
//*               -----------------------------                        *00000400
//*               PRACTICA DE VENTAS SIVA                              *00000500
//*                                                                    *00000600
//*  PASO:  1     REPORTE DE COLOCACIONES PRIMARIAS DE PDV             *00000700
//*               SIVA                                                 *00000800
//*                                                                    *00000900
//*--------------------------------------------------------------------*00001000
//*  ELABORO: ISAAC DANIEL FILISOLA VILLASENOR (ACCENTURE)             *00001100
//*  FECHA  : SEPTIEMBRE DE 2014                                       *00001200
//*--------------------------------------------------------------------*00001300
//*  MODIFICACIONES                                                    *00001400
//* FECHA    DESCRIPCION                                               *00001500
//*--------------------------------------------------------------------*00005000
//*--------------------------------------------------------------------*00005010
//*             L O G   D E   M O D I F I C A C I O N E S              *00005020
//*--------------------------------------------------------------------*00005030
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *00005040
//* -----------  ------- -------  -------------------------------------*00005050
//*--------------------------------------------------------------------*00005070
//**********************************************************************
//* PROGRAMA: ZM3PDV01
//* OBJETIVO: OBTIENE EL ODATE PARA LA DESCARGA DE LA TABLA ZMDT932
//*
//**********************************************************************
//PZMPDV01 EXEC PGM=ZM3PDV01,PARM='&FECHA'
//S1FEPDV1 DD DSN=MXCP.ZM.FIX.ZM3PDV01.OBTFECHA,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(RECFM=FB,LRECL=6,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//*                                                                   *
//*---------------------------------------------------------------------
//* PASO    : PZMPDV02                                                 *
//* PROGRAMA: IKJEFT01/PDV                                             *
//* OBJETIVO: REPORTE DE SUITABILITY PDV                               *
//*---------------------------------------------------------------------
//PZMPDV02 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXBP.YH.FIX.F&FECHA..MYHPPREP.INTRMUV,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.F&FECHA..MYHPPREP.INTRCOL,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            RECFM=FB,LRECL=80,BLKSIZE=0,
//            SPACE=(CYL,(10,5),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZPDV1302),DISP=SHR
//*
//**********************************************************************00023300
//* PROGRAMA: ZM4PDV10                                                 *00023400
//* FUNCION: CREACION DE REPORTE DE COLOCACIONES PRIMARIAS.            *00023500
//**********************************************************************00023600
//PZMPDV03 EXEC PGM=IKJEFT01,COND=(4,LT)                                00023700
//ZMPDV2E1 DD DSN=MXCP.ZM.FIX.ZM3PDV01.OBTFECHA,
//            DISP=SHR
//ZMPDV2E2 DD DSN=MXCP.ZM.FIX.F&FECHA..MYHPPREP.INTRCOL,
//            DISP=SHR
//ZMPDV2S1 DD DSN=MXCP.ZM.FIX.REPORTCP.PDV.F&FECHA,                     00024000
//            DISP=(NEW,CATLG,DELETE),                                  00024100
//            DCB=(LRECL=198,RECFM=FB,BLKSIZE=0,DSORG=PS),              00024200
//            UNIT=3390,SPACE=(CYL,(60,30),RLSE)                        00024300
//*                                                                     00024400
//SYSTSPRT DD SYSOUT=*                                                  00024500
//SYSPRINT DD SYSOUT=*                                                  00024600
//SYSOUT   DD SYSOUT=*                                                  00024700
//SYSDBOUT DD SYSOUT=*                                                  00024800
//SYSABOUT DD SYSOUT=*                                                  00024900
//SYSUDUMP DD DUMMY                                                     00025000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPDV6P1),DISP=SHR                   00025100
//*                                                                     00025200
//**********************************************************************00045600
//*        TERMINA PROCESO ZMPDODV6 BANCA PATRIMONIAL                  *00045700
//**********************************************************************00045800
