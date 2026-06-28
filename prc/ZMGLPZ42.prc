//ZMGLPZ42 PROC
//**** *****************************************************************
//*  SISTEMA    : SISTEMA INTEGRAL DE VALORES (S.I.V.A.)               *
//*  PROCESO    : ZMGLPZ42                                             *
//*  OBJETIVO   : GENERA REPORTE DE ALRTAMIENTO PARA PLD               *
//*  FECHA      : SEPTIEMBRE 2011                                      *
//**********************************************************************
//*                  LOG DE MODIFICACIONES                             *
//**********************************************************************
//* MODIFI       AUTOR     FECHA    DESCRIPCION                        *
//* ----------- --------- -------- ----------------------------------- *
//* FS-I.0.0-01  XM09110  16112011  SE MODIFICA LONGITUD ARCH DE SAL   *
//* @DGCM01      XMY1076  05MAR18   SE AGREGA NUEVO PASO DE LA DESCARGA*
//*                                 DE CUENTA.                         *
//*@DGCM01-I                                                           *
//*--------------------------------------------------------------------*
//* PASO     : ZMG42P01                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA DE CUENTA                          *
//*--------------------------------------------------------------------*
//ZMG42P01 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,ZMGLPZ42,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.LOAD.CBGLPZ42.E2CUENTA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD  DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZGL43T03),DISP=SHR
//*@DGCM01-F                                                           *
//**********************************************************************
//* PASO    : PGL42P01                                                 *
//* PROGRAMA: IKJEFT01                                                 *
//* OBJETIVO: GENERACION DE REPORTE DE ALERTAMIENTO                    *
//**********************************************************************
//PGL42P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*@DGCM01-I
//E2CUENTA DD DSN=MXCP.ZM.FIX.LOAD.CBGLPZ42.E2CUENTA,DISP=SHR
//*@DGCM01-F
//ZMGV42P1 DD DSN=MXCP.ZM.TMP.OTR.ECBP.SZPR.ZMGLPE42,DISP=SHR
//*ZMGV42R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMGV42R1 DD DSN=MXCP.ZM.FIX.EMP.SUC.SALIDA42,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//*FS-I.0.0-01
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,LRECL=133,BLKSIZE=0,DSORG=PS)
//*           SPACE=(CYL,(200,100),RLSE),
//*           DCB=(RECFM=FB,LRECL=132,BLKSIZE=0,DSORG=PS)
//*FS-F.0.0-01
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGL42T01),DISP=SHR
//*
//**********************************************************************
//* PASO    : PGL42P00                                                 *
//* PROGRAMA: CONTROL-D                                                *
//* OBJETIVO: ENVIO A CONTROL-D                                        *
//* SE CAMBIA UTILERIA A ICEGENER PARA ENVIO A CNTL-D XM09230          *
//* RRO-INI-11-12-07                                                   *
//**********************************************************************
//PGL42P00    EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.EMP.SUC.SALIDA42,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
