//ZMHLPE79 PROC                                                         00010000
//**********************************************************************00020000
//*                     C A S A   D E   B O L S A                      *00030000
//*                     =========================                      *00040000
//*                     <<  BANCA PATRIMONIAL  >>                      *00050000
//*                                                                    *00060000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00070000
//*                                                                    *00080000
//*   PROCEDIM. :  ZMHLPE79.                                           *00090000
//*                                                                    *00090100
//*   OBJETIVO  :  ARCHIVOS DE SALDOS DE CUENTAS GLOBO.                *00090200
//*                                                                    *00090300
//*   CORRE ANTES DE  :  NINGUNO                                       *00090400
//*                                                                    *00090500
//*   CORRE DESPUES DE:  NINGUNO                                       *00090600
//*                                                                    *00090700
//*   PERIODICIDAD    :  A SOLICITUD DE USUARIO (POR PANTALLA)         *00090800
//*                                                                    *00090900
//*   ELABORADO POR   :  J. JAIME FLORES ESTRADA      GETRONICS        *00091000
//*                                                                    *00092000
//*   FECHA:  SEPTIEMBRE  2006.                                        *00093000
//*                                                                    *00094000
//**********************************************************************00095000
//*                      LOG DE MODIFICACIONES                         *00096000
//**********************************************************************00097000
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *00098000
//*--------------------------------------------------------------------*00099000
//*      |          |       |        |                                 *00100000
//*--------------------------------------------------------------------*00110000
//* PROGRAMA: ZM3DG001                                                 *00120000
//* FUNCION:  RECIBE LOS PARAMETROS ENVIADOS POR EL SUBMITIDOR         *00130000
//* NO ACTUALIZA TABLAS.                                               *00140000
//*--------------------------------------------------------------------*00150000
//PHL79P25 EXEC PGM=ZM3DG001,                                           00160000
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00160100
//ZMG001A1 DD DSN=MXCP.ZM.WKF.E&EMP..S&SUC..ZMHLPE79,                   00160200
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00160300
//            SPACE=(CYL,(20,10),RLSE),                                 00160400
//            DCB=(RECFM=FB,DSORG=PS,LRECL=96,BLKSIZE=0)                00160500
//SYSTSPRT DD SYSOUT=*                                                  00160600
//SYSPRINT DD SYSOUT=*                                                  00160700
//SYSOUT   DD SYSOUT=*                                                  00160800
//SYSDBOUT DD SYSOUT=*                                                  00160900
//SYSABOUT DD SYSOUT=*                                                  00161000
//SYSUDUMP DD DUMMY                                                     00161100
//*                                                                     00161200
//*-------------------------------------------------------------------* 00161300
//* PROGRAMA: ZM4DLD08                                                * 00161400
//* FUNCION:  SALDOS CUENTAS GLOBO.                                   * 00161500
//*-------------------------------------------------------------------* 00161600
//PHL79P20 EXEC PGM=IKJEFT01,COND=(4,LT)                                00161700
//ZMLD08A1 DD DSN=MXCP.ZM.TMP.MDD.CTAS.GLOBOIN,                         00161800
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00161900
//            SPACE=(CYL,(20,10),RLSE),                                 00162000
//            DCB=(RECFM=FB,DSORG=PS,LRECL=101,BLKSIZE=0)               00162100
//SYSTSPRT DD SYSOUT=*                                                  00162200
//SYSPRINT DD SYSOUT=*                                                  00162300
//SYSOUT   DD SYSOUT=*                                                  00162400
//SYSDBOUT DD SYSOUT=*                                                  00162500
//SYSABOUT DD SYSOUT=*                                                  00162600
//SYSUDUMP DD DUMMY                                                     00162700
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL79T20),DISP=SHR                   00162800
//*                                                                     00162900
//*-------------------------------------------------------------------* 00163000
//* PROGRAMA: SORT ARCHIVO GLOBOIN                                    * 00163100
//* FUNCION:  ORDENAR POR CUENTA E ICONCEPT, ASI COMO SUMAR TENENCIA  * 00163200
//*           SOLO REGISTROS DEL DIA.                                 * 00163300
//* NO ACTUALIZA TABLAS.                                              * 00163400
//*-------------------------------------------------------------------* 00163500
//PHL79P15 EXEC PGM=ICEMAN,COND=(5,LT)                                  00163600
//SYSOUT   DD SYSOUT=*                                                  00163700
//SORTIN   DD DSN=MXCP.ZM.TMP.MDD.CTAS.GLOBOIN,DISP=SHR                 00163800
//SORTOUT  DD DSN=MXCP.ZM.TMP.MDD.CTAS.GLOBOUT.SORT,                    00163900
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00164000
//            SPACE=(CYL,(20,10),RLSE),                                 00164100
//            DCB=(RECFM=FB,DSORG=PS,LRECL=101,BLKSIZE=0)               00164200
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL79T15),DISP=SHR                   00164600
//*                                                                     00164700
//*-------------------------------------------------------------------* 00164800
//*  PROGRAMA:  ZM4DLD09                                              * 00164900
//*  OBJETIVO:  GENERA ARCHIVO DE SALDOS POR CUENTA GLOBO DE MDD      * 00165000
//*             BANCO, CORTE POR TIPO DE CONTRATO Y POR CONCEPTO.     * 00165100
//*-------------------------------------------------------------------* 00165200
//PHL79P10 EXEC PGM=IKJEFT01,COND=(4,LT)                                00165300
//ZMLD09A1 DD DSN=MXCP.ZM.TMP.MDD.CTAS.GLOBOUT.SORT,DISP=SHR            00165400
//ZMLD09A2 DD DSN=MXCP.ZM.FIX.MDD.CTAS.GLOBO.SALIDA,                    00165500
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00165600
//            SPACE=(CYL,(20,10),RLSE),                                 00165700
//            DCB=(RECFM=FB,DSORG=PS,LRECL=144,BLKSIZE=0)               00165800
//SYSTSPRT DD SYSOUT=*                                                  00165900
//SYSPRINT DD SYSOUT=*                                                  00166000
//SYSOUT   DD SYSOUT=*                                                  00166100
//SYSDBOUT DD SYSOUT=*                                                  00166200
//SYSABOUT DD SYSOUT=*                                                  00166300
//SYSUDUMP DD DUMMY                                                     00166400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL79T10),DISP=SHR                   00166500
//*                                                                     00166600
//**********************************************************************00166700
//*        AVISO EN CASO DE ERROR A LA CONSOLA                         *00166800
//**********************************************************************00166900
// IF PHL79P10.RC GE 4 THEN                                             00167000
//PHL79P05 EXEC PGM=MAILOPER,                                           00167100
//         PARM=('/ATENCION OPERADOR.AVISAR A PRODUCCION QUE',          00167200
//             ' PROCESO SIVAXGLB TERMINO MAL.CONTESTAR SI ',           00167300
//             'PARA TERMINAR')                                         00167400
// ENDIF                                                                00167500
//*                                                                     00167600
//**********************************************************************00167700
//*                SE ADICIONA CONDICION                               *00167800
//*                PARA QUE SEA TOMADA POR CTL-M                       *00167900
//**********************************************************************00168000
//PHL79P01 EXEC PGM=CTMCND,PARM='ADD COND CBHTND08_IN_PR_OK WDATE'      00168100
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00168200
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00168300
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00168400
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00168500
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00168600
//PRTDBG   DD SYSOUT=*                                                  00168700
//SYSPRINT DD DUMMY                                                     00168800
//SYSUDUMP DD DUMMY                                                     00168900
//DAPRINT  DD SYSOUT=*                                                  00169000
//DACNDIN  DD DDNAME=SYSIN                                              00169100
//*                                                                     00169200
//**********************************************************************00169300
//*                      F I N   Z M H L P E 7 9                       *00169400
//**********************************************************************00169500
