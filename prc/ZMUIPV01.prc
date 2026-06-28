//ZMUIPV01 PROC                                                         00010002
//**********************************************************************00020002
//*                                                                    *00030002
//* SISTEMA        :  MODULO UNICO DE VALORES (M.U.V)                  *00040002
//*                                                                    *00050002
//* PROCESO        :  ZMUIPV01                                         *00060002
//*                                                                    *00080002
//* OBJETIVO       :  ELIMINA REGISTROS DE CONTRATOS Y SUCURSALES      *00090002
//*                   MIGRADAS DE LA CONTABILIDAD MUV YA QUE EL DIA    *00100002
//*                   DEL LA MIGRACION BPIGO CONTABILIZA TODAVIA.      *00100002
//*                                                                    *00100002
//* CORRE                                                              *00110002
//* ANTES DE       :  NINGUNA                                          *00120002
//*                                                                    *00130002
//* DESPUES DE     :  NUNGUNA                                          *00140002
//*                                                                    *00150002
//* REALIZACION    :  MARCIAL JAIME ROSALES RUIZ     19/ABR/2007       *00160002
//*                                                                    *00170002
//* OBSERVACION    :  ESTE JOB CORRE EVENTUAL A PETICION DE USUARIO    *00180002
//*                                                                    *00190002
//**********************************************************************00240002
//**********************************************************************
//* PROGRAMA: ZM3DG001
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO
//*           PARA SIGUIENTES PASOS
//**********************************************************************
//PUI01P17 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','    ','     ','     ')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.FIX.ECO.E&EMP..ZMUIPV01,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//*****************************************************************
//*               EJECUTA PROGRAMA ZM3DU830                       *
//*                                                               *
//* OBJETIVO: ELIMINAR DEL ARCHIVO DE LA CONTABILIDAD LAS SUCS    *
//*           MIGRADAS Y CONTRATOS DETERMINADOS EN UN NIVEL 88    *
//*           SOLO PARA EL PRIMER DIA YA QUE CONTABILIZA BPIGO    *
//*                                                               *
//*****************************************************************
//PUI01P16 EXEC PGM=ZM3DU830,COND=(4,LT)
//ZMU830T1 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ACECMV1,DISP=SHR
//ZMU830T2 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ANTEMV1,
//         DISP=(NEW,CATLG,DELETE),
//         SPACE=(CYL,(40,20),RLSE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DUMMY
//*
//**********************************************************************
//*                          ===   COPIA  ===                          *
//*                                                                    *
//* OBJETIVO : COPIAR ARCHIVO CON INTERFAZ CONTABLE DEPURADA           *
//*            MXCP.ZM.FIX.ECO.INTFAZ.ANTEMV1                          *
//*  A ===>    MXCP.ZM.FIX.ECO.INTFAZ.ACECMV1                          *
//**********************************************************************
//PUI01P15 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ANTEMV1,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ACECMV1,
//         DISP=(NEW,CATLG,DELETE),
//         SPACE=(CYL,(40,20),RLSE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//         UNIT=3390
//SYSIN    DD DUMMY
//*
//*****************************************************************
//*               EJECUTA PROGRAMA ZM3DU830                       *
//*                                                               *
//* OBJETIVO: ELIMINAR DEL ARCHIVO DE LA CONTABILIDAD LAS SUCS    *
//*           MIGRADAS Y CONTRATOS DETERMINADOS EN UN NIVEL 88    *
//*           SOLO PARA EL PRIMER DIA YA QUE CONTABILIZA BPIGO    *
//*                                                               *
//*****************************************************************
//PUI01P14 EXEC PGM=ZM3DU830,COND=(4,LT)
//ZMU830T1 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ACECMV2,DISP=SHR
//ZMU830T2 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ANTEMV2,
//         DISP=(NEW,CATLG,DELETE),
//         SPACE=(CYL,(40,20),RLSE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DUMMY
//*
//**********************************************************************
//*                          ===   COPIA  ===                          *
//*                                                                    *
//* OBJETIVO : COPIAR ARCHIVO CON INTERFAZ CONTABLE DEPURADA           *
//*            MXCP.ZM.FIX.ECO.INTFAZ.ANTEMV2                          *
//*  A ===>    MXCP.ZM.FIX.ECO.INTFAZ.ACECMV2                          *
//**********************************************************************
//PUI01P13 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ANTEMV2,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ACECMV2,
//         DISP=(NEW,CATLG,DELETE),
//         SPACE=(CYL,(40,20),RLSE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//         UNIT=3390
//SYSIN    DD DUMMY
//*
//*****************************************************************
//*               EJECUTA PROGRAMA ZM3DU830                       *
//*                                                               *
//* OBJETIVO: ELIMINAR DEL ARCHIVO DE LA CONTABILIDAD LAS SUCS    *
//*           MIGRADAS Y CONTRATOS DETERMINADOS EN UN NIVEL 88    *
//*           SOLO PARA EL PRIMER DIA YA QUE CONTABILIZA BPIGO    *
//*                                                               *
//*****************************************************************
//PUI01P12 EXEC PGM=ZM3DU830,COND=(4,LT)
//ZMU830T1 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ACECMV3,DISP=SHR
//ZMU830T2 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ANTEMV3,
//         DISP=(NEW,CATLG,DELETE),
//         SPACE=(CYL,(40,20),RLSE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DUMMY
//*
//**********************************************************************
//*                          ===   COPIA  ===                          *
//*                                                                    *
//* OBJETIVO : COPIAR ARCHIVO CON INTERFAZ CONTABLE DEPURADA           *
//*            MXCP.ZM.FIX.ECO.INTFAZ.ANTEMV3                          *
//*  A ===>    MXCP.ZM.FIX.ECO.INTFAZ.ACECMV3                          *
//**********************************************************************
//PUI01P11 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ANTEMV3,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ACECMV3,
//         DISP=(NEW,CATLG,DELETE),
//         SPACE=(CYL,(40,20),RLSE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//         UNIT=3390
//SYSIN    DD DUMMY
//*
//*****************************************************************
//*               EJECUTA PROGRAMA ZM3DU830                       *
//*                                                               *
//* OBJETIVO: ELIMINAR DEL ARCHIVO DE LA CONTABILIDAD LAS SUCS    *
//*           MIGRADAS Y CONTRATOS DETERMINADOS EN UN NIVEL 88    *
//*           SOLO PARA EL PRIMER DIA YA QUE CONTABILIZA BPIGO    *
//*                                                               *
//*****************************************************************
//PUI01P10 EXEC PGM=ZM3DU830,COND=(4,LT)
//ZMU830T1 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ACECOMP,DISP=SHR
//ZMU830T2 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ANTCOMP,
//         DISP=(NEW,CATLG,DELETE),
//         SPACE=(CYL,(40,20),RLSE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DUMMY
//*
//**********************************************************************
//*                          ===   COPIA  ===                          *
//*                                                                    *
//* OBJETIVO : COPIAR ARCHIVO CON INTERFAZ CONTABLE DEPURADA           *
//*            MXCP.ZM.FIX.ECO.INTFAZ.ANTCOMP                          *
//*  A ===>    MXCP.ZM.FIX.ECO.INTFAZ.ACECOMP                          *
//**********************************************************************
//PUI01P09 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ANTCOMP,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ACECOMP,
//         DISP=(NEW,CATLG,DELETE),
//         SPACE=(CYL,(40,20),RLSE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//         UNIT=3390
//SYSIN    DD DUMMY
//*
//*****************************************************************
//*               EJECUTA PROGRAMA ZM3DU831                       *
//*                                                               *
//* OBJETIVO: ELIMINAR DEL ARCHIVO        M I S       LAS SUCS    *
//*           MIGRADAS Y CONTRATOS DETERMINADOS EN UN NIVEL 88    *
//*           SOLO PARA EL PRIMER DIA YA QUE CONTABILIZA BPIGO    *
//*                                                               *
//*****************************************************************
//PUI01P08 EXEC PGM=ZM3DU831,COND=(4,LT)
//ZMU831T1 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.MIS,DISP=SHR
//ZMU831T2 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ANT,
//         DISP=(NEW,CATLG,DELETE),
//         SPACE=(CYL,(40,20),RLSE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=1050,BLKSIZE=0),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DUMMY
//*
//**********************************************************************
//*                          ===   COPIA  ===                          *
//*                                                                    *
//* OBJETIVO : COPIAR ARCHIVO CON INTERFAZ CONTABLE DEPURADA           *
//*            MXCP.ZM.FIX.ECO.INTFAZ.ANT                              *
//*  A ===>    MXCP.ZM.FIX.ECO.INTFAZ.MIS                              *
//**********************************************************************
//PUI01P07 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ANT,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.MIS,
//         DISP=(NEW,CATLG,DELETE),
//         SPACE=(CYL,(40,20),RLSE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=1050,BLKSIZE=0),
//         UNIT=3390
//SYSIN    DD DUMMY
//*
//*****************************************************************
//*               EJECUTA PROGRAMA ZM3DU831                       *
//*                                                               *
//* OBJETIVO: ELIMINAR DEL ARCHIVO        M I S       LAS SUCS    *
//*           MIGRADAS Y CONTRATOS DETERMINADOS EN UN NIVEL 88    *
//*           SOLO PARA EL PRIMER DIA YA QUE CONTABILIZA BPIGO    *
//*                                                               *
//*****************************************************************
//PUI01P06 EXEC PGM=ZM3DU831,COND=(4,LT)
//ZMU831T1 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.MISCAP,DISP=SHR
//ZMU831T2 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ANTCAP,
//         DISP=(NEW,CATLG,DELETE),
//         SPACE=(CYL,(40,20),RLSE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=1050,BLKSIZE=0),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DUMMY
//*
//**********************************************************************
//*                          ===   COPIA  ===                          *
//*                                                                    *
//* OBJETIVO : COPIAR ARCHIVO CON INTERFAZ CONTABLE DEPURADA           *
//*            MXCP.ZM.FIX.ECO.INTFAZ.ANTCAP                           *
//*  A ===>    MXCP.ZM.FIX.ECO.INTFAZ.MISCAP                           *
//**********************************************************************
//PUI01P05 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ANTCAP,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.MISCAP,
//         DISP=(NEW,CATLG,DELETE),
//         SPACE=(CYL,(40,20),RLSE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=1050,BLKSIZE=0),
//         UNIT=3390
//SYSIN    DD DUMMY
//*
//*****************************************************************
//*               EJECUTA PROGRAMA ZM3DU831                       *
//*                                                               *
//* OBJETIVO: ELIMINAR DEL ARCHIVO        M I S       LAS SUCS    *
//*           MIGRADAS Y CONTRATOS DETERMINADOS EN UN NIVEL 88    *
//*           SOLO PARA EL PRIMER DIA YA QUE CONTABILIZA BPIGO    *
//*                                                               *
//*****************************************************************
//PUI01P04 EXEC PGM=ZM3DU831,COND=(4,LT)
//ZMU831T1 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.MISMDD,DISP=SHR
//ZMU831T2 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ANTMDD,
//         DISP=(NEW,CATLG,DELETE),
//         SPACE=(CYL,(40,20),RLSE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=1050,BLKSIZE=0),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DUMMY
//*
//**********************************************************************
//*                          ===   COPIA  ===                          *
//*                                                                    *
//* OBJETIVO : COPIAR ARCHIVO CON INTERFAZ CONTABLE DEPURADA           *
//*            MXCP.ZM.FIX.ECO.INTFAZ.ANTMDD                           *
//*  A ===>    MXCP.ZM.FIX.ECO.INTFAZ.MISMDD                           *
//**********************************************************************
//PUI01P03 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ANTMDD,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.MISMDD,
//         DISP=(NEW,CATLG,DELETE),
//         SPACE=(CYL,(40,20),RLSE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=1050,BLKSIZE=0),
//         UNIT=3390
//SYSIN    DD DUMMY
//*
//*****************************************************************
//*               EJECUTA PROGRAMA ZM3DU831                       *
//*                                                               *
//* OBJETIVO: ELIMINAR DEL ARCHIVO        M I S       LAS SUCS    *
//*           MIGRADAS Y CONTRATOS DETERMINADOS EN UN NIVEL 88    *
//*           SOLO PARA EL PRIMER DIA YA QUE CONTABILIZA BPIGO    *
//*                                                               *
//*****************************************************************
//PUI01P02 EXEC PGM=ZM3DU831,COND=(4,LT)
//ZMU831T1 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.MISCOMP,DISP=SHR
//ZMU831T2 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.MISCOMPA,
//         DISP=(NEW,CATLG,DELETE),
//         SPACE=(CYL,(40,20),RLSE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=1050,BLKSIZE=0),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DUMMY
//*
//**********************************************************************
//*                          ===   COPIA  ===                          *
//*                                                                    *
//* OBJETIVO : COPIAR ARCHIVO CON INTERFAZ CONTABLE DEPURADA           *
//*            MXCP.ZM.FIX.ECO.INTFAZ.MISCOMPA                         *
//*  A ===>    MXCP.ZM.FIX.ECO.INTFAZ.MISCOMP                          *
//**********************************************************************
//PUI01P01 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.MISCOMPA,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.MISCOMP,
//         DISP=(NEW,CATLG,DELETE),
//         SPACE=(CYL,(40,20),RLSE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=1050,BLKSIZE=0),
//         UNIT=3390
//SYSIN    DD DUMMY
//*
//**********************************************************************00780600
//*              FIN DE ZMUIPV01                                   *****00780600
//**********************************************************************00780600
