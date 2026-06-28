//ZMHFPP55 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : PROTOCOLO FINANCIERO PLUS.                          *
//* PROCESO      : ZMHFPP55.                                           *
//* PERIODICIDAD : DIARIA.                                             *
//* OBJETIVO     : ADICIONA CONDICION EN CONTROL M PARA EJECUTAR       *
//*                PROCESO CBHFND56.                                   *
//* REALIZO      : FABRICA DE SOFTWARE CAPGEMINI.                      *
//* FECHA        : 03 DE JULIO DE 2013.                                *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO       : PHF55P02.                                             *
//* UTILERIA   : ZM3DG001.                                             *
//* OBJETIVO   : RECIBE PARAMETROS EN ARCHIVO.                         *
//*--------------------------------------------------------------------*
//*
//PHF55P02 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','&INT1','&INT2')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..ZMHFPD55,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//*--------------------------------------------------------------------*
//* PASO       : PHF55P01.                                             *
//* UTILERIA   : CTMCND.                                               *
//* OBJETIVO   : SE ADICIONA CONDICION PARA CONTROL - M.               *
//*--------------------------------------------------------------------*
//*
//PHF55P01 EXEC PGM=CTMCND,PARM='ADD COND SIVAXPA5_IN_OK WDATE',
//         COND=(4,LT)
//*
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//*
//PRTDBG   DD  SYSOUT=*
//DAPRINT  DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//SYSUDUMP DD  DUMMY
//*
//*--------------------------------------------------------------------*
//*                 FIN DEL PROCESO ZMHFPP55                           *
//*--------------------------------------------------------------------*
