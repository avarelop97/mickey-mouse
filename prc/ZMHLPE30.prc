//ZMHLPE30 PROC
//*====================================================================
//*                                            P R E L I M I N A R
//*   RECIBE LOS PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN ARCHIVO
//*   PROCESO PRELIINAR PAGO DE DERECHOS OPC 802
//*====================================================================
//*   SE CAMBIA CONDICION DE MISION DE SEPARACION PARA COTRL 'D'
//*====================================================================
//**********************************************************************
//*   PROGRAMA ZM3DG001 GENERA ARCHIVO PARA PASO DE PARAMETROS
//**********************************************************************
//PJH30P03 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE30,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//           UNIT=3390,
//           SPACE=(CYL,(2,1),RLSE)
//*-------------------------------------------------------------------
//* EJECUCION DE PRELIMINAR DE EJERCICIO DE DERECHOS DE RENTA VARIABLE
//* ZM4EH981 VALORES MARZO 1990 - MARZO 2003
//********************************************************************
//PJH30P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZMH981A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE30,DISP=SHR
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL30T01),DISP=SHR
//*--------------------------------------------------------------------
//*        AVISO EN CASO DE ERROR A LA CONSOLA
//*--------------------------------------------------------------------
//PJH30P01 EXEC PGM=MAILOPER,COND=(4,GE,PJH30P02),
//         PARM=('/ATENCION.AVISAR A SOPROD     QUE PROCESO ',
//             ' ZMHLPE30 TERMINO MAL.CONTESTAR SI',
//             ' PARA TERMINAR')
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-D                 *
//****************************************************************
//PJH30P00 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXE01_IN_SEP_OK WDATE',
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
