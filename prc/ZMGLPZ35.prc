//ZMGLPZ35 PROC
//*
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                   << SOCIEDADES DE INVERSION >                     *
//*                                                                    *
//*  SISTEMA       :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//*  PROCESO       :  ZMGLPZ35                                         *
//*                                                                    *
//*  DISPARADOR    :  SIVAXINU (DISPARADOR)                            *
//*                                                                    *
//*  OBJETIVO      :  GENERAR  EL REPORTE  QUE DETALLA TODAS LAS       *
//*                   OPERACIONES  INUSUALES  DE  CASA DE  BOLSA       *
//*                   A PARTIR DE LOS PARÁMETROS DE ITIPOPAR TZ2.      *
//*                                                                    *
//*                                                                    *
//*  CORRE ANTES DE : NINGUNO                                          *
//*                                                                    *
//*  CORRE DESPUES DE: NINGUNO                                         *
//*                                                                    *
//*  PERIODICIDAD    : EVENTUAL (CORRE A SOLICITUD DEL USUARIO)        *
//*                                                                    *
//*  ELABORADO POR   : ARACELI SALAZAR PEREZ                           *
//*                                                                    *
//*  FECHA           : JULIO     2004.                                 *
//*                                                                    *
//*  OBSERVACIONES   : SUBMITIDO DESDE EL MENU PRINCIPAL               *
//*                                                      ZT69 (OPC.406)*
//*                                                      ZZ42          *
//**********************************************************************
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//**********************************************************************
//**********************************************************************
//*                       --  ZM4DGV39  --                             *
//* OBJETIVO :    REPORTE DE OPERACIONES INUSUALES (ENVIO IMP. USUARIO)*
//**********************************************************************
//PGL35P02 EXEC PGM=IKJEFT01
//PI601765  DD DUMMY
//*
//ZMGV39P1 DD DSN=MXCP.ZM.TMP.OTR.EMP.SUC.ZMGLPE35,DISP=SHR
//*
//ZMGV39R1 DD SYSOUT=S,DEST=CONTAB01
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGL35T01),DISP=SHR
//**********************************************************************
//*                       --  ZM4DGV39  --                             *
//* OBJETIVO :    REPORTE DE OPERACIONES INUSUALES                     *
//**********************************************************************
//PGL35P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMGV39P1 DD DSN=MXCP.ZM.TMP.OTR.EMP.SUC.ZMGLPE35,DISP=SHR
//*
//ZMGV39R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGL35T01),DISP=SHR
//**********************************************************************
//*                      F I N   Z M G L P Z 3 5                       *
//**********************************************************************
