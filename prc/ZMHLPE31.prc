//ZMHLPE31 PROC
//*********************************************************************
//*                                             D E F I N I T I V O
//*    RECIBE LOS PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN ARCHIVO
//*    PROCESO DEFINITIVO PAGO DE DIVIDENDOS OPC 803
//*********************************************************************
//**********************************************************************
//*SE CAMBIA CONDICIO PARA MISION DE SEPARACION EN CTRL 'D'
//*MOD. OUF 21/07/04 GETRONICS
//**********************************************************************
//PJH31P07 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE31,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//           UNIT=3390,
//           SPACE=(CYL,(2,1),RLSE)
//*-------------------------------------------------------------------
//* EJECUCION DE PRELIMINAR DE EJERCICIO DE DERECHOS DE RENTA VARIABLE
//* ZM4EH981  VALORES MARZO 1990-2003
//*-------------------------------------------------------------------
//PJH31P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZMH981A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE31,DISP=SHR
//ZMH981A2 DD DSN=&&ARCH,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//           UNIT=3390,
//           SPACE=(CYL,(2,1),RLSE)
//ZMH981R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMH981RX DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL31T06),DISP=SHR
//*----------------------------------------------------------------
//*   EJECUCION DEL PROGRAMA  (ZM4EJ104)
//*   COMPRAS AUTOMATICAS SOBRE UN FONDO DE SOCIEDAD
//*   DE INVERSION AGOSTO 1993 -  MARZO 2003
//*----------------------------------------------------------------
//PJH31P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMJ104A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE31,DISP=SHR
//ZMJ104R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL31T05),DISP=SHR
//*----------------------------------------------------------------
//*   EJECUCION DEL PROGRAMA  (ZM4EH982)
//*   REPORTE DE EFECTIVO ACREDITADO SOBRE VALORES PIGNORADOS
//*                                 VALORES MARZO 1990 - 2003
//*----------------------------------------------------------------
//PJH31P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMH982A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE31,DISP=SHR
//ZMH982A2 DD DSN=&&ARCH,DISP=SHR
//ZMH982R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL31T04),DISP=SHR
//*----------------------------------------------------------------
//*   EJECUCION DEL PROGRAMA  (ZM4EH983) DERECHOS EJERCIDOS
//*   POR PERSONAS REPORTE DE DERECHOS EJERCIDOS POR PERSONAS
//*   FISICAS Y MORALES       VALORES MARZO 1990 - 2003
//*----------------------------------------------------------------
//PJH31P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMH983A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE31,DISP=SHR
//ZMH983A2 DD DSN=&&ARCH,DISP=SHR
//ZMH983R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMH983R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL31T03),DISP=SHR
//*--------------------------------------------------------------------
//*        AVISO EN CASO DE ERROR A LA CONSOLA
//*--------------------------------------------------------------------
//PJH31P02 EXEC PGM=MAILOPER,COND=(4,GE,PJH31P06),
//         PARM=('/ATENCION.AVISAR A PRODUCCION QUE PROCESO ',
//             ' ZMHLPE31 TERMINO MAL.CONTESTAR SI',
//             ' PARA TERMINAR')
//*--------------------------------------------------------------------
//*        AVISO EN CASO DE ERROR A LA CONSOLA
//*--------------------------------------------------------------------
//PJH31P01 EXEC PGM=MAILOPER,COND=(4,GE,PJH31P05),
//         PARM=('/ATENCION.AVISAR A PRODUCCION QUE PROCESO ',
//             ' ZMHLPE31 TERMINO MAL.CONTESTAR SI',
//             ' PARA TERMINAR')
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-D                 *
//****************************************************************
//PJH31P00 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXE02_IN_SEP_OK WDATE',
//         COND=(4,LT)
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//SYSUDUMP DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
//*
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-D                 *
//****************************************************************
//PJH31P0A EXEC  PGM=CTMCND,
//         PARM='ADD COND BCLLND04_BCM_SIVA_OK WDATE',
//         COND=(4,LT)
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//SYSUDUMP DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
//*
