//ZMGLPZ40 PROC
//*
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<    P    L    D     >>                       *
//*                                                                    *
//*  APLICACION    :  MODULO DE PREVENSION LAVADO DE DINERO            *
//*                   (CONTRALORIA)                                    *
//*                                                                    *
//*  PROCESO       :  ZMGLPZ40                                         *
//*                                                                    *
//*  DISPARADOR    :  SIVAXSDP (DISPARADOR)                            *
//*                                                                    *
//*  OBJETIVO      :  GENERAR REPORTE DE LOS SALDOS ACUMULADOS DEL MES *
//*                                                                    *
//*  CORRE ANTES DE  : NINGUNO                                         *
//*                                                                    *
//*  CORRE DESPUES DE: NINGUNO                                         *
//*                                                                    *
//*  PERIODICIDAD    : EVENTUAL (CORRE A SOLICITUD DEL USUARIO)        *
//*                                                                    *
//*  ELABORADO POR   : ARACELI SALAZAR PEREZ (GETRONICS)               *
//*                                                                    *
//*  FECHA           : JUNIO  DE  2005.                                *
//*                                                                    *
//*  OBSERVACIONES   : SUBMITIDO DESDE EL MENU PRINCIPAL               *
//*                                                      ZT69 (OPC.406)*
//*                                                      Z406 (OPC.659)*
//**********************************************************************
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//* ASP  |12-08-2005|       |   00   |CAMBIO DE BIBLIOTECA PARA CTRL-D *
//**********************************************************************
//**********************************************************************
//*                       --  ZM4EGP44  --                             *
//* OBJETIVO :    EL REPORTE  HISTORICO DE SALDO PROMEDIO DEL MES      *
//**********************************************************************
//PGL40P01 EXEC PGM=IKJEFT01
//*
//ZMGP44P1 DD DSN=MXCP.ZM.TMP.OTR.EMP.SUC.ZMGLPE40,DISP=SHR
//*
//ZMGP44R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGL40T01),DISP=SHR
//**********************************************************************
//*                      F I N   Z M G L P Z 4 0                       *
//**********************************************************************
