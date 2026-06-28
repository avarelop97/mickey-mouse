//ZMLLPE33 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  MERCADO DE DINERO >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  CBLLCE33                                            *
//*                                                                    *
//*   OBJETIVO  :  ASIGNACION AUTOMATICA DE GRUPOS A LAS EMISORAS DADAS*
//*                DE ALTA CON FECHA P05.                              *
//*   OBJETIVO :   CORRE LA CONFIRMACION DE LAS ASIGNACIONES DE M.D.D. *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  CBLLCE33                                      *
//*                                                                    *
//*   PERIODICIDAD    :  EVENTUAL  (A PETICION DEL USUARIO)            *
//*                                                                    *
//*   ELABORADO POR: GETRONICS.                                        *
//*                                                                    *
//*   FECHA:  OCTUBRE 2003.                                            *
//*                                                                    *
//*   ACTUALIZA : AGPOCON                                              *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//*-------------------------------------------------------------------**
//*                                                                    *00020000
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA  *00030000
//*  PLL33P08     EN ARCHIVO SECUENCIAL.                               *00040000
//*                                                         ZM3DG001   *00020000
//*-------------------------------------------------------------------**
//PLL33P08 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765  DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE33,
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
//*--------------------------------------------------------------------*
//*                                                                    *00020000
//*  PASO:  2     INICIALIZA EL EVENTO PARA LIMITAR LAS COMPRAS Y VEN- *00030000
//*  PLL33P07     TAS.                                                 *00040000
//*                           PD5 = I                                  *00020000
//* PASO REINICIABLE POR RESTART                            ZM4DLE11   *00020000
//*--------------------------------------------------------------------*
//PLL33P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLE11A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE33,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL33T07),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                                                                    *00020000
//*  PASO:  3    EMITIR REPORTE DE REDENCION DEL PROMOTOR 99 Y 31      *00030000
//*  PLL33P06    NO ACT. TABLAS.   LEE REDAUXI                         *00040000
//* PASO REINICIABLE POR RESTART                            ZM4DLH00   *00020000
//*--------------------------------------------------------------------*
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*PLL33P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//**
//*ZMLH00A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE33,DISP=SHR
//**
//*ZMLH00DR DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//**
//*SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL33T06),DISP=SHR
//**
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*--------------------------------------------------------------------*00010000
//*                                                            CASA    *00020000
//*  PASO:  4    IMPRIMIR REPORTO DE CLIENTES.                         *00030000
//*  PLL33P05                                                          *00040000
//* PASO REINICIABLE POR RESTART                            ZM4DLE32   *00020000
//*--------------------------------------------------------------------*00010000
//**********************************************************************00006000
//* INI JLJH SEP/2021 NO SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//PLL33P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLE32A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE33,DISP=SHR
//*
//*ZMLE32R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//*ZMLE32R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//*ZMLE32R3 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//ZMLE32R1 DD DUMMY
//*
//ZMLE32R2 DD DUMMY
//*
//ZMLE32R3 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL33T05),DISP=SHR
//*
//*--------------------------------------------------------------------*00010000
//*                                                                    *00020000
//*  PASO:  5    IMPRIMIR REPORTE DE COMISIONES EN EL INICIO DE DIA DE *00030000
//*  PLL33P04    MERCADO DE DINERO. USUARIO HORACIO M. DEL CAMPO.      *00040000
//*                                                          ZM4DLM02  *
//*--------------------------------------------------------------------*00010000
//**********************************************************************00006000
//* INI JLJH SEP/2021 NO SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//PLL33P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLM02A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE33,DISP=SHR
//*
//*ZMLM02R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMLM02R1 DD DUMMY
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL33T04),DISP=SHR
//*
//*--------------------------------------------------------------------*00010000
//*                            D7F = F                                 *00020000
//*  PASO:  6    ACTUALIZA LA FINALIZACION DEL PROCESO DE ASIGNACION   *00030000
//*  PLL33P03    DE MERCADO DE DINERO.                                 *00040000
//* PASO REINICIABLE POR RESTART.                            ZM4DLE11  *
//*--------------------------------------------------------------------*00010000
//PLL33P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLE11A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE33,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL33T03),DISP=SHR
//*
//*--------------------------------------------------------------------*00010000
//*                                                            CASA    *00020000
//*  PASO:  7    ACTUALIZA EL EVENTO PARA LIMITAR LAS COMPRAS Y VENTAS *00030000
//*  PLL33P02                   PD5 = F                                *00040000
//* PASO REINICIABLE POR RESTART.                            ZM4DLE11  *
//*--------------------------------------------------------------------*00010000
//PLL33P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLE11A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE33,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL33T02),DISP=SHR
//*
//*--------------------------------------------------------------------*00010000
//*                 F I N   Z M L L P E 3 3                            *00020000
//*--------------------------------------------------------------------*00010000
