//ZMJLPS1D PROC
//**********************************************************************
//*                   CORRE SEMANAL                                    *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  ZMJLPS1D                                         *
//*                   DEPURACION MENSUAL  DE LA BASE DE DATOS          *
//*                                                                    *
//* OBJETIVO       :  DEPURA VARIAS TABLAS DE LA BASE DE DATOS         *
//*                   SIVASVP.                                         *
//* CORRE                                                              *
//* ANTES DE       :  N/A                                              *
//*                                                                    *
//* DESPUES DE     :  N/A                                              *
//*                                                                    *
//**********************************************************************
//* MODIFICO: LAURA SANCHEZ ROSAS.                                -----*
//* FECHA   : NOVIEMBRE 2023.                                          *
//* ASUNTO:   INCREMENTO FOLIO CONCEPT/ CTC'S SE DA ESPACIO DE 10 POS  *
//* MARCA :   SDA-41254-IREF-INI (INICIO DE BLOQUE)                    *
//*           SDA-41254-IREF-FIN (FIN    DE BLOQUE)                    *
//*                                                                    *
//*--------------------------------------------------------------------*
//*                                                                    *
//**********************************************************************
//*                                                                    *
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO   *
//*                                                                    *
//**********************************************************************
//PJL01P13 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.TES.ZMJMUV03,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE)
//*
//**********************************************************************
//*                       === UTILERIA ===                             *
//* DESCARGA DE OPERA CON MOVIMIENTOS CON FECHA DE LIQUIDACION MENOR A *
//* 65 DIAS HACIA ATRAS (FLIQUIDA < CURRENT DATE - 65 DAYS             *
//**********************************************************************
//PJL01P12 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMJLP12D,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//         DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.DESCARGA.OPERA.HI12,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*           DCB=(DSORG=PS,LRECL=261,RECFM=FB,BLKSIZE=0),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(200,50),RLSE)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJL0112A),DISP=SHR
//*
//**********************************************************************
//*                       === ZM4MUV03 ===                             *
//* SEGUNDO PROCESO. CORRE DEPURACION Y CREA ARCHIVOS SECUENCIALES     *
//**********************************************************************
//PJL01P11 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//VOBG41A2 DD DSN=MXCP.ZM.FIX.DESCARGA.OPERA.HI12,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL01T4C),DISP=SHR
//*
//**********************************************************************
//*                       === UTILERIA ===                             *
//* DESCARGA DE OPERA CON MOVIMIENTOS CON FECHA DE LIQUIDACION MENOR A *
//* 65 DIAS HACIA ATRAS (FLIQUIDA < CURRENT DATE - 65 DAYS             *
//**********************************************************************
//PJL01P10 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMJLP10D,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//         DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.DESCARGA.OPERA.HI10,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*           DCB=(DSORG=PS,LRECL=261,RECFM=FB,BLKSIZE=0),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(200,50),RLSE)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJL0110A),DISP=SHR
//*
//**********************************************************************
//*                       === ZM4MUV03 ===                             *
//* SEGUNDO PROCESO. CORRE DEPURACION Y CREA ARCHIVOS SECUENCIALES     *
//**********************************************************************
//PJL01P09 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//VOBG41A2 DD DSN=MXCP.ZM.FIX.DESCARGA.OPERA.HI10,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL01T4C),DISP=SHR
//*
//**********************************************************************
//*                       === UTILERIA ===                             *
//* DESCARGA DE OPERA CON MOVIMIENTOS CON FECHA DE LIQUIDACION MENOR A *
//* 65 DIAS HACIA ATRAS (FLIQUIDA < CURRENT DATE - 65 DAYS             *
//**********************************************************************
//PJL01P08 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMJLP08D,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//         DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.DESCARGA.OPERA.HI08,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*           DCB=(DSORG=PS,LRECL=261,RECFM=FB,BLKSIZE=0),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(200,50),RLSE)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJL0108A),DISP=SHR
//*
//**********************************************************************
//*                       === ZM4MUV03 ===                             *
//* SEGUNDO PROCESO. CORRE DEPURACION Y CREA ARCHIVOS SECUENCIALES     *
//**********************************************************************
//PJL01P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//VOBG41A2 DD DSN=MXCP.ZM.FIX.DESCARGA.OPERA.HI08,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL01T4C),DISP=SHR
//*
//**********************************************************************
//*                       === UTILERIA ===                             *
//* DESCARGA DE OPERA CON MOVIMIENTOS CON FECHA DE LIQUIDACION MENOR A *
//* 65 DIAS HACIA ATRAS (FLIQUIDA < CURRENT DATE - 65 DAYS             *
//**********************************************************************
//PJL01P06 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMJLP06D,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//         DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.DESCARGA.OPERA.HI06,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*           DCB=(DSORG=PS,LRECL=261,RECFM=FB,BLKSIZE=0),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(200,50),RLSE)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJL0106A),DISP=SHR
//*
//**********************************************************************
//*                       === ZM4MUV03 ===                             *
//* SEGUNDO PROCESO. CORRE DEPURACION Y CREA ARCHIVOS SECUENCIALES     *
//**********************************************************************
//PJL01P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//VOBG41A2 DD DSN=MXCP.ZM.FIX.DESCARGA.OPERA.HI06,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL01T4C),DISP=SHR
//*
//**********************************************************************
//*                       === UTILERIA ===                             *
//* DESCARGA DE OPERA CON MOVIMIENTOS CON FECHA DE LIQUIDACION MENOR A *
//* 65 DIAS HACIA ATRAS (FLIQUIDA < CURRENT DATE - 65 DAYS             *
//**********************************************************************
//PJL01P04 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMJLP04D,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//         DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.DESCARGA.OPERA.HI04,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*           DCB=(DSORG=PS,LRECL=261,RECFM=FB,BLKSIZE=0),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(200,50),RLSE)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJL0104A),DISP=SHR
//*
//**********************************************************************
//*                       === ZM4MUV03 ===                             *
//* SEGUNDO PROCESO. CORRE DEPURACION Y CREA ARCHIVOS SECUENCIALES     *
//**********************************************************************
//PJL01P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//VOBG41A2 DD DSN=MXCP.ZM.FIX.DESCARGA.OPERA.HI04,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL01T4C),DISP=SHR
//*
//**********************************************************************
//*                       === UTILERIA ===                             *
//* DESCARGA DE OPERA CON MOVIMIENTOS CON FECHA DE LIQUIDACION MENOR A *
//* 65 DIAS HACIA ATRAS (FLIQUIDA < CURRENT DATE - 65 DAYS             *
//**********************************************************************
//PJL01P02 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMJLP02D,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//         DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.DESCARGA.OPERA.HI02,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*           DCB=(DSORG=PS,LRECL=261,RECFM=FB,BLKSIZE=0),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(200,50),RLSE)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJL0102A),DISP=SHR
//*
//**********************************************************************
//*                       === ZM4MUV03 ===                             *
//* SEGUNDO PROCESO. CORRE DEPURACION Y CREA ARCHIVOS SECUENCIALES     *
//**********************************************************************
//PJL01P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//VOBG41A2 DD DSN=MXCP.ZM.FIX.DESCARGA.OPERA.HI02,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL01T4C),DISP=SHR
//*
