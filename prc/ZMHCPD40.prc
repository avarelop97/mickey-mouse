//ZMHCPD40 PROC
//*
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  CBHCND40                                         *
//*                                                                    *
//* OBJETIVO       :  PROCESAR LOS AHECHORES FALTANTES POR ERROR EN    *
//*                   EJECUCION DE PROCESO DE BLOQUES                  *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  NINGUNO                                          *
//*                                                                    *
//* DESPUES DE     :  SIVAXMDC                                         *
//**********************************************************************
//*                                                                    *
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*
//*  PHC07P02     GRABA EN UN ARCHIVO SECUENCIAL.                      *
//*                                                         ZM3DG001   *
//**********************************************************************
//PHC40P03 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','CBPZPR','      ',)
//PI601765 DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD40,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(5,1),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//*    CREA EL ARCHIVO LOG DE MOVIMIENTOS (IEFBR14)                    *
//**********************************************************************
//PHC40P02 EXEC PGM=IEFBR14,COND=(4,LT)
//ARCHIVO   DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD40.LOG,
//             DISP=(NEW,CATLG,CATLG),
//             DCB=(LRECL=80,RECFM=FB,BLKSIZE=0,DSORG=PS),
//             UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//**********************************************************************
//* OBJETIVO : ACTUALIZA CARTERA Y GENERA SIVA DE LA ASIGNACION        *
//*            DEFINITIVA MODIFICACION A FOLCTROL                      *
//*                   -- ZM4DH514 --                                   *
//**********************************************************************
//PHC40P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMH514A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD40,DISP=SHR
//*
//ZMH514L1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD40.LOG,
//            DISP=MOD
//ZMH514R1 DD SYSOUT=X
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC40T01),DISP=SHR
//*
