//ZMHLPE18 PROC                                                         00000100
//**********************************************************************00000200
//*                     C A S A   D E   B O L S A                      *00000300
//*                     =========================                      *00000400
//*                     <<<   V A L O R E S   >>>                      *00000500
//*                                                                    *00000600
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00000700
//*                                                                    *00000800
//*   PROCEDIM. :  ZMHLPE18.                                           *00000900
//*                                                                    *00001000
//*   OBJETIVO  :  APAGAR EL EVENTO BX1 CUANDO EL ARCHIVO DEL INDEVAL  *00001100
//*                HAYA SIDO TRANSFERIDO DE LA PC AL HOST (ZMHTPE58).  *00001200
//*                                                                    *00001400
//*   CORRE ANTES DE  :  NINGUNO                                       *00001500
//*                                                                    *00001600
//*   CORRE DESPUES DE:  NINGUNO                                       *00001700
//*                                                                    *00001800
//*   PERIODICIDAD    :  A SOLICITUD DE USUARIO (POR PANTALLA)         *00001900
//*                                                                    *00002000
//*   ELABORADO POR: SOFTTEK                                           *00002100
//*                                                                    *00002200
//*   FECHA: JUNIO 2004.                                               *00002300
//*                                                                    *00002400
//**********************************************************************00002500
//*                      LOG DE MODIFICACIONES                         *00002600
//**********************************************************************00002700
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *00002800
//*--------------------------------------------------------------------*00002900
//*  PASO:  1     ZM4EH012                                             *00003400
//*               ACTUALIZA EVENTO                                     *00003501
//*-------------------------------------------------------------------**00003600
//PHL18P01 EXEC PGM=IKJEFT01                                            00003700
//*                                                                     00003800
//ZME012A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE58,               00003900
//            DISP=SHR                                                  00004000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00004100
//SYSPRINT DD SYSOUT=*                                                  00004200
//SYSOUT   DD SYSOUT=*                                                  00004300
//SYSDBOUT DD SYSOUT=*                                                  00004400
//SYSABOUT DD DUMMY                                                     00004500
//SYSUDUMP DD DUMMY                                                     00004600
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL18T01),DISP=SHR                   00004700
//*                                                                     00004800
//*--------------------------------------------------------------------*00004900
//*                 F I N   Z M H T P E 5 8                            *00005000
//*--------------------------------------------------------------------*00005100
