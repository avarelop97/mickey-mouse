//ZMHLPZ22 PROC
//**********************************************************************
//*                                                                    *
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<  MERCADO DE VALORES >>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIMI.:  ZMHLPZ22                                            *
//*                                                                    *
//*   OBJETIVO  :  DEFINITIVO EJERCICIO DE DERECHOS DE RENTA FIJA      *
//*                (OPCION 808) PARA CASA DE BOLSA Y BANCA PATRIMONIAL *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *
//*                                                                    *
//*   FECHA     :  AGOSTO 2003                                         *
//*                                                                    *
//*   AUTOR     :  OSCAR URBANO F. (GETRONICS).                        *
//*                                                                    *
//**********************************************************************
//*
//********************************************************************
//* PROGRAMA: ZM4EHA01                                               *
//* FUNCION:  DEFINITIVO DE EJERCICIO DE DERECHOS RENTA FIJA         *
//********************************************************************
//PJH22P2A EXEC PGM=IKJEFT01
//ZMHA01A0 DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMHLPE22,DISP=SHR
//*
//ZMHA01S1 DD DSN=MXCP.ZM.FIX.EBCM.ZMHLPE22.REP01,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS),
//           UNIT=3390,
//           SPACE=(CYL,(4,2),RLSE)
//*
//ZMHA01S2 DD DSN=MXCP.ZM.FIX.EBCM.ZMHLPE22.REP02,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS),
//           UNIT=3390,
//           SPACE=(CYL,(4,2),RLSE)
//*
//ZMHA01A1 DD DSN=MXCP.ZM.FIX.EBCM.ZMHLPE22.ARCH01,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//           UNIT=3390,
//           SPACE=(CYL,(100,50),RLSE)
//*
//ZMHA01A2 DD DSN=MXCP.ZM.FIX.EBCM.ZMHLPE22.ARCH02,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(LRECL=172,RECFM=FB,BLKSIZE=0,DSORG=PS),
//           UNIT=3390,
//           SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL22T02),DISP=SHR
//*
//********************************************************************
//* PROGRAMA: ZM4EHA02                                               *
//* FUNCION:  ACTUALIZA LA BASE DE DATOS POR EL EJERCICIO DE DERECHOS*
//********************************************************************
//PJH22P3A EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMHA02A1 DD DSN=MXCP.ZM.FIX.EBCM.ZMHLPE22.ARCH01,DISP=SHR
//ZMHA02A2 DD DSN=MXCP.ZM.FIX.EBCM.ZMHLPE22.ARCH02,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL22T03),DISP=SHR
//*
//********************************************************************
//* OBJETIVO : SORTEAR ARCHIVO                                       *
//* PROGRAMA : ICEMAN(TARJETA DE SORT ZHL21T2A)                      *
//********************************************************************
//PJH22P2B EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.EBCM.ZMHLPE22.REP02,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.WKF.EBCM.ZMHLPE22.REP03,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL22T2A),DISP=SHR
//*
//********************************************************************
//* OBJETIVO : SEPARA LAS CUENTAS DE FIDEICOMISO DEL RESTO
//* PROGRAMA : ZM4CFID5
//********************************************************************
//PJH22P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMHA01A3 DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMHLPE22,DISP=SHR
//ZMHA01A4 DD DSN=MXCP.ZM.WKF.EBCM.ZMHLPE22.REP03,DISP=SHR
//*
//ZMHA01R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMHA01RX DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL22T2B),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ZM4EJ104                                                 *
//* FUNCION:  EJECUCION DE COMPRAS AUTOMATICAS DE UN FONDO DE          *
//*           SOCIEDADES DE INVERSION                                  *
//**********************************************************************
//PJH22P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMJ104A1 DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMHLPE22,DISP=SHR
//ZMJ104R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMJ104RX DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL22T01),DISP=SHR
//*
//**********************************************************************
//* TERMINA PROCESO ZMHLPZ22
//**********************************************************************
