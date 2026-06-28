//ZMHTPE70 PROC                                                         00000100
//**********************************************************************00000200
//*                     C A S A   D E   B O L S A                      *00000300
//*                     =========================                      *00000400
//*                     <<<   V A L O R E S   >>>                      *00000500
//*                                                                    *00000600
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00000700
//*                                                                    *00000800
//*   PROCEDIM. :  ZMHTPE70.                                           *00000900
//*                                                                    *00001000
//*   OBJETIVO  :  TRANSMITIR EL ARCHIVO DEL INDEVAL DEL SERVIDOR      *00001100
//*                SBBV04 AL HOST, PREPARARLO PARA LA CONCILIACION     *00001200
//*                 VS. MUV.                                           *00001300
//*                                                                    *00001400
//*   CORRE ANTES DE  :  NINGUNO                                       *00001500
//*                                                                    *00001600
//*   CORRE DESPUES DE:  NINGUNO                                       *00001700
//*                                                                    *00001800
//*   PERIODICIDAD    :  A SOLICITUD DE USUARIO (POR PANTALLA)         *00001900
//*                                                                    *00002000
//*   ELABORADO POR: SOFTTEK                                           *00002100
//*                                                                    *00002200
//*   FECHA:  SEPTIEMBRE DE 2004.                                      *00002300
//*                                                                    *00002400
//**********************************************************************00002500
//*                      LOG DE MODIFICACIONES                         *00002600
//**********************************************************************00002700
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *00002800
//*--------------------------------------------------------------------*00002900
//*MODXXX|0001-01-01|USUARIO|PASO    |DESCRIPCION DE LA MODIFICACION   *00003000
//*      |          |       |        |                                 *00003100
//*-------------------------------------------------------------------* 00003900
//* PROGRAMA: ZM3DG001                                                * 00004000
//* FUNCION:  ARMAR SECUENCIAL CON PARAMETROS DEL SUBMITIDOR          * 00004100
//* NO ACTUALIZA TABLAS.                                              * 00004200
//*-------------------------------------------------------------------* 00004300
//PHT70P04 EXEC PGM=ZM3DG001,                                           00004401
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00004500
//PI601765 DD DUMMY                                                     00004600
//ZMG001A1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMHTPE70.OPC,               00004701
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00004800
//            SPACE=(CYL,(4,2),RLSE),                                   00004901
//            DCB=(RECFM=FB,DSORG=PS,LRECL=96,BLKSIZE=0)                00005000
//SYSTSPRT DD SYSOUT=*                                                  00005100
//SYSPRINT DD SYSOUT=*                                                  00005200
//SYSOUT   DD SYSOUT=*                                                  00005300
//SYSDBOUT DD SYSOUT=*                                                  00005400
//SYSABOUT DD SYSOUT=*                                                  00005500
//SYSUDUMP DD DUMMY                                                     00005600
//*                                                                     00005700
//*-------------------------------------------------------------------* 00005802
//* PROGRAMA: ZM4EH017                                                * 00005902
//* FUNCION:  ARMAR PARAMETROS DE TRANSFERENCIA DE ARCHIVO            * 00006002
//* NO ACTUALIZA TABLAS.                                              * 00006102
//*-------------------------------------------------------------------* 00006202
//PHT70P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                00006303
//PI601765 DD DUMMY                                                     00006502
//ZM4EH1A1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMHTPE70.OPC,               00006602
//            DISP=SHR                                                  00006702
//ZM4EH1S1 DD DSN=MXCP.ZM.FIX.E&EMP..S&SUC..ZMHTPE70.TRANSFER,          00006802
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00006902
//            SPACE=(CYL,(4,2),RLSE),                                   00007002
//            DCB=(RECFM=FB,DSORG=PS,LRECL=80,BLKSIZE=0)                00007102
//SYSTSPRT DD SYSOUT=*                                                  00007202
//SYSPRINT DD SYSOUT=*                                                  00007302
//SYSOUT   DD SYSOUT=*                                                  00007402
//SYSDBOUT DD SYSOUT=*                                                  00007502
//SYSABOUT DD SYSOUT=*                                                  00007602
//SYSUDUMP DD DUMMY                                                     00007702
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHT70T01),DISP=SHR                   00007802
//*-------------------------------------------------------------------* 00008302
//* PROGRAMA: DMBATCH                                                 * 00008402
//* FUNCION:  TRANSEFERIR ARCHIVO INDEVAL DEL SERVIDOR DE PC AL HOST  * 00008502
//*-------------------------------------------------------------------* 00008602
//PHT70P02 EXEC PGM=DMBATCH,COND=(4,LT)                                 00008702
//PI601765 DD DUMMY                                                     00008802
//*                                                                     00008902
//STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR                    00009002
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP                  00009102
//DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS                            00009202
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG                     00009302
//DMPRINT   DD SYSOUT=*                                                 00009402
//SYSPRINT  DD SYSOUT=*                                                 00009502
//NDMCMDS   DD SYSOUT=*                                                 00009602
//SYSUDUMP  DD DUMMY                                                    00009702
//SYSIN     DD DSN=MXCP.ZM.FIX.E&EMP..S&SUC..ZMHTPE70.TRANSFER,         00009802
//             DISP=SHR                                                 00009902
//*                                                                     00010002
//*-------------------------------------------------------------------- 00010102
//*        AVISO EN CASO DE ERROR A LA CONSOLA                          00010202
//*-------------------------------------------------------------------- 00010302
//PHT70P01 EXEC PGM=MAILOPER,COND=(4,GE,PHT70P02),                      00010402
//         PARM=('/ATENCION OPERADOR.AVISAR A PRODUCCION QUE',          00010502
//             ' PROCESO SIVAXVA1 TERMINO MAL.CONTESTAR SI',            00010602
//             'PARA TERMINAR')                                         00010702
//*                                                                     00010802
