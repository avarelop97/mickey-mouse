//ZMSFPD03 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *
//*                                                                    *
//* PROCESO        :  CBSFCD03                                         *
//*                   MODULO DE OPERATIVIDAD                           *
//*                                                                    *
//* OBJETIVO       :  TENENCIA ESTADISTICA                             *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  CBSFCD04  -  ZMSFPD04                            *
//*                                                                    *
//* DESPUES DE     :  CBSFCD02  -  ZMSFPD02                            *
//*                                                                    *
//* REALIZO        :  OSCAR SAUL CONTRERAS TELLEZ                      *
//* FECHA          :  JUNIO 2004                                       *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCESO CORRE DIARIAMENTE                   *
//**********************************************************************
//*                          == ZM4DSS16 ==                            *
//* OBJETIVO    : GENERACION DE ARCHIVO DE CAPTACION NETA POR CONTRATO *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF03P07 EXEC PGM=IKJEFT01
//ZMSS16A1 DD DSN=MXCP.ZM.FIX.SIE.CONTRATO.DIARIO,
//         DISP=(NEW,CATLG,DELETE),
//         SPACE=(CYL,(100,50),RLSE),
//         DCB=(LRECL=105,BLKSIZE=0,RECFM=FB,DSORG=PS),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF03T07),DISP=SHR
//**********************************************************************
//*                          == ZM4DSF95 ==                            *
//* OBJETIVO    :  DEPURACION TABLAS DE MODULO ZIVATIVIDAD SIIE        *
//*                (DEPURA LAS TABLAS AGPOOPE Y SEZIVA)                *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF03P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF03T06),DISP=SHR
//**********************************************************************
//*                          == ZM4DSF94 ==                            *
//* OBJETIVO    :  REGISTRAR OPERACION  DEL DIA                        *
//* ACTUALIZA   :  "SEZIVA" A PARTIR DE TABLAS ECMOVDI,GPOOPE Y AGPOOPE*
//*             (ANTES SE DEBE EJECUTAR EL PROGRAMA ZM4DSF95)          *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF03P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMSF94R1 DD DSN=MXCP.ZM.FIX.SIE.REGODIA,
//         DISP=(NEW,CATLG,DELETE),
//         SPACE=(CYL,(100,50),RLSE),
//         DCB=(LRECL=132,BLKSIZE=0,RECFM=FB,DSORG=PS),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//PRINT    DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF03T05),DISP=SHR
//**********************************************************************
//*                          == ZM4DSF89 ==                            *
//* OBJETIVO    :  REALIZA EL REPROCESO DE REGISTROS CORREGIDOS        *
//*                (ANTES SE DEBE EJECUTAR EL PROGRAMA ZM4DSF95)       *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF03P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF03T04),DISP=SHR
//**********************************************************************
//*                          == ZM4DSG23 ==                            *
//* OBJETIVO    :  INVERSION MAXIMA CLIENTE.                           *
//* ACTUALIZA   :  TABLAS SEHIPRO, CTLPROC, CUENTA Y PARAM             *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF03P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF03T03),DISP=SHR
//**********************************************************************
//*                          == ZM4MS024 ==                            *
//* OBJETIVO    : TABLA DE ZIVATIVIDAD MENSUAL                         *
//* ACTUALIZA   : GENERA UNICAMENTE 1 ARCHIVO                          *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF03P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMSM24A1 DD DSN=MXCP.ZM.FIX.SIE.IDOPMES,
//         DISP=(NEW,CATLG,DELETE),
//         SPACE=(CYL,(100,50),RLSE),
//         DCB=(LRECL=77,BLKSIZE=0,RECFM=FB,DSORG=PS),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF03T02),DISP=SHR
//**********************************************************************
//*                          == ZM4MS008 ==                            *
//* OBJETIVO    : VOLUMEN OPERADO POR PROMOTOR MERCADO                 *
//* MODULO      : MERCADO DE DINERO                                    *
//* ACTUALIZA   : GENERA UNICAMENTE 1 REPORTE                          *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF03P01 EXEC PGM=IKJEFT01,COND=(7,LT)
//ZMS008R1 DD DSN=MXCP.ZM.FIX.SIE.VOLPROM,
//         DISP=(NEW,CATLG,DELETE),
//         SPACE=(CYL,(100,50),RLSE),
//         DCB=(LRECL=132,BLKSIZE=0,RECFM=FB,DSORG=PS),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF03T01),DISP=SHR
