//ZMHLPZ64 PROC                                                         00000100
//**********************************************************************00000200
//*                     C A S A   D E   B O L S A                      *00000300
//*                     =========================                      *00000400
//*                     <<<   V A L O R E S   >>>                      *00000500
//*                                                                    *00000600
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00000700
//*                                                                    *00000800
//*   PROCEDIM. :  ZMHLPZ64.                                           *00000900
//*                                                                    *00001000
//*   OBJETIVO  :  TRANSMITIR EL ARCHIVO DEL INDEVAL DEL SERVIDOR      *00001100
//*                SBBV04 AL HOST, PREPARARLO PARA LA CONCILIACION     *00001200
//*                 VS. BANXICO.                                       *00001300
//*                                                                    *00001400
//*   CORRE ANTES DE  :  NINGUNO                                       *00001500
//*                                                                    *00001600
//*   CORRE DESPUES DE:  NINGUNO                                       *00001700
//*                                                                    *00001800
//*   PERIODICIDAD    :  A SOLICITUD DE USUARIO (POR PANTALLA)         *00001900
//*                                                                    *00002000
//*   ELABORADO POR: SOFTTEK / GIANCARLO RODRIGUEZ (GIRM)              *00002100
//*                                                                    *00002200
//*   FECHA:  MAYO 2004.                                               *00002300
//*                                                                    *00002400
//**********************************************************************00002500
//*                      LOG DE MODIFICACIONES                         *00002600
//**********************************************************************00002700
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *00002800
//*--------------------------------------------------------------------*00002900
//*MODXXX|0001-01-01|USUARIO|PASO    |DESCRIPCION DE LA MODIFICACION   *00003000
//*      |          |       |        |                                 *00003100
//*-------------------------------------------------------------------* 00005800
//* PROGRAMA: DMBATCH                                                 * 00005900
//* FUNCION:  TRANSEFERIR ARCHIVO INDEVAL DEL SERVIDOR DE PC AL HOST  * 00006000
//*                                                                   * 00006100
//*-------------------------------------------------------------------* 00006200
//PHL64P02 EXEC PGM=DMBATCH,COND=(4,LT)                                 00006300
//PI601765 DD DUMMY                                                     00006400
//*                                                                     00006500
//STEPLIB   DD DISP=SHR,DSN=SYS3.CONNECT.TGT.LINKLIB                    00006600
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP                  00006700
//DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS                            00006800
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG                     00006900
//DMPRINT   DD SYSOUT=*                                                 00007000
//SYSDUMP   DD SYSOUT=*                                                 00007100
//SYSPRINT  DD SYSOUT=*                                                 00007200
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZHL64T02),DISP=SHR                  00007400
//*                                                                     00007500
