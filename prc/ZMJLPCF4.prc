//ZMJLPCF4 PROC
//*--------------------------------------------------------------------*
//* SISTEMA  : ZM - CASA DE BOLSA.                                     *00003000
//* PROCESO  : ZMJLPCF4.                                               *
//* OBJETIVO : SUBMITIDOR DE OPCION 1 DE REPROCESOS SELLOS FISCALES    *
//*                                                                    *
//* REALIZO  : OOM                                                     *
//* FECHA    : 18-04-2017.                                             *
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
//* PASO    : ZMPCF402                                                 *
//* PROGRAMA: ZM3DG001                                                 *
//* OBJETIVO: RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA      *
//*           EN ARCHIVO SECUENCIAL.                                   *
//*---------------------------------------------------------------------
//ZMPCF402 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMJLPCF4,
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
//* PASO    : ZMPCF401                                                 *
//* PROGRAMA: ZM3DG001                                                 *
//* OBJETIVO: SE ADICIONA CONDICION PARA QUE SEA TOMADA POR CTRL-M     *
//*           PARA EL PROCESO CBJLPCF4.                                *
//*---------------------------------------------------------------------
//ZMPCF401 EXEC PGM=CTMCND,PARM='ADD COND SIVAXCF4_IN_OK WDATE',
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
