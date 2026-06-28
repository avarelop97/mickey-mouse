//ZMUFPD04 PROC                                                         00010002
//**********************************************************************00020002
//*                                                                    *00030002
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.).          *00040002
//*                                                                    *00050002
//* PROCESO        :  ZMUFPD04                                         *00060002
//*                   DESPUES DEL ENLACE CONTABLE.                     *00070002
//*                                                                    *00080002
//* OBJETIVO       :  GENERACION DE INTERFAZ DE CASA DE BOLSA          *00090002
//*                   A POZOS (MIGRACION DE EFECTIVO)                  *00100002
//*                                                                    *00100002
//* CORRE                                                              *00110002
//* ANTES DE       :  NINGUNA                                          *00120002
//*                                                                    *00130002
//* DESPUES DE     :  NINGUNA                                          *00140002
//*                                                                    *00150002
//* REALIZACION    :  MARCIAL JAIME ROSALES RUIZ     28/JUN/2004       *00160002
//*                                                                    *00170002
//* OBSERVACION    :  ESTE JOB CORRE DESPUES DEL INICIO DE DIA DE      *00180002
//*                                                        TESORERIA   *00190002
//**********************************************************************00240002
//**********************************************************************
//* PROGRAMA: ZM3DG001
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO
//*           PARA SIGUIENTES PASOS
//**********************************************************************
//PUF01P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','    ','     ','     ')
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.FIX.TMP.E&EMP..ZMJFPD04,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//**********************************************************************00779900
//*                          === ZM4DU835 ===                          *00780000
//*                                                                    *00780100
//* OBJETIVO : GENERA ARCHIVO INTERFAZ PARA POZOS (MIGRACION DE EFEVO) *00780200
//*                                                                    *00780300
//**********************************************************************00780600
//PUF01P01 EXEC PGM=IKJEFT01,REGION=0M,COND=(4,LT)                      00780700
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00780900
//ZMU835T1 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.POZOS.MIGRCION,                00006200
//        DISP=(NEW,CATLG,CATLG),                                       00006300
//        DCB=(DSORG=PS,RECFM=FB,LRECL=386,BLKSIZE=0),
//        UNIT=3390,                                                    00006500
//        SPACE=(CYL,(100,50),RLSE)                                     00006600
//SYSPRINT DD SYSOUT=*                                                  00781000
//SYSOUT   DD SYSOUT=*                                                  00781100
//SYSDBOUT DD SYSOUT=*                                                  00781200
//SYSABOUT DD SYSOUT=*                                                  00781300
//SYSUDUMP DD DUMMY                                                     00781400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF01T08),DISP=SHR
//*                                                                    *00780300
//**********************************************************************00780600
