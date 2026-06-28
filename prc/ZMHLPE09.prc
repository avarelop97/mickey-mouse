//ZMHLPE09 PROC                                                         00010000
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     << MERCADO DE VALORES  >>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMHLPE09 (OPC. 975)                                 *
//*                                                                    *
//*   OBJETIVO  :  REPORTE DE GARANTIAS MODIFICADAS HOY                *
//*                                                                    *
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *
//*                                                                    *
//*   ELABORADO POR   : SOFTTEK / EDUARDO MORALES VILLAFUERTE.         *
//*                                                                    *
//*   FECHA           : MAYO 2005                                      *
//*********************************************************************
//*    RECIBE LOS PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN ARCHIVO
//*********************************************************************
//PHL09P04 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..ZMHLPE09,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//           UNIT=3390,
//           SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************
//*     REPORTE DE GARANTIAS MODIFICADAS HOY
//*     PROGRAMA ZM4EH018
//**********************************************************************
//PHL09P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMH018R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//ZMH018FD DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..ZMHLPE09,
//            DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL09T01),DISP=SHR
//*                                                                     00230000
//*-------------------------------------------------------------------- 00230000
//*        AVISO EN CASO DE ERROR A LA CONSOLA                          00240000
//*-------------------------------------------------------------------- 00250000
//PHL09P02 EXEC PGM=MAILOPER,COND=(4,GE,PHL09P03),                      00260000
//         PARM=('/ATENCION OPERADOR.AVISAR A SOPROD QUE',              00270000
//             ' PROCESO ZMHLPE09 TERMINO MAL.CONTESTAR SI',            00280000
//             'PARA TERMINAR')                                         00290000
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-D                 *
//****************************************************************
//PHL09P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXGAR_IN_SEP_OK WDATE',
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
