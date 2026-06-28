//ZMUEPM21 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                   >>>>  ESTADOS DE CUENTA  <<<<                    *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMUEPM21                                            *
//*                                                                    *
//*   OBJETIVO  :  PREPARA INFORMACION PARA CONSTANCIAS DE E.C. DE LA  *
//*                EMPRESA PROPORCIONADA                               *
//*                                                                    *
//*   CORRE ANTES DE  :  ZMUEPM22                                      *
//*                                                                    *
//*   CORRE DESPUES DE:                                                *
//*                                                                    *
//*   PERIODICIDAD    :  ANUAL                                         *
//*                                                                    *
//**********************************************************************
//*
//**********************************************************************
//*    FORMATEA ARCHIVO DE INTERESES E IMPUESTO                        *
//**********************************************************************
//PUE21P08 EXEC PGM=ZM3VU901,COND=(0,NE)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZVU901E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..INTISR,DISP=SHR
//ZVU901S1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDINTISR,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=376,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE)
//*
//**********************************************************************
//*                     * SORT   *
//* OBJETIVO : ORDENA POR: ICUENTA, ICLIENTE, IREGIMEN, ICOPROP, PORCENT
//**********************************************************************
//PUE21P07 EXEC PGM=ICEMAN,COND=(0,NE)
//PI601765 DD  DUMMY
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDINTISR,
//            DISP=(MOD,DELETE,DELETE)
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDINTISR.SRT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=376,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE21T01),DISP=SHR
//*
//**********************************************************************
//*    FORMATEA ARCHIVO DE DIVIDENDOS                                  *
//**********************************************************************
//PUE21P06 EXEC PGM=ZM3VU902,COND=(0,NE)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZVU902E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..DIVID,DISP=SHR
//ZVU902S1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDDIVID,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=92,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE)
//*
//**********************************************************************
//*                     * SORT   *
//* OBJETIVO : ORDENA POR: ICUENTA, ICLIENTE, IREGIMEN, ICOPROP,
//*                        PORCENT, TIPO DE DIVIDENDO
//**********************************************************************
//PUE01P05 EXEC PGM=ICEMAN,COND=(0,NE)
//PI601765 DD  DUMMY
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDDIVID,
//            DISP=(MOD,DELETE,DELETE)
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDDIVID.SRT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=92,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE21T02),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4VU001  --
//*  DESCARGA DE LAS TABLAS PRODUSVP.EDCUENTA, PRODUSVP.PROMOT,
//*                       PRODUSVP.SUCURSA,  PRODUSVP.ESTZONE,
//*                       PRODUSVP.EMPRESA  SOBRE UN ARCHIVO SECUENCIAL
//*  PARA USO EN LA GENERACION DE ESTADOS DE CUENTA
//**********************************************************************
//PUE21P04 EXEC PGM=IKJEFT01,COND=(0,NE)
//PI601765 DD DUMMY
//ZMU001C1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDCUENTA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=841,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU001P1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDPARAM.HD,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=83,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(6,3),RLSE)
//ZMU001I1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDINTISR.SRT,DISP=SHR
//ZMU001D1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDDIVID.SRT,DISP=SHR
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE21T03),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *
//* OBJETIVO : ORDENA POR CIERRE-ACT, CIERRE-ANT, IEMPR,   ICUENTA
//*                       ICLIENTE,   IREGIMEN  , ICOPROP, PORCENT
//**********************************************************************
//PUE21P03 EXEC PGM=ICEMAN,COND=(0,NE)
//PI601765 DD  DUMMY
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDCUENTA,
//            DISP=(MOD,DELETE,DELETE)
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDCUENTA.SRT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=841,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE21T04),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4VU005  --
//*  DESCARGA DE LA TABLA PRODUSVP.PARAM ('ET4','ET5') EN
//*  ARCHIVO SECUENCIAL PARA USO EN LA GENERACION DE ESTADOS DE CUENTA
//**********************************************************************
//PUE21P02 EXEC PGM=IKJEFT01,COND=(0,NE)
//PI601765 DD DUMMY
//ZMU005P1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDPARAM,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=83,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(10,5),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE21T05),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *
//* OBJETIVO : ORDENA POR ITIPOPAR, IPARAM
//**********************************************************************
//PUE21P01 EXEC PGM=ICEMAN,COND=(0,NE)
//PI601765 DD  DUMMY
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDPARAM.HD,
//            DISP=(MOD,DELETE,DELETE)
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDPARAM,
//            DISP=(MOD,DELETE,DELETE)
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDPARAM.SRT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=83,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(10,5),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE21T06),DISP=SHR
//*
//**********************************************************************
//*        TERMINA PROCESO ZMUEPM21 SIVA MULTIEMPRESA                  *
//**********************************************************************
