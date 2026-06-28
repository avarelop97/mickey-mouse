//ZMULPE50 PROC
//**********************************************************************
//* SISTEMA:    SISTEMA INTEGRAL DE VALORES (S.I.V.A.)                 *
//* PROCESO:    ZMULPE50   (DISPARADOR)                                *
//*             ZMULPE50   PROCEDIMIENTO                               *
//* OBJETIVO:   DAR DE ALTA LA CONDICION PARA ARRANCAR REPROCESO       *
//*             DE POLIZAS ANTERIORES                                  *
//* CORRE                                                              *
//* ANTES DE:   NINGUNO                                                *
//* DESPUES DE: NINGUNO                                                *
//* REALIZO:    IDANFQ                                                 *
//* FECHA:      MAYO DE 2007                                           *
//**********************************************************************
//*    RECIBE LOS PARAMETROS A PROCESAR Y LOS GRABA EN ARCHIVO         *
//**********************************************************************
//PUL50P04 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2')
//ZMG001A1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMULPE50,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(LRECL=96,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(2,1),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//**********************************************************************
//*   REPORTE DE MATRIZ CONTABLE                                       *
//*   PROGRAMA ZM4CGI50 EIBM46D                                        *
//**********************************************************************
//PUL50P03  EXEC PGM=IKJEFT01,COND=(4,LE)
//*
//EIBM46A1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMULPE50,DISP=SHR
//EIBM46R1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMULPE50.SALIDA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(LRECL=133,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(10,5),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PUL50P03),DISP=SHR
//****************************************************************
//* PROGRAMA:                                                    *
//* FUNCION:  COPIA DEL ARCHIVO DE MOVIMIENTOS A CTROL-D         *
//****************************************************************
//PUL50P02 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMULPE50.SALIDA,
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
//PUL50P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXRP6_IN_OK WDATE',
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
//*        TERMINA PROCESO ZMULPE50 SIVA MULTIEMPRESA            *
//****************************************************************
