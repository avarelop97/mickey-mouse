//ZMSFPX28 PROC EMP=,SUC=,INT1=,INT2=
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                   << E S T A D I S T I C O  >>                     *
//*                                                                    *
//* APLICACION: SISTEMA INTEGRAL DE VALORES (S.I.V.A)                  *
//*                                                                    *
//* OBJETIVO  : REALIZAR LA INTERFASE DE FIN DE DIA DEL SIVA.          *
//*             - INTERFASES BATCH (TSO)                               *
//*                                                                    *
//*           : GENERACION DE REPORTES (TESORERIA)                     *
//*                                                                    *
//*           : REALIZA EXTRACCION PARA ANEXO 3.                       *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE  : PFDFDC01.                                              *
//*                                                                    *
//* DESPUES DE: PFDFDD28.                                              *
//*                                                                    *
//* PERIOD.   : DIARIO.                                                *
//*                                                                    *
//* FECHA     : SEPTIEMBRE 2002.                                       *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//**********************************************************************
//*
//**********************************************************************
//* OBJETIVO : GENERA ARCHIVO DE PARAMETROS                            *
//* PROGRAMA : ZM3DG001                                                *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF28P08 EXEC PGM=ZM3DG001,
//         PARM=('CBP','&SUC','&INT1','&INT2',)
//*
//ZMG001A1 DD  DSN=MXCP.ZM.TMP.SIN.E&EMP..S&SUC..OPCCNA,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(10,5),RLSE),
//             DCB=(RECFM=FB,DSORG=PS,LRECL=96,BLKSIZE=0)
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSUDUMP DD  DUMMY
//SYSABEND DD  DUMMY
//SYSDBOUT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//PRINT    DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//*
//**********************************************************************
//* OBJETIVO : GENERA TABLA PARA ANEXO 3 CASA DE BOLSA (SIVA)          *
//* PROGRAMA : ZM4DX121                                                *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF28P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMG001A1 DD  DSN=MXCP.ZM.TMP.SIN.E&EMP..S&SUC..OPCCNA,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSUDUMP DD  DUMMY
//SYSABEND DD  DUMMY
//SYSDBOUT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//PRINT    DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZXF28T01),DISP=SHR
//*
//**********************************************************************
//* OBJETIVO : GENERA TABLA PARA ANEXO 3 BANCO (DIFO)                  *
//* PROGRAMA : ZM4DX122                                                *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF28P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMG001A1 DD  DSN=MXCP.ZM.TMP.SIN.E&EMP..S&SUC..OPCCNA,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSUDUMP DD  DUMMY
//SYSABEND DD  DUMMY
//SYSDBOUT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//PRINT    DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZXF28T02),DISP=SHR
//*
//**********************************************************************
//* OBJETIVO : GENERA TABLA PARA ANEXO 3 BANCO (BPIGO)                 *
//* PROGRAMA : ZM4DX123                                                *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF28P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMG001A1 DD  DSN=MXCP.ZM.TMP.SIN.E&EMP..S&SUC..OPCCNA,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSUDUMP DD  DUMMY
//SYSABEND DD  DUMMY
//SYSDBOUT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//PRINT    DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZXF28T03),DISP=SHR
//*
//**********************************************************************
//* OBJETIVO : GENERA TABLA PARA ANEXO 3 BANCO (CUSTODIA INTERNACIONAL)*
//* PROGRAMA : ZM4DX133                                                *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF28P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMG001A1 DD  DSN=MXCP.ZM.TMP.SIN.E&EMP..S&SUC..OPCCNA,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSUDUMP DD  DUMMY
//SYSABEND DD  DUMMY
//SYSDBOUT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//PRINT    DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZXF28T07),DISP=SHR
//*
//**********************************************************************
//*              FIN DEL PROCEDIMIENTO ZMSFPX28                        *
//**********************************************************************
