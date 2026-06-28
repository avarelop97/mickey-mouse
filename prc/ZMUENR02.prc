//ZMUENR02 PROC
//*
//*--------------------------------------------------------------------*
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                   >>>>  ESTADOS DE CUENTA  <<<<                    *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMUENR02                                            *
//*                                                                    *
//*   OBJETIVO  :  PREPARA INFORMACION PARA ESTADOS DE CUENTA DE       *
//*                LA EMPRESA CBP PARA OBTENER EL DIFERENCIAL          *
//*                                                                    *
//*   CORRE ANTES DE  :                                                *
//*                                                                    *
//*   CORRE DESPUES DE:                                                *
//*                                                                    *
//*   PERIODICIDAD    :  MENSUAL                                       *
//*                                                                    *
//*   AUTOR : FSW-INDRA                                                *
//*                                                                    *
//*   JULIO 2015.                                                      *
//*--------------------------------------------------------------------*
//* MODIFICO:       ENRIQUE FERNANDEZ CHAPOU                           *
//* FECHA:          MAYO 2023                                          *
//* ASUNTO:         INCREMENTO FOLIO CONCEPT                           *
//* MARCA:          SDATOOL-41254-EFCH-INI                             *
//*                 SDATOOL-41254-EFCH-FIN                             *
//*                                                                    *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*                     * UNLOAD *
//*  DESCARGA DE LA TABLA PRODUSVP.EDVALCA (GRUPO 1) SOBRE UN ARCHIVO
//*  SECUENCIAL PARA USO EN LA GENERACION DE ESTADOS DE CUENTA
//*--------------------------------------------------------------------*
//*
//PUR02P90 EXEC PGM=ADUUMAIN,COND=(0,NE),
//         PARM='MXP1,CBUENM0102,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//         DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.ECC.ECBP.EDVALCA.DESC1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=84,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR02P90),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                     * UNLOAD *
//*  DESCARGA DE LA TABLA PRODUSVP.EDVALCA (GRUPO 2) SOBRE UN ARCHIVO
//*  SECUENCIAL PARA USO EN LA GENERACION DE ESTADOS DE CUENTA
//*--------------------------------------------------------------------*
//*
//PUR02P85 EXEC PGM=ADUUMAIN,COND=(0,NE),
//         PARM='MXP1,CBUENM0103,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//         DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.ECC.ECBP.EDVALCA.DESC2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=84,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR02P85),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                     * UNLOAD *
//*  DESCARGA DE LA TABLA PRODUSVP.EDVALCA (GRUPO 3) SOBRE UN ARCHIVO
//*  SECUENCIAL PARA USO EN LA GENERACION DE ESTADOS DE CUENTA
//*--------------------------------------------------------------------*
//*
//PUR02P80 EXEC PGM=ADUUMAIN,COND=(0,NE),
//         PARM='MXP1,CBUENM0104,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//         DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.ECC.ECBP.EDVALCA.DESC3,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=84,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR02P80),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                     * UNLOAD *
//*  DESCARGA DE LA TABLA PRODUSVP.EDVALCA (GRUPO 4) SOBRE UN ARCHIVO
//*  SECUENCIAL PARA USO EN LA GENERACION DE ESTADOS DE CUENTA
//*--------------------------------------------------------------------*
//*
//PUR02P75 EXEC PGM=ADUUMAIN,COND=(0,NE),
//         PARM='MXP1,CBUENM0105,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//         DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.ECC.ECBP.EDVALCA.DESC4,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=84,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR02P75),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                     * UNLOAD *
//*  DESCARGA DE LA TABLA PRODUSVP.EDVALCA (GRUPO 5) SOBRE UN ARCHIVO
//*  SECUENCIAL PARA USO EN LA GENERACION DE ESTADOS DE CUENTA
//*--------------------------------------------------------------------*
//*
//PUR02P70 EXEC PGM=ADUUMAIN,COND=(0,NE),
//         PARM='MXP1,CBUENM0106,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//         DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.ECC.ECBP.EDVALCA.DESC5,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=84,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR02P70),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                     * UNLOAD *
//*  DESCARGA DE LA TABLA PRODUSVP.EDVALCA (GRUPO 6) SOBRE UN ARCHIVO
//*  SECUENCIAL PARA USO EN LA GENERACION DE ESTADOS DE CUENTA
//*--------------------------------------------------------------------*
//*
//PUR02P65 EXEC PGM=ADUUMAIN,COND=(0,NE),
//         PARM='MXP1,CBUENM0107,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//         DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.ECC.ECBP.EDVALCA.DESC6,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=84,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR02P65),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                     * UNLOAD *
//*  DESCARGA DE LA TABLA PRODUSVP.EDVALCA (GRUPO 7) SOBRE UN ARCHIVO
//*  SECUENCIAL PARA USO EN LA GENERACION DE ESTADOS DE CUENTA
//*--------------------------------------------------------------------*
//*
//PUR02P60 EXEC PGM=ADUUMAIN,COND=(0,NE),
//         PARM='MXP1,CBUENM0108,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//         DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.ECC.ECBP.EDVALCA.DESC7,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=84,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR02P60),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                     * SORT   *
//* OBJETIVO : JUNTA TODOS LOS GRUPOS DE ARCHIVOS DE EDVALCA UN UNO SOLO
//*            ORDENADO POR: ICUENTA, TIPOREG,  IEMISORA, ISERIE,
//*                          ICUPON,  FPROCESO, ICLACON
//*            GENERANDO SU GDG CORRESPONDIENTE
//*--------------------------------------------------------------------*
//*
//PUR02P55 EXEC PGM=ICEMAN,COND=(0,NE)
//PI601765 DD  DUMMY
//SYSOUT   DD SYSOUT=*
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.ECC.ECBP.EDVALCA.DESC1,
//            DISP=(MOD,DELETE,DELETE)
//         DD DSN=MXCP.ZM.TMP.ECC.ECBP.EDVALCA.DESC2,
//            DISP=(MOD,DELETE,DELETE)
//         DD DSN=MXCP.ZM.TMP.ECC.ECBP.EDVALCA.DESC3,
//            DISP=(MOD,DELETE,DELETE)
//         DD DSN=MXCP.ZM.TMP.ECC.ECBP.EDVALCA.DESC4,
//            DISP=(MOD,DELETE,DELETE)
//         DD DSN=MXCP.ZM.TMP.ECC.ECBP.EDVALCA.DESC5,
//            DISP=(MOD,DELETE,DELETE)
//         DD DSN=MXCP.ZM.TMP.ECC.ECBP.EDVALCA.DESC6,
//            DISP=(MOD,DELETE,DELETE)
//         DD DSN=MXCP.ZM.TMP.ECC.ECBP.EDVALCA.DESC7,
//            DISP=(MOD,DELETE,DELETE)
//*
//SORTOUT  DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDVALCA.DESC(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            LRECL=084,RECFM=FB,BLKSIZE=0,
//            UNIT=3390,DCB=BKUP.MODEL
//*
//SYSTSPRT DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR02P55),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*        TERMINA PROCESO ZMUENR02 SIVA MULTIEMPRESA                  *
//*--------------------------------------------------------------------*
