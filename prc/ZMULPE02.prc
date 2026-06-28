//ZMULPE02 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                         <<< CONTRATOS >>>                          *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMULPE02                                            *
//*                                                                    *
//*   OBJETIVO  :  REPORTE DE CONTRATOS CON DOCUMENTACION INCOMPLETA   *
//*                                         (OPCION: 487)              *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//**********************************************************************
//* OBJETIVO:   BORRA PREVIAMENTE LOS ARCHIVOS A GENERAR
//**********************************************************************
//PUL02P05 EXEC PGM=IEFBR14
//*
//ARCHSAL  DD DSN=MXCP.ZM.TMP.CON.E&EMP..S&SUC..ZMULPE02,
//            DISP=(,DELETE,DELETE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//*    RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA EN ARCHIVO
//**********************************************************************
//PUL02P04 EXEC PGM=ZM3DG001,COND=(4,LT),
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.CON.E&EMP..S&SUC..ZMULPE02,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************
//*                    ZM4EU631
//*          CONTRATOS CON DOCUMENTACION INCOMPLETA
//**********************************************************************
//PUL02P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMU631A1 DD DSN=MXCP.ZM.TMP.CON.E&EMP..S&SUC..ZMULPE02,
//            DISP=(OLD,PASS)
//ZMU631R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUL02T01),DISP=SHR
//*
//*********************************************************************
//*        AVISO EN CASO DE ERROR A LA CONSOLA
//*********************************************************************
//PUL02P02 EXEC PGM=MAILOPER,COND=(4,GE,PUL02P03),
//         PARM=('/ATENCION OPERADOR.AVISAR A PRODUCCION QUE',
//         ' PROCESO SIVAXDOC TERMINO MAL.CONTESTAR SI',
//         ' PARA TERMINAR')
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-D                 *
//****************************************************************
//PUL02P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXDOC_IN_SEP_OK WDATE',
//         COND=(4,LT)
//*
//STEPLIB  DD   DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//*
//PRTDBG   DD SYSOUT=*
//SYSPRINT DD DUMMY
//SYSUDUMP DD DUMMY
//DAPRINT  DD SYSOUT=*
//DACNDIN  DD DDNAME=SYSIN
