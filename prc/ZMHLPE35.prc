//ZMHLPE35 PROC
//*
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                    <<     V A L O R E S    >>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMHLPE35                                            *
//*                                                                    *
//*   OBJETIVO  :  RELACION DEFINITIVA DE ACCIONISTAS PARA ASISTENCIA  *
//*                A ASAMBLEA                                          *
//*                                                                    *
//*   CORRE DESPUES DE: SUBMITIDO POR OPC 833                          *
//*                                                                    *
//*   PERIODICIDAD    : A PETICION DEL USUARIO                         *
//*                                                                    *
//*   ELABORADO POR: DAVID GUTIERREZ CASILLAS     ASATECK.             *
//*                                                                    *
//*   FECHA:  MARZO DE 2003.                                           *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//**********************************************************************
//*                                                                    *
//*  PASO:  3     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*
//*  PHL34P03     GRABA EN ARCHIVO SECUENCIAL.                         *
//*                                                         ZM3DG001   *
//**********************************************************************
//PHL34P03 EXEC PGM=ZM3DG001,REGION=0M,
//         PARM=('&EMP','&SUC','&INT1','&INT2')
//*
//PI601765  DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..ZMHLPE35,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************
//*  PASO:  2     REPORTAR A LOS ACCIONISTAS QUE SERAN CITADOS A       *
//*               ASAMBLEA                                             *
//*  PHL35P02                                                          *
//*       NOTA :                                            ZM4EHA74   *
//**********************************************************************
//PHL35P02 EXEC PGM=IKJEFT01,REGION=0M,COND=(4,LT)
//*
//ZMHA74A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..ZMHLPE35,DISP=SHR
//*
//ZMHA74R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL35T02),DISP=SHR
//**********************************************************************
//*  PASO:  1     AVISO A CONSOLA EN CASO DE ERROR                     *
//*  PHL35P01                                                          *
//**********************************************************************
//PHL35P01 EXEC PGM=MAILOPER,COND=(4,GE,PHL35P02),
//         PARM=('/ATENCION.AVISAR A PRODUCCION QUE PROCESO ',
//             'SIVAXPAD(ZMHLPE35)TERMINO MAL.CONTESTAR SI',
//             'PARA TERMINAR')
//**********************************************************************
//*  PASO:  0     ADICIONA LA CONDICION PARA QUE SEA                   *
//*  PHL35P00     TOMADA POR CONTROL-D                                 *
//**********************************************************************
//PHL35P00 EXEC PGM=CTMCND,PARM='ADD COND SIVAXPAD_IN_SEP_OK WDATE',
//         COND=(4,LT)
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD SYSOUT=Z
//SYSPRINT DD DUMMY
//SYSUDUMP DD DUMMY
//DAPRINT  DD SYSOUT=Z
//DACNDIN  DD DDNAME=SYSIN
//*
