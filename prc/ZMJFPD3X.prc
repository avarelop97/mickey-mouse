//ZMJFPD39 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                 <<  SOCIEDADES DE INVERSION   >>                   *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  CBJFCD39 (JCL)                                   *
//*                   ZMJFPD39 (PROCEDIMIENTO)                         *
//*                                                                    *
//* OBJETIVO       :  REPORTES DE CARGOS Y ABONOS DE BANCA PATRIMONIAL *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :                                                   *
//*                                                                    *
//* DESPUES DE     :  A PETICION DEL USUARIO                           *
//*                                                                    *
//* REALIZO        :  JUAN MACEDO MONTES DE OCA (SOFTTEK) 2005-01-13   *
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
//**********************************************************************
//**********************************************************************
//*                        == ZM3DG001 ==                              *
//*                                                                    *
//* OBJETIVO : RECIBE LOS PARAMETROS ENVIADOS DEL DISPARADOR GRABA     *
//*            EN ARCHIVO                                              *
//**********************************************************************
//PJF39P03 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC',' ',' ',)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJFPD39,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//           UNIT=3390,
//           SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************
//* PROGRAMA: ZM4DJ015
//* OBJETIVO: REPORTE  DE CARGOS Y ABONOS DE BANCA PATRIMONIAL
//**********************************************************************
//PJF39P02 EXEC PGM=IKJEFT01,COND=(0,LT)
//*
//ZMJ015P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJFPD39,DISP=SHR
//*
//ZMJ015R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF39T0X),DISP=SHR
//*
//**********************************************************************
//*        TERMINA PROCESO ZMJLPE39 SIVA MULTIEMPRESA                  *
//**********************************************************************
