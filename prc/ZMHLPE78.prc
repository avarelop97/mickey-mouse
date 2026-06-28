//ZMHLPE78 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES                      *
//*                   COLOCACION DE EMISIONES                          *
//*                                                                    *
//* PROCESO        :  ZMHLPE78                                         *
//*                                                                    *
//* OBJETIVO       :  PRORRATEO DE COLOCACIONES                        *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  A PETICION DEL USUARIO                           *
//*                                                                    *
//* A PARTIR DE    : XX:XX HRS.                                        *
//* HASTA          : XX:XX HSR.                                        *
//*                                                                    *
//* REALIZO        :  RHB                                              *
//* FECHA          :  MARZO   2006                                     *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA EVENTUALMENTE A PE-*
//*                   TICION DEL USUARIO.                              *
//*                                                                    *
//**********************************************************************
//*                  BITACORA DE MODIFICACIONES.                       *
//**********************************************************************
//*                                                                    *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//*  PASO: 03    RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA   *
//*              EN ARCHIVO SECUENCIAL                                 *
//*                                                                    *
//**********************************************************************
//PHL78P03 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..COLOCPR,
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
//**********************************************************************
//*                        -- ZM4EHV80--                               *
//* PASO 02                                                            *
//* OBJETIVO       :  PRORRATEO DE COLOCACIONES                        *
//*                                                                    *
//**********************************************************************
//PHL78P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHV80A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..COLOCPR,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHL78P02),DISP=SHR
//*
//**********************************************************************
//*                        -- ZM4DHW71--                               *
//* PASO 01                                                            *
//* OBJETIVO       :  REPORTE DE COLOCACIONES                          *
//*                                                                    *
//**********************************************************************
//PHL78P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHW71A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..COLOCPR,DISP=SHR
//ZMHW71R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHL78P01),DISP=SHR
//*
//**********************************************************************
//* OBJETIVO : ACTIVA LA CONDICION EN CONTROL-M PARA REPORTE  PREVIO   *
//*            DE COLOCACIONES.                                        *
//**********************************************************************
//PHL78P00 EXEC  PGM=CTMCND,PARM='ADD COND  SIVAXCEP_IN_SEP_OK  WDATE',
//         COND=(4,LT)
//*
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
//*
