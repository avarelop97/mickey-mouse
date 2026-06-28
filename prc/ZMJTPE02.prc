//ZMJTPE02 PROC                                                         00010000
//*                                                                     00420002
//*-------------------------------------------------------------------- 00420002
//* PGM ZM4OJAB2                                                        00420003
//*   Y ZM4OJAB3 QUE GENERA EL REPORTE DE IMPORTES Y TITULOS DE SIVA    00420003
//*-------------------------------------------------------------------- 00420004
//*                                                                     00420002
//*********************************************************************
//* BORRA ARCHIVO PARA RECOGER VALORES DE REPORTE   *
//***************************************************
//PASO05   EXEC PGM=IDCAMS
//SYSOUT   DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJT04T02),DISP=SHR
//*                                                                     00420002
//*******************************************************************
//*        PROGRAMA: ZM3DG001                                       *
//*******************************************************************
//PASO04   EXEC PGM=ZM3DG001,COND=(4,LT),
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.TES.ECBP.SZPR.ZMJLPEA1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*                                                                     00420002
//*******************************************************************
//*        PROGRAMA: ZM4OJAB2 (COPIA ZM4OJAB3 ANTES MODIF 242 LONG) *
//*******************************************************************
//*PASO03   EXEC PGM=IKJEFT01,COND=(4,LT)
//*ZMJAB2A1 DD DSN=MXCP.ZM.FIX.TES.ECBP.SZPR.REPORT,
//*            DISP=(NEW,CATLG,DELETE),
//*            DCB=(DSORG=PS,RECFM=FB,LRECL=242,BLKSIZE=0),
//*            UNIT=3390,
//*            SPACE=(CYL,(5,10),RLSE)
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD SYSOUT=*
//*SYSUDUMP DD SYSOUT=*
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJT02T02),DISP=SHR
//*                                                                     00420002
//*******************************************************************
//*        PROGRAMA: ZM4OJAB3 (SE AMPLIA A 276 DE LONGITUD)         *
//*******************************************************************
//PASO02   EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMJAB3A1 DD DSN=MXCP.ZM.FIX.TES.ECBP.SZPR.REPAB3,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=276,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(5,10),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJT02T04),DISP=SHR
//*                                                                     00420002
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-D                 *
//****************************************************************
//PJLA7P0C EXEC  PGM=CTMCND,PARM='ADD COND CBJPNZ30_IN_OK WDATE',
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
//*
//*--------------------------------------------------------------------*
//*   PASO    :    PASO01                                              *
//*   PROGRAMA:    IOACND                                              *
//*   OBJETIVO:    ADICIONA CONDICION PARA QUE SEA TOMADA POR DATAX    *
//*--------------------------------------------------------------------*
//PASO01   EXEC PGM=IOACND,COND=(4,LT),
//         PARM='ADD COND CBXCRX_ZMJTPE0200 WDATE'
//*
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
//*
