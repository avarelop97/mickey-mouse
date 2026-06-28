//ZMHEPPB2 PROC
//*--------------------------------------------------------------------*
//*                                                                    *
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<  C O N T R A T O S  >>                      *
//*                                                                    *
//*   APLICACION       : SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *
//*                                                                    *
//*   PROCEDIMIENTO    : ZMHEPPB2                                      *
//*                                                                    *
//*   OBJETIVO         : REPORTE DE ESTATUS DE OPERACIONES CONTINGENCIA*
//*                      ( OPCION 179 CONTINGENCIA )                   *
//*                                                                    *
//*   CORRE ANTES DE   : NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE :                                               *
//*                                                                    *
//*   PERIODICIDAD     : CORRE A SOLICITUD DEL USUARIO                 *
//*                                                                    *
//*   FECHA            : JULIO  2021                                   *
//*                                                                    *
//*   AUTOR            : AXITY                                         *
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO       : ZHEPPB02                                              *
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : DESCARGA DE LA TABLA ZMDT947                          *
//*--------------------------------------------------------------------*
//ZHEPPB02 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,ZHEPPB02,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.BCHEPPB2.DESCARGA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(050,050),RLSE),
//            DCB=(BLKSIZE=0,RECFM=FB,DSORG=PS)
//*
//SYSCNTL  DD  DUMMY
//SYSOUT   DD  SYSOUT=*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHE20T02),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO    : ZHEPPB01.                                                *
//* PROGRAMA: ZM4EPPB2                                                 *
//* FUNCION:  REPORTE DE OPERACIONES CONTINGENCIA                      *
//*--------------------------------------------------------------------*
//ZHEPPB01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.BCHEPPB2.DESCARGA,DISP=SHR
//*
//SALIDA01 DD DSN=MXCP.ZM.FIX.EBCM.ORDMASIV.NZMPOP06,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(50,25),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHE20T01),DISP=SHR
//*
//**********************************************************************
//* ICEGENER : ENVIA A CTL-D  REPORTE GENERADO EN EL PASO ZHEPPB01
//* REPORTE  : REPORTE OPER. CAPITALES VS LIQUIDACION
//**********************************************************************
//ZHEPPBD1 EXEC PGM=ICEGENER,COND=(0,NE,ZHEPPB01)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.EBCM.ORDMASIV.NZMPOP06,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                FIN     BCHEPPB2                                    *
//**********************************************************************
