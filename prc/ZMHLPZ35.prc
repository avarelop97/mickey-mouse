//ZMHLPZ35 PROC
//*
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                    <<     V A L O R E S    >>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMHLPZ35                                            *
//*                                                                    *
//*   OBJETIVO  :  RELACION DEFINITIVA DE ACCIONISTAS PARA ASISTENCIA  *
//*                A ASAMBLEA                                          *
//*                                                                    *
//*   CORRE DESPUES DE: SUBMITIDO POR OPC 833                          *
//*                                                                    *
//*   PERIODICIDAD    : A PETICION DEL USUARIO                         *
//*                                                                    *
//*   ELABORADO POR: DAVID GUTIERREZ CASILLAS     ASATECK.             *
//*                                                                    *
//*   FECHA:  MARZO DE 2003.                                           *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*                                                                    *
//**********************************************************************
//**  PASO:  2     REPORTAR A LOS ACCIONISTAS QUE SERAN CITADOS A     *
//**               ASAMBLEA                                           *
//**  PHL35P02                                                        *
//**       NOTA :                                            ZM4EHA74 *
//*********************************************************************
//PHL35P2A EXEC PGM=IKJEFT01
//*
//ZMHA74A1 DD DSN=MXCP.ZM.TMP.VAL.EMP.ZMHLPE35,DISP=SHR
//*
//ZMHA74S1 DD DSN=MXCP.ZM.FIX.EBCM.ZMHLPE35.REP01,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(LRECL=133,RECFM=FB,BLKSIZE=0,DSORG=PS),
//           UNIT=3390,
//           SPACE=(CYL,(4,2),RLSE)
//*
//ZMHA74S2 DD DSN=MXCP.ZM.FIX.EBCM.ZMHLPE35.REP02,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//           SPACE=(CYL,(4,2),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL35T02),DISP=SHR
//*
//********************************************************************
//* OBJETIVO : SORTEAR ARCHIVO                                       *
//* PROGRAMA : ICEMAN(TARJETA DE SORT ZHL35T2A)                      *
//********************************************************************
//PHL35P2B EXEC PGM=ICEMAN,
//         COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.EBCM.ZMHLPE35.REP02,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.WKF.EBCM.ZMHLPE35.REP03,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=133,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL35T2A),DISP=SHR
//*
//********************************************************************
//* OBJETIVO : SEPARA LAS CUENTAS DE FIDEICOMISO DEL RESTO
//* PROGRAMA : ZM4CFID7
//********************************************************************
//PHL35P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMHA74A3 DD DSN=MXCP.ZM.TMP.VAL.EMP.ZMHLPE35,DISP=SHR
//ZMHA74A4 DD DSN=MXCP.ZM.WKF.EBCM.ZMHLPE35.REP03,DISP=SHR
//*
//ZMHA74R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL35T2B),DISP=SHR
//*
