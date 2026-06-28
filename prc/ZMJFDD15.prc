//ZMJFDD15 PROC
//*
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  T E S O R E R I A >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  CBJFCD15   FIN DE DIA DEL SIVA.                     *
//*                                                                    *
//*   OBJETIVO  :  EJECUTA LA ASIGNACION PREVIA DE MERCADO  DE DINERO  *
//*                                                                    *
//*   CORRE ANTES DE  : CBJFND36, CBJFND22, CBHFCD21                   *
//*                                                                    *
//*   CORRE DESPUES DE: ZMJFDD12  (CBJFCD12)                           *
//*                                                                    *
//*   PERIODICIDAD    :  DIARIO.                                       *
//*                                                                    *
//*   ELABORADO POR: ASATECK.                                          *
//*                                                                    *
//*   FECHA:  AGOSTO 2002                                              *
//*                               ACTUALIZA: CARTERA,          CUENTA. *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*H.P.C.|10/JUL/03 |IDCEX52|TODOS   |ACT. DE STANDARES A P.U.         *
//**********************************************************************
//*AZCS*SIVA*PENDIENTE*HPC**********************************************00010000
//**********************************************************************
//*                                                                    *00020000
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA  *00030000
//*  PJF15P02     EN ARCHIVO SECUENCIAL.                               *00040000
//*                                                         ZM3DG001   *00020000
//**********************************************************************00060000
//PJF15P02 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','     ','     ',)
//*
//PI601765  DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJFDD15,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  2     REALIZA CORRIMIENTO DE EFECTIVOS.                    *00030000
//*  PJF15P01                                                          *00040000
//*                                                         ZM4DGF37   *00020000
//**********************************************************************00060000
//PJF15P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                 0007000
//*                                                                      0009000
//ZMGF37A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJFDD15,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                     0023000
//SYSPRINT DD SYSOUT=*                                                   0024000
//SYSOUT   DD SYSOUT=*                                                   0025000
//SYSDBOUT DD SYSOUT=*                                                   0027000
//SYSABOUT DD DUMMY                                                      0028000
//SYSUDUMP DD DUMMY                                                      0029000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF15T01),DISP=SHR                    0030000
//*                                                                     00310000
//**********************************************************************00010000
//*                 F I N      Z M J F D D 1 5                         *00020000
//**********************************************************************00060000
