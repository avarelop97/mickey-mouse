//ZMHLPP75 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                   CAPITALES                                        *
//*                                                                    *
//* PROCESO        :  ZMHLPP75                                         *
//*                                                                    *
//* OBJETIVO       :  GENERA ARCHIVOS PARA LA CNBV DE ASIGNACIONES Y   *
//*                   ORDENES DE CAPITALES.                            *
//* CORRE                                                              *
//* ANTES DE       :  A PETICION DEL USUARIO OPCION 169.               *
//*                                                                    *
//* EJECUTA PROCESO: CBHLPZ75.                                         *
//* PROCESO        : ZMHLPZ75.                                         *
//*                                                                    *
//* REALIZO        :  AZERTIA(F.V.C.).                                 *
//* FECHA          :  JULIO 2005.                                      *
//*                                                                    *
//* MODIFICA       :  AZERTIA (OUF).                                   *
//* FECHA          :  OCTUBRE 2008.                                    *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA EVENTUALMENTE A PE-*
//*                   TICION DEL USUARIO.                              *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//*  PASO: 06    RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA   *
//*              EN ARCHIVO SECUENCIAL                                 *
//*                                                                    *
//*  SECUENCIA: 1                                           ZM3DG001   *
//*                                                                    *
//**********************************************************************
//PHL75P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//ZMG001A1 DD DSN=MXCP.ZM.WKF.EMP.SUC.PATRECP,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-M                 *
//****************************************************************
//PHL75P01 EXEC PGM=CTMCND,PARM='ADD COND SIVAXECP_IN_OK WDATE',
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
//DACNDIN  DD   DDNAME=SYSIN
//*
