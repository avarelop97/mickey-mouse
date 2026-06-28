//ZMGLPZ39 PROC
//*
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<    P    L    D     >>                       *
//*                                                                    *
//*  APLICACION    :  MODULO DE PREVENSION LAVADO DE DINERO            *
//*                   (CONTRALORIA)                                    *
//*                                                                    *
//*  PROCESO       :  ZMGLPZ39                                         *
//*                                                                    *
//*  DISPARADOR    :  SIVAXBRC (DISPARADOR)                            *
//*                                                                    *
//*  OBJETIVO      :  GENERAR  EL REPORTE  QUE DETALLA TODAS LAS       *
//*                   CUENTAS ALFABETICA DE UN CLIENTE.                *
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
//*  OBSERVACIONES   : SUBMITIDO DESDE EL MENU PRINCIPAL      CTE-RFC. *
//*                                                      ZT69 (OPC.406)*
//*                                                      Z406 (OPC.658)*
//**********************************************************************
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//* ASP  |12-08-2005|       |   00   |CAMBIO DE BIBLIOTECA PARA CTRL-D *
//**********************************************************************
//**********************************************************************
//*                       --  ZM4EGP43  --                             *
//* OBJETIVO :    REPORTE  ALFABETICA DE CLIENTES           RFC Y CURP *
//**********************************************************************
//PGL39P01 EXEC PGM=IKJEFT01
//*
//ZMGP43P1 DD DSN=MXCP.ZM.TMP.OTR.EMP.SUC.ZMGLPE39,DISP=SHR
//*
//ZMGP43R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGL39T01),DISP=SHR
//**********************************************************************
//*                      F I N   Z M G L P Z 3 9                       *
//**********************************************************************
