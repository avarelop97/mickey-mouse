//BCPMEP01  PROC                                                        00010000
//**********************************************************************00020000
//*--------------------------------------------------------------------*00030000
//* SISTEMA  : ZM CASA DE BOLSA                                        *00040000
//* PROYECTO : SAT 2010  MEJORAS AL SISTEMA MUV/SIVA                   *00050000
//* PROCESO  : BCPMEP01.                                               *00060000
//* OBJETIVO : CREA ARCHIVO MAESTRO DE PERSONAS, CUENTAS DE EFECTIVO   *00070000
//*            Y CUENTAS DE PLAZOS.                                    *00080000
//* REALIZO  : FABRICA DE SOFTWARE BBVA BANCOMER (XM09412).            *00090000
//* FECHA    : 16/MARZO/2011                                           *00100000
//*--------------------------------------------------------------------*00111000
//*                  LOG DE MODIFICACIONES                             *00112000
//*--------------------------------------------------------------------*00113000
//* MARCA   AUTOR   FECHA      DESCRIPCION                             *00114000
//* ------- ------- ---------- ----------------------------------------*00115000
//*  SWF@01  XM09412 20112303 -SE AGREGA UN SEGUNDO ARCHIVO DE SALIDA  *00115100
//*                            SE MODIFICA EL NOMBRE DEL ARCHIVO SALIDA*00115200
//**********************************************************************00116000
//*--------------------------------------------------------------------*00651000
//*PASO         : ZMPMEP95                                             *00652000
//*PASO         : ZMPMEP02                                             *00652100
//*PROGRAMA     : IKJEFT01                                             *00653000
//*DESCRIPCION  : GENERACION ARCHIVO MAESTRO DE PERSONAS, CUENTAS DE   *00654000
//*               EFECTIVO Y CUENTAS DE PLAZOS.                        *00655000
//**********************************************************************00656000
//*KAR-ZMPMEP95 EXEC PGM=IKJEFT01                                       00660000
//ZMPMEP02 EXEC PGM=IKJEFT01                                            00670000
//ENTRADA  DD DSN=MXCP.ZM.FIX.CON.AMCP,                                 00671200
//            DISP=SHR                                                  00671400
//*SWF@01-INI                                                           00671500
//*SALIDA   DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ZM4MEPJ1.PRO1013,             00671600
//SALIDA   DD DSN=MXCP.ZM.FIX.ENT.PROD1013,                             00671700
//*SWF@01-FIN                                                           00671800
//            DISP=(NEW,CATLG,DELETE),                                  00671900
//            SPACE=(CYL,(20,10),RLSE),                                 00672000
//            DCB=(DSORG=PS,RECFM=FB,LRECL=18,BLKSIZE=0),               00672100
//            UNIT=3390                                                 00672200
//*SWF@01-INI                                                           00672300
//SALIDA2  DD DSN=MXCP.ZM.FIX.REL.AMCP,                                 00672400
//            DISP=(NEW,CATLG,DELETE),                                  00672500
//            SPACE=(CYL,(20,10),RLSE),                                 00672600
//            DCB=(DSORG=PS,RECFM=FB,LRECL=512,BLKSIZE=0),              00672700
//            UNIT=3390                                                 00672800
//*SWF@01-FIN                                                           00672900
//SYSTSPRT DD SYSOUT=*                                                  00680000
//SYSPRINT DD SYSOUT=*                                                  00690000
//SYSOUT   DD SYSOUT=*                                                  00700000
//SYSDBOUT DD SYSOUT=*                                                  00710000
//SYSABOUT DD SYSOUT=*                                                  00720000
//SYSUDUMP DD DUMMY                                                     00730000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPMEP95),DISP=SHR                   00740000
//*                                                                     00750000
//********************************************************************* 00750100
//*   PROGRAMA:    IOACND                                             * 00750200
//*   OBJETIVO:    ADICIONA CONDICION PARA QUE SEA TOMADA POR PU Y SE * 00750300
//*                EJECUTE AUTOMATICAMENTE EL PROCESO AJJCPEJ1.       * 00750400
//********************************************************************* 00750500
//ZMPMEP01 EXEC PGM=IOACND,PARM='ADD COND BCJMEP01_OK_PR WDATE',        00750600
//         COND=(4,LT)                                                  00750700
//         INCLUDE MEMBER=IOASET                                        00750801
//         INCLUDE MEMBER=IOAENV                                        00750901
//SYSIN    DD DUMMY                                                     00751001
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG                  00752001
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES                  00753001
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD                  00754001
//PRTDBG   DD  SYSOUT=*                                                 00755001
//SYSPRINT DD  DUMMY                                                    00756001
//DAPRINT  DD  SYSOUT=*                                                 00757001
//DACNDIN  DD  DDNAME=SYSIN                                             00758001
//*                                                                     00759001
