//ZMUDPV03 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM                                                  *
//* PROCESO      : ZMUDPV03.                                           *
//* OBJETIVO     : PRACTICAS DE VENTA DE CASA DE BOLSA ODT16           *
//* REALIZO      : FABRICA DE SOFTWARE DGCM.                           *
//* FECHA        : 22 DE AGOSTO DE 2014.                               *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO       : ZMUF99P9.                                             *
//* UTILERIA   : ZM3DG001                                              *
//* OBJETIVO   : SE CREA ARCHIVO.                                      *
//*--------------------------------------------------------------------*
//ZMUF99P9 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.E&EMP..S&SUC..ZMUSPV02,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(RECFM=FB,LRECL=096,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*                                                  00370007
//SYSOUT   DD SYSOUT=*                                                  00370008
//SYSDBOUT DD SYSOUT=*                                                  00370009
//SYSABOUT DD DUMMY                                                     00370010
//SYSUDUMP DD DUMMY                                                     00370020
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMUF99P8.                                             *
//* UTILERIA   : CTMCND                                                *
//* OBJETIVO   : ADICIONA CONDICION PARA QUE SE DISPARE EL PROCESO     *
//*              BCUDPV02 PARA GENERAR REPORTE CLIENTES PDV            *
//*--------------------------------------------------------------------*
//ZMUF99P8 EXEC PGM=CTMCND,PARM='ADD COND CBUDPV02_OK WDATE',
//         COND=(4,LT)
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
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMUDPV03                        *
//*--------------------------------------------------------------------*
