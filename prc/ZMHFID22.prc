//ZMHFID22 PROC                                                         00010006
//**********************************************************************00020002
//*                     C A S A   D E   B O L S A                      *00030002
//*                     =========================                      *00040002
//*                     <<<   V A L O R E S   >>>                      *00040102
//*                                                                    *00040202
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00040302
//*                                                                    *00040402
//*   PROCEDIM. :  ZMHFID22.                                           *00040502
//*                                                                    *00040602
//*   OBJETIVO  :  COMPROBANTE DE INVERSION DE SOCIEDADES DE INVERSION *00040702
//*                DEUDA/COMUN (BATCH).                                *00040802
//*                                                                    *00040902
//*   CORRE ANTES DE  :                                                *00041002
//*                                                                    *00041102
//*   CORRE DESPUES DE:                                                *00041202
//*                                                                    *00041302
//*   PERIODICIDAD    :                                                *00041402
//*                                                                    *00041502
//*   ELABORADO POR   :                               EVERIS           *00041602
//*                                                                    *00041702
//*   FECHA:  MAYO 2009                                                *00041802
//*                                                                    *00041902
//*   MODIFICA       :                                                 *00042002
//*   FECHA          :                                                 *00042102
//**********************************************************************00042202
//*-------------------------------------------------------------------* 00042402
//* PROGRAMA: ZM3DG001                                                * 00042502
//* FUNCION:  RECIBE LOS PARAMETROS ENVIADOS POR EL SUBMITIDOR        * 00043002
//* NO ACTUALIZA TABLAS.                                              * 00044002
//*-------------------------------------------------------------------* 00045002
//ZMHAFI02 EXEC PGM=ZM3DG001,                                           00050006
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00060006
//ZMG001A1 DD DSN=MXCP.ZM.FIX.EBMC.ZMLCFI22,                            00080006
//            DISP=(NEW,CATLG,DELETE),                                  00090006
//            UNIT=3390,                                                00100006
//            SPACE=(CYL,(5,1),RLSE),                                   00110006
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0)                00120006
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00130006
//SYSPRINT DD SYSOUT=*                                                  00140006
//SYSOUT   DD SYSOUT=*                                                  00150006
//SYSDBOUT DD SYSOUT=*                                                  00160006
//SYSABOUT DD DUMMY                                                     00170006
//SYSUDUMP DD DUMMY                                                     00180006
//*                                                                     00190000
//****************************************************************      00200002
//*                SE ADICIONA CONDICION                         *      00210002
//*                PARA QUE SEA TOMADA POR CTL-M                 *      00220002
//****************************************************************      00230002
//ZMHAFI01 EXEC PGM=CTMCND,PARM='ADD COND BCHFIZ22_IN_OK WDATE',        00240003
//         COND=(4,LT)                                                  00250002
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00260002
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00270002
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00280002
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00290002
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00300002
//PRTDBG   DD SYSOUT=*                                                  00310002
//SYSPRINT DD DUMMY                                                     00320002
//SYSUDUMP DD DUMMY                                                     00330002
//DAPRINT  DD SYSOUT=*                                                  00340002
//DACNDIN  DD DDNAME=SYSIN                                              00350002
//*                                                                     00360002
