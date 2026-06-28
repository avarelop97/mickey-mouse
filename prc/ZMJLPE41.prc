//ZMJLPE41 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                      << T E S O R E R I A >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                  MODULO DE TESORERIA                               *
//*                                                                    *
//*   PROCEDIM. :  SIVAXCOP                                            *
//*                                                                    *
//*   OBJETIVO  :  RECIBE PARAMETROS DESDE LA LINEA PARA GENERAR       *
//*                ARCHIVO DE MOVIMIENTOS POR CUENTA                   *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    :  DIARIO                                        *
//*                                                                    *
//*   ELABORADO POR: FABRICA DE SW (XTGEOSM)                           *
//*                                                                    *
//*   FECHA:  DICIEMBRE 2007.                                          *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*  FECHA  DESCRIPCION                                                *
//*--------------------------------------------------------------------*
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA  *00030000
//*  PJL41P03     EN ARCHIVO SECUENCIAL.                               *00040000
//*                                                         ZM3DG001   *00020000
//**********************************************************************00060000
//PJL41P03 EXEC PGM=ZM3DG001,
// PARM=('&EMP','&SUC','&INT1','&INT2')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJLPE41,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************00010000
//*                                                                    *00020000
//*               REPORTE DE MOVIMIENTOS POR CUENTA                    *00030000
//*                                                                    *00040000
//**********************************************************************00060000
//PJL41P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SAEADM01 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJLPE41,DISP=SHR
//*
//SASADM01 DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..ARCHMOVS,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(RECFM=FB,LRECL=161,BLKSIZE=0,DSORG=PS),
//           UNIT=3390,SPACE=(CYL,(6,3),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PJL41P02),DISP=SHR                   01510005
//*
//*--------------------------------------------------------------------*
//* PASO     : PJL41P01.                                               *
//* UTILERIA : IKJEFT01 / ZM4DGV04.                                    *
//* OBJETIVO : VALIDA QUE ARCHIVO SE GENERO (CBP, BCM) PARA EJECUTAR   *
//*            LA TRANSFERENCIA DEL ARCHIVO DE OPERACIONES.            *
//*--------------------------------------------------------------------*
//PJL41P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PJL41P01),DISP=SHR
//*
//****************************************************************
// IF  PJL41P01.RC EQ 1 THEN
//****************************************************************
//* SE ADICIONA CONDICION PARA QUE SEA TOMADA POR LA TRANSFEREN- *
//* CIA DEL ARCHIVO DE CASA DE BOLSA.                            *
//****************************************************************
//PJL41P0A EXEC  PGM=CTMCND,PARM='ADD COND SIVAXCOP_OK WDATE',
//         COND=(4,LT)
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD SYSOUT=*
//SYSPRINT DD DUMMY
//SYSUDUMP DD DUMMY
//DAPRINT  DD SYSOUT=*
//DACNDIN  DD DDNAME=SYSIN
// ENDIF
//****************************************************************
// IF  PJL41P01.RC EQ 2 THEN
//****************************************************************
//* SE ADICIONA CONDICION PARA QUE SEA TOMADA POR LA TRANSFEREN- *
//* CIA DEL ARCHIVO DE CASA DE BOLSA.                            *
//****************************************************************
//PJL41P0B EXEC  PGM=CTMCND,PARM='ADD COND SIVAXCO1_OK WDATE',
//         COND=(4,LT)
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD SYSOUT=*
//SYSPRINT DD DUMMY
//SYSUDUMP DD DUMMY
//DAPRINT  DD SYSOUT=*
//DACNDIN  DD DDNAME=SYSIN
// ENDIF
//****************************************************************
// IF  PJL41P01.RC EQ 3 THEN
//****************************************************************
//* SE ADICIONA CONDICION PARA QUE SEA TOMADA POR LA TRANSFEREN- *
//* CIA DEL ARCHIVO PARA MESA DE PRECIOS.                        *
//****************************************************************
//PJL41P0C EXEC  PGM=CTMCND,PARM='ADD COND SIVAXCOM_OK WDATE',
//         COND=(4,LT)
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD SYSOUT=*
//SYSPRINT DD DUMMY
//SYSUDUMP DD DUMMY
//DAPRINT  DD SYSOUT=*
//DACNDIN  DD DDNAME=SYSIN
// ENDIF
//**********************************************************************00010000
//*                 F I N     Z M J L P E 4 1                          *00020000
//**********************************************************************00060000
