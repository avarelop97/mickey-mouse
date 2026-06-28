//ZMHLPE67 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<<   V A L O R E S   >>>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMHLPE67.                                           *
//*                                                                    *
//*   OBJETIVO  :   GENERA REPORTE DE CONCILIACION BANXICO-INDEVAL     *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    :  A SOLICITUD DE USUARIO (POR PANTALLA)         *
//*                                                                    *
//*   ELABORADO POR: SOFTTEK                                           *
//*                                                                    *
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
//* OBJETIVO : BORRA LOS ARCHIVOS DE TRABAJO                           *
//**********************************************************************
//PHL67P08 EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZHL67T08),DISP=SHR
//*
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM3DG001                                                *
//* FUNCION:  RECIBE LOS PARAMETROS ENVIADOS POR EL SUBMITIDOR        *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL67P07 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765 DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.WKF.E&EMP..S&SUC..ZMHLPE67.BXICO.OPC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=96,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//*-------------------------------------------------------------------* 00760000
//* PROGRAMA: ZM4EH011                                                * 00770000
//* FUNCION:  AGREGAR AL ARCHIVO INDEVAL LA CLAVE BANXICO Y LA        * 00780000
//*           CONTRAPARTE.                                            * 00790014
//* NO ACTUALIZA TABLAS.                                              * 00800000
//*-------------------------------------------------------------------* 00810000
//PHL67P06 EXEC PGM=IKJEFT01,COND=(4,LT)                                00820010
//PI601765 DD DUMMY                                                     00830000
//ZME011A1 DD DSN=MXCP.ZM.FIX.E&EMP..S&SUC..ZMHLPE64.INDEVALB,          00840012
//            DISP=SHR                                                  00841003
//ZME011S1 DD DSN=MXCP.ZM.WKF.E&EMP..S&SUC..ZMHLPE67.INDBXICO,          00850007
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00860000
//            SPACE=(CYL,(20,10),RLSE),                                 00870000
//            DCB=(RECFM=FB,DSORG=PS,LRECL=190,BLKSIZE=0)               00880000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00890000
//SYSPRINT DD SYSOUT=*                                                  00900000
//SYSOUT   DD SYSOUT=*                                                  00910000
//SYSDBOUT DD SYSOUT=*                                                  00920000
//SYSABOUT DD SYSOUT=*                                                  00930000
//SYSUDUMP DD DUMMY                                                     00940000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL67T06),DISP=SHR                   00950010
//*                                                                     00960000
//*-------------------------------------------------------------------* 00970000
//* PROGRAMA: SORT                                                    * 00980000
//* FUNCION:  EXTRAER REGISTROS DEL INDEVAL DE LA POSICION A PROCESAR * 00990000
//*           ORDENADO CLAVE BANXICO.                                 * 01000014
//* NO ACTUALIZA TABLAS.                                              * 01010000
//*-------------------------------------------------------------------* 01020000
//PHL67P05 EXEC PGM=ICEMAN,COND=(4,LT)                                  01030010
//PI601765 DD DUMMY                                                     01040000
//SYSOUT   DD SYSOUT=*                                                  01050000
//SORTIN   DD DSN=MXCP.ZM.WKF.E&EMP..S&SUC..ZMHLPE67.INDBXICO,          01060005
//            DISP=SHR                                                  01061003
//SORTOUT  DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMHLPE67.INDBGLO,           01070014
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        01080000
//            SPACE=(CYL,(20,10),RLSE),                                 01090000
//            DCB=(RECFM=FB,DSORG=PS,LRECL=156,BLKSIZE=0)               01100000
//SYSTSPRT DD SYSOUT=*                                                  01110000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL67T05),DISP=SHR                   01141010
//*                                                                     01160000
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM3EH007                                                *
//* FUNCION:  REPORTE CONCILIACION BANXICO-INDEVAL                    *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL67P04 EXEC PGM=ZM3EH007,COND=(4,LT)
//*
//PI601765 DD  DUMMY
//ZME007A1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMHLPE63.BANGLO,
//            DISP=SHR
//ZME007A2 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMHLPE67.INDBGLO,
//            DISP=SHR
//ZME007A3 DD DSN=MXCP.ZM.WKF.E&EMP..S&SUC..ZMHLPE67.BXICO.OPC,
//            DISP=SHR
//ZME007R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4EH013                                                *
//* FUNCION:  ACTUALIZA EVENTOS                                       *
//*-------------------------------------------------------------------*
//PHL67P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZME013A1 DD DSN=MXCP.ZM.WKF.E&EMP..S&SUC..ZMHLPE67.BXICO.OPC,
//            DISP=SHR
//ZME013A2 DD DSN=MXCP.ZM.FIX.E&EMP..S&SUC..ZMHLPE62.BANXICO,
//            DISP=SHR
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL67T03),DISP=SHR
//*
//*--------------------------------------------------------------------
//*        AVISO EN CASO DE ERROR A LA CONSOLA
//*--------------------------------------------------------------------
//PHL67P02 EXEC PGM=MAILOPER,COND=(4,GE,PHL67P03),
//         PARM=('/ATENCION OPERADOR.AVISAR A PRODUCCION QUE',
//             ' PROCESO SIVAXBX8 TERMINO MAL.CONTESTAR SI',
//             'PARA TERMINAR')
//*
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-D                 *
//****************************************************************
//PHL67P01 EXEC PGM=CTMCND,PARM='ADD COND SIVAXBX8_IN_SEP_OK WDATE',
//         COND=(4,LT)
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD SYSOUT=*
//SYSPRINT DD DUMMY
//SYSUDUMP DD DUMMY
//DAPRINT  DD SYSOUT=*
//DACNDIN  DD DDNAME=SYSIN
//*
