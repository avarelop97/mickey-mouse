//ZMULPE48 PROC
//**********************************************************************
//* SISTEMA:    SISTEMA INTEGRAL DE VALORES (S.I.V.A.)                 *
//* PROCESO:    ZMULPE48   (DISPARADOR)                                *
//*             ZMULPE48   PROCEDIMIENTO                               *
//* OBJETIVO:   DAR DE ALTA LA CONDICION PARA ARRANCAR REPROCESO       *
//*             DE POLIZAS ANTERIORES                                  *
//* CORRE                                                              *
//* ANTES DE:   NINGUNO                                                *
//* DESPUES DE: NINGUNO                                                *
//* REALIZO:    IDANFQ                                                 *
//* FECHA:      MAYO DE 2007                                           *
//* MODIFCO:    IDCJSL (JOSE OSCAR SEGURA PEREZ)                       *
//* FECHA:      JUNIO DE 2008                                          *
//**********************************************************************
//*    RECIBE LOS PARAMETROS A PROCESAR Y LOS GRABA EN ARCHIVO         *
//**********************************************************************
//PUL48P04 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2')
//ZMG001A1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMULPE48,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(5,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//**********************************************************************
//* OBJETIVO : ACTIVA LA CONDICION EN CONTROLM QUE TERMINO             *
//*            ASIGNACION PREVIA.                                      *
//* PROGRAMA : ZM4CI480 EIBM44D                                        *
//**********************************************************************
//PUL48P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMULPE48,DISP=SHR
//EIBM44R1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMULPE48.SALIDA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=133,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSPRINT DD DUMMY
//SYSTSIN  DD DISP=SHR,DSN=ZIVA.ZME.CONTROL(PUL48P03)
//*
//****************************************************************
//* PROGRAMA:                                                    *
//* FUNCION:  COPIA DEL ARCHIVO DE MOVIMIENTOS A CTROL-D         *
//****************************************************************
//PUL48P02 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMULPE48.SALIDA,
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
//PUL48P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXRP4_IN_OK WDATE',
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
//**********************************************************************
//*        TERMINA PROCESO ZMULPE48 SIVA MULTIEMPRESA                  *
//**********************************************************************
