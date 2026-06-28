//ZMJLPS01 PROC
//**********************************************************************
//*                   CORRE SEMANAL                                    *
//*                                                                    *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  ZMJLPS01                                         *
//*                   DEPURACION SEMANAL  DE LA BASE DE DATOS          *
//*                                                                    *
//* OBJETIVO       :  DEPURA VARIAS TABLAS DE LA BASE DE DATOS         *
//*                   SIVASVP.                                         *
//* CORRE                                                              *
//* ANTES DE       :  PBDBKD03 (IMAGE COPY DIARIO)                     *
//*                                                                    *
//* DESPUES DE     :  PBDBKD03 (IMAGE COPY DIARIO)                     *
//*                                                                    *
//* REALIZO        :  JOEL GONZALEZ MARTINEZ / RICARDO ARGUETA TEPEPA  *
//* FECHA          :  DICIEMBRE  1991                                  *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA SEMANALMENTE Y     *
//*                   SIEMPRE ANTES Y DESPUES DE UN IMAGE COPY         *
//**********************************************************************
//*
//**********************************************************************
//*
//**********************************************************************
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA OPERA (REGISTROS A DEPURAR)        *
//**********************************************************************
//PJL01P09 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PJL01P09,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.HSO.ZMDT107.OPERA,
//            SPACE=(CYL,(1000,200),RLSE),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=242,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHO99T10),DISP=SHR
//*
//**********************************************************************
//* UTILERIA   : IKJEFT01/ZM4HSO99                                     *
//* OBJETIVO   : GRABA EN LA TABLA ZMDT107 LOS REGISTROS DE ENTRADA    *
//**********************************************************************
//PJL01P08 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZHSO99E1 DD DSN=MXCP.ZM.FIX.HSO.ZMDT107.OPERA,DISP=SHR
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHO99T20),DISP=SHR
//*                                                                    *
//**********************************************************************
//*                       === ZM4SG003 ===                             *
//* OBJETIVO : DEPURACION DE TABLAS EDVALCA                            *
//*                                                                    *
//* TABLAS   : EDVALCA                                                 *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PJL01P07 EXEC PGM=IKJEFT01
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL01T07),DISP=SHR
//*
//**********************************************************************
//*                       === ZM4SH002 ===                             *
//* OBJETIVO : DEPURACION DE TABLAS DEL MODULO DE BAJAS                *
//*                                                                    *
//* TABLAS   : BAJAFIS BAJACTAM BAJACONE BAJCTAB                       *
//*            BAJCART BAJACLI BAJCLIE                                 *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PJL01P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL01T06),DISP=SHR
//*
//**********************************************************************
//*                       === VOBG41O,VOBG63O ===                      *
//* OBJETIVO : DEPURAR LAS TABLAS SIVA Y OPERTES UTILIZANDO UN         *
//*            PROGRAMA COBOL.                                         *
//*                                                                    *
//*   SE AGREGO NUEVOS PROGRAMAS PARA LA DEPURACION DE OPERA Y OPERTES *
//* EL VOBG41O Y ELVOBG63O.  CENTRISA. MARZO DE 2000.                  *
//*                                                                    *
//*    CASO DE CONTINGENCIA COMENTARIZAR ESTE BLOQUE DE TRES PASOS A   *
//*                                                                    *
//* PASO NO REINICIABLE. RESTURAR IMAGE COPY PREVIO                    *
//**********************************************************************
//* PRIMER PROCESO. BORRA ARCHIVOS SECUENCIALES
//*
//*PJL01P05 EXEC PGM=IDCAMS,COND=(4,LT)
//**
//*SYSPRINT DD SYSOUT=*
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJL01T05),DISP=SHR
//*
//**********************************************************************
//*                       === UTILERIA ===                             *
//* DESCARGA DE OPERA CON MOVIMIENTOS CON FECHA DE OPERACION   MENOR A *
//* 65 DIAS (FOPERA   < CURRENT DATE - 65 DAYS                         *
//**********************************************************************
//PJL01P04 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMJLPS01,NEW/RESTART,,MSGLEVEL(1)'
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
//            DCB=(DSORG=PS,LRECL=261,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,50),RLSE)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJL01T4A),DISP=SHR
//*
//**********************************************************************
//*                       === ZM4SJ001 ===                             *
//* SEGUNDO PROCESO. CORRE DEPURACION Y CREA ARCHIVOS SECUENCIALES     *
//**********************************************************************
//PJL01P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//VOBG41A2 DD DSN=MXCP.ZM.FIX.DESCARGA.OPERA.HIST,DISP=SHR
//*
//VOBG41A3 DD DSN=MXCP.ZM.WKF.OPERTES.TOTAL,DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=459,BLKSIZE=0,DSORG=PS,RECFM=FB),
//            UNIT=3390,SPACE=(CYL,(200,50),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL01T04),DISP=SHR
//*
//**********************************************************************
//*                       === ZM4SG001 ===                             *
//* SE AGREGA TERCER PROCESO PARA HACER EL MATCH DEL ARCHIVO DE        *
//* ELIMINADOS DE OPERA Y ARCHIVO TOTAL DE OPERTES GENERADOS EN        *
//* EL PASO ANTERIOR. FECHA: MARZO DE 2000. CENTRISA.                  *
//* SOLO ESTE PASO DE LOS TRES PROCESOS ES REINICIABLE POR RESTART     *
//**********************************************************************
//PJL01P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//VOBG63A1 DD DSN=MXCP.ZM.FIX.DESCARGA.OPERA.HIST,DISP=SHR
//VOBG63A2 DD DSN=MXCP.ZM.WKF.OPERTES.TOTAL,DISP=SHR
//VOBG63A3 DD DSN=MXCP.ZM.FIX.OPERTES.BORRA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=459,BLKSIZE=0,DSORG=PS,RECFM=FB),
//            UNIT=3390,SPACE=(CYL,(200,50),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL01T03),DISP=SHR
//*
//**********************************************************************
//*                       === UTILERIA ===                             *
//* DEPURA ZMDT719                                                     *
//**********************************************************************
//PJL01P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE42T01),DISP=SHR
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJL01P01),DISP=SHR
//*
//**********************************************************************
//*              TERMINA ZMJLPS01                                      *
//**********************************************************************
