//ZMULPE46 PROC
//**********************************************************************
//*                                                                    *
//*                  SISTEMA ENLACE CONTABLE                           *
//*                  MARZO  2007                                       *
//*                                                                    *
//**********************************************************************
//*
//**********************************************************************
//*  RECEPCION DE PARAMETROS DE EJECUCION DE CSP DE REP CTA CONCENTRA. *
//**********************************************************************
//PUL46P04 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMULPE46,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(LRECL=96,RECFM=FB,BLKSIZE=0,DSORG=PS),
//           UNIT=3390,
//           SPACE=(CYL,(2,1),RLSE)
//*
//*******************************************************************
//*   REPORTE DE CUENTAS CONCENTRADORAS Y BANCOS
//*   PROGRAMA ZM4CGI46 EIBM42D
//*******************************************************************
//PUL46P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//EIBM42A1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMULPE46,DISP=SHR
//EIBM42R1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMULPE46.SALIDA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(LRECL=133,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(10,5),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PUL46P03),DISP=SHR
//****************************************************************
//* PROGRAMA:                                                    *
//* FUNCION:  COPIA DEL ARCHIVO DE MOVIMIENTOS A CTROL-D         *
//****************************************************************
//PUL46P02 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMULPE46.SALIDA,
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
//PUL46P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXRP2_IN_OK WDATE',
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
//*        TERMINA PROCESO ZMULPE46 SIVA MULTIEMPRESA            *
//****************************************************************
