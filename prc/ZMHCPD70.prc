//**********************************************************************00020004
//ZMHCPD70  PROC                                                        00010004
//**********************************************************************00020004
//*                                                                    *00030004
//*                   C A S A   D E  B O L S A                         *00030004
//*                   ========================                         *00030004
//*                   <<  V A L O R E S  >>                            *00030004
//*                                                                    *00030004
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00120004
//*                                                                    *00130004
//* PROCESO        :  ZMHCPD70 3RA. ULTIMA PARTE.                      *00140004
//*                   CIERRE DE DIA DEL MODULO DE CAPITALES            *00150004
//*                                                                    *00160004
//* OBJETIVO       :  CERRAR LA OPERACION DEL DIA DE CAPITALES ENVIADO *00170004
//*                   POR CONTROL-M                                    *00180004
//*                                                                    *00190004
//* CORRE                                                              *00200004
//* ANTES DE       :  ZMHCPD10 (CIERRE DE VALORES)                     *00210004
//*                                                                    *00220004
//* DESPUES DE     :  ZMHCPD60(2DA. PARTE CIERRE DE CAPITALES).        *00230004
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
//**********************************************************************
//*                                                                    *
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*
//*  PHC70P13     GRABA EN UN ARCHIVO SECUENCIAL.                      *
//*                                                         ZM3DH001   *
//**********************************************************************
//* USUARIO :  SOFTWARE FACTORY MEXICO  ACCENTURE  (XM09016)          *
//*  PASO:        CAMBIO:                                              *
//*  PHC70P12     MODIFICACION DE LONGITUD DE ARCHIVOS DE 200 A 239    *
//*  PHC70P07     MODIFICACION DE LONGITUD DE ARCHIVOS DE 152 A 165    *
//**********************************************************************
//*                     ===   INICIO DE     ===                        *
//*                     ===   CAPITALES     ===                        *
//**********************************************************************
//PHC70P13 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','CBPZPR','     ',)
//PI601765  DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD70,
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
//**********************************************************************00310004
//*--------------------------------------------------------------------*
//* OBJETIVO : GENERAR ARCHIVO CON LOS HECHOS OPERADOS EN EL DIA.      *
//*        -- ZM4DH010 --                                              *
//*--------------------------------------------------------------------*
//PHC70P12 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMH010A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD70,DISP=SHR
//*
//ZMH010A2 DD DSN=SIVA.MDC.FIX.E&EMP..HECHOS,
//*ZMH010A2 DD DSN=GFPP.CB.FIX.HECHOS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=239,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(5,1),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC70T12),DISP=SHR
//*
//**********************************************************************
//*--------------------------------------------------------------------*00320004
//*                       * IDCAMS  *                                  *00330004
//* OBJETIVO: BORRA EL ARCHIVO SIVA.MDD.FIX.PROPIA1.                   *00340004
//* REVISAR : BORRA EL ARCHIVO SIVA.MDD.FIX.ECBP.SZPR.PROPIA1.         *00340004
//*--------------------------------------------------------------------*00350004
//PHC70P11 EXEC PGM=IDCAMS,COND=(4,LT)
//PI601765  DD DUMMY
//*
//SYSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC70T11),DISP=SHR                     00380004
//SYSPRINT DD SYSOUT=*                                                  00390004
//SYSOUT   DD SYSOUT=*                                                  00400004
//**********************************************************************00410004
//*--------------------------------------------------------------------*00410004
//*      -- VOBN64D --   -- ZM4DHN64 --                                *00410004
//*VOBN64D GENERAR ARCHIVO DE OPERACIONES DE LA CUENTA 5035944         *00420004
//*--------------------------------------------------------------------*00430004
//PHC70P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMHN64P1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD70,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=1320                                 00450004
//SYSPRINT DD SYSOUT=*                                                  00460004
//SYSOUT   DD SYSOUT=*                                                  00470004
//PRINT    DD SYSOUT=*                                                  00480004
//SYSDBOUT DD SYSOUT=*                                                  00490004
//SYSUDUMP DD DUMMY                                                     00510004
//ZMHN64A1 DD DSN=SIVA.MDD.FIX.E&EMP..PROPIA1,                          00520004
//*ZMHN64A1 DD DSN=GFPP.CB.FIX.PROPIA1,                                 00520004
//            DISP=(NEW,CATLG,CATLG),                                   00530004
//            DCB=(DSORG=PS,RECFM=FBA,LRECL=115,BLKSIZE=0),             00540004
//            UNIT=3390,                                                00550004
//            SPACE=(CYL,(5,1),RLSE)                                    00560004
//SYSABOUT DD DUMMY                                                     00570004
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC70T10),DISP=SHR                   00590004
//**********************************************************************00600004
//*--------------------------------------------------------------------*00600004
//*      -- VOBN64D --   -- ZM4DHN64 --                                *00410004
//*VOBN64D GENERAR ARCHIVO DE OPERACIONES DE LA CUENTA 5164017         *00610004
//*--------------------------------------------------------------------*00620004
//PHC70P09 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMHN64P1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD70,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=2420                                 00640004
//SYSPRINT DD SYSOUT=*                                                  00650004
//SYSOUT   DD SYSOUT=*                                                  00660004
//SYSDBOUT DD SYSOUT=*                                                  00670004
//ZMHN64A1 DD DSN=SIVA.MDD.FIX.E&EMP..PROPIA1,                          00680004
//*ZMHN64A1 DD DSN=GFPP.CB.FIX.PROPIA1,                                 00680004
//            DISP=MOD                                                  00690004
//SYSABOUT DD DUMMY                                                     00700004
//SYSUDUMP DD DUMMY                                                     00710004
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC70T09),DISP=SHR                   00720004
//**********************************************************************00730004
//*--------------------------------------------------------------------*00730004
//*      -- VOBN64D --   -- ZM4DHN64 --                                *00410004
//*VOBN64D GENERAR ARCHIVO DE OPERACIONES DE LA CUENTA 5207410         *00740004
//*--------------------------------------------------------------------*00750004
//PHC70P08 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMHN64P1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD70,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=2420                                 00770004
//SYSPRINT DD SYSOUT=*                                                  00780004
//SYSOUT   DD SYSOUT=*                                                  00790004
//SYSDBOUT DD SYSOUT=*                                                  00800004
//ZMHN64A1 DD DSN=SIVA.MDD.FIX.E&EMP..PROPIA1,                          00810004
//*ZMHN64A1 DD DSN=GFPP.CB.FIX.PROPIA1,                                 00810004
//            DISP=MOD                                                  00820004
//SYSABOUT DD DUMMY                                                     00830004
//SYSUDUMP DD DUMMY                                                     00840004
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC70T08),DISP=SHR                   00850004
//**********************************************************************00860004
//*--------------------------------------------------------------------*00860004
//*        -- VOBT47D --        -- ZM4DHT47 --                         *00990004
//*VOBT47D GENERAR ARCHS CON OPERACION DEL DIA                         *01000004
//*--------------------------------------------------------------------*01010004
//PHC70P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMGT47P1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD70,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=133                                  01030004
//ZMGT47A1 DD DSN=SIVA.MDC.FIX.E&EMP..VOBT47A1,                         01040004
//*ZMGT47A1 DD DSN=GFPP.CB.FIX.VOBT47A1,                                01040004
//            DISP=(NEW,CATLG,DELETE),                                  01050004
//            DCB=(DSORG=PS,RECFM=FBA,LRECL=165,BLKSIZE=0),             01060004
//            UNIT=3390,                                                01070004
//            SPACE=(CYL,(5,1),RLSE)                                    01080004
//ZMGT47A2 DD DSN=SIVA.MDC.FIX.E&EMP..VOBT47A2,                         01090004
//*ZMGT47A2 DD DSN=GFPP.CB.FIX.VOBT47A2,                                01090004
//            DISP=(NEW,CATLG,DELETE),                                  01100004
//            DCB=(DSORG=PS,RECFM=FBA,LRECL=165,BLKSIZE=0),             01110004
//            UNIT=3390,                                                01120004
//            SPACE=(CYL,(5,1),RLSE)                                    01130004
//ZMGT47R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     01140004
//SYSPRINT DD SYSOUT=*                                                  01140004
//SYSOUT   DD SYSOUT=*                                                  01150004
//SYSDBOUT DD SYSOUT=*                                                  01160004
//SYSABOUT DD DUMMY                                                     01170004
//SYSUDUMP DD DUMMY                                                     01180004
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC70T07),DISP=SHR                   01190004
//**********************************************************************01200004
//*--------------------------------------------------------------------*01200004
//*        -- VOBT45D --          -- ZM4DHT45 --                       *01200004
//*VOBT45D EMITIR REPORTE DE VENTAS SIN POSICION A INICIO DE DIA       *01210004
//*REVISAR : FALTAN DATOS.                                             *01210004
//*--------------------------------------------------------------------*01220004
//PHC70P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMHT45A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD70,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=133                                  01240004
//ZMHT45R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*                                                  01260004
//SYSOUT   DD SYSOUT=*                                                  01270004
//SYSDBOUT DD SYSOUT=*                                                  01280004
//SYSABOUT DD DUMMY                                                     01290004
//SYSUDUMP DD DUMMY                                                     01300004
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC70T06),DISP=SHR                   01310004
//**********************************************************************01320004
//*--------------------------------------------------------------------*01320004
//*        -- VOB578D --        -- ZM4DH578 --                         *01440004
//*        INICIALIZA EL CAMPO DE ASIGNADO HOY CTITASH DE ORDENES      *01450004
//*--------------------------------------------------------------------*01460004
//PHC70P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMH578A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD70,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    01480004
//SYSPRINT DD SYSOUT=*                                                  01490004
//SYSOUT   DD SYSOUT=*                                                  01500004
//SYSDBOUT DD SYSOUT=*                                                  01510004
//SYSABOUT DD DUMMY                                                     01520004
//SYSUDUMP DD DUMMY                                                     01530004
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC70T05),DISP=SHR                   01540004
//**********************************************************************01550004
//*--------------------------------------------------------------------*01550004
//*        -- VOB526D --        -- ZM4DH526 --                         *01550004
//*        GENERACION DE CARTERA DE PROMOTORES                         *01560004
//*--------------------------------------------------------------------*01570004
//PHC70P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMH526P1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD70,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    01590004
//SYSPRINT DD SYSOUT=*                                                  01600004
//SYSOUT   DD SYSOUT=*                                                  01610004
//SYSDBOUT DD SYSOUT=*                                                  01620004
//ZMH526A1 DD DISP=(,PASS),UNIT=3390,                                   01630004
//            DCB=(RECFM=FB,LRECL=61,BLKSIZE=0),                        01640004
//            SPACE=(CYL,(5,1),RLSE)                                    01650004
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(1,1),RLSE)                          01660004
//SORTWK02 DD UNIT=3390,SPACE=(CYL,(1,1),RLSE)                          01670004
//SORTWK03 DD UNIT=3390,SPACE=(CYL,(1,1),RLSE)                          01680004
//SYSABOUT DD DUMMY                                                     01690004
//SYSUDUMP DD DUMMY                                                     01700004
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC70T04),DISP=SHR                   01730004
//**********************************************************************01740004
//*--------------------------------------------------------------------*01740004
//*        -- VOB579D --         -- ZM4DH579 --                        *01960004
//*        MARCA EL FIN DE LA ASIGNACION DEFINITIVA                    *01970004
//*--------------------------------------------------------------------*01980004
//PHC70P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMH579A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD70,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    02000004
//SYSPRINT DD SYSOUT=*                                                  02010004
//SYSOUT   DD SYSOUT=*                                                  02020004
//SYSDBOUT DD SYSOUT=*                                                  02030004
//SYSABOUT DD DUMMY                                                     02040004
//SYSUDUMP DD DUMMY                                                     02050004
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC70T03),DISP=SHR                   02060004
//**********************************************************************02070004
//*--------------------------------------------------------------------*02080004
//*        -- VOBT04D --         -- ZM4DHT04 --                        *02080004
//*        INICIALIZA PARAMETROS  PARA PUENTE SQL                      *02090004
//*--------------------------------------------------------------------*02100004
//PHC70P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMHT04A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD70,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    02120004
//SYSPRINT DD SYSOUT=*                                                  02130004
//SYSOUT   DD SYSOUT=*                                                  02140004
//SYSDBOUT DD SYSOUT=*                                                  02150004
//SYSABOUT DD DUMMY                                                     02160004
//SYSUDUMP DD DUMMY                                                     02170004
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC70T02),DISP=SHR                   02180004
//**********************************************************************02080004
//*--------------------------------------------------------------------*02080004
//*         -- VOBV14O --       -- ZM4DHV14 --                         *02080004
//*VOBV14O ENVIA CARTERA OPERADOR A DESPACHADOR BP                     *02090004
//*--------------------------------------------------------------------*02100004
//PHC70P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMHV14A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD70,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    02120004
//SYSPRINT DD SYSOUT=*                                                  02130004
//SYSOUT   DD SYSOUT=*                                                  02140004
//SYSDBOUT DD SYSOUT=*                                                  02150004
//SYSABOUT DD DUMMY                                                     02160004
//SYSUDUMP DD DUMMY                                                     02170004
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC70T01),DISP=SHR                   02180004
//*                                                                     02190004
