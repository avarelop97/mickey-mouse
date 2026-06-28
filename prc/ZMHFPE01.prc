//**********************************************************************00780600
//ZMHFPE01 PROC                                                         00010002
//**********************************************************************00020002
//*                                                                    *00030002
//* SISTEMA        :  MUV MODULO UNICO DE VALORES ANTES SIVA.          *00040002
//*                                                                    *00050002
//* PROCESO        :  ZMHFPE01                                         *00060002
//*                                                                    *00070002
//*                                                                    *00080002
//* OBJETIVO       :  CARGAR LA TABLA ZMDT633 EN BASE A UN ARCHIVO     *00090002
//*                   SECUENCIAL.                                      *00100002
//*                                                                    *00100002
//*                                                                    *00100002
//* CORRE                                                              *00110002
//* ANTES DE       :  NINGUNA                                          *00120002
//*                                                                    *00130002
//* DESPUES DE     :  NINGUNA                                          *00140002
//*                                                                    *00150002
//* REALIZACION    :  MARCIAL JAIME ROSALES RUIZ     10/OCT/2006       *00160002
//*                                                                    *00170002
//* OBSERVACION    :                                                   *00180002
//*                                                                    *00190002
//**********************************************************************00240002
//*                                                                    *00240002
//**********************************************************************
//* PROGRAMA: ZM3DG001
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO
//*           PARA SIGUIENTES PASOS
//**********************************************************************
//PHF01P06 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','    ','     ','     ')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.FIX.ECO.E&EMP..ZMHFPE01,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//**********************************************************************00779900
//*                          === ZM4DU882 ===                          *00780000
//*                                                                    *00780100
//* OBJETIVO : INSERTAR EN LA TABLA ZMDT633 LOS REGISTROS DEL ARCHIVO  *00780200
//*            SECUENCIAL (MIGRACION BPPIGO IOPERA = 1020 Y 1120)      *00780300
//*                                                                    *00780300
//**********************************************************************00780600
//PHF01P05 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//ZMU882T1 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ZMDT633.BPIGO248,
//         DISP=SHR
//ZMU882T2 DD DSN=MXCP.ZM.FIX.ECO.ERRORES.BPIGO248.F&FECHA,
//        DISP=(NEW,CATLG,DELETE),
//        SPACE=(CYL,(40,20),RLSE),
//        DCB=(DSORG=PS,RECFM=FB,LRECL=214,BLKSIZE=0),
//        UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF01T03),DISP=SHR
//*                                                                     00780600
//**********************************************************************00779900
//*                          === ZM4DU882 ===                          *00780000
//*                                                                    *00780100
//* OBJETIVO : INSERTAR EN LA TABLA ZMDT633 LOS REGISTROS DEL ARCHIVO  *00780200
//*            SECUENCIAL (POZOS DE SOCIEDADES DE INVERSION DEL DIA)   *00780300
//*                                                                    *00780300
//**********************************************************************00780600
//PHF01P04 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//ZMU882T1 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ZMDT633.SOCINV,
//         DISP=SHR
//ZMU882T2 DD DSN=MXCP.ZM.FIX.ECO.ERRORES.SOCINV.F&FECHA,
//        DISP=(NEW,CATLG,DELETE),
//        SPACE=(CYL,(40,20),RLSE),
//        DCB=(DSORG=PS,RECFM=FB,LRECL=214,BLKSIZE=0),
//        UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF01T03),DISP=SHR
//*                                                                     00780600
//**********************************************************************00779900
//*                          === ZM4DU882 ===                          *00780000
//*                                                                    *00780100
//* OBJETIVO : INSERTAR EN LA TABLA ZMDT633 LOS REGISTROS DEL ARCHIVO  *00780200
//*            SECUENCIAL (POZOS DE CAPITALES DEL DIA)                 *00780300
//*                                                                    *00780300
//**********************************************************************00780600
//PHF01P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//ZMU882T1 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ZMDT633.CAP,
//         DISP=SHR
//ZMU882T2 DD DSN=MXCP.ZM.FIX.ECO.ERRORES.CAP.F&FECHA,
//        DISP=(NEW,CATLG,DELETE),
//        SPACE=(CYL,(40,20),RLSE),
//        DCB=(DSORG=PS,RECFM=FB,LRECL=214,BLKSIZE=0),
//        UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF01T03),DISP=SHR
//*                                                                     00780600
//**********************************************************************00779900
//*                          === ZM4DU882 ===                          *00780000
//*                                                                    *00780100
//* OBJETIVO : INSERTAR EN LA TABLA ZMDT633 LOS REGISTROS DEL ARCHIVO  *00780200
//*            SECUENCIAL (POZOS DE MERCADO DE DINERO DEL DIA)         *00780300
//*                                                                    *00780300
//**********************************************************************00780600
//PHF01P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//ZMU882T1 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ZMDT633.MDD,
//         DISP=SHR
//ZMU882T2 DD DSN=MXCP.ZM.FIX.ECO.ERRORES.MDD.F&FECHA,
//        DISP=(NEW,CATLG,DELETE),
//        SPACE=(CYL,(40,20),RLSE),
//        DCB=(DSORG=PS,RECFM=FB,LRECL=214,BLKSIZE=0),
//        UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF01T03),DISP=SHR
//*                                                                     00780600
//**********************************************************************00779900
//*                          === ZM4DU882 ===                          *00780000
//*                                                                    *00780100
//* OBJETIVO : INSERTAR EN LA TABLA ZMDT633 LOS REGISTROS DEL ARCHIVO  *00780200
//*            SECUENCIAL (POZOS MDD BPPIGO IOPERA = 627 Y 1020)       *00780300
//*                                                                    *00780300
//**********************************************************************00780600
//PHF01P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//ZMU882T1 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ZMDT633.BPIGO,
//         DISP=SHR
//ZMU882T2 DD DSN=MXCP.ZM.FIX.ECO.ERRORES.BPIGO.F&FECHA,
//        DISP=(NEW,CATLG,DELETE),
//        SPACE=(CYL,(40,20),RLSE),
//        DCB=(DSORG=PS,RECFM=FB,LRECL=214,BLKSIZE=0),
//        UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF01T03),DISP=SHR
//*                                                                     00780600
