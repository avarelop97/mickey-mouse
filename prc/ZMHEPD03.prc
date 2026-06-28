//ZMHEPD03 PROC
//*
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                    << MERCADO DE CAPITALES >>                      *
//*                                                                    *
//*   APLICACION       :  SISTEMA INTEGRAL DE VALORES (S.I.V.A)        *
//*                                                                    *
//*   PROCEDIM.        :  ZMHEPD03                                     *
//*                                                                    *
//*   OBJETIVO         :  INSERTAR PRECIOS DE RECBMV, ASIGNACION DE    *
//*                       HECHOS Y CANCELACIONES DE ORDENES            *
//*                                                                    *
//*   CORRE DESPUES DE :  PROCESO CICLICO EN HORARIO LIMITADO          *
//*                       A PETICION DEL USUARIO                       *
//*                                                                    *
//*   PERIODICIDAD     :  SE EJECUTA EN INTERVALOS DE UN MINUTO.       *
//*                                                                    *
//*   ELABORADO POR    :  ASATECK, S.A. DE C.V.  (AJP)                 *
//*                                                                    *
//*   FECHA            :  FEBRERO DEL 2003.                            *
//*                                                                    *
//**********************************************************************
//*  PASO:  6     PROCESA CANCELACIONES AUT. DE ORDENES OPC            *
//*  PHE03P06                                               ZM4EHW80   *
//**********************************************************************
//PHE03P06 EXEC PGM=IKJEFT01
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHE03T04),DISP=SHR
//**********************************************************************
//*  PASO:  5     PROCESA RECBMV PARA INSERTAR PRECIOS Y HECBMV        *
//*  PHE03P05                                                          *
//*                                                         ZM4EHU87   *
//**********************************************************************
//PHE03P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHE03T03),DISP=SHR
//**********************************************************************
//*  PASO:  4     PROCESA RECBMV PARA INSERTAR Y ASIGNAR HECHOS        *
//*  PHE03P04                                                          *
//*                                                         ZM4EHU88   *
//**********************************************************************
//PHE03P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHE03T02),DISP=SHR
//**********************************************************************
//*  PASO:  3     PROCESA RECBMV (RB, RD Y RG RESPUESTAS) PARA         *
//*  PHE03P03     CANCELAR TITULOS DE ORDENES Y ORDCAPA                *
//*                                                         ZM4EHU89   *
//**********************************************************************
//PHE03P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHE03T01),DISP=SHR
//**********************************************************************
//*  PASO:  2     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*
//*  PHE03P02     GRABA EN UN ARCHIVO SECUENCIAL.                      *
//**********************************************************************
//PHE03P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','CBP000','     ',)
//*
//ZMG001A1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHEPD03,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(5,1),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//*  PASO:  1     CREA EL ARCHIVO LOG DE MOVIMIENTOS (IEFBR14)         *
//*  PHE03P01                                                          *
//**********************************************************************
//PHE03P01 EXEC PGM=IEFBR14,COND=(4,LT)
//ARCHIVO   DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHEPD03.LOG,
//             DISP=(NEW,CATLG,CATLG),
//             DCB=(LRECL=80,RECFM=FB,BLKSIZE=0,DSORG=PS),
//             UNIT=3390,SPACE=(CYL,(5,1),RLSE)
//*
//**********************************************************************
//*  PASO:  0     REALIZA ACTUALIZACIONES QUE RESULTEN DE LAS          *
//*  PHE03P00     OPERACIONES DE C/V DE CAPITALES   === ZM4DH513 ===   *
//**********************************************************************
//PHE03P00 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMH514A1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHEPD03,DISP=SHR
//ZMH514L1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHEPD03.LOG,
//            DISP=MOD
//ZMH514R1 DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHE07T02),DISP=SHR
//*
