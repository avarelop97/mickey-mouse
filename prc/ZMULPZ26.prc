//ZMULPZ26 PROC
//*--------------------------------------------------------------------*
//*                                                                    *
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<  C O N T R A T O S  >>                      *
//*                                                                    *
//*   APLICACION       : SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *
//*                                                                    *
//*   PROCEDIMIENTO    : ZMULPZ26                                      *
//*                                                                    *
//*   OBJETIVO         : REPORTE DE BAJAS BCM                          *
//*                      ( OPCION 486 )                                *
//*                                                                    *
//*   CORRE ANTES DE   : NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE : NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD     : CORRE A SOLICITUD DEL USUARIO                 *
//*                                                                    *
//*   FECHA            : AGOSTO 2020                                   *
//*                                                                    *
//*   AUTOR            : GETRONICS - MEXICO                            *
//*                                                                    *
//*--------------------------------------------------------------------*
//* PROGRAMA: ZM4DG632                                                 *
//* FUNCION:  REPORTE DE BAJAS                                         *
//*--------------------------------------------------------------------*
//PUL26P02 EXEC PGM=IKJEFT01
//*
//ZMG632A1 DD DSN=MXCP.ZM.TMP.CON.EBCM.S000.ZMULPP26,DISP=SHR
//*
//ZMG632R1 DD DSN=MXCP.ZM.FIX.CON.EBCM.S000.CTOBAJA.ZMULPE26,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=132,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUL06T01),DISP=SHR
//*
//**********************************************************************
//* ICEGENER : ENVIA A CTL-D  REPORTE GENERADO EN EL PASO ANTERIOR
//* REPORTE  : REPORTE CONTRATOS POSICION PROPIA BANCO
//**********************************************************************
//PUL12P02 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.CON.EBCM.S000.CTOBAJA.ZMULPE26,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                 F  I  N                                            *
//**********************************************************************
