//ZMHLPE25 PROC
//**********************************************************************
//*                                                                    *
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<  MERCADO DE VALORES >>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIMI.:  ZMHLPE25                                            *
//*                                                                    *
//*   OBJETIVO  :  REPORTE DE VALORES DISPONIBLES DE VENTAS EN CORTO   *
//*                (OPCION 972)                                        *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *
//*                                                                    *
//*   FECHA     :  FEBRERO 21, 2003                                    *
//*                                                                    *
//*   AUTOR     :  (HPI) GUADALUPE OROZCO OROZCO                       *
//*                                                                    *
//**********************************************************************
//**GGGGGGGGGGG*********************************************************
//**********************************************************************
//*                                                                    *
//**********************************************************************
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO
//**********************************************************************
//PHL25P04 EXEC PGM=ZM3DG001,REGION=0M,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE25,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************
//* PROGRAMA: ZM4EGJ68                                                 *
//* FUNCION:  REPORTE VALORES DISPONIBLES DE VENTAS EN CORTO           *
//**********************************************************************
//PHL25P03 EXEC PGM=IKJEFT01,COND=(4,LT),REGION=0M
//PI601765 DD DUMMY
//ZMGJ68A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE25,
//            DISP=SHR
//ZMGJ68R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL25T01),DISP=SHR
//*
//****************************************************************
//*        AVISO EN CASO DE ERROR A LA CONSOLA
//****************************************************************
//PHL25P02 EXEC PGM=MAILOPER,COND=(4,GE,PHL25P03),
//         PARM=('/ATENCION.AVISAR A SOPROD QUE PROCESO ',
//             'SIVAXVDP(ZMHLPE25)TERMINO MAL.CONTESTAR SI',
//             'PARA TERMINAR')
//*
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-D                 *
//****************************************************************
//PHL25P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXVDP_IN_SEP_OK WDATE',
//         COND=(4,LT)
//STEPLIB  DD   DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD   SYSOUT=*
//SYSPRINT DD   DUMMY
//SYSUDUMP DD   DUMMY
//DAPRINT  DD   SYSOUT=*
//DACNDIN  DD   DDNAME=SYSIN
//*
