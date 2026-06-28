//ZMJLPC47 PROC
//*
//*--------------------------------------------------------------------*
//* SISTEMA  : ZM - CASA DE BOLSA.                                     *00003000
//* PROCESO  : ZMJLPC47.                                               *
//* OBJETIVO : SUBMITIDOR OPC 6 REPROCESO COSTO FISCAL BP (CAPITALES)  *
//* REALIZO  : GESFOR.                                                 *
//* FECHA    : FEBRERO 2015.                                           *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*        L O G    D E   M O D I F I C A C I O N E S                  *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//* FS-0.0.0-00  XXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*                                                                    *
//*--------------------------------------------------------------------*
//*---------------------------------------------------------------------
//* PASO    : ZMPC4702                                                 *
//* PROGRAMA: ZM3DG001                                                 *
//* OBJETIVO: RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA      *
//*           EN ARCHIVO SECUENCIAL.                                   *
//*---------------------------------------------------------------------
//ZMPC4702 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//PI601765  DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMJLPC47,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE)
//*
//*---------------------------------------------------------------------
//* PASO    : ZMPC4701                                                 *
//* PROGRAMA: CTMCND                                                   *
//* OBJETIVO: SE ADICIONA CONDICION PARA QUE SEA TOMADA POR CTRL-M.    *
//*           EN ARCHIVO SECUENCIAL.                                   *
//*---------------------------------------------------------------------
//ZMPC4701 EXEC PGM=CTMCND,PARM='ADD COND CBHCND37_IN_OK WDATE',
//         COND=(4,LT)
//STEPLIB DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM  DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//        DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF  DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//*
//PRTDBG   DD SYSOUT=*
//SYSPRINT DD DUMMY
//SYSUDUMP DD DUMMY
//DAPRINT  DD SYSOUT=*
//DACNDIN  DD DDNAME=SYSIN
//*
//*--------------------------------------------------------------------*
//*                     FIN ZMJLPC47                                   *
//*--------------------------------------------------------------------*
