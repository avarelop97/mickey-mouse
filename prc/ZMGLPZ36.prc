//ZMGLPZ36 PROC
//*
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                   << SOCIEDADES DE INVERSION >                     *
//*                                                                    *
//*  SISTEMA       :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//*  PROCESO       :  ZMGLPZ36                                         *
//*                                                                    *
//*  DISPARADOR    :  SIVAXINO (DISPARADOR)                            *
//*                                                                    *
//*  OBJETIVO      :  GENERAR  EL REPORTE  DE CONTRATOS BAJAS          *
//*                   OPERACIONES  INUSUALES  DE  CASA DE  BOLSA       *
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
//*  FECHA           : SEPTIEMBRE 2004.                                *
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
//*                       --  ZM4DGV40  --                             *
//* OBJETIVO :    REPORTE DE CONTRATOS             (ENVIO IMP. USUARIO)*
//**********************************************************************
//*                       --  ZM4DGV40  --                             *
//* OBJETIVO :    REPORTE DE OPERACIONES INUSUALES                     *
//**********************************************************************
//PGL36P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMGV40P1 DD DSN=MXCP.ZM.TMP.OTR.EMP.SUC.ZMGLPE36,DISP=SHR
//*
//ZMGV40R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGL36T01),DISP=SHR
//**********************************************************************
//*                      F I N   Z M G L P Z 3 6                       *
//**********************************************************************
