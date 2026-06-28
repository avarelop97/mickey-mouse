//ZMLCPZ16 PROC
//*
//*--------------------------------------------------------------------*
//*                                                                    *
//* APLICACION       : ZM - MODULO DE SIVA MULTI EMPRESA ALTAMIRIZADO  *
//*                                                                    *
//* NOMBRE DEL PROC  : ZMLCPZ16                                        *
//*                                                                    *
//* NOMBRE DEL JCL   :                                                 *
//*                                                                    *
//* OBJETIVO         : ADICIONA CONDICION EN CONTROL M PARA EJECUTAR   *
//*                    PROCESO CBLCCD16.                               *
//*                                                                    *
//* FECHA DE CREACION: 09 DE OCTUBRE DE 2012.                          *
//*                                                                    *
//* TIPO             : HJ1 - PROCLIB.                                  *
//*                                                                    *
//* &AMB             : PREFIJO DEL ENTORNO DE EJECUCION.               *
//*                                                                    *
//* &FECHA           : FECHA DE PROCESAMIENTO DEL ENTORNO (AAMMDD).    *
//*                                                                    *
//* AUTOR            : FABRICA DE SW INDRA / XM02880.                  *
//*                                                                    *
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//*             L O G   D E    M O D I F I C A C I O N E S             *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA   DESCRIPCION                         *
//* -----------  -------  -------  ----------------------------------- *
//* FS-1.0.0-01  XXXXXXX  DDMMMAA  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//* PASO    : PLZ16P02                                                 *
//* PROGRAMA: ZM3DG001                                                 *
//* OBJETIVO: RECIBE PARAMETROS EN ARCHIVO.                            *
//*--------------------------------------------------------------------*
//*
//PLZ16P02 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','&INT1','&INT2')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMLCPZ16,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0)
//*
//*--------------------------------------------------------------------*
//* PASO    : PLZ16P01                                                 *
//* PROGRAMA: CTMCND                                                   *
//* OBJETIVO: SE ADICIONA CONDICION PARA CONTROL - M                   *
//*--------------------------------------------------------------------*
//*
//PLZ16P01 EXEC PGM=CTMCND,PARM='ADD COND SIVAXCOA_IN_OK WDATE',
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
//*                       FIN DEL PROC ZMLCPZ16                        *
//*--------------------------------------------------------------------*
