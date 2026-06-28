//ZMJDPP11 PROC EMP=CBP,SUC=ZPR,INT1=,INT2=
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SOCIEDADES DE INVERSION                          *
//*                                                                    *
//* PROCESO        :  SIVAXRTE   (DISPARADOR)                          *
//*                   ZMJDPE11   PROCEDIMIENTO                         *
//*                                                                    *
//* OBJETIVO       :  IMPRESION DE REPORTE DE TENENCIA EXCEDIDA        *
//*                   SOLICITADOS POR EL USUARIO.                      *
//*                                                                    *
//* REALIZO        :  GESFOR  S.A. DE C.V.                             *
//*                                                                    *
//* OBSERVACIONES  :  ESTE PROCESO NO ACTUALIZA NINGUNA TABLA EXCEPTO  *
//*                   A PARAM EN EL ULTIMO PASO                        *
//*                                                                    *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//**********************************************************************
//*
//**********************************************************************
//* PROGRAMA: ZM3DG001
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO
//*           PARA SIGUIENTES PASOS
//*                        RECIBE PARAMETROS
//**********************************************************************
//PJD11P04 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.SIN.ECBP.ZMJDPE11,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//**********************************************************************
//*                SE ADICIONA CONDICION                               *
//*                PARA QUE SEA TOMADA POR CTL-M                       *
//**********************************************************************
//PJD11P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXRTE_IN_OK WDATE',
//         COND=(4,LT)
//STEPLIB   DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM    DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//          DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG     DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG    DD SYSOUT=*
//SYSPRINT  DD DUMMY
//SYSUDUMP  DD DUMMY
//DAPRINT   DD SYSOUT=*
//DACNDIN   DD DDNAME=SYSIN
//*
//**********************************************************************
//*               FIN DEL PROCEDIMIENTO ZMJDPP11                       *
//**********************************************************************
