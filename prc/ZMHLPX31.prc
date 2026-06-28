//ZMHLPX31 PROC EMP=,SUC=,INT2=,INT1=
//*
//*******************************************************************
//*   RECEPCION DE PARAMETROS
//*******************************************************************
//PHL31P04 EXEC PGM=ZM3DG001,COND=(4,LT),
//         PARM=('&EMP','&SUC','&INT1','&INT2')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..P&INT2..ZMHLPE31,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//*******************************************************************
//*PASO 05 SECUENCIA 02   --ZM3DG010--
//*OBJETIVO       :  GENERA CODIGO DE RETORNO DE ACUERDO A LA EMPRESA
//*                  CBP ==> RC=1 OTRA ==> RC=2
//*******************************************************************
//PHL31P03 EXEC PGM=ZM3DG010,COND=(4,LT)
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..P&INT2..ZMHLPE31,
//            DISP=SHR
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
// IF  PHL31P03.RC EQ 1 THEN
//PHL31P02 EXEC  PGM=CTMCND,COND=(4,LT),
//         PARM='ADD COND CBHLP&INT2_IN_OK WDATE'
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//SYSUDUMP DD  DUMMY
//DAPRINT  DD  SYSOUT=*
// ENDIF
//*
//****************************************************************
//*              SE ADICIONA CONDICION PARA BANCA                *
//*                PARA QUE SEA TOMADA POR CTL-M                 *
//****************************************************************
// IF  PHL31P03.RC EQ 2 THEN
//PHL31P01 EXEC  PGM=CTMCND,COND=(4,LT),
//         PARM='ADD COND BCHLP&INT2_IN_OK WDATE'
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//SYSUDUMP DD  DUMMY
//DAPRINT  DD  SYSOUT=*
// ENDIF
//*
//****************************************************************
//*                         TERMINA ZMHLPX31                     *
//****************************************************************
