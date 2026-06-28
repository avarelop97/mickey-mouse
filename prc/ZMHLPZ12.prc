//ZMHLPZ12 PROC
//**********************************************************************
//*                                                                    *
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<  MERCADO DE VALORES >>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIMI.:  ZMHLPZ12 (CBHLPZ12)                                 *
//*                                                                    *
//*   OBJETIVO  :  DEFINITIVO DE CORTE DE CUPON DE RENTA FIJA          *
//*                (OPCION 791)                                        *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *
//*                                                                    *
//*   FECHA     :  DICIEMBRE  03, 2002                                 *
//*                                                                    *
//*   AUTOR     :  (HPI) GUADALUPE OROZCO OROZCO                       *
//*   AUTOR     :  OSCAR URBANO FDZ. (GETRONICS)                       *
//*                                                                    *
//*  ANS-1.1.0-X:  MODIFICACIONES POR CAMBIO EN COMMIT-S (MAYO 2014)   *
//**********************************************************************
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 FSW INDRA 14FEB16 SE AGREGA EL PASO PHL12P4A PARA LA   *
//*                               ACTUALIZACION DE LA CARTERA ZMDT834  *
//*--------------------------------------------------------------------*
//*
//***************************************************************
//*                       - ZM4DLE11 -
//* OBJETIVO : INICIALIZA EVENTO 'JSH' PARA EVITAR PROBLEMAS DE
//*            CONTENSION CON EL JOB "PAAMDD40".   STK OCT 2001
//***************************************************************
//PHL12P07 EXEC PGM=IKJEFT01
//ZMLE11A1 DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMHLPE12,
//            DISP=(OLD,PASS)
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=2420
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZHL12T07),DISP=SHR
//*
//********************************************************************
//* PROGRAMA: ZM4EH992                                               *
//* FUNCION:  DEFINITIVO DE CORTE DE CUPON RENTA FIJA                *
//********************************************************************
//PHL12P6A EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMH992A1 DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMHLPE12,
//            DISP=(OLD,PASS)
//*
//ZMH992S1 DD DSN=MXCP.ZM.FIX.EBCM.ZMHLP12A.REP01,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*
//ZMH992S2 DD DSN=MXCP.ZM.FIX.EBCM.ZMHLP12A.REP02,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*                                                      ANS-1.1.0-INI
//ZMH992A2 DD DSN=MXCP.ZM.FIX.EBCM.ZMHLP12A.ARCH02,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=91,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//*
//ZMH992A3 DD DSN=MXCP.ZM.FIX.EBCM.ZMHLP12A.ARCH03,
//            DISP=(NEW,CATLG,DELETE),
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL12T06),DISP=SHR
//*
//********************************************************************
//* PROGRAMA: ZM4EH994 (SIEMPRE CORRE DESPUES DEL ZM4EH992)          *
//* FUNCION:  ACTUALIZA LA BASE DE DATOS POR EL CORTE DE CUPON       *
//********************************************************************
//PHL12P6B EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMH994A2 DD DSN=MXCP.ZM.FIX.EBCM.ZMHLP12A.ARCH02,DISP=SHR
//ZMH994A3 DD DSN=MXCP.ZM.FIX.EBCM.ZMHLP12A.ARCH03,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL12T08),DISP=SHR
//*
//********************************************************************
//* OBJETIVO : SORTEAR ARCHIVO                                       *
//* PROGRAMA : ICEMAN(TARJETA DE SORT ZHL12T6A)                      *
//********************************************************************
//PHL12P6C EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.EBCM.ZMHLP12A.REP02,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.WKF.EBCM.ZMHLP12A.REP03,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL12T6A),DISP=SHR
//*
//********************************************************************
//* OBJETIVO : SEPARA LAS CUENTAS DE FIDEICOMISO DEL RESTO
//* PROGRAMA : ZM4CFID4
//*********************************************************************
//PHL12P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMH992A1 DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMHLPE12,
//            DISP=(OLD,PASS)
//*
//ZMH992A2 DD DSN=MXCP.ZM.WKF.EBCM.ZMHLP12A.REP03,DISP=SHR
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL12T6B),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ZM4EH993                                                 *
//* FUNCION:  REPORTE DEFINITIVO DE CORTE DE CUPON DE RENTA FIJA PARA  *
//*           PROMOCION.                                               *
//**********************************************************************
//PHL12P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMH993A1 DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMHLPE12,
//            DISP=(OLD,PASS)
//ZMH993R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL12T05),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ZM4EH431                                                 *
//* FUNCION:  REPORTE DE LAS ORDENES CANCELADAS POR CORTE DE CUPON     *
//*           MERCADO DE CAPITALES                                     *
//**********************************************************************
//PHL12P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMH431A1 DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMHLPE12,
//            DISP=(OLD,PASS)
//ZMH431R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMH431R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL12T04),DISP=SHR
//*
//* FS-0.0.0-00-INI
//*--------------------------------------------------------------------*
//* PASO       : PHL12P4A.                                             *
//* UTILERIA   : IKJEFT01/ZM4PPG34                                     *
//* OBJETIVO   : ACTUALIZA CARTERA ADMISIBLE POR CORTE CUPON R.F.      *
//*--------------------------------------------------------------------*
//*
//PHL12P4A EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E1DQ0001 DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMHLPE12,
//            DISP=SHR
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHL12P4A),
//            DISP=SHR
//*
//* FS-0.0.0-00-FIN
//***************************************************************
//*                       - ZM4DLE11 -
//* OBJETIVO : FINALIZA   EVENTO 'JSH' PARA EVITAR PROBLEMAS DE
//*            CONTENSION CON EL JOB "PAAMDD40".   STK OCT 2001
//***************************************************************
//PHL12P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMLE11A1 DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMHLPE12,
//            DISP=(OLD,PASS)
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=2420
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZHL12T03),DISP=SHR
//*
