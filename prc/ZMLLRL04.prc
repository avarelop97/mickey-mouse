//ZMLLRL04 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - MODULO DE SIVA MULTI EMPRESA ALTAMIRIZADO.     *
//* PROCESO      : ZMLLRL04.                                           *
//* PERIODICIDAD : A PETICION DE USUARIO POR OPCION EN TRX ZC61.       *
//* OBJETIVO     : GENERA CONDICION PARA EJECUCION DEL REPORTE DE      *
//*                EFECTIVOS GLOBALES OPCION 751.                      *
//* REALIZO      : XMBB157 - CARLOS GLZ.                               *
//* FECHA        : 23 DE AGOSTO DEL 2018.                              *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*                               XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//* PASO       : ZMRL0415                                              *
//* UTILERIA   : ZM3DG001                                              *
//* OBJETIVO   : GENERA ARCHIVO DE PARAMETROS.                         *
//*--------------------------------------------------------------------*
//ZMRL0415 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.ZMLLRL04.PARMS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE)
//*
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMRL0410                                              *
//* UTILERIA   : CTMCND                                                *
//* OBJETIVO   : GENERA CONDICION PARA EL REPORTE DE EFECTIVOS GLOBALES*
//*--------------------------------------------------------------------*
//ZMRL0410 EXEC PGM=CTMCND,
//         PARM='ADD COND BCLLND38_BCM_SIVA_OK WDATE',COND=(4,LT)
//*
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//*
//PRTDBG   DD SYSOUT=Z
//SYSPRINT DD DUMMY
//SYSUDUMP DD DUMMY
//DAPRINT  DD SYSOUT=Z
//DACNDIN  DD DDNAME=SYSIN
//*
//*--------------------------------------------------------------------*
//*                     FIN DEL PROCESO ZMLLRL04                       *
//*--------------------------------------------------------------------*
