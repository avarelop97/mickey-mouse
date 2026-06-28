//ZMHLPE05 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     << MERCADO DE VALORES  >>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMHLPE05 (OPC. 975)                                 *
//*                                                                    *
//*   OBJETIVO  :  PRESTAMO DE VALORES REPORTE DE GARANTIAS            *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *
//*********************************************************************
//**********************************************************************
//* OBJETIVO:   BORRA PREVIAMENTE LOS ARCHIVOS A GENERAR
//**********************************************************************
//*PHL05P05 EXEC PGM=IEFBR14
//**
//*ARCHSAL  DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE05,
//*            DISP=(,DELETE,DELETE)
//*         DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..ZMH952D,
//*            DISP=(,DELETE,DELETE)
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//**
//*********************************************************************
//*    RECIBE LOS PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN ARCHIVO
//*********************************************************************
//*
//PHL05P04 EXEC PGM=ZM3DG001,REGION=0M,COND=(4,LT),
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE05,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//           UNIT=3390,
//           SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************
//*     REPORTE DE GARANTIAS
//*     PROGRAMA ZM4DH952
//*JFE  SE AMPLIA LA LONGITUD DEL ARCHIVO POR INCORPORACION DE
//*     CAMPO ITVBMV, DE 69 POSICIONES A 73 POSICIONES.
//**********************************************************************
//PHL05P03 EXEC PGM=IKJEFT01,COND=(4,LT),REGION=0M
//*
//ZMH952R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMH952R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//ZMH952A1 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..ZMH952D,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE),
//           DCB=(DSORG=PS,RECFM=FB,LRECL=73,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//*
//ZMH952FD DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE05,
//         DISP=SHR
//*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL05T01),DISP=SHR
//*---M----------------------------------------------------------------
//*        AVISO EN CASO DE ERROR A LA CONSOLA
//*--------------------------------------------------------------------
//PHL05P02 EXEC PGM=MAILOPER,COND=(4,GE,PHL05P03),
//         PARM=('/ATENCION OPERADOR.AVISAR A SOPROD QUE',
//             ' PROCESO ZMHLPE05 TERMINO MAL.CONTESTAR SI',
//             'PARA TERMINAR')
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-D                 *
//****************************************************************
//PHL05P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXGAR_IN_SEP_OK WDATE',
//         COND=(4,LT)
//STEPLIB  DD   DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD   SYSOUT=*
//SYSPRINT DD   DUMMY
//SYSUDUMP DD   DUMMY
//DAPRINT  DD   SYSOUT=*
//DACNDIN  DD   DDNAME=SYSIN
//*
