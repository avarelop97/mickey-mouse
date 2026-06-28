//ZMHLPE65 PROC                                                         00000100
//**********************************************************************00000200
//*                     C A S A   D E   B O L S A                      *00000300
//*                     =========================                      *00000400
//*                     <<<   V A L O R E S   >>>                      *00000500
//*                                                                    *00000600
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00000700
//*                                                                    *00000800
//*   PROCEDIM. :  ZMHLPE65.                                           *00000900
//*                                                                    *00001000
//*   OBJETIVO  :  GENERAR REPORTE DE CONCILIACION BANXICO VS. SIVA    *00001100
//*                                                                    *00001200
//*   CORRE ANTES DE  :  NINGUNO                                       *00001300
//*                                                                    *00001400
//*   CORRE DESPUES DE:  NINGUNO                                       *00001500
//*                                                                    *00001600
//*   PERIODICIDAD    :  A SOLICITUD DE USUARIO (POR PANTALLA)         *00001700
//*                                                                    *00001800
//*   ELABORADO POR: SOFTTEK / GIANCARLO RODRIGUEZ (GIRM)              *00001900
//*                                                                    *00002000
//*   FECHA:  MAYO 2004.                                               *00002100
//*                                                                    *00002200
//**********************************************************************00002300
//*                      LOG DE MODIFICACIONES                         *00002400
//**********************************************************************00002500
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *00002600
//*--------------------------------------------------------------------*00002700
//*MODXXX|0001-01-01|USUARIO|PASO    |DESCRIPCION DE LA MODIFICACION   *00002800
//*      |          |       |        |                                 *00002900
//**********************************************************************00003000
//* OBMETIVO : BORRA LOS ARCHIVOS DE TRABAJO                           *00003100
//**********************************************************************00003200
//PHL65P08 EXEC PGM=IDCAMS                                              00003300
//SYSPRINT DD SYSOUT=*                                                  00003400
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZHL65T08),DISP=SHR                  00003500
//*-------------------------------------------------------------------* 00003600
//* PROGRAMA: ZM3DG001                                                * 00003700
//* FUNCION:  ARMAR SECUENCIAL CON PARAMETROS DEL SUBMITIDOR          * 00003800
//* NO ACTUALIZA TABLAS.                                              * 00003900
//*-------------------------------------------------------------------* 00004000
//PHL65P07 EXEC PGM=ZM3DG001,                                           00004100
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00004200
//PI601765 DD DUMMY                                                     00004300
//ZMG001A1 DD DSN=MXCP.ZM.WKF.E&EMP..S&SUC..ZMHLPE65.BXICO.OPC,         00004400
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00004500
//            SPACE=(CYL,(20,10),RLSE),                                 00004600
//            DCB=(RECFM=FB,DSORG=PS,LRECL=96,BLKSIZE=0)                00004700
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00004800
//SYSPRINT DD SYSOUT=*                                                  00004900
//SYSOUT   DD SYSOUT=*                                                  00005000
//SYSDBOUT DD SYSOUT=*                                                  00005100
//SYSABOUT DD SYSOUT=*                                                  00005200
//SYSUDUMP DD DUMMY                                                     00005300
//*                                                                     00005400
//*-------------------------------------------------------------------* 00005500
//* PROGRAMA: ZM4SH001                                                * 00005600
//* FUNCION:  GENERA UN ARCHIVO DE TODA LA POSICION POR EMISORA DE    * 00005700
//*           TODOS LOS CLIENTES AL CIERRE DE LA SEMANA ADICIONANDO   * 00005800
//* LA CLAVE BANXICO Y LA CONTRAPARTE BANXICO PARA EL CASO DE LOS     * 00005900
//* FORMADORES.                                                       * 00006000
//*-------------------------------------------------------------------* 00006100
//PHL65P06 EXEC PGM=IKJEFT01,COND=(4,LT)                                00006200
//PI601765 DD DUMMY                                                     00006300
//ZMS001A1 DD DSN=MXCP.ZM.GDGD.E&EMP..S&SUC..HIPS01A1(0),DISP=SHR       00006400
//ZMS001S1 DD DSN=MXCP.ZM.WKF.E&EMP..S&SUC..ZMHLPE65.RIB025S,           00006500
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00006600
//            SPACE=(CYL,(20,10),RLSE),                                 00006700
//            DCB=(RECFM=FB,DSORG=PS,LRECL=100,BLKSIZE=0)               00006800
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00006900
//SYSPRINT DD SYSOUT=*                                                  00007000
//SYSOUT   DD SYSOUT=*                                                  00007100
//SYSDBOUT DD SYSOUT=*                                                  00007200
//SYSABOUT DD SYSOUT=*                                                  00007300
//SYSUDUMP DD DUMMY                                                     00007400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL65T06),DISP=SHR                   00007500
//*-------------------------------------------------------------------* 00007600
//* PROGRAMA: SORT                                                    * 00007700
//* FUNCION:  ORDENA EL ARCHIVO RIB025       POR                      * 00007800
//*           CLAVE BANXICO Y CONTRAPARTE.                            * 00007900
//*-------------------------------------------------------------------* 00008000
//PHL65P05 EXEC PGM=ICEMAN,COND=(4,LT)                                  00008100
//PI601765 DD DUMMY                                                     00008200
//SYSOUT   DD SYSOUT=*                                                  00008300
//SORTIN   DD DSN=MXCP.ZM.WKF.E&EMP..S&SUC..ZMHLPE65.RIB025S,           00008400
//            DISP=SHR                                                  00008500
//SORTOUT  DD DSN=MXCP.ZM.FIX.E&EMP..S&SUC..ZMHLPE65.BXICO025,          00008600
//            DISP=(NEW,CATLG,DELETE),                                  00008700
//            SPACE=(CYL,(20,10),RLSE),                                 00008800
//            RECFM=FB,LRECL=100,BLKSIZE=0,                             00008900
//            UNIT=3390,DCB=BKUP.MODEL                                  00009000
//SYSTSPRT DD SYSOUT=*                                                  00009100
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL65T05),DISP=SHR                   00009500
//*-------------------------------------------------------------------* 00009600
//*                                                                   * 00009700
//* PROGRAMA: ZM3EH006                                                * 00009800
//* FUNCION:  GENERA REPORTE DE CONCILIACION BANXICO VS SIVA          * 00009900
//*-------------------------------------------------------------------* 00010000
//PHL65P04 EXEC PGM=ZM3EH006,REGION=0M,COND=(4,LT)                      00010100
//*                                                                     00010200
//PI601765 DD DUMMY                                                     00010300
//ZME006A1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMHLPE63.BANCTAS,           00010400
//            DISP=SHR                                                  00010500
//ZME006A2 DD DSN=MXCP.ZM.FIX.E&EMP..S&SUC..ZMHLPE65.BXICO025,          00010600
//            DISP=SHR                                                  00010700
//ZME006A3 DD DSN=MXCP.ZM.WKF.E&EMP..S&SUC..ZMHLPE65.BXICO.OPC,         00010800
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
//PHL65P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                00012300
//PI601765 DD DUMMY                                                     00012400
//ZME013A1 DD DSN=MXCP.ZM.WKF.E&EMP..S&SUC..ZMHLPE65.BXICO.OPC,         00012500
//            DISP=SHR                                                  00012600
//ZME013A2 DD DSN=MXCP.ZM.FIX.E&EMP..S&SUC..ZMHLPE62.BANXICO,           00012700
//            DISP=SHR                                                  00012800
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00012900
//SYSPRINT DD SYSOUT=*                                                  00013000
//SYSOUT   DD SYSOUT=*                                                  00013100
//SYSDBOUT DD SYSOUT=*                                                  00013200
//SYSABOUT DD SYSOUT=*                                                  00013300
//SYSUDUMP DD DUMMY                                                     00013400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL65T03),DISP=SHR                   00013500
//*                                                                     00013600
//*-------------------------------------------------------------------- 00013700
//*        AVISO EN CASO DE ERROR A LA CONSOLA                          00013800
//*-------------------------------------------------------------------- 00013900
//PHL65P02 EXEC PGM=MAILOPER,COND=(4,GE,PHL65P03),                      00014000
//         PARM=('/ATENCION OPERADOR.AVISAR A PRODUCCION QUE',          00014100
//             ' PROCESO SIVAXBX6 TERMINO MAL.CONTESTAR SI',            00014200
//             'PARA TERMINAR')                                         00014300
//*                                                                     00014400
//****************************************************************      00014500
//*                SE ADICIONA CONDICION                         *      00014600
//*                PARA QUE SEA TOMADA POR CTL-D                 *      00014700
//****************************************************************      00014800
//PHL65P01 EXEC PGM=CTMCND,PARM='ADD COND SIVAXBX6_IN_SEP_OK WDATE',    00014900
//         COND=(4,LT)                                                  00015000
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00015100
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00015200
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00015300
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00015400
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00015500
//PRTDBG   DD SYSOUT=*                                                  00015600
//SYSPRINT DD DUMMY                                                     00015700
//SYSUDUMP DD DUMMY                                                     00015800
//DAPRINT  DD SYSOUT=*                                                  00015900
//DACNDIN  DD DDNAME=SYSIN                                              00016000
//*                                                                     00016100
