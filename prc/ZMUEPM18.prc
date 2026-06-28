//ZMUEPM18 PROC
//*
//*--------------------------------------------------------------------*
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                   >>>>  ESTADOS DE CUENTA  <<<<                    *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMUEPM18                                            *
//*                                                                    *
//*   OBJETIVO  :  PREPARA INFORMACION PARA ESTADOS DE CUENTA DE       *
//*                LA EMPRESA BCM PARA OBTENER EL DIFERENCIAL          *
//*                                                                    *
//*   CORRE ANTES DE  :  ZMUEPMXX,                                     *
//*                      ZMUEPMXX                                      *
//*                                                                    *
//*   CORRE DESPUES DE:                                                *
//*                                                                    *
//*   PERIODICIDAD    :  MENSUAL                                       *
//*                                                                    *
//*   AUTOR : FSW-INDRA                                                *
//*                                                                    *
//*   DICIEMBRE 2016.                                                  *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//* MODIFICO:       PEDRO AXEL VALLE SANCHEZ (PAVS-INI - PAVS-FIN)     *
//* FECHA:          MAYO 2023                                          *
//* ASUNTO:         INCREMENTO FOLIO CONCEPT                           *
//* MARCA:          SDATOOL-41254-PAVS-INI                             *
//*                 SDATOOL-41254-PAVS-FIN                             *
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//*                     * UNLOAD *
//*  DESCARGA DE LA TABLA DESARSV1.EDVALCA (GRUPO 1) SOBRE UN ARCHIVO
//*  SECUENCIAL PARA USO EN LA GENERACION DE ESTADOS DE CUENTA
//*--------------------------------------------------------------------*
//*
//PUE18P95 EXEC PGM=ADUUMAIN,COND=(0,NE),
//         PARM='MXP1,CBUENM0102,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       01497705
//         DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.ECT.EBCM.EDVALCA.DESC1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*   PAVS-INI
//*           DCB=(DSORG=PS,LRECL=93,RECFM=FB,BLKSIZE=0),
//            DCB=(DSORG=PS,LRECL=92,RECFM=FB,BLKSIZE=0),
//*   PAVS-FIN
//            SPACE=(CYL,(80,40),RLSE)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE18T95),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                     * UNLOAD *
//*  DESCARGA DE LA TABLA DESARSV1.EDVALCA (GRUPO 2) SOBRE UN ARCHIVO
//*  SECUENCIAL PARA USO EN LA GENERACION DE ESTADOS DE CUENTA
//*--------------------------------------------------------------------*
//*
//PUE18P90 EXEC PGM=ADUUMAIN,COND=(0,NE),
//         PARM='MXP1,CBUENM0203,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       01497705
//         DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.ECT.EBCM.EDVALCA.DESC2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*   PAVS-INI
//*           DCB=(DSORG=PS,LRECL=93,RECFM=FB,BLKSIZE=0),
//            DCB=(DSORG=PS,LRECL=92,RECFM=FB,BLKSIZE=0),
//*   PAVS-FIN
//            SPACE=(CYL,(80,40),RLSE)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE18T90),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                     * UNLOAD *
//*  DESCARGA DE LA TABLA DESARSV1.EDVALCA (GRUPO 3) SOBRE UN ARCHIVO
//*  SECUENCIAL PARA USO EN LA GENERACION DE ESTADOS DE CUENTA
//*--------------------------------------------------------------------*
//*
//PUE18P85 EXEC PGM=ADUUMAIN,COND=(0,NE),
//         PARM='MXP1,CBUENM0204,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       01497705
//         DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.ECT.EBCM.EDVALCA.DESC3,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*   PAVS-INI
//*           DCB=(DSORG=PS,LRECL=93,RECFM=FB,BLKSIZE=0),
//            DCB=(DSORG=PS,LRECL=92,RECFM=FB,BLKSIZE=0),
//*   PAVS-FIN
//            SPACE=(CYL,(80,40),RLSE)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE18T85),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                     * UNLOAD *
//*  DESCARGA DE LA TABLA DESARSV1.EDVALCA (GRUPO 4) SOBRE UN ARCHIVO
//*  SECUENCIAL PARA USO EN LA GENERACION DE ESTADOS DE CUENTA
//*--------------------------------------------------------------------*
//*
//PUE18P80 EXEC PGM=ADUUMAIN,COND=(0,NE),
//         PARM='MXP1,CBUENM0205,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       01497705
//         DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.ECT.EBCM.EDVALCA.DESC4,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*   PAVS-INI
//*           DCB=(DSORG=PS,LRECL=93,RECFM=FB,BLKSIZE=0),
//            DCB=(DSORG=PS,LRECL=92,RECFM=FB,BLKSIZE=0),
//*   PAVS-FIN
//            SPACE=(CYL,(80,40),RLSE)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE18T80),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                     * UNLOAD *
//*  DESCARGA DE LA TABLA DESARSV1.EDVALCA (GRUPO 5) SOBRE UN ARCHIVO
//*  SECUENCIAL PARA USO EN LA GENERACION DE ESTADOS DE CUENTA
//*--------------------------------------------------------------------*
//*
//PUE18P75 EXEC PGM=ADUUMAIN,COND=(0,NE),
//         PARM='MXP1,CBUENM0206,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       01497705
//         DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.ECT.EBCM.EDVALCA.DESC5,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*   PAVS-INI
//*           DCB=(DSORG=PS,LRECL=93,RECFM=FB,BLKSIZE=0),
//            DCB=(DSORG=PS,LRECL=92,RECFM=FB,BLKSIZE=0),
//*   PAVS-FIN
//            SPACE=(CYL,(80,40),RLSE)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE18T75),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                     * UNLOAD *
//*  DESCARGA DE LA TABLA DESARSV1.EDVALCA (GRUPO 6) SOBRE UN ARCHIVO
//*  SECUENCIAL PARA USO EN LA GENERACION DE ESTADOS DE CUENTA
//*--------------------------------------------------------------------*
//*
//PUE18P70 EXEC PGM=ADUUMAIN,COND=(0,NE),
//         PARM='MXP1,CBUENM0207,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       01497705
//         DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.ECT.EBCM.EDVALCA.DESC6,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*   PAVS-INI
//*           DCB=(DSORG=PS,LRECL=93,RECFM=FB,BLKSIZE=0),
//            DCB=(DSORG=PS,LRECL=92,RECFM=FB,BLKSIZE=0),
//*   PAVS-FIN
//            SPACE=(CYL,(80,40),RLSE)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE18T70),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                     * UNLOAD *
//*  DESCARGA DE LA TABLA DESARSV1.EDVALCA (GRUPO 7) SOBRE UN ARCHIVO
//*  SECUENCIAL PARA USO EN LA GENERACION DE ESTADOS DE CUENTA
//*--------------------------------------------------------------------*
//*
//PUE18P65 EXEC PGM=ADUUMAIN,COND=(0,NE),
//         PARM='MXP1,CBUENM0208,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       01497705
//         DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.ECT.EBCM.EDVALCA.DESC7,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*   PAVS-INI
//*           DCB=(DSORG=PS,LRECL=93,RECFM=FB,BLKSIZE=0),
//            DCB=(DSORG=PS,LRECL=92,RECFM=FB,BLKSIZE=0),
//*   PAVS-FIN
//            SPACE=(CYL,(80,40),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE18T65),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                     * SORT   *
//* OBJETIVO : JUNTA TODOS LOS GRUPOS DE ARCHIVOS DE EDVALCA UN UNO SOLO
//*            ORDENADO POR: ICUENTA, TIPOREG,  IEMISORA, ISERIE,
//*                          ICUPON,  FPROCESO, ICLACON
//*            GENERANDO SU GDG CORRESPONDIENTE
//*--------------------------------------------------------------------*
//*
//PUE18P60 EXEC PGM=ICEMAN,COND=(0,NE)
//PI601765 DD  DUMMY
//SYSOUT   DD SYSOUT=*
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.EBCM.EDVALCA.DESC1,
//            DISP=(MOD,DELETE,DELETE)
//         DD DSN=MXCP.ZM.TMP.ECT.EBCM.EDVALCA.DESC2,
//            DISP=(MOD,DELETE,DELETE)
//         DD DSN=MXCP.ZM.TMP.ECT.EBCM.EDVALCA.DESC3,
//            DISP=(MOD,DELETE,DELETE)
//         DD DSN=MXCP.ZM.TMP.ECT.EBCM.EDVALCA.DESC4,
//            DISP=(MOD,DELETE,DELETE)
//         DD DSN=MXCP.ZM.TMP.ECT.EBCM.EDVALCA.DESC5,
//            DISP=(MOD,DELETE,DELETE)
//         DD DSN=MXCP.ZM.TMP.ECT.EBCM.EDVALCA.DESC6,
//            DISP=(MOD,DELETE,DELETE)
//         DD DSN=MXCP.ZM.TMP.ECT.EBCM.EDVALCA.DESC7,
//            DISP=(MOD,DELETE,DELETE)
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECT.EBCM.EDVALCA.DESC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*   PAVS-INI
//*           DCB=(DSORG=PS,LRECL=93,RECFM=FB,BLKSIZE=0),
//            DCB=(DSORG=PS,LRECL=92,RECFM=FB,BLKSIZE=0),
//*   PAVS-FIN
//            SPACE=(CYL,(80,40),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE18T60),DISP=SHR
//*
