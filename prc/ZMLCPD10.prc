//ZMLCPD10 PROC
//**********************************************************************
//**    G R U P O - F I N A N C I E R O - P R O B U R S A   (B B V)
//**
//** SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)
//**
//** PROCESO        :  ZMLCPD10
//**
//** OBJETIVO       :  REPORTE DE CAPITALES
//**
//** CORRE ANTES DE :  NO APLICA
//**
//** DESPUES DE     :  SIVAXCN1
//**
//** OBSERVACIONES  :
//**
//**
//**
//** REALIZO        :  JORGE A PEREZ CONTRERAS   (AZERTIA) JPC
//**                   ABRIL  2008.
//**                                                                   *
//**********************************************************************
//* BITACORA DE MODIFICACIONES :                                       *
//*--------------------------------------------------------------------*
//*MODIF |  FECHA   |USUARIO|  PASO |DESCRIPCION                       *
//*--------------------------------------------------------------------*
//* XXX  |DD-MMM-AA |XXXXXXX|       |XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//**********************************************************************
//* PROGRAMA: ZM4DLD10
//* PASO ZMPIJF10 GENERA DOS ARCHIVOS PARA EL REPORTE
//**********************************************************************
//ZMPIJF10 EXEC PGM=IKJEFT01,
//         PARM=('&EMP',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMLD10S1 DD DSN=MXCP.ZM.FIX.E&EMP..PRUEBAJF.ZM4DLD10,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(50,25),RLSE)
//ZMLD10S2 DD DSN=MXCP.ZM.FIX.E&EMP..PRUEBADF.ZM4DLD10,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(50,25),RLSE)
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPID101),DISP=SHR
//**********************************************************************
//*PASO ZMLCP005 SORTEA LOS ARCHIVOS GENERADOS Y ARMA EL REPORTE       *
//**********************************************************************
//ZMLCP005 EXEC PGM=ICEMAN,COND=(4,LT),
//         PARM=('&EMP',)
//SORTIN   DD  DSN=MXCP.ZM.FIX.E&EMP..PRUEBAJF.ZM4DLD10,
//             DISP=SHR
//         DD  DSN=MXCP.ZM.FIX.E&EMP..PRUEBADF.ZM4DLD10,
//             DISP=SHR
//SORTOUT  DD  DSN=MXCP.ZM.FIX.E&EMP..ZM4DLD11.ZM4DLD10,
//             DISP=(NEW,CATLG,DELETE),
//             DCB=(DSORG=PS,LRECL=133,RECFM=FB,BLKSIZE=0),
//             SPACE=(CYL,(50,25),RLSE),UNIT=3390
//SYSOUT   DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZMPID102),DISP=SHR
//**********************************************************************
//*PASO ZMLCP001 RENUMERA LAS PAGINAS DEL REPORTE
//**********************************************************************
//ZMLCP001 EXEC PGM=ZM4DLD11,COND=(4,LT),
//         PARM=('&EMP',)
//ZMLD11E1 DD DSN=MXCP.ZM.FIX.E&EMP..ZM4DLD11.ZM4DLD10,
//            DISP=OLD
//ZMLD11S1 DD DSN=MXCP.ZM.FIX.E&EMP..REPORTE.ZM4DLD10,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=133,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(50,25),RLSE)
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
