//ZMPEQD01  PROC                                                        00010004
//**********************************************************************00020004
//*                                                                    *00030004
//*                   C A S A   D E  B O L S A                         *00030004
//*                   ========================                         *00030004
//*                   <<  MERCADO DE CAPITALES  >>                     *00030004
//*                                                                    *00030004
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00120004
//*                                                                    *00130004
//* PROCESO        :  CONCILACION EQUITY CASH                          *00140004
//*                                                                    *00160004
//* OBJETIVO       :  MOVIMIENTOS DE ACCIONES FIBRAS Y WARRANTS        *00170004
//*                                                                    *00190004
//* CORRE                                                              *00200004
//* ANTES DE       :  (CIERRE DE VALORES)                              *00210004
//*                                                                    *00220004
//* DESPUES DE     :                                                   *00230004
//*                                                                    *00240004
//* PERIODICIDAD   :  DIARIO                                           *00240004
//*                                                                    *00240004
//**********************************************************************00300004
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//*--------------------------------------------------------------------*
//**********************************************************************
//*                                                                    *
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*
//*  PEQ01P04     GRABA EN UN ARCHIVO SECUENCIAL.                      *
//**********************************************************************
//*                     ===   INICIO DE     ===                        *
//*                     ===   CAPITALES     ===                        *
//**********************************************************************
//PEQ01P04 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765  DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMPEQD01,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*                                                                     00310004
//**********************************************************************00007848
//* PROGRAMA   : ZM3BTR04                                              *00007849
//* OBJETIVO   : SUSTITUYE LAS VARIABLES DE LAS CTC'S DINAMICAS        *00007850
//**********************************************************************00007851
//PEQ01P03 EXEC PGM=ZM3BTR04,COND=(4,LT)                                00007852
//*                                                                     00007853
//E1DQ0001 DD DUMMY                                                     00007854
//E2DQ0002 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMPEQD01,DISP=SHR       00007856
//E3DQ0003 DD DSN=ZIVA.ZME.CONTROL(ZEQ01T03),DISP=SHR                   00007858
//*                                                                     00007868
//S1DQ0001 DD DSN=MXCP.ZM.TMP.E&EMP..ZMPEQD01.CONTROL1,                 00007869
//            SPACE=(CYL,(100,20),RLSE),                                00007870
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00007871
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)                00007872
//*                                                                     00007873
//SYSABOUT DD  SYSOUT=*                                                 00007874
//SYSDBOUT DD  SYSOUT=*                                                 00007875
//SYSOUT   DD  SYSOUT=*                                                 00007876
//*                                                                     00007878
//**********************************************************************00007879
//* UTILERIA : ADUUMAIN                                                *00007880
//* OBJETIVO : DESCARGA OPERATIVA DE GLOMO                             *00007881
//**********************************************************************00007882
//PEQ01P02 EXEC PGM=ADUUMAIN,COND=(4,LT),                               00007883
//         PARM='MXP1,PEQ01P1A,NEW,,MSGLEVEL(1)'                        00007884
//*                                                                     00007885
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR                            00007886
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00007887
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00007888
//*                                                                     00007889
//SYSREC   DD DSN=MXCP.ZM.TMP.E&EMP..ZMPEQD01.EQUITY,                   00007890
//            SPACE=(CYL,(50,20),RLSE),                                 00007891
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00007892
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=86,DSORG=PS)                00007872
//*                                                                     00007894
//SYSPRINT DD SYSOUT=*                                                  00007895
//SYSTSPRT DD SYSOUT=*                                                  00007896
//SYSOUT   DD SYSOUT=*                                                  00007897
//SYSIN    DD DSN=MXCP.ZM.TMP.E&EMP..ZMPEQD01.CONTROL1,DISP=SHR         00007898
//*
//*--------------------------------------------------------------------*
//* PASO       : PEQ01P01                                              *
//* UTILERIA   : IKJEFT1A(ZM4SIR01)                                    *
//* OBJETIVO   : GENERA ARCHIVO DE CONCILIACION EQUITY CASH            *
//*--------------------------------------------------------------------*
//PEQ01P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMSIRE01 DD DSN=MXCP.ZM.TMP.E&EMP..ZMPEQD01.EQUITY,DISP=SHR
//*
//ZMSIRS01 DD DSN=MXCP.ZM.FIX.E&EMP..ZMPEQD01.EQUITYC1,
//            DISP=(NEW,CATLG,DELETE),
//*           DCB=(LRECL=286,BLKSIZE=0,RECFM=FB,DSORG=PS),
//*           DCB=(LRECL=299,BLKSIZE=0,RECFM=FB,DSORG=PS),
//            DCB=(LRECL=304,BLKSIZE=0,RECFM=FB,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE)
//*
//ZMSIRS02 DD DSN=MXCP.ZM.FIX.E&EMP..ZMPEQD01.EQUITYC2,
//            DISP=(NEW,CATLG,DELETE),
//*           DCB=(LRECL=299,BLKSIZE=0,RECFM=FB,DSORG=PS),
//            DCB=(LRECL=304,BLKSIZE=0,RECFM=FB,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZEQ01T01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*            F I N   P R O C E S O  Z M P E Q D 0 1                  *
//*--------------------------------------------------------------------*
