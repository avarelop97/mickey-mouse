//ZMHLPP39 PROC
//*******************************************************************
//*   RECEPCION DE PARAMETROS
//*******************************************************************
//PHL39P04 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','&INT1','&INT2')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMHLPE39,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//*******************************************************************
//*PASO 05 SECUENCIA 02   --ZM3DG010--
//*OBJETIVO       :  GENERA CODIGO DE RETORNO DE ACUERDO A LA EMPRESA
//*                  CBP ==> RC=1 OTRA ==> RC=2
//*******************************************************************
//PHL39P03 EXEC PGM=ZM3DG010,COND=(4,LT)
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMHLPE39,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//*
//****************************************************************
//*                 SE ADICIONA CONDICION CASA                   *
//*                PARA QUE SEA TOMADA POR CTL-M                 *
//****************************************************************
// IF  PHL39P03.RC EQ 1 THEN
//PHL39P02 EXEC  PGM=CTMCND,PARM='ADD COND CBHLPZ39_IN_OK WDATE',
//         COND=(4,LT)
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00500000
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00510000
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00520000
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00530000
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00540000
//PRTDBG   DD SYSOUT=*                                                  00550000
//SYSPRINT DD DUMMY                                                     00560000
//SYSUDUMP DD DUMMY                                                     00570000
//DAPRINT  DD SYSOUT=*                                                  00580000
//DACNDIN  DD DDNAME=SYSIN                                              00590000
// ENDIF
//*
//****************************************************************
//*              SE ADICIONA CONDICION PARA BANCA                *
//*                PARA QUE SEA TOMADA POR CTL-M                 *
//****************************************************************
// IF  PHL39P03.RC EQ 2 THEN
//PHL39P01 EXEC  PGM=CTMCND,PARM='ADD COND BCHLPZ39_IN_OK WDATE',
//         COND=(4,LT)
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00500000
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00510000
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00520000
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00530000
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00540000
//PRTDBG   DD SYSOUT=*                                                  00550000
//SYSPRINT DD DUMMY                                                     00560000
//SYSUDUMP DD DUMMY                                                     00570000
//DAPRINT  DD SYSOUT=*                                                  00580000
//DACNDIN  DD DDNAME=SYSIN                                              00590000
// ENDIF
