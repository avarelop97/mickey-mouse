//ZMHEPPB1 PROC
//*--------------------------------------------------------------------*
//*                                                                    *
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<  C O N T R A T O S  >>                      *
//*                                                                    *
//*   APLICACION       : SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *
//*                                                                    *
//*   PROCEDIMIENTO    : ZMHEPPB1                                      *
//*                                                                    *
//*   OBJETIVO         : CARGA DE ORDENES MASIVA                       *
//*                      ( OPCION 179 CONTINGENCIA )                   *
//*                                                                    *
//*   CORRE ANTES DE   : NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE : NZMPOP05 - TRANSFERENCIA DE ARCHIVO ORDENES   *
//*                                                                    *
//*   PERIODICIDAD     : CORRE A SOLICITUD DEL USUARIO                 *
//*                                                                    *
//*   FECHA            : ABRIL  2021                                   *
//*                                                                    *
//*   AUTOR            : AXITY                                         *
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO    : ZHEPPB03.                                                *
//* PROGRAMA: IDCAMS.                                                  *
//* OBJETIVO: VERIFICA QUE EL ARCHIVO A SUBIR AL HOST EXISTA           *
//*--------------------------------------------------------------------*
//ZHEPPB03 EXEC PGM=IDCAMS
//*
//SYSPRINT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSIN     DD DSN=CBOT.SIVA.CONTROL(ZHE10T02),DISP=SHR
//*
// IF ZHEPPB03.RC > 0 THEN
//*--------------------------------------------------------------------*
//* PASO    : ZHEPPB02.                                                *
//* PROGRAMA: IEFBR14.                                                 *
//* OBJETIVO: GENERA ARCHIVO VACIO DE PE SI NO EXISTE EN PASO ANTERIOR.*
//*------------------------- ------------------------------------------*
//ZHEPPB02 EXEC PGM=IEFBR14
//*
//CREARCH1 DD DSN=MXCP.ZM.FIX.EBCM.ORDMASIV.NZMPOP05,
//            DISP=(MOD,CATLG,CATLG),UNIT=3390,
//            SPACE=(CYL,(5,2),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=85,BLKSIZE=0)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
// ENDIF
//*
//*--------------------------------------------------------------------*
//* PASO    : ZHEPPB01.                                                *
//* PROGRAMA: ZM4EPPB1                                                 *
//* FUNCION:  CARGA DE ORDENES POR CONTINGENCIA                        *
//*--------------------------------------------------------------------*
//ZHEPPB01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.EBCM.ORDMASIV.NZMPOP05,DISP=SHR
//*
//SALIDA01 DD DSN=MXCP.ZM.FIX.EBCM.ORDMASIV.BCHEPPB1,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHE10T01),DISP=SHR
//*
//**********************************************************************
//* ICEGENER : ENVIA A CTL-D  REPORTE GENERADO EN EL PASO ZHEPPB01
//* REPORTE  : REPORTE OPER. CAPITALES VS LIQUIDACION
//**********************************************************************
//ZHEPPBD1 EXEC PGM=ICEGENER,COND=(0,NE,ZHEPPB01)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.EBCM.ORDMASIV.BCHEPPB1,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*        TERMINA PROCESO BCHEPPB1 SIVA MULTIEMPRESA                  *
//**********************************************************************
