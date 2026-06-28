//ZMHLPP79 PROC                                                         00010002
//**********************************************************************00011000
//*               C A S A   D E  B O L S A                             *00012000
//*               ========================                             *00013000
//*               << SISTEMA DE VALORES >>                             *00014000
//*                                                                    *00015000
//* APLICACION:  MODULO UNICO DE VALORES  (M.U.V.)                     *00016000
//* OBJETIVO  :  ARCHIVOS DE SALDOS DE CUENTAS GLOBO.                  *00017000
//*                                                                    *00019000
//* OPCION LINEA     = 111, TRANSACCION = ZC94, PREFIJO = SIVAXGLB     *00019100
//* SUBMITE A        : CBHLPZ79                                        *00019200
//* CORRE DESPUES DE :                                                 *00019300
//* CORRE ANTES   DE :                                                 *00019400
//* PERIODICIDAD     : A SOLICITUD DEL USUARIO                         *00019500
//**********************************************************************00019600
//* PROGRAMA: ZM3DG001                                                 *00120000
//* FUNCION:  RECIBE LOS PARAMETROS ENVIADOS POR EL SUBMITIDOR         *00130000
//* NO ACTUALIZA TABLAS.                                               *00140000
//*--------------------------------------------------------------------*00150000
//PHL79P02 EXEC PGM=ZM3DG001,                                           00160000
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00160100
//ZMG001A1 DD DSN=MXCP.ZM.WKF.E&EMP..S&SUC..ZMHLPP79,                   00160202
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00160300
//            SPACE=(CYL,(20,10),RLSE),                                 00160400
//            DCB=(RECFM=FB,DSORG=PS,LRECL=96,BLKSIZE=0)                00160500
//SYSTSPRT DD SYSOUT=*                                                  00160600
//SYSPRINT DD SYSOUT=*                                                  00160700
//SYSOUT   DD SYSOUT=*                                                  00160800
//SYSDBOUT DD SYSOUT=*                                                  00160900
//SYSABOUT DD SYSOUT=*                                                  00161000
//SYSUDUMP DD DUMMY                                                     00161100
//*                                                                     00167600
//**********************************************************************00167700
//*                SE ADICIONA CONDICION                               *00167800
//*                PARA QUE SEA TOMADA POR CTL-M                       *00167900
//**********************************************************************00168000
//PHL79P01 EXEC PGM=CTMCND,PARM='ADD COND SIVAXGLB_IN_OK WDATE',        00168100
//         COND=(4,LT)                                                  00168101
//*                                                                     00168110
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00168200
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00168300
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00168400
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00168500
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00168600
//*                                                                     00168610
//PRTDBG   DD SYSOUT=*                                                  00168700
//SYSPRINT DD DUMMY                                                     00168800
//SYSUDUMP DD DUMMY                                                     00168900
//DAPRINT  DD SYSOUT=*                                                  00169000
//DACNDIN  DD DDNAME=SYSIN                                              00169100
//*                                                                     00169200
//**********************************************************************00169300
//*                      F I N   Z M H L P P 7 9                       *00169402
//**********************************************************************00169500
