//ZMUEPM01 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                   >>>>  ESTADOS DE CUENTA  <<<<                    *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMUEPM01                                            *
//*                                                                    *
//*   OBJETIVO  :  PREPARA INFORMACION PARA ESTADOS DE CUENTA DE       *
//*                TODAS LAS EMPRESAS MANEJADAS EN EL SIVA             *
//*                                                                    *
//*   CORRE ANTES DE  :  ZMUEPM02,                                     *
//*                      ZMUEPM12                                      *
//*                                                                    *
//*   CORRE DESPUES DE:  PCAEDM02                                      *
//*                                                                    *
//*   PERIODICIDAD    :  MENSUAL                                       *
//*                                                                    *
//*   JULIO 2003                                                       *
//**********************************************************************
//*--------------------------------------------------------------------*
//* MODIFICO:       ENRIQUE FERNANDEZ CHAPOU                           *
//* FECHA:          MAYO 2023                                          *
//* ASUNTO:         INCREMENTO FOLIO CONCEPT                           *
//* MARCA:          SDATOOL-41254-EFCH-INI                             *
//*                 SDATOOL-41254-EFCH-FIN                             *
//*                                                                    *
//*--------------------------------------------------------------------*
//*
//**********************************************************************
//*                    -- ZM4MU001  --
//*  DESCARGA DE LAS TABLAS PRODUSVP.EDCUENTA, PRODUSVP.PROMOT,
//*                       PRODUSVP.SUCURSA,  PRODUSVP.ESTZONE,
//*                       PRODUSVP.EMPRESA  SOBRE UN ARCHIVO SECUENCIAL
//*  PARA USO EN LA GENERACION DE ESTADOS DE CUENTA
//**********************************************************************
//PUE01P23 EXEC PGM=IKJEFT01,COND=(0,NE)
//PI601765 DD DUMMY
//ZMU001C1 DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDCUENTA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=540,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//ZMU001V1 DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDVALCA.HD,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=84,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//ZMU001D1 DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDDEPRE.HD,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=76,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//ZMU001I1 DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDIMPUE.HD,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=85,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//ZMU001M1 DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDMOVED.HD,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=109,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//ZMU001O1 DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDOPERT1.HD,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=68,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//ZMU001S1 DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDSECIN.HD,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=145,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//ZMU001P1 DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDPARAM.HD,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=83,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE01T01),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *
//* OBJETIVO : ORDENA POR ICUENTA, ISUCCASA EL ARCHIVO: EDCUENTA
//*            GENERANDO SU GDG CORRESPONDIENTE
//**********************************************************************
//PUE01P22 EXEC PGM=ICEMAN,COND=(0,NE)
//PI601765 DD  DUMMY
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDCUENTA,
//            DISP=(MOD,DELETE,DELETE)
//*
//SORTOUT  DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDCUENTA.SRT(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            LRECL=540,RECFM=FB,BLKSIZE=0,
//            UNIT=3390,DCB=BKUP.MODEL
//*
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE01T02),DISP=SHR
//*
//**********************************************************************
//*                     * UNLOAD *
//*  DESCARGA DE LA TABLA PRODUSVP.EDVALCA (GRUPO 0) SOBRE UN ARCHIVO
//*  SECUENCIAL PARA USO EN LA GENERACION DE ESTADOS DE CUENTA
//**********************************************************************
//PUE01P21 EXEC PGM=ADUUMAIN,COND=(0,NE),
//         PARM='MXP1,CBUENM0101,NEW/RESTART,,MSGLEVEL(1)'
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//         DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSREC   DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDVALCA.GP0,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=84,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE01T03),DISP=SHR
//*
//**********************************************************************
//*                     * UNLOAD *
//*  DESCARGA DE LA TABLA PRODUSVP.EDVALCA (GRUPO 1) SOBRE UN ARCHIVO
//*  SECUENCIAL PARA USO EN LA GENERACION DE ESTADOS DE CUENTA
//**********************************************************************
//PUE01P20 EXEC PGM=ADUUMAIN,COND=(0,NE),
//         PARM='MXP1,CBUENM0102,NEW/RESTART,,MSGLEVEL(1)'
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//         DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSREC   DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDVALCA.GP1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=84,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE01T04),DISP=SHR
//*
//**********************************************************************
//*                     * UNLOAD *
//*  DESCARGA DE LA TABLA PRODUSVP.EDVALCA (GRUPO 2) SOBRE UN ARCHIVO
//*  SECUENCIAL PARA USO EN LA GENERACION DE ESTADOS DE CUENTA
//**********************************************************************
//PUE01P19 EXEC PGM=ADUUMAIN,COND=(0,NE),
//         PARM='MXP1,CBUENM0103,NEW/RESTART,,MSGLEVEL(1)'
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//         DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSREC   DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDVALCA.GP2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=84,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE01T05),DISP=SHR
//*
//**********************************************************************
//*                     * UNLOAD *
//*  DESCARGA DE LA TABLA PRODUSVP.EDVALCA (GRUPO 3) SOBRE UN ARCHIVO
//*  SECUENCIAL PARA USO EN LA GENERACION DE ESTADOS DE CUENTA
//**********************************************************************
//PUE01P18 EXEC PGM=ADUUMAIN,COND=(0,NE),
//         PARM='MXP1,CBUENM0104,NEW/RESTART,,MSGLEVEL(1)'
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//         DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSREC   DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDVALCA.GP3,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=84,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE01T06),DISP=SHR
//*
//**********************************************************************
//*                     * UNLOAD *
//*  DESCARGA DE LA TABLA PRODUSVP.EDVALCA (GRUPO 4) SOBRE UN ARCHIVO
//*  SECUENCIAL PARA USO EN LA GENERACION DE ESTADOS DE CUENTA
//**********************************************************************
//PUE01P17 EXEC PGM=ADUUMAIN,COND=(0,NE),
//         PARM='MXP1,CBUENM0105,NEW/RESTART,,MSGLEVEL(1)'
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//         DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSREC   DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDVALCA.GP4,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=84,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE01T07),DISP=SHR
//*
//**********************************************************************
//*                     * UNLOAD *
//*  DESCARGA DE LA TABLA PRODUSVP.EDVALCA (GRUPO 5) SOBRE UN ARCHIVO
//*  SECUENCIAL PARA USO EN LA GENERACION DE ESTADOS DE CUENTA
//**********************************************************************
//PUE01P16 EXEC PGM=ADUUMAIN,COND=(0,NE),
//         PARM='MXP1,CBUENM0106,NEW/RESTART,,MSGLEVEL(1)'
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//         DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSREC   DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDVALCA.GP5,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=84,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE01T08),DISP=SHR
//*
//**********************************************************************
//*                     * UNLOAD *
//*  DESCARGA DE LA TABLA PRODUSVP.EDVALCA (GRUPO 6) SOBRE UN ARCHIVO
//*  SECUENCIAL PARA USO EN LA GENERACION DE ESTADOS DE CUENTA
//**********************************************************************
//PUE01P15 EXEC PGM=ADUUMAIN,COND=(0,NE),
//         PARM='MXP1,CBUENM0107,NEW/RESTART,,MSGLEVEL(1)'
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//         DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSREC   DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDVALCA.GP6,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=84,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE01T09),DISP=SHR
//*
//**********************************************************************
//*                     * UNLOAD *
//*  DESCARGA DE LA TABLA PRODUSVP.EDVALCA (GRUPO 7) SOBRE UN ARCHIVO
//*  SECUENCIAL PARA USO EN LA GENERACION DE ESTADOS DE CUENTA
//**********************************************************************
//PUE01P14 EXEC PGM=ADUUMAIN,COND=(0,NE),
//         PARM='MXP1,CBUENM0108,NEW/RESTART,,MSGLEVEL(1)'
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//         DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSREC   DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDVALCA.GP7,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=84,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE01T10),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *
//* OBJETIVO : JUNTA TODOS LOS GRUPOS DE ARCHIVOS DE EDVALCA UN UNO SOLO
//*            ORDENADO POR: ICUENTA, TIPOREG,  IEMISORA, ISERIE,
//*                          ICUPON,  FPROCESO, ICLACON
//*            GENERANDO SU GDG CORRESPONDIENTE
//**********************************************************************
//PUE01P13 EXEC PGM=ICEMAN,COND=(0,NE)
//PI601765 DD  DUMMY
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDVALCA.HD,
//            DISP=(MOD,DELETE,DELETE)
//         DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDVALCA.GP0,
//            DISP=(MOD,DELETE,DELETE)
//         DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDVALCA.GP1,
//            DISP=(MOD,DELETE,DELETE)
//         DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDVALCA.GP2,
//            DISP=(MOD,DELETE,DELETE)
//         DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDVALCA.GP3,
//            DISP=(MOD,DELETE,DELETE)
//         DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDVALCA.GP4,
//            DISP=(MOD,DELETE,DELETE)
//         DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDVALCA.GP5,
//            DISP=(MOD,DELETE,DELETE)
//         DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDVALCA.GP6,
//            DISP=(MOD,DELETE,DELETE)
//         DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDVALCA.GP7,
//            DISP=(MOD,DELETE,DELETE)
//*
//SORTOUT  DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDVALCA.SRT(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            LRECL=084,RECFM=FB,BLKSIZE=0,
//            UNIT=3390,DCB=BKUP.MODEL
//*
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE01T11),DISP=SHR
//*
//**********************************************************************
//*                     * UNLOAD *
//*  DESCARGA DE LA TABLA PRODUSVP.EDDEPRE  SOBRE UN ARCHIVO SECUENCIAL
//*  PARA USO EN LA GENERACION DE ESTADOS DE CUENTA
//**********************************************************************
//PUE01P12 EXEC PGM=ADUUMAIN,COND=(0,NE),
//         PARM='MXP1,CBUENM0109,NEW/RESTART,,MSGLEVEL(1)'
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//         DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSREC   DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDDEPRE,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=76,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE01T12),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *
//* OBJETIVO : ORDENA POR ICUENTA, FPROCESO, FLIQUIDA
//*            EL ARCHIVO: EDDEPRE  GENERANDO SU GDG CORRESPONDIENTE
//**********************************************************************
//PUE01P11 EXEC PGM=ICEMAN,COND=(0,NE)
//PI601765 DD  DUMMY
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDDEPRE.HD,
//            DISP=(MOD,DELETE,DELETE)
//         DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDDEPRE,
//            DISP=(MOD,DELETE,DELETE)
//*
//SORTOUT  DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDDEPRE.SRT(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            LRECL=076,RECFM=FB,BLKSIZE=0,
//            UNIT=3390,DCB=BKUP.MODEL
//*
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE01T13),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4MU004  --
//*  DESCARGA DE LA TABLA PRODUSVP.EDIMPUE Y PRODUSVP.PARAM ('TI3') EN
//*  ARCHIVO SECUENCIAL PARA USO EN LA GENERACION DE ESTADOS DE CUENTA
//**********************************************************************
//PUE01P10 EXEC PGM=IKJEFT01,COND=(0,NE)
//PI601765 DD DUMMY
//ZMU004I1 DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDIMPUE,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=85,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE01T14),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *
//* OBJETIVO : ORDENA POR ICUENTA, ICONCIMP, FPROCESO
//*            EL ARCHIVO: EDIMPUE  GENERANDO SU GDG CORRESPONDIENTE
//**********************************************************************
//PUE01P09 EXEC PGM=ICEMAN,COND=(0,NE)
//PI601765 DD  DUMMY
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDIMPUE.HD,
//            DISP=(MOD,DELETE,DELETE)
//         DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDIMPUE,
//            DISP=(MOD,DELETE,DELETE)
//*
//SORTOUT  DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDIMPUE.SRT(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            LRECL=085,RECFM=FB,BLKSIZE=0,
//            UNIT=3390,DCB=BKUP.MODEL
//*
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE01T15),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4MU003  --
//*  DESCARGA DE LA TABLA PRODUSVP.EDMOVED Y PRODUSVP.EDDESOP SOBRE UN
//*  ARCHIVO SECUENCIAL PARA USO EN LA GENERACION DE ESTADOS DE CUENTA
//**********************************************************************
//PUE01P08 EXEC PGM=IKJEFT01,COND=(0,NE)
//PI601765 DD DUMMY
//ZMU003M1 DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDMOVED,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=109,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE01T16),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *
//* OBJETIVO : ORDENA POR ICUENTA, FPROCESO, FLIQUIDA, IREF, ISEC,
//*                       ICLACON
//*            EL ARCHIVO: EDMOVED  GENERANDO SU GDG CORRESPONDIENTE
//**********************************************************************
//PUE01P07 EXEC PGM=ICEMAN,COND=(0,NE)
//PI601765 DD  DUMMY
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDMOVED.HD,
//            DISP=(MOD,DELETE,DELETE)
//         DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDMOVED,
//            DISP=(MOD,DELETE,DELETE)
//*
//SORTOUT  DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDMOVED.SRT(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            LRECL=109,RECFM=FB,BLKSIZE=0,
//            UNIT=3390,DCB=BKUP.MODEL
//*
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE01T17),DISP=SHR
//*
//**********************************************************************
//*                     * UNLOAD *
//*  DESCARGA DE LA TABLA PRODUSVP.EDSECIN  SOBRE UN ARCHIVO SECUENCIAL
//*  PARA USO EN LA GENERACION DE ESTADOS DE CUENTA
//**********************************************************************
//PUE01P06 EXEC PGM=ADUUMAIN,COND=(0,NE),
//         PARM='MXP1,CBUENM0110,NEW/RESTART,,MSGLEVEL(1)'
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//         DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSREC   DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDSECIN,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=145,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE01T18),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *
//* OBJETIVO : ORDENA POR ICUENTA, FPROCESO, EINFO
//*            EL ARCHIVO: EDSECIN  GENERANDO SU GDG CORRESPONDIENTE
//**********************************************************************
//PUE01P05 EXEC PGM=ICEMAN,COND=(0,NE)
//PI601765 DD  DUMMY
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDSECIN.HD,
//            DISP=(MOD,DELETE,DELETE)
//         DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDSECIN,
//            DISP=(MOD,DELETE,DELETE)
//*
//SORTOUT  DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDSECIN.SRT(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            LRECL=145,RECFM=FB,BLKSIZE=0,
//            UNIT=3390,DCB=BKUP.MODEL
//*
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE01T19),DISP=SHR
//*
//**********************************************************************
//*                     * UNLOAD *
//*  DESCARGA DE LA TABLA PRODUSVP.EDOPERT1 SOBRE UN ARCHIVO SECUENCIAL
//*  PARA USO EN LA GENERACION DE ESTADOS DE CUENTA
//**********************************************************************
//PUE01P04 EXEC PGM=ADUUMAIN,COND=(0,NE),
//         PARM='MXP1,CBUENM0111,NEW/RESTART,,MSGLEVEL(1)'
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//         DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSREC   DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDOPERT1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=68,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE01T20),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *
//* OBJETIVO : ORDENA POR ICUENTA1, FREG, FLIQUIDA, IOPERA, SESTATUS
//*            EL ARCHIVO: EDOPERT1 GENERANDO SU GDG CORRESPONDIENTE
//**********************************************************************
//PUE01P03 EXEC PGM=ICEMAN,COND=(0,NE)
//PI601765 DD  DUMMY
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDOPERT1.HD,
//            DISP=(MOD,DELETE,DELETE)
//         DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDOPERT1,
//            DISP=(MOD,DELETE,DELETE)
//*
//SORTOUT  DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDOPERT1.SRT(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            LRECL=068,RECFM=FB,BLKSIZE=0,
//            UNIT=3390,DCB=BKUP.MODEL
//*
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE01T21),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4MU005  --
//*  DESCARGA DE LA TABLA PRODUSVP.PARAM ('TU8','TU9', 'TV0', 'TD4') EN
//*  ARCHIVO SECUENCIAL PARA USO EN LA GENERACION DE ESTADOS DE CUENTA
//**********************************************************************
//PUE01P02 EXEC PGM=IKJEFT01,COND=(0,NE)
//PI601765 DD DUMMY
//ZMU005P1 DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDPARAM,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=83,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE01T22),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *
//* OBJETIVO : ORDENA POR ITIPOPAR, IPARAM
//*            EL ARCHIVO: EDPARAM  GENERANDO SU GDG CORRESPONDIENTE
//**********************************************************************
//PUE01P01 EXEC PGM=ICEMAN,COND=(0,NE)
//PI601765 DD  DUMMY
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDPARAM.HD,
//            DISP=(MOD,DELETE,DELETE)
//         DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDPARAM,
//            DISP=(MOD,DELETE,DELETE)
//*
//SORTOUT  DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDPARAM.SRT(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            LRECL=083,RECFM=FB,BLKSIZE=0,
//            UNIT=3390,DCB=BKUP.MODEL
//*
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE01T23),DISP=SHR
//*
//**********************************************************************
//*        TERMINA PROCESO ZMUEPM01 SIVA MULTIEMPRESA                  *
//**********************************************************************
