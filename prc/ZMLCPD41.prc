//ZMLCPD41 PROC                                                         00040000
//*                                                                     00003000
//**********************************************************************00003000
//*                     C A S A   D E  B O L S A                       *00003000
//*                     ========================                       *00003000
//*                     <<  MERCADO DE DINERO >>                       *00003000
//*                                                                    *00003000
//*   APLICACION:  S I S T E M A   M U L T I E M P R E S A             *00003000
//*                                                                    *00003000
//*   PROCEDIM. :  ZMLCPD41.                                           *00003000
//*                                                                    *00003000
//*   OBJETIVO  :  AMORTIZACION PARCIAL DE EMISORAS  DE MDD.           *00003000
//*                                                                    *00003000
//*   CORRE DESPUES DE:  SIVAXRRA                                      *00003000
//*                                                                    *00003000
//*   CORRE ANTES DE  :                                                *00003000
//*                                                                    *00003000
//*   PERIODICIDAD    :  DIARIO                                        *00003000
//*                                                                    *00003000
//*   ELABORADO POR   :  AZERTIA-INDRA                                 *00003000
//*                                                                    *00003000
//*   FECHA:  JULIO 2008.                                              *00003000
//*                                                                    *00003000
//**********************************************************************00003000
//*                      LOG DE MODIFICACIONES                         *00003000
//**********************************************************************00003000
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *00003000
//*--------------------------------------------------------------------*00003000
//*MODIF          |USUARIO|FECHA |DESCRIPCION                          *00003000
//*--------------------------------------------------------------------*00003000
//*CALIDAD-DELDATO|XM010ZL|191010|SE INCLUYE ARCHIVO SALIDA -> ENTRADA *00003000
//*                              |PARA BLOQUEO DE CONTRATOS QUE PAGAN  *00003000
//*                              |GARANTIAS.                           *00003000
//*---------------------------------------------------------------------
//* MODIFICO:       IGNACIO ESQUIVEL FLORES
//* FECHA   :       ABRIL 2023
//* ASUNTO:         INCREMENTO FOLIO CONCEPT
//* MARCA :         SDATOOL-41254-IEF-INI (INICIO BLOQUE)
//*                 SDATOOL-41254-IEF-FIN (FIN    BLOQUE)
//*---------------------------------------------------------------------
//**********************************************************************00003000
//*                                                                    *00003000
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*00003000
//*               GRABA EN ARCHIVO SECUENCIAL.                         *00003000
//*                                                         ZM3DG001   *00003000
//**********************************************************************00003000
//PLC41P25 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','&INT1','&INT2',)      00003000
//*                                                                     00003000
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLCPD41,               00003000
//            DISP=(NEW,CATLG,DELETE),                                  00003000
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00003000
//            UNIT=3390,SPACE=(CYL,(1,1),RLSE)                          00003000
//*                                                                     00003000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00003000
//SYSPRINT DD SYSOUT=*                                                  00003000
//SYSOUT   DD SYSOUT=*                                                  00003000
//SYSDBOUT DD SYSOUT=*                                                  00003000
//SYSABOUT DD DUMMY                                                     00003000
//SYSUDUMP DD DUMMY                                                     00003000
//*                                                                     00003000
//**********************************************************************00003000
//*                <<<   PASO REINICIABLE POR RESTART  >>>             *00003000
//*  PASO:  2   GENERA ARCHIVO CON LA POSICION DE TITULOS QUE SE VAN   *00003000
//*  A AMORTIZAR PARCIALMENTE DE UNA EMISORA DADA     -  ZM4DLH73  -   *00003000
//**********************************************************************00003000
//PLC41P20 EXEC PGM=IKJEFT01,COND=(4,LT)                                00003000
//*                                                                     00003000
//ZMLH73A1 DD DSN=MXCP.ZM.FIX.MDD.ECBP.SZPR.ZMLLPE38,DISP=SHR           00003000
//*                                                                     00003000
//*SDATOOL-41254-IEF-INI                                                00003000
//ZMLH73A2 DD DSN=MXCP.ZM.WKF.MDD.E&EMP..AMORT.TITUL,                   00003000
//            DISP=(NEW,CATLG,DELETE),                                  00003000
//            SPACE=(CYL,(20,10),RLSE),                                 00003000
//*           DCB=(DSORG=PS,RECFM=FB,LRECL=080,BLKSIZE=0),              00003000
//            DCB=(DSORG=PS,RECFM=FB,LRECL=083,BLKSIZE=0),              00003000
//            UNIT=3390                                                 00003000
//*SDATOOL-41254-IEF-FIN                                                00003000
//*                                                                     00003000
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00003000
//SYSPRINT DD  SYSOUT=*                                                 00003000
//SYSOUT   DD  SYSOUT=*                                                 00003000
//SYSDBOUT DD  SYSOUT=*                                                 00003000
//SYSABOUT DD  DUMMY                                                    00003000
//SYSUDUMP DD  DUMMY                                                    00003000
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLC41T20),DISP=SHR                  00003000
//*                                                                     00003000
//**********************************************************************00003000
//*                <<<   PASO REINICIABLE POR RESTART  >>>             *00003000
//*  PASO:  3   REALIZA SORT POR CUENTA JUMBO ASC Y TITULOS DESC       *00003000
//*                                                                    *00003000
//**********************************************************************00003000
//PLC41P15 EXEC PGM=ICEMAN,COND=(4,LT)                                  00003000
//*                                                                     00003000
//SYSOUT   DD SYSOUT=*                                                  00003000
//SORTIN   DD DSN=MXCP.ZM.WKF.MDD.E&EMP..AMORT.TITUL,DISP=SHR           00003000
//*SDATOOL-41254-IEF-INI                                                00003000
//SORTOUT  DD DSN=MXCP.ZM.WKF.MDD.E&EMP..AMORT.TITUL.SORT,              00003000
//            DISP=(NEW,CATLG,DELETE),                                  00003000
//            SPACE=(CYL,(20,10),RLSE),                                 00003000
//*           DCB=(DSORG=PS,RECFM=FB,LRECL=080,BLKSIZE=0),              00003000
//            DCB=(DSORG=PS,RECFM=FB,LRECL=083,BLKSIZE=0),              00003000
//            UNIT=3390                                                 00003000
//*SDATOOL-41254-IEF-INI                                                00003000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLC41T15),DISP=SHR                   00003000
//*                                                                     00003000
//**********************************************************************00003000
//*                <<<   PASO REINICIABLE POR RESTART  >>>             *00003000
//*  PASO:  4   REALIZA MARCA POR CAMBIO DE JUMBO EN EL ARCHIVO DE     *00003000
//*  POSICION                                         -  ZM4DLH75  -   *00003000
//**********************************************************************00003000
//PLC41P10 EXEC PGM=IKJEFT01,COND=(4,LT)                                00003000
//*                                                                     00003000
//ZMLH75A1 DD DSN=MXCP.ZM.FIX.MDD.ECBP.SZPR.ZMLLPE38,DISP=SHR           00003000
//*                                                                     00003000
//ZMLH75A2 DD DSN=MXCP.ZM.WKF.MDD.E&EMP..AMORT.TITUL.SORT,DISP=SHR      00003000
//*                                                                     00003000
//*SDATOOL-41254-IEF-INI                                                00003000
//ZMLH75A3 DD DSN=MXCP.ZM.WKF.MDD.E&EMP..AMORT.TITUL.MARKA,             00003000
//            DISP=(NEW,CATLG,DELETE),                                  00003000
//            SPACE=(CYL,(20,10),RLSE),                                 00003000
//*           DCB=(DSORG=PS,RECFM=FB,LRECL=080,BLKSIZE=0),              00003000
//            DCB=(DSORG=PS,RECFM=FB,LRECL=083,BLKSIZE=0),              00003000
//            UNIT=3390                                                 00003000
//*SDATOOL-41254-IEF-FIN                                                00003000
//*                                                                     00003000
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00003000
//SYSPRINT DD  SYSOUT=*                                                 00003000
//SYSOUT   DD  SYSOUT=*                                                 00003000
//SYSDBOUT DD  SYSOUT=*                                                 00003000
//SYSABOUT DD  DUMMY                                                    00003000
//SYSUDUMP DD  DUMMY                                                    00003000
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLC41T10),DISP=SHR                  00003000
//*                                                                     00003000
//**********************************************************************00003000
//*                <<<   PASO REINICIABLE POR RESTART  >>>             *00003000
//*  PASO:  5   REALIZA LA AMORTIZACION POR TITULOS O VALOR NOMINAL    *00003000
//*  POSICION                                         -  ZM4DLH79  -   *00003000
//**********************************************************************00003000
//PLC41P05 EXEC PGM=IKJEFT01,COND=(4,LT)                                00003000
//*                                                                     00003000
//ZMLH74A1 DD DSN=MXCP.ZM.FIX.MDD.ECBP.SZPR.ZMLLPE38,DISP=SHR           00003000
//*                                                                     00003000
//ZMLH74A2 DD DSN=MXCP.ZM.WKF.MDD.E&EMP..AMORT.TITUL.MARKA,DISP=SHR     00003000
//*                                                                     00003000
//ZMLH74R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00003000
//*                                                                     00003000
//ZMLH74A3 DD DSN=MXCP.ZM.FIX.MDD.E&EMP..AMORT.TITUL2,                  00003000
//            DISP=(NEW,CATLG,DELETE),                                  00003000
//            SPACE=(CYL,(20,10),RLSE),                                 00003000
//            DCB=(DSORG=PS,RECFM=FB,LRECL=077,BLKSIZE=0),              00003000
//            UNIT=3390                                                 00003000
//*CALIDAD-DELDATO-I
//ZMLH74A4 DD  DSN=MXCP.ZM.FIX.MDD.E&EMP..S&SUC..ZMLH74A4,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(20,10),RLSE),
//             DCB=(DSORG=PS,LRECL=10,BLKSIZE=0,RECFM=FB)
//*CALIDAD-DELDATO-F
//*                                                                     00003000
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00003000
//SYSPRINT DD  SYSOUT=*                                                 00003000
//SYSOUT   DD  SYSOUT=*                                                 00003000
//SYSDBOUT DD  SYSOUT=*                                                 00003000
//SYSABOUT DD  DUMMY                                                    00003000
//SYSUDUMP DD  DUMMY                                                    00003000
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLC41T05),DISP=SHR                  00003000
//*                                                                     00003000
//**********************************************************************
//*                <<<   PASO REINICIABLE POR RESTART  >>>             *
//*  PASO:  6   REALIZA SORT POR CUENTA JUMBO ASC Y TITULOS DESC       *
//*                                                                    *
//**********************************************************************
//PLC41P04 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.MDD.E&EMP..AMORT.TITUL2,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.MDD.E&EMP..AMORT.TITUL2.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=077,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLC41T04),DISP=SHR
//*                                                                     00003000
//**********************************************************************00003000
//*                <<<   PASO REINICIABLE POR RESTART  >>>             *00003000
//*  PASO:  7   UNICAMENTE REPORTE DE AMORTIZACION PARCIAL DE TITULOS  *00003000
//*  POSICION                                         -  ZM4DLX30  -   *00003000
//**********************************************************************00003000
//*
//PLC41P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLX30A1 DD DSN=MXCP.ZM.FIX.MDD.ECBP.SZPR.ZMLLPE38,DISP=SHR
//*
//ZMLX30A2 DD DSN=MXCP.ZM.FIX.MDD.E&EMP..AMORT.TITUL2.SORT,DISP=SHR
//*
//ZMLX30R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLC41T03),DISP=SHR
//*
//**********************************************************************
//*  PROGRAMA: ZM4DLE11
//*  FUNCION:  ACTUALIZA EL FINAL DEL PROCESO DE AMORTIZACIONES
//*            (ACT EN "F" EL EVENTO APT).
//**********************************************************************
//PLC41P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLE11A1 DD DSN=MXCP.ZM.FIX.MDD.ECBP.SZPR.ZMLLPE38,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLC41T02),DISP=SHR
//*
//*CALIDAD-DELDATO-I
//**********************************************************************
//*  PROGRAMA: ZM4DLX31
//*  FUNCION:  ACTUALIZA LA TABLA CUENTA Y CAUSCAN CANDADO 1 PARA
//*            GARANTIAS DE AMORTIZACION
//**********************************************************************
//PLC41P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.MDD.E&EMP..S&SUC..ZMLH74A4,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLC41T01),DISP=SHR
//*
//*CALIDAD-DELDATO-F
//**********************************************************************00003000
//*            F I N      Z M L C P D 4 0                              *00003000
//**********************************************************************00003000
