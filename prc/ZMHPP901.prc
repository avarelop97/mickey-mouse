//ZMHPP901 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                   CAPITALES                                        *
//*                                                                    *
//* PROCESO        :  ZMHPP901                                         *
//*                                                                    *
//* OBJETIVO       :  GENERA REPORTE DE HECHOS OPERADOS DURANTE EL DIA.*
//*                   (OPC 168)                                        *
//* CORRE                                                              *
//* ANTES DE       :  XXXXXXXX                                         *
//*                                                                    *
//* A PARTIR DE    : XX:XX HRS.                                        *
//* HASTA          : XX:XX HSR.                                        *
//*                                                                    *
//* REALIZO        :  AZERTIA(F.V.C.)                                  *
//* FECHA          :  MARZO 2005.                                      *
//*                                                                    *
//* OBSERVACION    :  ESTE PROC. SE EJECUTA A PETICION DEL USUARIO.    *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//*  PASO: 04    RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA   *
//*              EN ARCHIVO SECUENCIAL                                 *
//*                                                                    *
//*  SECUENCIA: 1                                           ZM3DG001   *
//*                                                                    *
//**********************************************************************
//PHC01P04 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//*
//ZMG001A1 DD DSN=MXCP.ZM.WKF.EMP.SUC.PATR,
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
//*********************************************************************
//*  PASO: 01      SE ADICIONA CONDICION                         *
//*  SECUENCIA 4   PARA QUE SEA TOMADA POR CTL-M                 *
//****************************************************************
//PHC01P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXHEC_IN_OK WDATE',
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
//**********************************************************************
//*        TERMINA PROCESO ZMHPP901 SIVA MULTIEMPRESA                  *
//**********************************************************************
