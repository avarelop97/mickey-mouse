//ZMUIPV03 PROC                                                         00010002
//**********************************************************************00020002
//*                                                                    *00030002
//* SISTEMA        :  MODULO UNICO DE VALORES (M.U.V)                  *00040002
//*                                                                    *00050002
//* PROCESO        :  ZMUIPV03                                         *00060002
//*                                                                    *00080002
//* OBJETIVO       :  REPROCESOS DE INTERFASE DE CONTABILIDAD C.B.     *00090002
//*                   PETICION DE USUARIO                              *00100002
//*                                                                    *00100002
//* CORRE                                                              *00110002
//* ANTES DE       :  NINGUNA                                          *00120002
//*                                                                    *00130002
//* DESPUES DE     :  NUNGUNA                                          *00140002
//*                                                                    *00150002
//* REALIZACION    :  MARCIAL JAIME ROSALES RUIZ     17/OCT/2006       *00160002
//*                                                                    *00170002
//* OBSERVACION    :  ESTE JOB CORRE EVENTUAL A PETICION DE USUARIO    *00180002
//*                                                                    *00190002
//**********************************************************************00240002
//**********************************************************************
//* PROGRAMA: ZM3DG001
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO
//*           PARA SIGUIENTES PASOS
//**********************************************************************
//PUI03P05 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','    ','     ','     ')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXC&AMB..ZM.FIX.ECO.E&EMP..ZMUIPV03,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//**********************************************************************
//*                          ===  ICEMAN  ===                          *
//*                                                                    *
//* OBJETIVO : ORDENA ARCHIVO CON INTERFAZ CONTABLE PARA REPROCESO     *
//*            MXCP.ZM.WKF.ECO.INTFAZ.ACECOMP                          *
//*                                                                    *
//**********************************************************************
//PUI03P04 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.ECO.INTFAZ.ACECMV1,DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.ECO.INTFAZ.ACECMV2,DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.ECO.INTFAZ.ACECMV3,DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.ECO.INTFAZ.ACECMV4,DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.WKF.ECO.E&EMP..INTFAZ.ACECOMP,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUI03T01),DISP=SHR
//*
//**********************************************************************
//*                          ===   COPIA  ===                          *
//*                                                                    *
//* OBJETIVO : COPIAR ARCHIVO CON INTERFAZ CONTABLE DE REPROCESO       *
//*            MXCP.ZM.WKF.ECO.E&EMP..INTFAZ.ACECOMP                   *
//*  A ===>    MXCP.ZM.FIX.ECO.INTFAZ.ACECOMP                          *
//**********************************************************************
//PUI03P03 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXC&AMB..ZM.WKF.ECO.E&EMP..INTFAZ.ACECOMP,DISP=SHR
//SYSUT2   DD DSN=MXC&AMB..ZM.FIX.ECO.INTFAZ.ACECOMP,DISP=SHR
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                          ===  ICEMAN  ===                          *
//*                                                                    *
//* OBJETIVO : ORDENA ARCHIVO CON INTERFAZ DEL MIS  PARA REPROCESO     *
//*            MXCP.ZM.WKF.ECO.INTFAZ.MISMUV                           *
//*                                                                    *
//**********************************************************************
//PUI03P02 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.ECO.INTFAZ.MIS,DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.ECO.INTFAZ.MISCAP,DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.ECO.INTFAZ.MISMDD,DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.WKF.ECO.E&EMP..INTFAZ.MISMUV,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=1050,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUI03T01),DISP=SHR
//*
//**********************************************************************
//*                          ===   COPIA  ===                          *
//*                                                                    *
//* OBJETIVO : COPIAR ARCHIVO CON INTERFAZ DEL MIS  DE REPROCESO       *
//*            MXCP.ZM.WKF.ECO.E&EMP..INTFAZ.MISMUV                    *
//*  A ===>    MXCP.ZM.FIX.ECO.INTFAZ.ACECOMP                          *
//**********************************************************************
//PUI03P01 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXC&AMB..ZM.WKF.ECO.E&EMP..INTFAZ.MISMUV,DISP=SHR
//SYSUT2   DD DSN=MXC&AMB..ZM.FIX.ECO.INTFAZ.MISCOMP,DISP=SHR
//SYSIN    DD DUMMY
//*
//**********************************************************************00780600
//*              FIN DE ZMUIPV03                                   *****00780600
//**********************************************************************00780600
