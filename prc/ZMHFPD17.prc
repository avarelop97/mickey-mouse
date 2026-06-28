//ZMHFPD17 PROC
//**********************************************************************
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  ZMHFPD17                                         *
//*                                                                    *
//* OBJETIVO       :  GENERACION DE ARCHIVOS CON LOS MOVIMIENTOS,      *
//*                   POSICION Y CONCILIACION INICIO DE FIN DE DIA     *
//*                   DE MERCADO DE CAPITALES  PARA SU ENVIO AL        *
//*                   SISTEMA SIRE.                                    *
//*                                                                    *
//* REALIZO        :  SWF - ACCENTURE - XM09317                        *
//*                                                                    *
//* FECHA          :  06 DE JULIO DEL 2010.                            *
//**********************************************************************
//*
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//**********************************************************************
//*
//**********************************************************************
//*  PASO        : PHF17P03                                            *
//*  PROGRAMA    : IKJEFT01 / ZM4DH093                                 *
//*  DESCRIPCION : GENERA EL ARCHIVO DE TRANSACCIONES DIARIAS DE LA    *
//*                POSICION PROPIA BANCO PARA EL SISTEMA SIRE.         *
//**********************************************************************
//PHF17P03 EXEC PGM=IKJEFT01
//*
//ZMFH0931 DD DSN=MXCP.ZM.FIX.MDC.ECBP.SIRE.TRANSACI,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=595,BLKSIZE=0),
//            UNIT=3390
//*
//**********************************************************************
//*GCV-INI
//*
//*XMF2853-INI
//*ZMFH0932 DD DSN=MXCP.ZM.FIX.MDC.ECBP.SIRE.TRANSACI.F&FECHA.,
//ZMFH0932 DD DSN=MXCP.ZM.FIX.MDC.ECBP.SIRE.TRANSACI.PIPES,
//*XMF2853-FIN
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4,2),RLSE),
//*SE AGREGA LLAVE
//*XMF2853-INI
//*           DCB=(DSORG=PS,RECFM=FB,LRECL=630,BLKSIZE=0),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=672,BLKSIZE=0),
//*XMF2853-FIN
//*SE AGREGA LLAVE
//            UNIT=3390
//*
//*GCV-INI-3------>
//*ZMFH0933 DD DSN=MXCP.ZM.FIX.MDC.ECBP.SIRE.TRANSCTL.F&FECHA.,
//ZMFH0933 DD DSN=MXCP.ZM.FIX.MDC.ECBP.SIRE.CIFRACTL.F&FECHA.,
//*GCV-FIN-3------>
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=73,BLKSIZE=0),
//            UNIT=3390
//*
//**********************************************************************
//*GCV-FIN
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF17T03),DISP=SHR
//*
//**********************************************************************
//*  PASO        : PHF17P02                                            *
//*  PROGRAMA    : IKJEFT01 / ZM4DH092                                 *
//*  DESCRIPCION : GENERA EL ARCHIVO DE POSICION DIARIA DE LAS         *
//*                OPERACIONES DE POSICION PROPIA BANCO                *
//*                 ARA EL SISTEMA SIRE.                               *
//**********************************************************************
//PHF17P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFH0921 DD DSN=MXCP.ZM.FIX.MDC.ECBP.SIRE.POSICION,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=352,BLKSIZE=0),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF17T02),DISP=SHR
//*
//**********************************************************************
//*  PASO        : PHF17P01                                            *
//*  PROGRAMA    : IKJEFT01 / ZM4DH091                                 *
//*  DESCRIPCION : GENERA EL ARCHIVO DE CONCILIACION DIARIA DE POSICION*
//*                PROPIA BANCO PARA EL SISTEMA SIRE.                  *
//**********************************************************************
//PHF17P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFH0911 DD DSN=MXCP.ZM.FIX.MDC.ECBP.SIRE.CONCILIA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=125,BLKSIZE=0),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF17T01),DISP=SHR
//*
//*GCV-INI
//**********************************************************************
//**********************************************************************
//*  PASO        : PHF17P0A                                            *
//*  PROGRAMA    : IKJEFT01 / ZM4DH09A                                 *
//*  DESCRIPCION : GENERA EL ARCHIVO DE POSICION CON PIPES PARA DATIO  *
//*                Y ARCHIVO CON CIFRAS DE CONTROL                     *
//**********************************************************************
//PHF17P0A EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFHA921 DD DSN=MXCP.ZM.FIX.MDC.ECBP.SIRE.POSICION.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=387,BLKSIZE=0),
//            UNIT=3390
//*
//ZMFHA922 DD DSN=MXCP.ZM.FIX.MDC.ECBP.SIRE.POSICCTL.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=73,BLKSIZE=0),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF17T0A),DISP=SHR
//*
//**********************************************************************
//*GCV-FIN
//*GCV-INI-2
//**********************************************************************
//**********************************************************************
//*  PASO        : PHF17P0B                                            *
//*  PROGRAMA    : ICEMAN                                              *
//*  DESCRIPCION : ELIMINA DUPLICADOS DEL ARCHIVO TRANSASI PARA DATIO  *
//**********************************************************************
//PHF17P0B EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.MDC.ECBP.SIRE.TRANSACI.PIPES,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.MDC.ECBP.SIRE.TRANSACI.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=672,BLKSIZE=0),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF17T0B),DISP=SHR
//*
//*GCV-INI-3------>
//**********************************************************************
//*  PASO        : PHF17P0D                                            *
//*  PROGRAMA    : ICEMAN                                              *
//*  DESCRIPCION : CUENTA REGISTROS DEL ARCHIVO TRANSACI SIN DUPLICADOS*
//**********************************************************************
//PHF17P0D EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.MDC.ECBP.SIRE.TRANSACI.F&FECHA.,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.MDC.ECBP.SIRE.COUNTTRA.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=020,BLKSIZE=0),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF17T0C),DISP=SHR
//*
//**********************************************************************
//*  PASO        : PHF17P0E                                            *
//*  PROGRAMA    : IKJEFT01 / ZM4DH09E                                 *
//*  DESCRIPCION : GENERA EL ARCHIVO DE CIFRAS FINAL PARA DATIO        *
//**********************************************************************
//PHF17P0E EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.MDC.ECBP.SIRE.CIFRACTL.F&FECHA.,
//            DISP=SHR
//*
//ENTRADA2 DD DSN=MXCP.ZM.FIX.MDC.ECBP.SIRE.COUNTTRA.F&FECHA.,
//            DISP=SHR
//*
//ZMFH093E DD DSN=MXCP.ZM.FIX.MDC.ECBP.SIRE.TRANSCTL.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=073,BLKSIZE=0),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF17T0D),DISP=SHR
//*
//*GCV-FIN-3------->
//**********************************************************************
//*GCV-FIN-2
//*GCV-INI-SDATOOL
//*--------------------------------------------------------------------*
//*   UTILERIA: IOACND                                                 *
//*   PASO    : PHF17P0C                                               *
//*   OBJETIVO: DEJA CONDICION MX2CRX_CBHFND1700 POS Y TRANS           *
//*--------------------------------------------------------------------*
//PHF17P0C EXEC  PGM=IOACND,PARM='ADD COND MX2CRX_CBHFND1700 WDATE',
//             COND=(4,LT)
//*
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD DUMMY
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
//*
//*GCV-FIN-SDATOOL
