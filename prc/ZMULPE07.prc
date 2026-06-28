//ZMULPE07 PROC
//*--------------------------------------------------------------------*
//*                                                                    *
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<  C O N T R A T O S  >>                      *
//*                                                                    *
//*   APLICACION       : SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *
//*                                                                    *
//*   PROCEDIMIENTO    : ZMULPE07                                      *
//*                                                                    *
//*   OBJETIVO         : REPORTE DE CONTRATOS CON CANDADO Y DESCRIPCION*
//*                      ( OPCION 241 )                                *
//*                                                                    *
//*   CORRE ANTES DE   : NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE : NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD     : CORRE A SOLICITUD DEL USUARIO                 *
//*                                                                    *
//*   FECHA            : JUNIO 24, 2003                                *
//*                                                                    *
//*   AUTOR            : GETRONICS - MEXICO                            *
//*                                                                    *
//*--------------------------------------------------------------------*
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO   *
//*--------------------------------------------------------------------*
//PUL07P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.CON.E&EMP..S&SUC..ZMULPE07,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//*--------------------------------------------------------------------*
//* PROGRAMA: ZM4DG629                                                 *
//* FUNCION:  REPORTE DE CONTRATOS CON CANDADO Y DESCRIPCIONES         *
//*--------------------------------------------------------------------*
//PUL07P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMG629A1 DD DSN=MXCP.ZM.TMP.CON.E&EMP..S&SUC..ZMULPE07,DISP=SHR
//*
//ZMG629R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUL07T01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*            CONDICION PARA SER TOMADA POR CONTROL-D                 *
//*--------------------------------------------------------------------*
//PUL07P00 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXCAN_IN_SEP_OK WDATE',
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
//
//**********************************************************************
//*        TERMINA PROCESO ZMULPE07 SIVA MULTIEMPRESA                  *
//**********************************************************************
