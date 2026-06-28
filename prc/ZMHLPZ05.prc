//ZMHLPZ05 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     << MERCADO DE VALORES  >>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMHLPZ05 (CBHLPZ05)                                 *
//*                                                                    *
//*   OBJETIVO  :  PRESTAMO DE VALORES REPORTE DE GARANTIAS            *
//*                (OPC. 975) (SIVAXGAR)                               *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *
//*********************************************************************
//**********************************************************************
//*     REPORTE DE GARANTIAS
//*     PROGRAMA ZM4DH952
//**********************************************************************
//PHL05P03 EXEC PGM=IKJEFT01
//ZMH952FD DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMHLPE05,
//         DISP=SHR
//*
//ZMH952R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMH952R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//*FS-1.0.0-01-INI
//ZMH952R3 DD DSN=MXCP.ZM.FIX.GARANTIA.ZMHLPZ05.REP1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,LRECL=205,BLKSIZE=0,DSORG=PS)
//ZMH952R4 DD DSN=MXCP.ZM.FIX.GARANTIA.ZMHLPZ05.REP2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,LRECL=210,BLKSIZE=0,DSORG=PS)
//*FS-1.0.0-01-FIN
//*
//ZMH952A1 DD DSN=MXCP.ZM.FIX.VAL.EMP.SUC.ZMH952D,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=73,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL05T01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  -------- ------- -------------------------------------*
//* FS-1.0.0-01  TECNOCOM 10ABR13 SE AGREGAN LOS ARCHIVOS DE SALIDA    *
//*                               ZMH952R3 Y ZMH952R4                  *
//*--------------------------------------------------------------------*
//**********************************************************************
//*     TERMINA  ZMHLPZ05
//**********************************************************************
