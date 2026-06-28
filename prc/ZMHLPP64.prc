//ZMHLPP64 PROC                                                         00000100
//**********************************************************************00000200
//*                     C A S A   D E   B O L S A                      *00000300
//*                     =========================                      *00000400
//*                     <<<   V A L O R E S   >>>                      *00000500
//*                                                                    *00000600
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00000700
//*                                                                    *00000800
//*   PROCEDIM. :  ZMHLPP64.                                           *00000900
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
//**********************************************************************00003200
//*-------------------------------------------------------------------* 00003900
//* PROGRAMA: ZM3DG001                                                * 00004000
//* FUNCION:  ARMAR SECUENCIAL CON PARAMETROS DEL SUBMITIDOR          * 00004100
//* NO ACTUALIZA TABLAS.                                              * 00004200
//*-------------------------------------------------------------------* 00004300
//PHL64P03 EXEC PGM=ZM3DG001,COND=(4,LT),                               00004400
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00004500
//PI601765 DD DUMMY                                                     00004600
//ZMG001A1 DD DSN=MXCP.ZM.WKF.EMP.SUC.ZMHLPE64.BXICO.OPC,               00004700
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00004800
//            SPACE=(CYL,(20,10),RLSE),                                 00004900
//            DCB=(RECFM=FB,DSORG=PS,LRECL=96,BLKSIZE=0)                00005000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00005100
//SYSPRINT DD SYSOUT=*                                                  00005200
//SYSOUT   DD SYSOUT=*                                                  00005300
//SYSDBOUT DD SYSOUT=*                                                  00005400
//SYSABOUT DD SYSOUT=*                                                  00005500
//SYSUDUMP DD DUMMY                                                     00005600
//*                                                                     00005700
//*-------------------------------------------------------------------* 00005800
//* FUNCION:  SE GENERA CONDICION PARA CONTROL- M                     * 00006000
//*                                                                   * 00006100
//*-------------------------------------------------------------------* 00006200
//PHL64P02 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXBX5_IN_OK WDATE',       00006300
//   COND=(4,LT)                                                        00006500
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                  00006600
//DAPARM   DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                  00006700
//         DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                00006800
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                  00006900
//DARESF   DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                  00007000
//PRTDBG   DD  SYSOUT=*                                                 00007100
//SYSPRINT DD  DUMMY                                                    00007200
//SYSUDUMP DD  DUMMY                                                    00007300
//DAPRINT  DD  SYSOUT=*                                                 00007400
//*                                                                     00007500
