//ZMHLPZ79 PROC                                                         00000100
//**********************************************************************00000200
//*               C A S A   D E  B O L S A                             *00000300
//*               ========================                             *00000400
//*               << SISTEMA DE VALORES >>                             *00000500
//*                                                                    *00000600
//* APLICACION:  MODULO UNICO DE VALORES  (M.U.V.)                     *00000700
//* OBJETIVO  :  ARCHIVOS DE SALDOS DE CUENTAS GLOBO.                  *00000800
//*                                                                    *00000900
//* OPCION LINEA     = 111, TRANSACCION = ZC94, PREFIJO = SIVAXGLB     *00001000
//* SUBMITE A        : CBHLPZ79                                        *00001100
//* CORRE DESPUES DE :                                                 *00001200
//* CORRE ANTES   DE :                                                 *00001300
//* PERIODICIDAD     : A SOLICITUD DEL USUARIO                         *00001400
//**********************************************************************00001500
//* PROGRAMA: ZM4DLD08                                                 *00001600
//* FUNCION:  SALDOS CUENTAS GLOBO.                                    *00001700
//*--------------------------------------------------------------------*00001800
//PHL79P20 EXEC PGM=IKJEFT01                                            00001900
//ZMLD08A1 DD DSN=MXCP.ZM.TMP.MDD.CTAS.GLOBOIN,                         00002000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00002100
//            SPACE=(CYL,(20,10),RLSE),                                 00002200
//            DCB=(RECFM=FB,DSORG=PS,LRECL=101,BLKSIZE=0)               00002300
//SYSTSPRT DD SYSOUT=*                                                  00002400
//SYSPRINT DD SYSOUT=*                                                  00002500
//SYSOUT   DD SYSOUT=*                                                  00002600
//SYSDBOUT DD SYSOUT=*                                                  00002700
//SYSABOUT DD SYSOUT=*                                                  00002800
//SYSUDUMP DD DUMMY                                                     00002900
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL79T20),DISP=SHR                   00003000
//*                                                                     00003100
//*-------------------------------------------------------------------* 00003200
//* PROGRAMA: SORT ARCHIVO GLOBOIN                                    * 00003300
//* FUNCION:  ORDENAR POR CUENTA E ICONCEPT, ASI COMO SUMAR TENENCIA  * 00003400
//*           SOLO REGISTROS DEL DIA.                                 * 00003500
//* NO ACTUALIZA TABLAS.                                              * 00003600
//*-------------------------------------------------------------------* 00003700
//PHL79P15 EXEC PGM=SYNCSORT,COND=(4,LT)                                00003800
//SYSOUT   DD SYSOUT=*                                                  00003900
//SORTIN   DD DSN=MXCP.ZM.TMP.MDD.CTAS.GLOBOIN,DISP=SHR                 00004000
//SORTOUT  DD DSN=MXCP.ZM.TMP.MDD.CTAS.GLOBOUT.SORT,                    00004100
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00004200
//            SPACE=(CYL,(20,10),RLSE),                                 00004300
//            DCB=(RECFM=FB,DSORG=PS,LRECL=101,BLKSIZE=0)               00004400
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL79T15),DISP=SHR                   00004500
//*                                                                     00004600
//*-------------------------------------------------------------------* 00004700
//*  PROGRAMA:  ZM4DLD09                                              * 00004800
//*  OBJETIVO:  GENERA ARCHIVO DE SALDOS POR CUENTA GLOBO DE MDD      * 00004900
//*             BANCO, CORTE POR TIPO DE CONTRATO Y POR CONCEPTO.     * 00005000
//*-------------------------------------------------------------------* 00005100
//PHL79P10 EXEC PGM=IKJEFT01,COND=(4,LT)                                00005200
//ZMLD09A1 DD DSN=MXCP.ZM.TMP.MDD.CTAS.GLOBOUT.SORT,DISP=SHR            00005300
//ZMLD09A2 DD DSN=MXCP.ZM.FIX.MDD.CTAS.GLOBO.SALIDA,                    00005400
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00005500
//            SPACE=(CYL,(20,10),RLSE),                                 00005600
//            DCB=(RECFM=FB,DSORG=PS,LRECL=144,BLKSIZE=0)               00005700
//SYSTSPRT DD SYSOUT=*                                                  00005800
//SYSPRINT DD SYSOUT=*                                                  00005900
//SYSOUT   DD SYSOUT=*                                                  00006000
//SYSDBOUT DD SYSOUT=*                                                  00006100
//SYSABOUT DD SYSOUT=*                                                  00006200
//SYSUDUMP DD DUMMY                                                     00006300
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL79T10),DISP=SHR                   00006400
//*                                                                     00006500
//**********************************************************************00006600
//*                SE ADICIONA CONDICION                               *00006700
//*                PARA QUE SEA TOMADA POR CTL-M                       *00006800
//**********************************************************************00006900
//PHL79P01 EXEC PGM=CTMCND,PARM='ADD COND CBHTND08_IN_PR_OK WDATE',     00007000
//         COND=(4,LT)                                                  00007100
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00007200
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00007300
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00007400
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00007500
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00007600
//*                                                                     00007700
//PRTDBG   DD SYSOUT=*                                                  00007800
//SYSPRINT DD DUMMY                                                     00007900
//SYSUDUMP DD DUMMY                                                     00008000
//DAPRINT  DD SYSOUT=*                                                  00008100
//DACNDIN  DD DDNAME=SYSIN                                              00008200
//*                                                                     00008300
//**********************************************************************00008400
//*                      F I N   Z M H L P Z 7 9                       *00008500
//**********************************************************************00008600
