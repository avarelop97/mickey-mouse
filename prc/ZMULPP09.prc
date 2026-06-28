//ZMULPP09 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - CASA BOLSA/BANCA PATRIMONIAL.                  *00170000
//* PROCESO      : ZMULPP09.                                           *00180000
//* PERIODICIDAD : A SOLICITUD DEL USUARIO.                            *
//* OBJETIVO     : PREPARAR LA ACTUALIZACION DESDE LINEA-ALTA DE       *00210000
//*                CONDICION AL CONTROL-M.                             *00220000
//* REALIZO      : FABRICA DE SOFTWARE CAPGEMINI.                      *
//* FECHA        : 15 DE MAYO DE 2015.                                 *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*00270001
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *00280000
//* ----------- --------- ------- ------------------------------------ *00280000
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//* PASO       : PUL09P02.                                             *
//* UTILERIA   : ZM3DG001.                                             *
//* OBJETIVO   : RECEPCION PARAMETROS SIVA.                            *
//*--------------------------------------------------------------------*
//PUL09P02 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','&INT1','&INT2')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.CONRFC.EMP.SUC.ZMULPE09,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//*--------------------------------------------------------------------*
//* PASO       : PUL09P01.                                             *
//* UTILERIA   : CTMCND.                                               *
//* OBJETIVO   : SE ADICIONA CONDICION PARA QUE SEA TOMADA POR CTL-M.  *
//*--------------------------------------------------------------------*
//PUL02P01 EXEC PGM=CTMCND,PARM='ADD COND SIVAXKFR_IN_OK WDATE',
//         COND=(4,LT)
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//SYSUDUMP DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMULPP09                        *
//*--------------------------------------------------------------------*
