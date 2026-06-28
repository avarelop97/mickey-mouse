//ZMJLPE15 PROC                                                         00040000
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<<<<<< TESORERIA >>>>>>>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMJLPE15                                            *
//*                                                                    *
//*   OBJETIVO  :                                                      *
//*           REPORTE DE INFORMACION DE OPERACIONES MDD INTERMEDIARIOS *
//*           (OPC T00)                                                *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *
//*********************************************************************
//*    RECIBE LOS PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN ARCHIVO
//*********************************************************************
//*
//PJL15P04 EXEC PGM=ZM3DG001,REGION=0M,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJLPE15,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//           UNIT=3390,
//           SPACE=(CYL,(2,1),RLSE)
//*
//*********************************************************************
//*  EXTRAE INFORMACION DE INTERMEDIARIOS                             * 00050000
//********************************************************************* 00060000
//*
//PJL15P03 EXEC PGM=IKJEFT01,COND=(4,LT),REGION=0M                      00070000
//PI601765 DD DUMMY
//ZMLM22R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00240000
//ZMLM22P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJLPE15,
//         DISP=SHR
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL15T01),DISP=SHR                   00300000
//*                                                                     00310000
//*-------------------------------------------------------------------
//*        AVISO EN CASO DE ERROR A LA CONSOLA
//*-------------------------------------------------------------------
//PJL15P02 EXEC PGM=MAILOPER,COND=(4,GE,PJL15P03),
//         PARM=('/ATENCION OPERADOR.AVISAR A SOPROD QUE',
//             ' PROCESO ZMJLPE15 TERMINO MAL.CONTESTAR SI',
//             'PARA TERMINAR')
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-D                 *
//****************************************************************
//PJL15P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXRID_IN_SEP_OK WDATE',
//         COND=(4,LT)
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD SYSOUT=*
//SYSPRINT DD DUMMY
//SYSUDUMP DD DUMMY
//DAPRINT  DD SYSOUT=*
//DACNDIN  DD DDNAME=SYSIN
