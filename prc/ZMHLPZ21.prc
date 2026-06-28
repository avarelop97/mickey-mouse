//ZMHLPZ21 PROC
//**********************************************************************
//*                                                                    *
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<  MERCADO DE VALORES >>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIMI.:  ZMHLPZ21                                            *
//*                                                                    *
//*   OBJETIVO  :  PRELIMINAR EJERCICIO DE DERECHOS DE RENTA FIJA      *
//*                (OPCION 807) CASA DE BOLSA Y BANCA PATRIMONIAL      *
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
//*                                                                    *
//**********************************************************************
//*
//********************************************************************
//* PROGRAMA: ZM4EHA01                                               *
//* FUNCION:  PRELIMINAR DE EJERCICIO DE DERECHOS RENTA FIJA         *
//********************************************************************
//PJH21P2A EXEC PGM=IKJEFT01
//ZMHA01A0 DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMHLPE21,
//            DISP=(OLD,PASS)
//*
//ZMHA01S1 DD DSN=MXCP.ZM.FIX.EBCM.ZMHLPE21.REP01,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS),
//           UNIT=3390,
//           SPACE=(CYL,(4,2),RLSE)
//*
//ZMHA01S2 DD DSN=MXCP.ZM.FIX.EBCM.ZMHLPE21.REP02,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS),
//           UNIT=3390,
//           SPACE=(CYL,(4,2),RLSE)
//*
//ZMHA01A1 DD DSN=MXCP.ZM.TMP.EBCM.ZMHLPE21.ARCH01,
//           DISP=(NEW,DELETE,DELETE),
//           DCB=(LRECL=093,RECFM=FB,BLKSIZE=0,DSORG=PS),
//           UNIT=3390,
//           SPACE=(CYL,(100,50),RLSE)
//*
//ZMHA01A2 DD DSN=MXCP.ZM.TMP.EBCM.ZMHLPE21.ARCH02,
//           DISP=(NEW,DELETE,DELETE),
//           DCB=(LRECL=169,RECFM=FB,BLKSIZE=0,DSORG=PS),
//           UNIT=3390,
//           SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL21T01),DISP=SHR
//*
//********************************************************************
//* OBJETIVO : SORTEAR ARCHIVO                                       *
//* PROGRAMA : ICEMAN(TARJETA DE SORT ZHL21T2A)                      *
//********************************************************************
//PJH21P2B EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.EBCM.ZMHLPE21.REP02,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.WKF.EBCM.ZMHLPE21.REP03,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL21T2A),DISP=SHR
//*
//********************************************************************
//* OBJETIVO : SEPARA LAS CUENTAS DE FIDEICOMISO DEL RESTO
//* PROGRAMA : ZM4CFID5
//********************************************************************
//PJH21P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMHA01A3 DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMHLPE21,DISP=SHR
//ZMHA01A4 DD DSN=MXCP.ZM.WKF.EBCM.ZMHLPE21.REP03,DISP=SHR
//*
//ZMHA01R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMHA01RX DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL21T2B),DISP=SHR
//*
//**********************************************************************
//* TERMINA PROCESO ZMHLPZ21
//**********************************************************************
