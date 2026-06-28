//ZMHLPZ11 PROC
//**********************************************************************
//*                                                                    *
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<  MERCADO DE VALORES >>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIMI.:  ZMHLPZ11 (CBHLPZ11)                                 *
//*                                                                    *
//*   OBJETIVO  :  PRELIMINAR DE CORTE DE CUPON DE RENTA FIJA          *
//*                (OPCION 790)                                        *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *
//*                                                                    *
//*   FECHA     :  NOVIEMBRE  19, 2002                                 *
//*                                                                    *
//*   AUTOR     :  (HPI) GUADALUPE OROZCO OROZCO                       *
//*   AUTOR     :  OSCAR URBANO FDZ. (GETRONICS)                       *
//*                                                                    *
//*  ANS-1.1.0-X:  MODIFICACIONES POR CAMBIO EN COMMIT-S (MAYO 2014)   *
//**********************************************************************
//*
//********************************************************************
//* PROGRAMA: ZM4EH992                                               *
//* FUNCION:  PRELIMINAR DE CORTE DE CUPON RENTA FIJA                *
//********************************************************************
//PHL11P3A EXEC PGM=IKJEFT01
//ZMH992A1 DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMHLPE11,
//            DISP=(OLD,PASS)
//*
//ZMH992S1 DD DSN=MXCP.ZM.FIX.EBCM.ZMHLP11A.REP01,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*
//ZMH992S2 DD DSN=MXCP.ZM.FIX.EBCM.ZMHLP11A.REP02,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*                                                      ANS-1.1.0-INI
//ZMH992A2 DD DSN=MXCP.ZM.FIX.EBCM.ZMHLP11A.ARCH02,
//            DISP=(NEW,DELETE,DELETE),
//            DCB=(LRECL=91,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//*
//ZMH992A3 DD DSN=MXCP.ZM.FIX.EBCM.ZMHLP11A.ARCH03,
//            DISP=(NEW,DELETE,DELETE),
//            DCB=(LRECL=198,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//*                                                      ANS-1.1.0-FIN
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL11T03),DISP=SHR
//*
//********************************************************************
//* OBJETIVO : SORTEAR ARCHIVO                                       *
//* PROGRAMA : ICEMAN(TARJETA DE SORT ZHL11T3A)                      *
//********************************************************************
//PHL11P3B EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.EBCM.ZMHLP11A.REP02,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.WKF.EBCM.ZMHLP11A.REP03,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL11T3A),DISP=SHR
//*
//********************************************************************
//* OBJETIVO : SEPARA LAS CUENTAS DE FIDEICOMISO DEL RESTO
//* PROGRAMA : ZM4CFID4
//*********************************************************************
//PHL11P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMH992A1 DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMHLPE11,
//            DISP=(OLD,PASS)
//*
//ZMH992A2 DD DSN=MXCP.ZM.WKF.EBCM.ZMHLP11A.REP03,DISP=SHR
//*
//ZMH992R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMH992RX DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL11T3B),DISP=SHR
//*
