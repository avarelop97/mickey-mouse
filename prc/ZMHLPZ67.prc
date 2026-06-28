//ZMHLPZ67 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<<   V A L O R E S   >>>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMHLPE67 (OPC. 782Z008)                             *
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
//*-------------------------------------------------------------------* 00760000
//* PROGRAMA: ZM4EH011                                                * 00770000
//* FUNCION:  AGREGAR AL ARCHIVO INDEVAL LA CLAVE BANXICO Y LA        * 00780000
//*           CONTRAPARTE.                                            * 00790014
//* NO ACTUALIZA TABLAS.                                              * 00800000
//*-------------------------------------------------------------------* 00810000
//PHL67P06 EXEC PGM=IKJEFT01,COND=(4,LT)                                00820010
//PI601765 DD DUMMY                                                     00830000
//ZME011A1 DD DSN=MXCP.ZM.FIX.EMP.SUC.ZMHLPE64.INDEVALB,                00840012
//            DISP=SHR                                                  00841003
//ZME011S1 DD DSN=MXCP.ZM.WKF.EMP.SUC.ZMHLPE67.INDBXICO,                00850007
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
//SORTIN   DD DSN=MXCP.ZM.WKF.EMP.SUC.ZMHLPE67.INDBXICO,                01060005
//            DISP=SHR                                                  01061003
//SORTOUT  DD DSN=MXCP.ZM.TMP.EMP.SUC.ZMHLPE67.INDBGLO,                 01070014
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
//ZME007A1 DD DSN=MXCP.ZM.TMP.EMP.SUC.ZMHLPE63.BANGLO,
//            DISP=SHR
//ZME007A2 DD DSN=MXCP.ZM.TMP.EMP.SUC.ZMHLPE67.INDBGLO,
//            DISP=SHR
//ZME007A3 DD DSN=MXCP.ZM.WKF.EMP.SUC.ZMHLPE67.BXICO.OPC,
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
//ZME013A1 DD DSN=MXCP.ZM.WKF.EMP.SUC.ZMHLPE67.BXICO.OPC,
//            DISP=SHR
//ZME013A2 DD DSN=MXCP.ZM.FIX.EMP.SUC.ZMHLPE62.BANXICO,
//            DISP=SHR
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL67T03),DISP=SHR
//*
//****************************************************************
//*        TERMINA PROCESO  Z M H L P Z 6 7                      *
//****************************************************************
