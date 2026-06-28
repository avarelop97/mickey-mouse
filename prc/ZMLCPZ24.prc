//ZMLCPZ24 PROC
//*
//*--------------------------------------------------------------------*
//*                                                                    *
//* APLICACION       : ZM - MODULO DE SIVA MULTI EMPRESA ALTAMIRIZADO  *
//*                                                                    *
//* NOMBRE DEL PROC  : ZMLCPZ24                                        *
//*                                                                    *
//* NOMBRE DEL JCL   : SIVAXPA1                                        *
//*                                                                    *
//* OBJETIVO         : ADICIONA CONDICION EN CONTROL M PARA EJECUTAR   *
//*                    PROCESO CBLCCD24.                               *
//*                                                                    *
//* FECHA DE CREACION: ABRIL DEL 2013.                                 *
//*                                                                    *
//* TIPO             : HJ1 - PROCLIB.                                  *
//*                                                                    *
//* &AMB             : PREFIJO DEL ENTORNO DE EJECUCION.               *
//*                                                                    *
//* &FECHA           : FECHA DE PROCESAMIENTO DEL ENTORNO (AAMMDD).    *
//*                                                                    *
//* AUTOR            : FSW-TECNOCOM.                                   *
//*                                                                    *
//**********************************************************************
//* PASO    : PLZ23P02                                                 *
//* PROGRAMA: ZM3DG001                                                 *
//* OBJETIVO: RECIBE PARAMETROS EN ARCHIVO.                            *
//**********************************************************************
//*
//PLZ24P02 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','&INT1','&INT2')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..ZMLCPZ24,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0)
//*
//**********************************************************************
//* PROGRAMA: CTMCND                                                   *
//* OBJETIVO: SE ADICIONA CONDICION PARA CONTROL - M                   *
//*--------------------------------------------------------------------*
//*
//PLZ24P01 EXEC PGM=CTMCND,PARM='ADD COND SIVAXPA1_IN_OK WDATE',
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
//*                       FIN DEL PROC ZMLCPZ24                        *
//*--------------------------------------------------------------------*
