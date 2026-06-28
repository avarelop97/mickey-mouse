//ZMGLPZ37 PROC
//*
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                   << SOCIEDADES DE INVERSION >                     *
//*                                                                    *
//*  SISTEMA       :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//*  PROCESO       :  ZMGLPZ37                                         *
//*                                                                    *
//*  DISPARADOR    :  SIVAXINH (DISPARADOR)                            *
//*                                                                    *
//*  OBJETIVO      :  GENERAR  EL REPORTE  HISTORICO QUE DETALLA       *
//*  OBJETIVO      :  TODAS LAS OPERACIONES INUSUALES DE CASA DE       *
//*                   BOLSA.                                           *
//*                                                                    *
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
//*  FECHA           : NOVIEMBRE 2004.                                 *
//*                                                                    *
//*  OBSERVACIONES   : SUBMITIDO DESDE EL MENU PRINCIPAL               *
//*                                                      ZT69 (OPC.406)*
//*                                                                654 *
//**********************************************************************
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//**********************************************************************
//**********************************************************************
//*                       --  ZM4DGV41  --                             *
//* OBJETIVO :    REPORTE DE OPERACIONES INUSUALES (ENVIO IMP. USUARIO)*
//**********************************************************************
//PGL37P02 EXEC PGM=IKJEFT01
//PI601765  DD DUMMY
//*
//ZMGV41P1 DD DSN=MXCP.ZM.TMP.OTR.EMP.SUC.ZMGLPE37,DISP=SHR
//*
//ZMGV41R1 DD SYSOUT=S,DEST=CONTAB01
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGL37T01),DISP=SHR
//**********************************************************************
//*                       --  ZM4DGV41  --                             *
//* OBJETIVO :    REPORTE HISTORICO DE OPERACIONES INUSUALES           *
//**********************************************************************
//PGL37P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMGV41P1 DD DSN=MXCP.ZM.TMP.OTR.EMP.SUC.ZMGLPE37,DISP=SHR
//*
//ZMGV41R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGL37T01),DISP=SHR
//**********************************************************************
//*                      F I N   Z M G L P Z 3 7                       *
//**********************************************************************
