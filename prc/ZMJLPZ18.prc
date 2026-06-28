//ZMJLPZ18 PROC                                                         00000100
//**********************************************************************00000200
//*                     C A S A   D E  B O L S A                       *00000300
//*                     ========================                       *00000400
//*                     <<  T E S O R E R I A >>                       *00000500
//*                                                                    *00000600
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00000700
//*                                                                    *00000800
//*   PROCEDIM. :  SIVAXRNA   OPC(630)                                 *00000900
//*                                                                    *00001000
//*   OBJETIVO  :  IMPRESION DE RECIBOS DE TESORERIA.                  *00001100
//*                                                                    *00001200
//*   CORRE ANTES DE  :  NINGUNO                                       *00001300
//*                                                                    *00001400
//*   CORRE DESPUES DE:  NINGUNO                                       *00001500
//*                                                                    *00001600
//*   PERIODICIDAD    :  EVENTUAL                                      *00001700
//*                                                                    *00001800
//*   ELABORADO POR: ASATECK.                                          *00001900
//*                                                                    *00002000
//*   FECHA:  ABRIL  2003.                                             *00002100
//*                                                                    *00002200
//**********************************************************************00002300
//*                      LOG DE MODIFICACIONES                         *00002400
//**********************************************************************00002500
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *00002600
//*--------------------------------------------------------------------*00002700
//*AGR   | NOV-2004 |AZERTIA|        |SE INCORPORA EMISION VIA LEXMARK *00002800
//**********************************************************************00002900
//**********************************************************************00003000
//* MODIFICO       :  ANGELICA GARCIA (AZERTIA)                        *00003100
//* FECHA          :  JULIO/2005                                       *00003200
//*                   SE ELIMINA IMPRESION DE FORMATO Y SE GENERAN     *00003300
//*                   REPORTES POR FOLIO E INSTITUCION                 *00003400
//**********************************************************************00003500
//*                                                                     00005500
//**********************************************************************00005600
//*                         -- ZM4DJ020 --                             *00005700
//* OBJETIVO:     GENERACION DE REPORTE DE CREDITOS Y CARGOS DE        *00005800
//*               MOVIMIENTOS NO AFECTAN BANCOS, SOLICITADO POR        *00005900
//*               EL USUARIO                                           *00006000
//*                                                                    *00006100
//**********************************************************************00006200
//PJL18P03 EXEC PGM=IKJEFT01                                            00006300
//ZMDJ20A1 DD DSN=MXCP.ZM.TMP.TES.EMP.SUC.ZMJLPE18,DISP=SHR             00006400
//*                                                                     00006500
//ZMDJ20A2 DD DSN=MXCP.ZM.WKF.TES.EMP.SUC.JLPE18.ATEMP,                 00006600
//            DISP=(NEW,PASS),                                          00006700
//            DCB=(RECFM=FB,LRECL=150,BLKSIZE=0,DSORG=PS),              00006800
//            UNIT=3390,SPACE=(CYL,(6,3),RLSE)                          00006900
//*                                                                     00007000
//ZMDJ20A3 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00007100
//*                                                                     00007200
//SYSTSPRT DD SYSOUT=*                                                  00007700
//SYSPRINT DD SYSOUT=*                                                  00007800
//SYSOUT   DD SYSOUT=*                                                  00007900
//SYSDBOUT DD DUMMY                                                     00008000
//SYSABOUT DD DUMMY                                                     00008100
//SYSUDUMP DD DUMMY                                                     00008200
//*                                                                     00008300
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL18T04),DISP=SHR                   00008400
//*                                                                     00008500
//**********************************************************************00008600
//*                         -- ZM4DJ021 --                             *00008700
//* OBJETIVO:     GENERACION DE REPORTE DE CREDITOS Y CARGOS DE        *00008800
//*               MOVIMIENTOS NO AFECTAN BANCOS EMITIDOS DURANTE       *00008900
//*               EL DIA, SOLICITADOS POR EL USUARIO                   *00009000
//* PASO:  3                                                           *00009100
//**********************************************************************00009200
//PJL18P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00009300
//ZMDJ21A1 DD DSN=MXCP.ZM.TMP.TES.EMP.SUC.ZMJLPE18,DISP=SHR             00009400
//*                                                                     00009500
//ZMDJ21A2 DD DSN=MXCP.ZM.WKF.TES.EMP.SUC.JLPE18.ATEM1,                 00009600
//            DISP=(NEW,PASS),                                          00009700
//            DCB=(RECFM=FB,LRECL=150,BLKSIZE=0,DSORG=PS),              00009800
//            UNIT=3390,SPACE=(CYL,(6,3),RLSE)                          00009900
//*                                                                     00010000
//ZMDJ21A3 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00010100
//*                                                                     00010200
//ZMDJ21A4 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00010300
//*                                                                     00010400
//SYSTSPRT DD SYSOUT=*                                                  00010500
//SYSPRINT DD SYSOUT=*                                                  00010600
//SYSOUT   DD SYSOUT=*                                                  00010700
//SYSDBOUT DD SYSOUT=*                                                  00010800
//SYSABOUT DD DUMMY                                                     00010900
//SYSUDUMP DD DUMMY                                                     00011000
//*                                                                     00011100
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL18T03),DISP=SHR                   00011200
//*                                                                     00011300
//**********************************************************************00013000
//*        TERMINA PROCESO ZMJLPZ18 SIVA MULTIEMPRESA                  *00013100
//**********************************************************************00013200
