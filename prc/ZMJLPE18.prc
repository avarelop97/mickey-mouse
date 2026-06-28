//ZMJLPE18 PROC                                                         00000100
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
//**********************************************************************00003600
//*                                                                    *00003700
//*  OBJETIVO     RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA  *00003800
//*               EN ARCHIVO SECUENCIAL.                               *00003900
//*                                                         ZM3DG001   *00004000
//**********************************************************************00004100
//PJL18P04 EXEC PGM=ZM3DG001,                                           00004200
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00004300
//SYSTSPRT DD SYSOUT=*                                                  00004400
//SYSPRINT DD SYSOUT=*                                                  00004500
//SYSOUT   DD SYSOUT=*                                                  00004600
//SYSDBOUT DD SYSOUT=*                                                  00004700
//SYSABOUT DD DUMMY                                                     00004800
//SYSUDUMP DD DUMMY                                                     00004900
//*                                                                     00005000
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJLPE18,               00005100
//            DISP=(NEW,CATLG,DELETE),                                  00005200
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00005300
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE)                        00005400
//*                                                                     00005500
//**********************************************************************00005600
//*                         -- ZM4DJ020 --                             *00005700
//* OBJETIVO:     GENERACION DE REPORTE DE CREDITOS Y CARGOS DE        *00005800
//*               MOVIMIENTOS NO AFECTAN BANCOS, SOLICITADO POR        *00005900
//*               EL USUARIO                                           *00006000
//*                                                                    *00006100
//**********************************************************************00006200
//PJL18P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                00006300
//ZMDJ20A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJLPE18,DISP=SHR       00006400
//*                                                                     00006500
//ZMDJ20A2 DD DSN=MXCP.ZM.WKF.TES.E&EMP..S&SUC..JLPE18.ATEMP,           00006600
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
//ZMDJ21A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJLPE18,DISP=SHR       00009400
//*                                                                     00009500
//ZMDJ21A2 DD DSN=MXCP.ZM.WKF.TES.E&EMP..S&SUC..JLPE18.ATEM1,           00009600
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
//****************************************************************      00011400
//*                SE ADICIONA CONDICION                         *      00011500
//*                PARA QUE SEA TOMADA POR CTL-D                 *      00011600
//****************************************************************      00011700
//PJL18P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXRNA_IN_OK WDATE',       00011800
//         COND=(4,LT)                                                  00011900
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00012000
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00012100
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00012200
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00012300
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00012400
//PRTDBG   DD SYSOUT=*                                                  00012500
//SYSPRINT DD DUMMY                                                     00012600
//SYSUDUMP DD DUMMY                                                     00012700
//DAPRINT  DD SYSOUT=*                                                  00012800
//DACNDIN  DD DDNAME=SYSIN                                              00012900
//**********************************************************************00013000
//*        TERMINA PROCESO ZMJLPE18 SIVA MULTIEMPRESA                  *00013100
//**********************************************************************00013200
