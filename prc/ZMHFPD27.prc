//ZMHFPD27 PROC
//**********************************************************************
//* SISTEMA        :  ZM - RIESGO DE LIQUIDEZ                          *
//*                                                                    *
//* PROCESO        :  CBHFND27 (SUBMITIDOR)                            *
//*                   ZMHFPD27 (PROCEDIMIENTO)                         *
//*                                                                    *
//* OBJETIVO       :  GENERA ARCHIVOS CON LOS MOVIMIENTOS Y POSICION   *
//*                   PROPIA DE MERCADO CAPITALES PARA SU ENVIO AL SIRE*
//*                                                                    *
//* PERIODICIDAD   :  DIARIO                                           *
//*--------------------------------------------------------------------*
//*            L O G    D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*  MARCA      AUTOR     FECHA  DESCRIPCION                           *
//* ----------- --------- ------ --------------------------------------*
//* FS-9.9.9-99 XXXXXXXXX DDMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*
//**********************************************************************
//* OBJETIVO : GENERA ARCHIVO CON LOS MOVIMIENTOS  Y  POSICION PROPIA  *
//*            DE MERCADO DE CAPITALES  PARA SU ENVIO AL SIRE.         *
//**********************************************************************
//PHF27P01 EXEC PGM=IKJEFT01
//*
//ZMFH0961 DD DSN=MXCP.ZM.FIX.MDC.ECBP.SIRE.RENVAR,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//ZMFH0962 DD DSN=MXCP.ZM.FIX.MDC.ECBP.SIRE.CIFCTRL,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//*JVG-INI
//*ZMFH0963 DD DSN=MXCP.ZM.FIX.MDC.ECBP.RENVAR.F&FECHA.,
//ZMFH0963 DD DSN=MXCP.ZM.FIX.MDC.ECBP.RENVARX.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//*JVG-FIN
//*JVG-INI
//*ZMFH0964 DD DSN=MXCP.ZM.FIX.MDC.SIRE.POSICCTL.F&FECHA.,
//ZMFH0964 DD DSN=MXCP.ZM.FIX.MDC.SIRE.CIFRACTL.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHF27P01),DISP=SHR
//*
//**********************************************************************
//*  PASO        : PHF27P02                                            *
//*  PROGRAMA    : ICEMAN                                              *
//*  DESCRIPCION : ELIMINA DUPLICADOS DEL ARCHIVO RV_SIVA PARA DATIO  *
//**********************************************************************
//PHF27P02 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.MDC.ECBP.RENVARX.F&FECHA.,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.MDC.ECBP.RENVAR.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(PHF27P02),DISP=SHR
//*
//*GCV-INI-3------>
//*
//**********************************************************************
//*  PASO        : PHF27P03                                            *
//*  PROGRAMA    : ICEMAN                                              *
//*  DESCRIPCION : CUENTA REGISTROS DEL ARCHIVO TRANSACI SIN DUPLICADOS*
//**********************************************************************
//PHF27P03 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.MDC.ECBP.RENVAR.F&FECHA.,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.MDC.ECBP.RENVAR.COUNT.F&FECHA.,
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
//*  PASO        : PHF27P04                                            *
//*  PROGRAMA    : IKJEFT01 / ZM4DH09E                                 *
//*  DESCRIPCION : GENERA EL ARCHIVO DE CIFRAS FINAL PARA DATIO        *
//**********************************************************************
//PHF27P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.MDC.SIRE.CIFRACTL.F&FECHA.,
//            DISP=SHR
//*
//ENTRADA2 DD DSN=MXCP.ZM.FIX.MDC.ECBP.RENVAR.COUNT.F&FECHA.,
//            DISP=SHR
//*
//ZMFH093E DD DSN=MXCP.ZM.FIX.MDC.SIRE.POSICCTL.F&FECHA.,
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
//*   PASO    : PHF27P04                                               *
//*   OBJETIVO: DEJA CONDICION MX2CRX_CBHFND2700 POS Y TRANS           *
//*--------------------------------------------------------------------*
//PHF27P05 EXEC  PGM=IOACND,PARM='ADD COND MX2CRX_CBHFND2700 WDATE',
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
//**********************************************************************
//**              FIN DEL PROCEDIMIENTO ZMHFPD27                       *
//**********************************************************************
