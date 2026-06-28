//ZMHLPE07 PROC                                                         00010000
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     << MERCADO DE VALORES   >>                     *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMHLPE07 (OPC. 974, SUB 4)                          *
//*                                                                    *
//*   OBJETIVO  :  REPORTE DE VALORES FECHA ACTUAL                     *
//*                                                                    *
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *
//*                                                                    *
//*   ELABORADO POR   : SOFTTEK / EDUARDO MORALES VILLAFUERTE.         *
//*                                                                    *
//*   FECHA           : MAYO 2005                                      *
//**********************************************************************
//**********************************************************************
//*         REPORTE DE MODIFICACION PRESTAMO DE VALORES FECHA ACTUAL
//*         PROGRAMA ZM4EH019
//**********************************************************************
//PHL07P03 EXEC PGM=IKJEFT01
//*
//ZMH019R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//ZMH019FD DD DSN=MXCP.ZM.FIX.VAL.EMP.SUC.ZMHLPE07,
//            DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL07T01),DISP=SHR
//*-------------------------------------------------------------------- 00230000
//*        AVISO EN CASO DE ERROR A LA CONSOLA                          00240000
//*-------------------------------------------------------------------- 00250000
//*PHL07P02  EXEC PGM=MAILOPER,COND=(4,GE,PHL07P03),                    00260000
//*         PARM=('/ATENCION OPERADOR.AVISAR A SOPROD QUE',             00270000
//*             ' PROCESO ZMHLPE07 TERMINO MAL.CONTESTAR SI',           00280000
//*             'PARA TERMINAR')                                        00290000
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-D                 *
//****************************************************************
//*PHL07P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXPVR_IN_SEP_OK WDATE',
//*        COND=(4,LT)
//*STEPLIB  DD   DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//*DAPARM   DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//*         DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//*DALOG    DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//*DARESF   DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//*PRTDBG   DD   SYSOUT=*
//*SYSPRINT DD   DUMMY
//*SYSUDUMP DD   DUMMY
//*DAPRINT  DD   SYSOUT=*
//*DACNDIN  DD   DDNAME=SYSIN
//*
