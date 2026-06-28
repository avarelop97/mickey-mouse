//ZMHFPD07 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     << MERCADO DE VALORES  >>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMHFPD07                                            *
//*                                                                    *
//*   OBJETIVO  :  REPORTE PRESTAMO DE VALORES                         *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  CBHFND07                                      *
//*                                                                    *
//*   PERIODICIDAD    : DIARIO                                         *
//*                                                                    *
//*   ELABORADO POR   : SOFTTEK / EDUARDO MORALES VILLAFUERTE.         *
//*                                                                    *
//*   FECHA           : MAYO  DEL 2005                                 *
//**********************************************************************
//*  RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA               *
//*  EN ARCHIVO SECUENCIAL.                                            *
//*                                                         ZM3DG001   *
//**********************************************************************
//PHF07P03 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1',)
//ZMG001A1 DD DSN=MXCP.ZM.FIX.E&EMP..S&SUC..ZMHFPD07,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//           UNIT=3390,
//           SPACE=(CYL,(2,1),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//*     REPORTE DE TITULOS RECIBIDOS EN PRESTAMO
//*     PROGRAMA ZM4DH033
//**********************************************************************
//PHF07P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMH033R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMH033FD DD DSN=MXCP.ZM.FIX.E&EMP..S&SUC..ZMHFPD07,
//            DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF07T02),DISP=SHR
//*
//**********************************************************************
//*     REPORTE DE TITULOS OTORGADOS EN PRESTAMO
//*     PROGRAMA ZM4DH032
//**********************************************************************
//PHF07P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMH032R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMH032FD DD DSN=MXCP.ZM.FIX.E&EMP..S&SUC..ZMHFPD07,
//            DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF07T01),DISP=SHR
//*
