//ZMJLCD20 PROC
//*
//*--------------------------------------------------------------------*
//*                                                                    *
//* APLICACION       : ZM - MODULO DE SIVA MULTI EMPRESA ALTAMIRIZADO  *
//*                                                                    *
//* NOMBRE DEL PROC  : ZMJLCD20                                        *
//*                                                                    *
//* NOMBRE DEL JCL   : CBJLCD20                                        *
//*                                                                    *
//* OBJETIVO         : ADICIONA CONDICION EN CONTROL 'M' PARA SUBMITIR *
//*                    PROCESO CBLCCD20.                               *
//*                                                                    *
//* FECHA DE CREACION: 01 DE OCTUBRE DE 2012.                          *
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
//* PASO    : PLZ18P01                                                 *
//* PROGRAMA: CTMCND                                                   *
//* OBJETIVO: ADICIONA CONDICION PARA EJECUCION DEL PROCESO CBLCCD20.  *
//*--------------------------------------------------------------------*
//*
//PLZ18P01 EXEC  PGM=CTMCND,PARM='ADD COND CBJLCD20_IN_OK WDATE',
//         COND=(4,LT)
//*
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//SYSUDUMP DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD DDNAME=SYSIN
//*
//*--------------------------------------------------------------------*
//*                       FIN DEL PROC ZMJLCD20                        *
//*--------------------------------------------------------------------*
