//ZMPROM01 PROC
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*   PASO    : ZMOM0101                                               *
//*   OBJETIVO: GENERA INFORMACION DE LOS PROMOTORES DE LA CASA        *
//*             DE BOLSA PARA PROYECTO CONFIRMACIONES                  *
//*--------------------------------------------------------------------*
//ZMOM0101 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SALAPROV DD DSN=MXCP.ZM.FIX.PROMOT.CONFIRM,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(DSORG=PS,LRECL=353,BLKSIZE=0,RECFM=FB),
//            UNIT=3390
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMOM0101),DISP=SHR
//*
//**********************************************************************
//* PASO       : ZMOM0102                                              *
//* PROGRAMA   : ZM3BTR04                                              *00007849
//* OBJETIVO   : RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS *00007850
//*              GRABA EN UN ARCHIVO SECUENCIAL.                       *00007850
//**********************************************************************00007851
//ZMOM0102 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','CBPZPR','&INT2',)
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD31,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************00007848
//* PASO       : ZMOM0103                                              *
//* PROGRAMA   : ZM3BTR04                                              *00007849
//* OBJETIVO   : SUSTITUYE LAS VARIABLES DE LAS CTC'S DINAMICAS        *00007850
//**********************************************************************00007851
//ZMOM0103 EXEC PGM=ZM3BTR04,COND=(4,LT)                                00007852
//*                                                                     00007853
//E1DQ0001 DD DUMMY                                                     00007854
//E2DQ0002 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD31,DISP=SHR       00007856
//E3DQ0003 DD DSN=ZIVA.ZME.CONTROL(ZCS01T01),DISP=SHR                   00007858
//*                                                                     00007868
//S1DQ0001 DD DSN=MXCP.ZM.TMP.E&EMP..ZCS01T01.CONTROL1,                 00007869
//            SPACE=(CYL,(100,20),RLSE),                                00007870
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00007871
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)                00007872
//*                                                                     00007873
//SYSABOUT DD  SYSOUT=*                                                 00007874
//SYSDBOUT DD  SYSOUT=*                                                 00007875
//SYSOUT   DD  SYSOUT=*                                                 00007876
//*                                                                     00007878
//*--------------------------------------------------------------------*
//* PASO    : ZMOM0104                                                 *
//* PROGRAMA: ADUUMAIN                                                 *
//* OBJETIVO: DESCARGA INFORMACION A TRAVES DE UN CURSOR A LAS TABLAS  *
//*           ORDENES, OPERA, AGPOCTA, ZMDT603, PROMOT, CONCEPT        *
//*--------------------------------------------------------------------*
//ZMOM0104 EXEC PGM=ADUUMAIN,COND=(4,LT)
//*
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR                                 00002700
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00002800
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00002900
//*                                                                     00003000
//SYSREC   DD DSN=MXCP.ZM.TMP.TICKET01,                                 00007890
//            SPACE=(CYL,(50,20),RLSE),                                 00007891
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00007892
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)                         00007872
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=MXCP.ZM.TMP.E&EMP..ZCS01T01.CONTROL1,DISP=SHR
//*                                                                     00004200
//*--------------------------------------------------------------------*
//* PASO       : ZMOM0105                                              *
//* UTILERIA   : IKJEFT1A(ZM4CRSIC)                                    *
//* OBJETIVO   : GENERA ARCHIVO DE TICKETS                             *
//*--------------------------------------------------------------------*
//ZMOM0105 EXEC PGM=IKJEFT01,PARM=(LIST,MAP),COND=(4,LT)
//ZMH012A1  DD DUMMY
//*
//TICKETS1 DD DSN=MXCP.ZM.TMP.TICKET01,DISP=SHR
//*
//TICKETSS DD DSN=MXCP.ZM.FIX.E&EMP..ZCS01T02.TICKETS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=341,BLKSIZE=0,RECFM=FB,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE)
//*
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZCS01T02),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : ZMOM0100                                               *
//*   OBJETIVO: VALIDA HORARIO DE CIERRE DE OPERACION PARA EJECUTAR    *
//*             EL RESTO DE PASOS                                      *
//*--------------------------------------------------------------------*
//ZMOM0100 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMOM0100),DISP=SHR
//*
// IF ZMOM0100.RC EQ 00 THEN
//*--------------------------------------------------------------------*
//* PASO       : ZMOM0106                                              *
//* OBJETIVO   : PRENDE CONDICION PARA EJECUTAR TRANSMISION            *
//*--------------------------------------------------------------------*
//ZMOM0106 EXEC PGM=CTMCND,PARM='ADD COND CBPROM01_TK1_OK WDATE',       00395100
//         COND=(4,LT)                                                  00395200
//*                                                                     00395300
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00395400
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00395500
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00395600
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00395700
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00395800
//PRTDBG   DD SYSOUT=*                                                  00395900
//SYSPRINT DD DUMMY                                                     00396000
//SYSUDUMP DD DUMMY                                                     00396100
//DAPRINT  DD SYSOUT=*                                                  00396200
//DACNDIN  DD DDNAME=SYSIN                                              00396300
//*
// ENDIF
