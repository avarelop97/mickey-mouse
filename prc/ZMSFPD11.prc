//ZMSFPD11 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *
//*                                                                    *
//* PROCESO        :  CBSFCD11                                         *
//*                   EXTRACTORES ADMINISTRACION PROMOCION             *
//*                                                                    *
//* OBJETIVO       :  GENERAR LOS ARCHIVOS DE ADMINISTRACION DE        *
//*                   PROMOCION SEMANALES, MENSUALES Y TRIMESTRALES    *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  CBSFCD23  -  ZMSFPD23                            *
//*                                                                    *
//* DESPUES DE     :  CBSFCD06  -  (BACKUP'S)                          *
//*                                                                    *
//* REALIZO        :  OSCAR SAUL CONTRERAS TELLEZ                      *
//* FECHA          :  JUNIO 2004                                       *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCESO CORRE DIARIAMENTE                   *
//*                                                                    *
//**********************************************************************
//*                          == ZM4DSS50 ==                            *
//* OBJETIVO    : GENERA ARCHIVO DE TENENCIA DIARIA.                   *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF11P36 EXEC PGM=IKJEFT01
//ZMSS50A1 DD DSN=MXCP.ZM.FIX.SIE.IDTCDIA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=99,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF11T36),DISP=SHR
//**********************************************************************
//*                          == ZM4MSS50 ==                            *
//* OBJETIVO    : TABLA TENENCIA SEMANAL Y MENSUAL                     *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF11P35 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMSM50A1 DD DSN=MXCP.ZM.FIX.SIE.IDTCMES,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=99,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//ZMSM50A2 DD DSN=MXCP.ZM.FIX.SIE.IDTCSEM,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=99,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF11T35),DISP=SHR
//**********************************************************************
//*                          == ZM4SS043 ==                            *
//* OBJETIVO    : APERTURAS SEMANALES.                                 *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF11P34 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMS043A1 DD DSN=MXCP.ZM.FIX.SIE.IDAPSEM1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=86,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF11T34),DISP=SHR
//**********************************************************************
//*                          == ZM4DSG34 ==                            *
//* OBJETIVO    : EXTRAE INF. DE CUENTA PARA (JAVIER SALAZAR)          *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF11P33 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMSG34A1 DD DSN=MXCP.ZM.FIX.SIE.CONT34D,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=34,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZSF11T33),DISP=SHR
//**********************************************************************
//*                          == ZM4MGT89 ==                            *
//* OBJETIVO: REPORTE MENSUAL DE TENENCIA POR PORTAFOLIO               *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF11P32 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMGT89R1 DD DSN=MXCP.ZM.FIX.SIE.CONT34D,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF11T32),DISP=SHR
//**********************************************************************
//*                          == ZM4MS009 ==                            *
//* OBJETIVO    : REPORTE MENSUAL DE INGRESOS PROMEDIO                 *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF11P30 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMS009R2 DD DSN=MXCP.ZM.FIX.SIE.REPINGR.PROMEDIO,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=132,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF11T30),DISP=SHR
//**********************************************************************
//*                          == ZM4DS014 ==                            *
//* OBJETIVO :  EMITE REPORTE SALDOS DEUDORES Y ACREDORES.             *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF11P29 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMS014R1 DD DSN=MXCP.ZM.FIX.SIE.REPSALDS.DEUACRED,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=132,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//PRINT    DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF11T29),DISP=SHR
//**********************************************************************
//*                          == ZM4MS015 ==                            *
//* OBJETIVO :  EMITE REPORTE                                          *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF11P28 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMS015R1 DD DSN=MXCP.ZM.FIX.SIE.BAJAS.CTRATOS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=132,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//PRINT    DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF11T28),DISP=SHR
//**********************************************************************
//*                          == ZM4SS026 ==                            *
//* OBJETIVO    : REPORTE DE TENENCIA POR SUBCLASIFICACION             *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF11P27 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMS026R1 DD DSN=MXCP.ZM.FIX.SIE.REPTEN1.SUBCLA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=132,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF11T27),DISP=SHR
//**********************************************************************
//*                          == ZM4SS028 ==                            *
//* OBJETIVO    : TENENCIA PROMEDIO TRIMESTRAL                         *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF11P26 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMS028R1 DD DSN=MXCP.ZM.FIX.SIE.REPTEN2.PROMTRIM,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=132,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF11T26),DISP=SHR
//**********************************************************************
//*                          ==  IDCAMS  ==                            *
//* OBJETIVO    : BORRAR Y GENERAR ARCH VSAM INGANO                    *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//*PSF11P25 EXEC PGM=IDCAMS,COND=(4,LT)
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF11T25),DISP=SHR
//**********************************************************************
//*                          == ZM4MS016 ==                            *
//* OBJETIVO    : COMISIONES GENERADAS A ANIO A LA FECHA               *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF11P24 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMS016R1 DD DSN=MXCP.ZM.FIX.SIE.ACUMUL.COMIS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=140,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//ZMS016A1 DD DSN=MXCP.ZM.TMP.SIE.OSC.ZM4MS016,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=093,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//ZMS016A2 DD DSN=MXCP.ZM.FIX.SIE.IDDPANUA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=108,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(40,20),RLSE)
//SORTWK02 DD UNIT=3390,SPACE=(CYL,(40,20),RLSE)
//SORTWK03 DD UNIT=3390,SPACE=(CYL,(40,20),RLSE)
//SORTWK04 DD UNIT=3390,SPACE=(CYL,(40,20),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF11T24),DISP=SHR
//**********************************************************************
//*                        == DEFINE RIB016AD ==                       *
//* OBJETIVO    : REDEFINIR ARCHIVO VSAM                               *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//*PSF11P22 EXEC PGM=IDCAMS,COND=(4,LT)
//*SYSPRINT DD SYSOUT=*
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF11T22),DISP=SHR
//**********************************************************************
//*                        == REPRO  RIB016AD ==                       *
//* OBJETIVO    : COPIAR EL ARCHIVO SECUENCIAL AL VSAM                 *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//*PSF11P21 EXEC PGM=IDCAMS,COND=(4,LT)
//*SYSPRINT DD SYSOUT=*
//*INPUT    DD DSN=SIVA.SIE.FIX.IDDPANUA,DISP=SHR
//*OUTPUT   DD DSN=MXCP.ZM.VSB.SIE.RIB016AD.DEPENDEN.ANUAL,DISP=SHR
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF11T21),DISP=SHR
//**********************************************************************
//*                          ==  IDCAMS  ==                            *
//* OBJETIVO    : BORRAR Y GENERAR ARCH VSAM INGANO                    *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//*PSF11P20 EXEC PGM=IDCAMS,COND=(4,LT)
//*SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF11T20),DISP=SHR
//**********************************************************************
//*                          == ZM4MS027 ==                            *
//* OBJETIVO    : ARCHIVO DE COMISIONES GENERADAS                      *
//*                                                                    *
//* PASO                                                               *
//**********************************************************************
//PSF11P19 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMS027A1 DD DSN=MXCP.ZM.FIX.SIE.IDDMEN.DESGLO,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=132,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//PRINT    DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF11T19),DISP=SHR
//**********************************************************************
//*                          == ZM4MS040 ==                            *
//* OBJETIVO    : COMISIONES GENERADAS A MES A LA FECHA                *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF11P18 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMS040R1 DD DSN=MXCP.ZM.FIX.SIE.ACUMUL2.COMISION,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=140,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//ZMS040A1 DD DSN=MXCP.ZM.TMP.SIE.OSC.ZM4MS040,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=093,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//ZMS040A2 DD DSN=MXCP.ZM.FIX.SIE.IDDPMES,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=108,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK02 DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK03 DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK04 DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF11T18),DISP=SHR
//**********************************************************************
//*                        == DEFINE RIB040MD ==                       *
//* OBJETIVO    : REDEFINIR ARCHIVO VSAM                               *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//*PSF11P16 EXEC PGM=IDCAMS,COND=(4,LT)
//*SYSPRINT DD SYSOUT=*
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF11T16),DISP=SHR
//**********************************************************************
//*                        == REPRO  RIB040MD ==                       *
//* OBJETIVO    : COPIAR EL ARCHIVO SECUENCIAL AL VSAM                 *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//*PSF11P15 EXEC PGM=IDCAMS,COND=(4,LT)
//*SYSPRINT DD SYSOUT=*
//*INPUT    DD DSN=SIVA.SIE.FIX.IDDPMES,DISP=SHR
//*OUTPUT   DD DSN=MXCP.ZM.VSB.SIE.RIB040MD.DEPENDEN.MES,DISP=SHR
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF11T15),DISP=SHR
//**********************************************************************
//*                          ==  IDCAMS  ==                            *
//* OBJETIVO    : BORRAR Y GENERAR ARCH VSAM INGANO                    *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//*PSF11P14 EXEC PGM=IDCAMS,COND=(4,LT)
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF11T14),DISP=SHR
//**********************************************************************
//*                          == ZM4TS041 ==                            *
//* OBJETIVO    : COMISIONES GENERADAS A TRIMESTRE A LA FECHA          *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF11P13 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMS041R1 DD DSN=MXCP.ZM.FIX.SIE.ACUMUL3.COMIS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=140,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//ZMS041A2 DD DSN=MXCP.ZM.FIX.SIE.IDDPTRI,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=108,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK02 DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK03 DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK04 DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF11T13),DISP=SHR
//**********************************************************************
//*                        == DEFINE RIB041TD ==                       *
//* OBJETIVO    : REDEFINIR ARCHIVO VSAM                               *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//*PSF11P12 EXEC PGM=IDCAMS,COND=(4,LT)
//*SYSPRINT DD SYSOUT=*
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF11T12),DISP=SHR
//**********************************************************************
//*                        == REPRO  RIB041TD ==                       *
//* OBJETIVO    : COPIAR EL ARCHIVO SECUENCIAL AL VSAM                 *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//*PSF11P11 EXEC PGM=IDCAMS,COND=(4,LT)
//*SYSPRINT DD SYSOUT=*
//*INPUT    DD DSN=SIVA.SIE.FIX.IDDPTRI,DISP=SHR
//*OUTPUT   DD DSN=MXCP.ZM.VSB.SIE.RIB041TD.DEPENDEN.TRIM,DISP=SHR
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF11T11),DISP=SHR
//**********************************************************************
//*                          == ZM4MS017 ==                            *
//* OBJETIVO    : COMISIONES GENERADAS EN EL MES                       *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF11P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMS017R1 DD DSN=MXCP.ZM.FIX.SIE.REPCOMIS.MES01,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=136,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//ZMS017A1 DD DSN=MXCP.ZM.TMP.SIE.OSC.ZM4MS017,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=110,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK02 DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK03 DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK04 DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF11T10),DISP=SHR
//**********************************************************************
//*                          == ZM4SS031 ==                            *
//* OBJETIVO    : EXTRACTOR DE BAJAS SEMANAL.                          *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF11P09 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMS031A1 DD DSN=MXCP.ZM.FIX.SIE.IDBASEM,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=062,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF11T09),DISP=SHR
//**********************************************************************
//*                          == ZM4MSS32 ==                            *
//* OBJETIVO    : EXTRACTOR DE BAJAS MENSUAL.                          *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF11P08 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMSM32A1 DD DSN=MXCP.ZM.FIX.SIE.IDBAMES,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=062,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF11T08),DISP=SHR
//**********************************************************************
//*                        == DEFINE RIB032MB ==                       *
//* OBJETIVO    : REDEFINIR ARCHIVO VSAM                               *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//*PSF11P07 EXEC PGM=IDCAMS,COND=(4,LT)
//*SYSPRINT DD SYSOUT=*
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF11T07),DISP=SHR
//**********************************************************************
//*                        == REPRO  RIB032MB ==                       *
//* OBJETIVO    : COPIAR EL ARCHIVO SECUENCIAL AL VSAM                 *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//*PSF11P06 EXEC PGM=IDCAMS,COND=(4,LT)
//*SYSPRINT DD SYSOUT=*
//*INPUT    DD DSN=SIVA.SIE.FIX.IDBAMES,DISP=SHR
//*OUTPUT   DD DSN=MXCP.ZM.VSB.SIE.RIB032MB.BAJAS.MENSUAL,DISP=SHR
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF11T06),DISP=SHR
//**********************************************************************
//*                          == ZM4MS033 ==                            *
//* OBJETIVO    : APERTURAS MENSUALES.                                 *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF11P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMS033A1 DD DSN=MXCP.ZM.FIX.SIE.IDAPMES,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=180,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF11T05),DISP=SHR
//**********************************************************************
//*                        == DEFINE RIB033MA ==                       *
//* OBJETIVO    : REDEFINIR ARCHIVO VSAM                               *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//*PSF11P04 EXEC PGM=IDCAMS,COND=(4,LT)
//*SYSPRINT DD SYSOUT=*
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF11T04),DISP=SHR
//**********************************************************************
//*                        == REPRO  RIB033MA ==                       *
//* OBJETIVO    : COPIAR EL ARCHIVO SECUENCIAL AL VSAM                 *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//*PSF11P03 EXEC PGM=IDCAMS,COND=(4,LT)
//*SYSPRINT DD SYSOUT=*
//*INPUT    DD DSN=SIVA.SIE.FIX.IDAPMES,DISP=SHR
//*OUTPUT   DD DSN=MXCP.ZM.VSB.SIE.RIB033MA.ALTAS.MENSUAL,DISP=SHR
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF11T03),DISP=SHR
//**********************************************************************
//*                          ==  QMF  ==                               *
//* OBJETIVO    : GENERACION DE QMF QUE EJECUTA EL PROCEDIMIENTO       *
//*               PSIIEDIA.                                            *
//*                                                                    *
//**********************************************************************
//*PSF11P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*PI601765 DD DUMMY
//*STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSQLOAD,DISP=SHR * QMF MODULES  *
//*         DD  DSN=DB2C.SDSNEXIT,DISP=SHR * DB2 MODULES   *
//*         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR * DB2 MODULES  *
//*         DD  DSN=GDDM.SADMMOD,DISP=SHR       * GDDM MODULES *
//*SYSPROC  DD  DSN=LDB2MXP1.DBP1.SDSQEXCE,DISP=SHR
//*         DD  DSN=LDB2MXP1.DBP1.SDSQEXCE,DISP=SHR
//*SYSPRINT DD  TERM=TS,SYSOUT=Z
//*ISPPLIB  DD  DSN=LDB2MXP1.DBP1.SDSQPLBE,DISP=SHR
//*         DD  DSN=ISF.SISFPLIB,DISP=SHR     * ERA ISRPLIB
//*         DD  DSN=ISP.SISPPENU,DISP=SHR     * ERA ISPPLIB
//*         DD  DSN=DB2C.SDSNSPFP,DISP=SHR
//*         DD  DSN=DB2C.SDSNPFPE,DISP=SHR
//*ISPMLIB  DD  DSN=LDB2MXP1.DBP1.SDSQMLBE,DISP=SHR
//*         DD  DSN=ISF.SISFMLIB,DISP=SHR     * ERA ISRMLIB
//*         DD  DSN=ISP.SISPMENU,DISP=SHR     * ERA ISPMLIB
//*         DD  DSN=DB2C.SDSNSPFM,DISP=SHR
//*ISPSLIB  DD  DSN=LDB2MXP1.DBP1.SDSQSLBE,DISP=SHR
//*         DD  DSN=ISP.SISPSLIB,DISP=SHR
//*ISPTLIB  DD  DSN=ISF.SISFTLIB,DISP=SHR
//*         DD  DSN=ISP.SISPTENU,DISP=SHR     * ERA ISPTLIB
//*ISPPROF  DD  UNIT=3390,SPACE=(CYL,(9,1,4),RLSE),
//*         DCB=(LRECL=80,BLKSIZE=0,RECFM=FB,DSORG=PO)
//*ADMGGMAP  DD  DSN=LDB2MXP1.DBP1.DSQMAPE,DISP=SHR
//*ADMCFORM  DD  DSN=QMFP.V330.DSQCHART,DISP=SHR
//*DSQPNLE   DD  DSN=LDB2MXP1.DBP1.DSQPNLE,DISP=SHR
//*DSQPRINT DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD'),
//*             DCB=(RECFM=FBA,LRECL=133,BLKSIZE=0)
//*DSQDEBUG  DD  SYSOUT=*,DCB=(RECFM=FBA,LRECL=121,BLKSIZE=0)
//*DSQEDIT   DD  UNIT=3390,DCB=(RECFM=FBA,LRECL=79,BLKSIZE=0),
//*  DISP=NEW,SPACE=(CYL,(1,1),RLSE)
//*DSQUDUMP  DD  SYSOUT=*,DCB=(RECFM=VBA,LRECL=125,BLKSIZE=0)
//*SYSUDUMP DD DUMMY
//*DSQSPILL  DD  DSN=&&SPILL,DISP=(NEW,DELETE),
//*  UNIT=3390,SPACE=(CYL,(1,1),RLSE),
//*  DCB=(RECFM=F,LRECL=4096,BLKSIZE=0)
//*SYSTSPRT  DD  SYSOUT=*
//*SYSTSIN   DD DSN=ZIVA.ZME.CONTROL(ZSF11T02),DISP=SHR
//**********************************************************************
//*                          == ZM4SS023 ==                            *
//* OBJETIVO    : TABLA DE APERTURAS SEMANAL                           *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF11P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMS023A1 DD DSN=MXCP.ZM.FIX.SIE.IDAPSEM,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=180,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF11T01),DISP=SHR
