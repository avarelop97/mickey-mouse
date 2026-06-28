//ZMHLPE63 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<<   V A L O R E S   >>>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMHLPE63.                                           *
//*                                                                    *
//*   OBJETIVO  :  PREPARAR ARCHIVO BANXICO PARA LA CONCLIACION CON    *
//*                SIVA E INDEVAL.                                     *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    :  A SOLICITUD DE USUARIO (POR PANTALLA)         *
//*                                                                    *
//*   ELABORADO POR   :  SOFTTEK / ELIZABETH COLIN (ECV)               *
//*   MODIFICADO POR  :  SOFTTEK / EDUARDO MORALES                     *
//*
//*   FECHA:  MAYO 2004.                                               *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*MODXXX|0001-01-01|USUARIO|PASO    |DESCRIPCION DE LA MODIFICACION   *
//*      |          |       |        |                                 *
//**********************************************************************
//* OBMETIVO : BORRA LOS ARCHIVOS DE TRABAJO                           *
//**********************************************************************
//PHL63P07 EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZHL63T07),DISP=SHR
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM3DG001                                                *
//* FUNCION:  RECIBE LOS PARAMETROS ENVIADOS POR EL SUBMITIDOR        *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL63P06 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',),COND=(4,LT)
//*
//ZMG001A1 DD DSN=MXCP.ZM.WKF.E&EMP..S&SUC..ZMHLPE63.BXICO.OPC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=96,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*-------------------------------------------------------------------*
//* PROGRAMA: SORT                                                    *
//* FUNCION:  OBTENER FECHA DE ARCHIVO OPCION                         *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL63P05 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.WKF.E&EMP..S&SUC..ZMHLPE63.BXICO.OPC,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.WKF.E&EMP..S&SUC..ZMHLPE63.FECHA0,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=242,BLKSIZE=0)
//*SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL63T05),DISP=SHR                   00183716
//*                                                                     00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: SORT                                                    *
//* FUNCION:  GENERA ARCHIVO BANXICO 274 A 242 .                      *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL63PA5 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.E&EMP..S&SUC..ZMHLPE62.BANXI274,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMHLPE62.BANXICO,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=242,BLKSIZE=0)
//*SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL63TA5),DISP=SHR                   00183716
//*                                                                     00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: ICEGENER                                                *
//* FUNCION:  GENERA ARCHIVO BANXICO  TMP A FIX                       *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL63PB5 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD  DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMHLPE62.BANXICO,DISP=SHR
//SYSUT2   DD  DSN=MXCP.ZM.FIX.E&EMP..S&SUC..ZMHLPE62.BANXICO,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(20,10),RLSE),
//             DCB=(RECFM=FB,DSORG=PS,LRECL=242,BLKSIZE=0)
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSIN    DD  DUMMY
//*
//*-------------------------------------------------------------------*
//* PROGRAMA: SORT                                                    *
//* FUNCION:  ORDENAR ARCHIVO BANXICO POR CLAVE Y CONTRAPARTE         *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL63P04 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.WKF.E&EMP..S&SUC..ZMHLPE63.FECHA0,
//            DISP=SHR
//         DD DSN=MXCP.ZM.FIX.E&EMP..S&SUC..ZMHLPE62.BANXICO,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMHLPE63.BANCTAS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=242,BLKSIZE=0)
//*SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL63T04),DISP=SHR                   00183716
//*                                                                     00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: SORT SUM                                                *
//* FUNCION:  ORDENAR ARCHIVO POR CLAVE BANXICO, SUMANDO TITULOS      *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL63P03 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.WKF.E&EMP..S&SUC..ZMHLPE63.FECHA0,
//            DISP=SHR
//         DD DSN=MXCP.ZM.FIX.E&EMP..S&SUC..ZMHLPE62.BANXICO,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMHLPE63.BANGLO,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=242,BLKSIZE=0)
//*SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL63T03),DISP=SHR                   00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4EH013                                                *
//* FUNCION:  ACTUALIZA EVENTOS                                       *
//*-------------------------------------------------------------------*
//PHL63P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZME013A1 DD DSN=MXCP.ZM.WKF.E&EMP..S&SUC..ZMHLPE63.BXICO.OPC,
//            DISP=SHR
//ZME013A2 DD DSN=MXCP.ZM.FIX.E&EMP..S&SUC..ZMHLPE62.BANXICO,
//            DISP=SHR
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL63T02),DISP=SHR
//*
//*--------------------------------------------------------------------
//*        AVISO EN CASO DE ERROR A LA CONSOLA
//*--------------------------------------------------------------------
//PHL63P01 EXEC PGM=MAILOPER,COND=(4,GE,PHL63P02),
//         PARM=('/ATENCION OPERADOR.AVISAR A PRODUCCION QUE',
//             ' PROCESO SIVAXBX4 TERMINO MAL.CONTESTAR SI',
//             'PARA TERMINAR')
//*
