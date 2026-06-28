//ZMHFPD56 PROC
//**********************************************************************
//*PASO        : ZMPD5610                                              *
//*PROGRAMA    : ZM3DG001                                              *
//*DESCRIPCION : RECIBE LOS PARAMETROS ENVIADOS POR EL SUBMITIDOR      *
//*              NO ACTUALIZA TABLAS.                                  *
//*REALIZO     : FABRICA DE SOFTWARE BBVA BANCOMER (XM09441)           *
//*FECHA       : 17/NOVIEMBRE/2010.                                    *
//**********************************************************************
//ZMPD5610 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','&INT1','&INT2',)
//ZMG001A1 DD DSN=MXCP.ZM.FIX.EBMC.ZMLCFI56,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(5,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//*PASO        : ZMPD5605                                              *
//*PROGRAMA    : ZM3DG001                                              *
//*DESCRIPCION : SE ADICIONA CONDICION                                 *
//*              PARA QUE SEA TOMADA POR CTL-M                         *
//**********************************************************************
//ZMPZ5605 EXEC PGM=CTMCND,PARM='ADD COND BCHFJZ56_IN_OK WDATE',
//         COND=(4,LT)
//*
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//*
//PRTDBG   DD SYSOUT=*
//SYSPRINT DD DUMMY
//SYSUDUMP DD DUMMY
//DAPRINT  DD SYSOUT=*
//DACNDIN  DD DDNAME=SYSIN
//*
//*
//*--------------------------------------------------------------------*
//*                 F I N   D E L   P R O C E S O                      *
//*--------------------------------------------------------------------*
