//ZMJLPS1B PROC
//**********************************************************************
//*                   CORRE SEMANAL                                    *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  ZMJLPS1B                                         *
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
//*                                                                    *
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO   *
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
//PJL01P05 EXEC PGM=ZM3DG001,
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
//PJL01P04 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMJLPS1B,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//         DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.DESCARGA.OPERA.HIST,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*           DCB=(DSORG=PS,LRECL=261,RECFM=FB,BLKSIZE=0),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(200,50),RLSE)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJL01T4B),DISP=SHR
//*
//**********************************************************************
//*                       === ZM4MUV03 ===                             *
//* SEGUNDO PROCESO. CORRE DEPURACION Y CREA ARCHIVOS SECUENCIALES     *
//**********************************************************************
//PJL01P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//VOBG41A2 DD DSN=MXCP.ZM.FIX.DESCARGA.OPERA.HIST,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL01T4C),DISP=SHR
//*
