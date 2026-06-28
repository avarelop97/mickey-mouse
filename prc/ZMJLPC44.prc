//ZMJLPC44 PROC
//*--------------------------------------------------------------------*
//* SISTEMA  : ZM - CASA DE BOLSA.                                     *00003000
//* PROCESO  : ZMJLPC44.                                               *
//* OBJETIVO : SUBMITIDOR DE OPCION 4 DE REPROCESO FISCAL (SOCIEDADES).*
//* REALIZO  : SOFTTEK(ERDD1).                                         *
//* FECHA    : MAYO DE 2014.                                           *
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
//* PASO    : ZMPC4402                                                 *
//* PROGRAMA: ZM3DG001                                                 *
//* OBJETIVO: RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA      *
//*           EN ARCHIVO SECUENCIAL.                                   *
//*---------------------------------------------------------------------
//ZMPC4402 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMJLPC44,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*---------------------------------------------------------------------
//* PASO    : ZMPC4401                                                 *
//* PROGRAMA: CTMCND                                                   *
//* OBJETIVO: SE ADICIONA CONDICION PARA QUE SEA TOMADA POR CTRL-M.    *
//*           EN ARCHIVO SECUENCIAL.                                   *
//*---------------------------------------------------------------------
//ZMPC4401 EXEC PGM=CTMCND,PARM='ADD COND SIVAXC50_IN_OK WDATE',
//         COND=(4,LT)
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
//*--------------------------------------------------------------------*
//*                     FIN PRC                                        *
//*--------------------------------------------------------------------*
