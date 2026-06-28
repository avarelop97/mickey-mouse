//ZMUIPV02 PROC                                                         00010002
//**********************************************************************00020002
//*                                                                    *00030002
//* SISTEMA        :  MODULO UNICO DE VALORES (M.U.V)                  *00040002
//*                                                                    *00050002
//* PROCESO        :  ZMUIPV02                                         *00060002
//*                                                                    *00080002
//* OBJETIVO       :  REPROCESOS DE INTERFASE DE CONTABILIDAD C.B.     *00090002
//*                   CON ARCHIVO DE PARAMETROS A PETICION DE USUARIO  *00100002
//*                                                                    *00100002
//* CORRE                                                              *00110002
//* ANTES DE       :  NINGUNA                                          *00120002
//*                                                                    *00130002
//* DESPUES DE     :  COPIAR ARCHIVO DE USUARIO A PARAMETROS           *00140002
//*                                                                    *00150002
//* REALIZACION    :  MARCIAL JAIME ROSALES RUIZ     23/JUL/2004       *00160002
//* MODIFICACION   :                                 28/AGO/2006       *00160002
//*                                                                    *00170002
//* OBSERVACION    :  ESTE JOB CORRE EVENTUAL A PETICION DE USUARIO    *00180002
//*                                                                    *00190002
//**********************************************************************00240002
//**********************************************************************
//* PROGRAMA: ZM3DG001
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO
//*           PARA SIGUIENTES PASOS
//**********************************************************************
//PUI02P06 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','    ','&INT1','     ')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.FIX.ECO.E&EMP..ZMUIPV02,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//**********************************************************************00779900
//*                          === ZM4DU801 ===                          *00780000
//*                                                                    *00780100
//* OBJETIVO : GENERA ARCHIVO INTERFAZ PARA CONTABILIDAD MV1           *00780200
//*                                                                    *00780300
//**********************************************************************00780600
//PUI02P05 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//SYSTSPRT DD SYSOUT=*                                                  00780900
//ZMU801T1 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.REPROMV1.F&FECHA,              00006200
//        DISP=(NEW,CATLG,DELETE),                                      00006300
//        DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//        SPACE=(CYL,(100,50),RLSE),                                    00006600
//        UNIT=3390                                                     00006500
//ZMU801T2 DD DSN=MXCP.ZM.FIX.ECO.E&EMP..ZMUIPV02,DISP=SHR              00006200
//SYSPRINT DD SYSOUT=*                                                  00781000
//SYSOUT   DD SYSOUT=*                                                  00781100
//SYSDBOUT DD SYSOUT=*                                                  00781200
//SYSABOUT DD SYSOUT=*                                                  00781300
//SYSUDUMP DD DUMMY                                                     00781400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUI02T04),DISP=SHR
//*                                                                     00780600
//**********************************************************************00779900
//*                          === ZM4DU802 ===                          *00780000
//*                                                                    *00780100
//* OBJETIVO : GENERA ARCHIVO INTERFAZ PARA CONTABILIDAD MV2           *00780200
//*                                                                    *00780300
//**********************************************************************00780600
//PUI02P04 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//SYSTSPRT DD SYSOUT=*                                                  00780900
//ZMU802T1 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.REPROMV2.F&FECHA,              00006200
//        DISP=(NEW,CATLG,DELETE),                                      00006300
//        DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//        SPACE=(CYL,(100,50),RLSE),                                    00006600
//        UNIT=3390                                                     00006500
//ZMU802T2 DD DSN=MXCP.ZM.FIX.ECO.E&EMP..ZMUIPV02,DISP=SHR              00006200
//SYSPRINT DD SYSOUT=*                                                  00781000
//SYSOUT   DD SYSOUT=*                                                  00781100
//SYSDBOUT DD SYSOUT=*                                                  00781200
//SYSABOUT DD SYSOUT=*                                                  00781300
//SYSUDUMP DD DUMMY                                                     00781400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUI02T03),DISP=SHR
//*                                                                     00780600
//**********************************************************************00779900
//*                          === ZM4DU803 ===                          *00780000
//*                                                                    *00780100
//* OBJETIVO : GENERA ARCHIVO INTERFAZ PARA CONTABILIDAD MV3           *00780200
//*                                                                    *00780300
//**********************************************************************00780600
//PUI02P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//SYSTSPRT DD SYSOUT=*                                                  00780900
//ZMU803T1 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.REPROMV3.F&FECHA,              00006200
//        DISP=(NEW,CATLG,DELETE),                                      00006300
//        DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//        SPACE=(CYL,(100,50),RLSE),                                    00006600
//        UNIT=3390                                                     00006500
//ZMU803T2 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.REPROPRO.F&FECHA,              00006200
//        DISP=(NEW,CATLG,DELETE),                                      00006300
//        DCB=(DSORG=PS,RECFM=FB,LRECL=560,BLKSIZE=0),
//        SPACE=(CYL,(100,50),RLSE),                                    00006600
//        UNIT=3390                                                     00006500
//ZMU803T3 DD DSN=MXCP.ZM.FIX.ECO.E&EMP..ZMUIPV02,DISP=SHR              00006200
//SYSPRINT DD SYSOUT=*                                                  00781000
//SYSOUT   DD SYSOUT=*                                                  00781100
//SYSDBOUT DD SYSOUT=*                                                  00781200
//SYSABOUT DD SYSOUT=*                                                  00781300
//SYSUDUMP DD DUMMY                                                     00781400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUI02T02),DISP=SHR
//*                                                                     00780600
//**********************************************************************
//*                          ===   SORT   ===                          *
//*                                                                    *
//* OBJETIVO : ORDENA ARCHIVO CON INTERFAZ CONTABLE DE REPROCESO       *
//*            MXCP.ZM.WKF.ECO.INTFAZ.ACECOMP                          *
//*                                                                    *
//**********************************************************************
//PUI02P02 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.REPROMV1.F&FECHA,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.REPROMV2.F&FECHA,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.REPROMV3.F&FECHA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.WKF.ECO.INTFAZ.ACECOMP,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUI02T01),DISP=SHR
//*
//**********************************************************************
//*                          ===   COPIA  ===                          *
//*                                                                    *
//* OBJETIVO : COPIAR ARCHIVO CON INTERFAZ CONTABLE DE REPROCESO       *
//*            MXCP.ZM.WKF.ECO.INTFAZ.ACECOMP A                        *
//*            MXCP.ZM.FIX.ECO.INTFAZ.ACECOMP                          *
//**********************************************************************
//PUI02P01 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.WKF.ECO.INTFAZ.ACECOMP,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ACECOMP,DISP=MOD
//SYSIN    DD DUMMY
//*
//**********************************************************************00780600
//*              FIN DE ZMUIPV02                                   *****00780600
//**********************************************************************00780600
