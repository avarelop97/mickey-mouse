//ZMHLPZ66 PROC                                                         00000100
//**********************************************************************00000200
//*                     C A S A   D E   B O L S A                      *00000300
//*                     =========================                      *00000400
//*                     <<<   V A L O R E S   >>>                      *00000500
//*                                                                    *00000600
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00000700
//*                                                                    *00000800
//*   PROCEDIM. :  ZMHLPE66 (OPC. 782Z007)                             *00000900
//*                                                                    *00001000
//*   OBJETIVO  :  GENERAR REPORTE DE CONCILIACION BANXICO VS. SIVA    *00001100
//*                DE UNA SEMANA ANTERIOR.                             *00001200
//*                                                                    *00001300
//*   CORRE ANTES DE  :  NINGUNO                                       *00001400
//*                                                                    *00001500
//*   CORRE DESPUES DE:  NINGUNO                                       *00001600
//*                                                                    *00001700
//*   PERIODICIDAD    :  A SOLICITUD DE USUARIO (POR PANTALLA)         *00001800
//*                                                                    *00001900
//*   ELABORADO POR: SOFTTEK / GIANCARLO RODRIGUEZ (GIRM)              *00002000
//*                                                                    *00002100
//*   FECHA:  MAYO 2004.                                               *00002200
//*                                                                    *00002300
//**********************************************************************00002400
//*                      LOG DE MODIFICACIONES                         *00002500
//**********************************************************************00002600
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *00002700
//*--------------------------------------------------------------------*00002800
//*MODXXX|0001-01-01|USUARIO|PASO    |DESCRIPCION DE LA MODIFICACION   *00002900
//*      |          |       |        |                                 *00003000
//**********************************************************************00003100
//*-------------------------------------------------------------------* 00005600
//* PROGRAMA: ZM4SH001                                                * 00005700
//* FUNCION:  GENERA UN ARCHIVO DE TODA LA POSICION POR EMISORA DE    * 00005800
//*           TODOS LOS CLIENTES AL CIERRE DE LA SEMANA ADICIONANDO   * 00005900
//* LA CLAVE BANXICO Y LA CONTRAPARTE BANXICO PARA EL CASO DE LOS     * 00006000
//* FORMADORES.                                                       * 00006100
//*-------------------------------------------------------------------* 00006200
//PHL66P06 EXEC PGM=IKJEFT01,COND=(4,LT)                                00006300
//PI601765 DD DUMMY                                                     00006400
//ZMS001A1 DD DSN=MXCP.ZM.GDGD.EMP.SUC.HIPS01A1(-1),DISP=SHR            00006500
//ZMS001S1 DD DSN=MXCP.ZM.WKF.EMP.SUC.ZMHLPE66.RIB025S,                 00006600
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00006700
//            SPACE=(CYL,(20,10),RLSE),                                 00006800
//            DCB=(RECFM=FB,DSORG=PS,LRECL=100,BLKSIZE=0)               00006900
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00007000
//SYSPRINT DD SYSOUT=*                                                  00007100
//SYSOUT   DD SYSOUT=*                                                  00007200
//SYSDBOUT DD SYSOUT=*                                                  00007300
//SYSABOUT DD SYSOUT=*                                                  00007400
//SYSUDUMP DD DUMMY                                                     00007500
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL66T06),DISP=SHR                   00007600
//*-------------------------------------------------------------------* 00007700
//* PROGRAMA: SORT                                                    * 00007800
//* FUNCION:  ORDENA EL ARCHIVO RIB025       POR                      * 00007900
//*           CLAVE BANXICO Y CONTRAPARTE.                            * 00008000
//*-------------------------------------------------------------------* 00008100
//PHL66P05 EXEC PGM=ICEMAN,COND=(4,LT)                                  00008200
//PI601765 DD DUMMY                                                     00008300
//SYSOUT   DD SYSOUT=*                                                  00008400
//SORTIN   DD DSN=MXCP.ZM.WKF.EMP.SUC.ZMHLPE66.RIB025S,                 00008500
//            DISP=SHR                                                  00008600
//SORTOUT  DD DSN=MXCP.ZM.FIX.EMP.SUC.ZMHLPE66.BXICO025,                00008700
//            DISP=(NEW,CATLG,DELETE),                                  00008800
//            SPACE=(CYL,(20,10),RLSE),                                 00008900
//            RECFM=FB,LRECL=100,BLKSIZE=0,                             00009000
//            UNIT=3390,DCB=BKUP.MODEL                                  00009100
//SYSTSPRT DD SYSOUT=*                                                  00009200
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL66T05),DISP=SHR                   00009600
//*-------------------------------------------------------------------* 00009700
//* PROGRAMA: ZM3EH006                                                * 00009800
//* FUNCION:  GENERA REPORTE DE CONCILIACION BANXICO VS SIVA          * 00009900
//*-------------------------------------------------------------------* 00010000
//PHL66P04 EXEC PGM=ZM3EH006,REGION=0M,COND=(4,LT)                      00010100
//*                                                                     00010200
//PI601765 DD DUMMY                                                     00010300
//ZME006A1 DD DSN=MXCP.ZM.TMP.EMP.SUC.ZMHLPE63.BANCTAS,                 00010400
//            DISP=SHR                                                  00010500
//ZME006A2 DD DSN=MXCP.ZM.FIX.EMP.SUC.ZMHLPE66.BXICO025,                00010600
//            DISP=SHR                                                  00010700
//ZME006A3 DD DSN=MXCP.ZM.WKF.EMP.SUC.ZMHLPE66.BXICO.OPC,               00010800
//            DISP=SHR                                                  00010900
//ZME006R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00011000
//*                                                                     00011100
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    00011200
//SYSPRINT DD SYSOUT=X                                                  00011300
//SYSOUT   DD SYSOUT=X                                                  00011400
//SYSDBOUT DD SYSOUT=X                                                  00011500
//SYSABOUT DD SYSOUT=X                                                  00011600
//SYSUDUMP DD DUMMY                                                     00011700
//*                                                                     00011800
//*-------------------------------------------------------------------* 00011900
//* PROGRAMA: ZM4EH013                                                * 00012000
//* FUNCION:  ACTUALIZA EVENTOS                                       * 00012100
//*-------------------------------------------------------------------* 00012200
//PHL66P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                00012300
//PI601765 DD DUMMY                                                     00012400
//ZME013A1 DD DSN=MXCP.ZM.WKF.EMP.SUC.ZMHLPE66.BXICO.OPC,               00012500
//            DISP=SHR                                                  00012600
//ZME013A2 DD DSN=MXCP.ZM.FIX.EMP.SUC.ZMHLPE62.BANXICO,                 00012700
//            DISP=SHR                                                  00012800
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00012900
//SYSPRINT DD SYSOUT=*                                                  00013000
//SYSOUT   DD SYSOUT=*                                                  00013100
//SYSDBOUT DD SYSOUT=*                                                  00013200
//SYSABOUT DD SYSOUT=*                                                  00013300
//SYSUDUMP DD DUMMY                                                     00013400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL66T03),DISP=SHR                   00013500
//*                                                                     00013600
//****************************************************************      00018001
//*        TERMINA PROCESO  Z M H L P Z 6 6                      *      00019001
//****************************************************************      00020001
