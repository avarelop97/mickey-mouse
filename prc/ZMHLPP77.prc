//ZMHLPP77 PROC
//**********************************************************************
//*                            C A P I T A L E S .                     *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES                      *
//*                   COLOCACION DE EMISIONES                          *
//*                                                                    *
//* PROCESO        :  ZMHLPP77
//* PROCESO ANT.   :  SIVAXCED ZMHLPE77
//*                                                                    *
//* OBJETIVO       :  ASIGNACION DEFINITIVA                            *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  A PETICION DEL USUARIO                           *
//*                                                                    *
//* REALIZO        :  RHB                                              *
//* FECHA          :  FEBRERO 2006                                     *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA EVENTUALMENTE A PE-*
//*                   TICION DEL USUARIO.                              *
//*                                                                    *
//**********************************************************************
//*                  BITACORA DE MODIFICACIONES.                       *
//**********************************************************************
//*MODIFICO : OSCAR URBANO FERNANDEZ (AZERTIA).                        *
//*FECHA    : OCTUBRE 2008.                                            *
//**********************************************************************
//*                                                                    *
//*  PASO: 03    RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA   *
//*              EN ARCHIVO SECUENCIAL                                 *
//*                                                                    *
//**********************************************************************
//PHL77P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDC.EMP.SUC.COLOCDE,
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
//PHL77P01 EXEC PGM=CTMCND,PARM='ADD COND SIVACCED_IN_OK WDATE',
//         COND=(4,LT)
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV   V
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD SYSOUT=Z
//SYSPRINT DD DUMMY
//SYSUDUMP DD DUMMY
//DAPRINT  DD SYSOUT=Z
//DACNDIN  DD DDNAME=SYSIN
//*
