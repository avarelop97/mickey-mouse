//ZMULPE45 PROC
//*--------------------------------------------------------------------*
//*                  SISTEMA ENLACE CONTABLE                           *
//*--------------------------------------------------------------------*
//* RECEPCION DE PARAMETROS DE EJECUCION DE CSP                        *
//*--------------------------------------------------------------------*
//PUL45P04 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2')
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMULPE45,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=96,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*--------------------------------------------------------------------*
//*   REPORTE DE MATRIZ CONTABLE ZM4CGI45 EIBM19D
//*--------------------------------------------------------------------*
//PUL45P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//EIBM19A2 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMULPE45,DISP=SHR
//EIBM19R2 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMULPE45.SALIDA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(LRECL=133,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(2,1),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PUL45P03),DISP=SHR
//****************************************************************
//* PROGRAMA:                                                    *
//* FUNCION:  COPIA DEL ARCHIVO DE MOVIMIENTOS A CTROL-D         *
//****************************************************************
//PUL45P02 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMULPE45.SALIDA,
//            DISP=SHR
//*
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-D                 *
//****************************************************************
//PUL45P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXSUB_IN_OK WDATE',
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
//****************************************************************
//*        TERMINA PROCESO ZMULPE45 SIVA MULTIEMPRESA            *
//****************************************************************
