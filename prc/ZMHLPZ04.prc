//ZMHLPZ04 PROC                                                         00010000
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     << MERCADO DE VALORES   >>                     *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMHLPZ04 (CBHLPZ04)                                 *
//*                                                                    *
//*   OBJETIVO  :  PRESTAMO DE VALORES (OPC. 974) (SIVAXPVR)           *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *
//*                                                                    *
//*********************************************************************
//**********************************************************************
//*         REPORTE DE OPERACION DE PRESTAMO DE VALORES
//*         PROGRAMA ZM4DHU35
//**********************************************************************
//*
//PHL04P03 EXEC PGM=IKJEFT01
//ZMHU35FD DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMHLPE04,
//            DISP=SHR
//*
//ZMHU35R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//*FS-1.0.0-01-INI
//ZMHU35R2 DD DSN=MXCP.ZM.FIX.REP.PRESVAL.ZMHLPZ04,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,LRECL=336,BLKSIZE=0,DSORG=PS)
//*FS-1.0.0-01-FIN
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL04T01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  -------- ------- -------------------------------------*
//* FS-1.0.0-01  TECNOCOM 10ABR13 SE AGREGAN EL ARCHIVO ZMHU35R2       *
//*--------------------------------------------------------------------*
//**********************************************************************
//*         TERMINA ZMHLPZ04
//**********************************************************************
