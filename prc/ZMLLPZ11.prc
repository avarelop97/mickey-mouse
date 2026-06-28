//ZMLLPZ11 PROC
//**********************************************************************00003000
//*                     C A S A   D E   B O L S A                      *00003000
//*                     =========================                      *00003000
//*                     <<< MERCADO DE DINERO >>>                      *00003000
//*                                                                    *00003000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00003000
//*                                                                    *00003000
//*   PROCEDIM. :  ZMLLPZ11                                            *00003000
//*                                                                    *00003000
//*   OBJETIVO  :  REPORTE DE EMISORAS DE ALTA MENSUAL                 *00003000
//*                                                                    *00003000
//*   CORRE ANTES DE  :  NINGUNO                                       *00003000
//*                                                                    *00003000
//*   CORRE DESPUES DE:  NINGUNO                                       *00003000
//*                                                                    *00003000
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *00003000
//*                                                                    *00003000
//**********************************************************************00003000
//*             L O G   D E    M O D I F I C A C I O N E S             *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA   DESCRIPCION                         *
//* -----------  -------- -------- ----------------------------------- *
//* FS-1.0.0-01  XMZ0754  03102016 SE AGREGA NUEVO ARCHIVO:            *
//*                                MXCP.ZM.TMP.MDD.EMP.SUC.ZMLLPE11    *
//*                                                                    *
//*  DESCRIPCION                                                       *
//*----------------------------                                        *
//*ANTES:SIVA.MDD.WKF.CONFIRMA.REPORTO                                 *
//*AHORA:SIVA.MDD.FIX.EMP.SUC.CONFIRMA.REPORTO                         *
//*                                                                    *00003000
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  2     REPORTE DE EMISORAS DE ALTA MENSUAL   -              *00030000
//*  PLL11P01                                                          *00040000
//*               PASO REINICIABLE POR RESTART             ZM4DLN84    *00040000
//**********************************************************************00060000
//PLL11P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//*
//ZMLN84A1 DD  DSN=MXCP.ZM.TMP.MDD.EMP.SUC.ZMLLPE11,DISP=SHR
//*
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*ZMLN84R1 DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZMLN84R1 DD DSN=MXCP.ZM.FIX.ZMLLPZ11.REPORTE1,
//*           DISP=(NEW,CATLG,DELETE),
//*            SPACE=(CYL,(10,5),RLSE),
//*            DCB=(RECFM=FB,LRECL=133,BLKSIZE=0,DSORG=PS),
//*            UNIT=3390
//ZMLN84R1 DD DUMMY
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*
//ZMLN84R2 DD DSN=MXCP.ZM.FIX.MDD.EMP.SUC.ZMLLPE11,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(LRECL=133,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL11T01),DISP=SHR
//*
//**********************************************************************00010000
//*                 F I N     Z M L L P Z 1 1                          *00020000
//**********************************************************************00060000
