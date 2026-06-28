//ZMHCPD15  PROC                                                        00010004
//**********************************************************************00020004
//*                                                                    *00030004
//*                   C A S A   D E  B O L S A                         *00030004
//*                   ========================                         *00030004
//*                   <<  MERCADO DE CAPITALES  >>                     *00030004
//*                                                                    *00030004
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00120004
//*                                                                    *00130004
//* PROCESO        :  ZMHCPD15 3RA. ULTIMA PARTE.                      *00140004
//*                   CIERRE DE DIA DEL MODULO DE MERCADO DE           *00150004
//*                   CAPITALES DE BANCA PATRIMONIAL.                  *00160004
//*                                                                    *00160004
//* OBJETIVO       :  CERRAR LA OPERACION DEL DIA DE CAPITALES ENVIADO *00170004
//*                   POR CONTROL-M                                    *00180004
//*                                                                    *00190004
//* CORRE                                                              *00200004
//* ANTES DE       :  (CIERRE DE VALORES)                              *00210004
//*                                                                    *00220004
//* DESPUES DE     :  ZMHCPD14(2DA. PARTE CIERRE DE CAPITALES).        *00230004
//*                                                                    *00240004
//* PERIODICIDAD   :  DIARIO                                           *00240004
//*                                                                    *00240004
//* ELABORADO POR  : ERNESTO MANUEL CUAUTLE MARTINEZ                   *00240004
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
//* FS-1.1.0-01  XMBB121 11JUL12  SE RENOMBRA PASO PHC15P0A A PHC15P0B *
//*                               Y SE AGREGA NUEVO PASO CON NOMBRE    *
//*                               PHC15P0A.                            *
//* BTRPRO4Q23   MI12453 04OCT23  SE GENERA PASOS REPORTES PARA GLOMO  *
//*--------------------------------------------------------------------*
//**********************************************************************
//*                                                                    *
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*
//*  PHC15P07     GRABA EN UN ARCHIVO SECUENCIAL.                      *
//*                                                         ZM3DH001   *
//**********************************************************************
//*                     ===   INICIO DE     ===                        *
//*                     ===   CAPITALES     ===                        *
//**********************************************************************
//PHC15P08 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765  DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD15,
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
//**********************************************************************
//* OBJETIVO : GENERA REPORTE DE OPERACIONES DE PORVENIR               *
//*            -- ZM4DJA90 --                                          *
//**********************************************************************
//PHC15P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMDJ90A1 DD DSN=MXCP.ZM.FIX.EBCM.ZMHCPD15.PORVENIR,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(LRECL=400,RECFM=FB,BLKSIZE=0,DSORG=PS),
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC15T07),DISP=SHR
//**********************************************************************
//* OBJETIVO : GENERA REPORTE DE OPERACIONES DE CAPITALES              *
//*            DE CLIENTES DE TERCEROS                                 *
//*            -- ZM4DHV99 --                                          *
//**********************************************************************
//PHC15P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMHV99A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD15,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//ZMHV99R1 DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC15T06),DISP=SHR
//*
//**********************************************************************01200004
//* OBJETIVO : EMITIR REPORTE DE VENTAS SIN POSICION A INICIO DE DIA   *01200004
//*            -- ZM4DHT45 --                                          *01210004
//**********************************************************************01200004
//PHC15P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PI601765  DD DUMMY
//*
//ZMHT45A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD15,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*                                                  01240004
//ZMHT45R1 DD SYSOUT=*
//SYSPRINT DD SYSOUT=*                                                  01260004
//SYSOUT   DD SYSOUT=*                                                  01270004
//SYSDBOUT DD SYSOUT=*                                                  01280004
//SYSABOUT DD DUMMY                                                     01290004
//SYSUDUMP DD DUMMY                                                     01300004
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC15T05),DISP=SHR                   01310004
//*
//**********************************************************************01320004
//* OBJETIVO : INICIALIZA EL CAMPO DE ASIGNADO HOY CTITASH DE ORDENES  *01440004
//*            -- ZM4DH578 --                                          *01450004
//**********************************************************************01320004
//PHC15P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMH578A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD15,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*                                                  01480004
//SYSPRINT DD SYSOUT=*                                                  01490004
//SYSOUT   DD SYSOUT=*                                                  01500004
//SYSDBOUT DD SYSOUT=*                                                  01510004
//SYSABOUT DD DUMMY                                                     01520004
//SYSUDUMP DD DUMMY                                                     01530004
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC15T04),DISP=SHR                   01540004
//*
//**********************************************************************01550004
//* OBJETIVO : GENERACION DE CARTERA DE PROMOTORES                     *01550004
//*            -- ZM4DH526 --                                          *01560004
//**********************************************************************01550004
//PHC15P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMH526P1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD15,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*                                                  01590004
//SYSPRINT DD SYSOUT=*                                                  01600004
//SYSOUT   DD SYSOUT=*                                                  01610004
//SYSDBOUT DD SYSOUT=*                                                  01620004
//ZMH526A1 DD DISP=(,PASS),UNIT=3390,                                   01630004
//         DCB=(RECFM=FB,LRECL=61,BLKSIZE=0,DSORG=PS),                  01640004
//         SPACE=(CYL,(4,2),RLSE)                                       01650004
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(4,2),RLSE)                          01660004
//SORTWK02 DD UNIT=3390,SPACE=(CYL,(4,2),RLSE)                          01670004
//SORTWK03 DD UNIT=3390,SPACE=(CYL,(4,2),RLSE)                          01680004
//SYSABOUT DD DUMMY                                                     01690004
//SYSUDUMP DD DUMMY                                                     01700004
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC15T03),DISP=SHR                   01730004
//*
//**********************************************************************01740004
//* OBJETIVO : MARCA EL FIN DE LA ASIGNACION DEFINITIVA                *01960004
//*            -- ZM4DH579 --                                          *01970004
//**********************************************************************01740004
//PHC15P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMH579A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD15,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*                                                  02000004
//SYSPRINT DD SYSOUT=*                                                  02010004
//SYSOUT   DD SYSOUT=*                                                  02020004
//SYSDBOUT DD SYSOUT=*                                                  02030004
//SYSABOUT DD DUMMY                                                     02040004
//SYSUDUMP DD DUMMY                                                     02050004
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC15T02),DISP=SHR                   02060004
//*                                                                     02070004
//**********************************************************************02080004
//* OBJETIVO : INICIALIZA PARAMETROS  PARA PUENTE SQL                  *02080004
//*            -- ZM4DHT04 --                                          *02090004
//**********************************************************************02080004
//PHC15P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMHT04A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD15,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*                                                  02120004
//SYSPRINT DD SYSOUT=*                                                  02130004
//SYSOUT   DD SYSOUT=*                                                  02140004
//SYSDBOUT DD SYSOUT=*                                                  02150004
//SYSABOUT DD DUMMY                                                     02160004
//SYSUDUMP DD DUMMY                                                     02170004
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC15T01),DISP=SHR                   02180004
//*
//**********************************************************************02080004
//* OBJETIVO : GENERA ARCHIVO DE ESTRATOS PARA LA BANCA PATRIMONIAL    *02080004
//*            -- ZM4DHV46 --                                          *02090004
//**********************************************************************02080004
//PHC15P0C EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ESTRATOS DD DSN=MXCP.ZM.FIX.EBCM.ZMHCPD15.ESTRATO.BCM,
//        DISP=(NEW,CATLG,DELETE),
//        DCB=(LRECL=267,BLKSIZE=0,RECFM=FB,DSORG=PS),
//        UNIT=3390,
//        SPACE=(CYL,(4,2),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC15T0A),DISP=SHR                   02180004
//*
//*--------------------------------------------------------------------*
//* PASO       : PHC15P0B                                              *
//* UTILERIA   : IKJEFT1A(ZM4DHV47)                                    *
//* OBJETIVO   : GENERA ARCHIVO DE OPERACIONES CPA.VTA DE MDC          *
//*              REALIZADAS POR INTERNET                               *
//*--------------------------------------------------------------------*
//PHC15P0B EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMHV47A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD15,DISP=SHR
//ZMHV47A2 DD DSN=MXCP.ZM.FIX.E&EMP..ZMHCPD15.OPRVINT1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=116,BLKSIZE=0,RECFM=FB,DSORG=PS),
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC15T0B),DISP=SHR
//*BTRPRO3Q23-I
//*                                                                     00007847
//**********************************************************************00007848
//* PROGRAMA   : ZM3BTR03                                              *00007849
//* OBJETIVO   : SUSTITUYE LAS VARIABLES DE LAS CTC'S DINAMICAS        *00007850
//**********************************************************************00007851
//PHC15P1B EXEC PGM=ZM3BTR03,COND=(4,LT)                                00007852
//*                                                                     00007853
//E1DQ0001 DD DUMMY                                                     00007854
//E2DQ0002 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD15,DISP=SHR       00007856
//E3DQ0003 DD DSN=ZIVA.ZME.CONTROL(ZHC15T0F),DISP=SHR                   00007858
//*                                                                     00007868
//S1DQ0001 DD DSN=MXCP.ZM.TMP.E&EMP..ZMHCPD15.CONTROL1,                 00007869
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
//PHC15P2B EXEC PGM=ADUUMAIN,COND=(4,LT),                               00007883
//         PARM='MXP1,PHC15P2B,NEW,,MSGLEVEL(1)'                        00007884
//*                                                                     00007885
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR                            00007886
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00007887
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00007888
//*                                                                     00007889
//SYSREC   DD DSN=MXCP.ZM.TMP.E&EMP..ZMHCPD15.GLOMO1,                   00007890
//            SPACE=(CYL,(100,20),RLSE),                                00007892
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00007891
//            DCB=(RECFM=FB,LRECL=49,BLKSIZE=0,DSORG=PS)                00007872
//*                                                                     00007894
//SYSPRINT DD SYSOUT=*                                                  00007895
//SYSTSPRT DD SYSOUT=*                                                  00007896
//SYSOUT   DD SYSOUT=*                                                  00007897
//SYSIN    DD DSN=MXCP.ZM.TMP.E&EMP..ZMHCPD15.CONTROL1,DISP=SHR         00007898
//*
//*--------------------------------------------------------------------*
//* PASO       : PHC15P3B                                              *
//* UTILERIA   : IKJEFT1A(ZM4DHV44)                                    *
//* OBJETIVO   : GENERA ARCHIVO DE OPERACIONES CPA.VTA DE MDC          *
//*              REALIZADAS POR GLOMO                                  *
//*--------------------------------------------------------------------*
//PHC15P3B EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMHV44E1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD15,DISP=SHR
//ZMHV44E2 DD DSN=MXCP.ZM.TMP.E&EMP..ZMHCPD15.GLOMO1,DISP=SHR
//*
//ZMHV44S1 DD DSN=MXCP.ZM.FIX.E&EMP..ZMHCPD15.OPRVGLM1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=116,BLKSIZE=0,RECFM=FB,DSORG=PS),
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC15T0G),DISP=SHR
//*BTRPRO3Q23-F
//*--------------------------------------------------------------------*
//* PASO       : PHC15P0A                                              *
//* UTILERIA   : IKJEFT1A(ZM4DHV48)                                    *
//* OBJETIVO   : GENERA ARCHIVO DE OPERACIONES DETALLE CPA.VTA DE MDC  *
//*              REALIZADAS POR INTERNET                               *
//*--------------------------------------------------------------------*
//PHC15P0A EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMHV48A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD15,DISP=SHR
//*
//ZMHV48A2 DD DSN=MXCP.ZM.FIX.E&EMP..ZMHCPD15.OPRVINT2,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=234,BLKSIZE=0,RECFM=FB,DSORG=PS),
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC15T0D),DISP=SHR
//*BTRPRO3Q23I
//*                                                                     00007847
//**********************************************************************00007848
//* PROGRAMA   : ZM3BTR03                                              *00007849
//* OBJETIVO   : SUSTITUYE LAS VARIABLES DE LAS CTC'S DINAMICAS        *00007850
//**********************************************************************00007851
//PHC15P1A EXEC PGM=ZM3BTR03,COND=(4,LT)                                00007852
//*                                                                     00007853
//E1DQ0001 DD DUMMY                                                     00007854
//E2DQ0002 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD15,DISP=SHR       00007856
//E3DQ0003 DD DSN=ZIVA.ZME.CONTROL(ZHC15T0H),DISP=SHR                   00007858
//*                                                                     00007868
//S1DQ0001 DD DSN=MXCP.ZM.TMP.E&EMP..ZMHCPD15.CONTROL2,                 00007869
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
//PHC15P2A EXEC PGM=ADUUMAIN,COND=(4,LT),                               00007883
//         PARM='MXP1,PHC15P1A,NEW,,MSGLEVEL(1)'                        00007884
//*                                                                     00007885
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR                            00007886
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00007887
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00007888
//*                                                                     00007889
//SYSREC   DD DSN=MXCP.ZM.TMP.E&EMP..ZMHCPD15.GLOMO2,                   00007890
//            SPACE=(CYL,(50,20),RLSE),                                 00007891
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00007892
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=86,DSORG=PS)                00007872
//*                                                                     00007894
//SYSPRINT DD SYSOUT=*                                                  00007895
//SYSTSPRT DD SYSOUT=*                                                  00007896
//SYSOUT   DD SYSOUT=*                                                  00007897
//SYSIN    DD DSN=MXCP.ZM.TMP.E&EMP..ZMHCPD15.CONTROL2,DISP=SHR         00007898
//*
//*--------------------------------------------------------------------*
//* PASO       : PHC15P3A                                              *
//* UTILERIA   : IKJEFT1A(ZM4DHV45)                                    *
//* OBJETIVO   : GENERA ARCHIVO DE OPERACIONES DETALLE CPA.VTA DE MDC  *
//*              REALIZADAS POR GLOMO                                  *
//*--------------------------------------------------------------------*
//PHC15P3A EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMHV45E1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD15,DISP=SHR
//ZMHV45E2 DD DSN=MXCP.ZM.TMP.E&EMP..ZMHCPD15.GLOMO2,DISP=SHR
//*
//ZMHV45S1 DD DSN=MXCP.ZM.FIX.E&EMP..ZMHCPD15.OPRVGLM2,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=234,BLKSIZE=0,RECFM=FB,DSORG=PS),
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC15T0I),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PHC15P4A                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : REALIZA UNION ARCHIVOS GLOMO Y ARCHIVOS INTERNET      *
//*--------------------------------------------------------------------*
//PHC15P4A EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT    DD DUMMY
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.E&EMP..ZMHCPD15.OPRVINT1,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.E&EMP..ZMHCPD15.OPRVGLM1,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.E&EMP..ZMHCPD15.OPRVINTA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=116,BLKSIZE=0,RECFM=FB,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHC15T0J),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PHC15P5A                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : REALIZA UNION ARCHIVOS GLOMO Y ARCHIVOS INTERNET      *
//*--------------------------------------------------------------------*
//PHC15P5A EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT    DD DUMMY
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.E&EMP..ZMHCPD15.OPRVINT2,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.E&EMP..ZMHCPD15.OPRVGLM2,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.E&EMP..ZMHCPD15.OPRVINTB,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=234,BLKSIZE=0,RECFM=FB,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHC15T0K),DISP=SHR
//*BTRPRO3Q23F
//*--------------------------------------------------------------------*
