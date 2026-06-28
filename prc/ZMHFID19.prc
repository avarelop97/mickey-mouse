//ZMHFID19 PROC                                                         00010000
//**********************************************************************00020002
//*                     C A S A   D E   B O L S A                      *00030002
//*                     =========================                      *00040002
//*                     <<<   V A L O R E S   >>>                      *00040102
//*                                                                    *00040202
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00040302
//*                                                                    *00040402
//*   PROCEDIM. :  ZMHFID19.                                           *00040502
//*                                                                    *00040602
//*   OBJETIVO  :  COMPROBANTE DE INVERSION DE PLAZOS (BATCH)          *00040705
//*                                                                    *00040902
//*                                                                    *00041005
//*   CORRE ANTES DE  :                                                *00041105
//*                                                                    *00041205
//*   CORRE DESPUES DE:                                                *00041305
//*                                                                    *00041405
//*   PERIODICIDAD    :                                                *00041505
//*                                                                    *00041605
//*   ELABORADO POR   :                               EVERIS           *00041705
//*                                                                    *00041805
//*   FECHA:  MAYO 2009                                                *00041905
//*                                                                    *00042005
//*   MODIFICA       :                                                 *00042105
//*   FECHA          :                                                 *00042205
//**********************************************************************00042305
//*-------------------------------------------------------------------* 00042402
//* PROGRAMA: ZM3DG001                                                * 00042502
//* FUNCION:  RECIBE LOS PARAMETROS ENVIADOS POR EL SUBMITIDOR        * 00043002
//* NO ACTUALIZA TABLAS.                                              * 00044002
//*-------------------------------------------------------------------* 00045002
//ZMHAFI02 EXEC PGM=ZM3DG001,                                           00050000
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00060000
//*                                                                     00060200
//ZMG001A1 DD DSN=MXCP.ZM.FIX.EBMC.ZMLCFI19,                            00080007
//            DISP=(NEW,CATLG,DELETE),                                  00090000
//            UNIT=3390,                                                00100000
//            SPACE=(CYL,(5,1),RLSE),                                   00110000
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0)                00120000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00130000
//SYSPRINT DD SYSOUT=*                                                  00140000
//SYSOUT   DD SYSOUT=*                                                  00150000
//SYSDBOUT DD SYSOUT=*                                                  00160000
//SYSABOUT DD DUMMY                                                     00170000
//SYSUDUMP DD DUMMY                                                     00180000
//*                                                                     00190000
//****************************************************************      00200002
//*                SE ADICIONA CONDICION                         *      00210002
//*                PARA QUE SEA TOMADA POR CTL-M                 *      00220002
//****************************************************************      00230002
//ZMHAFI01 EXEC PGM=CTMCND,PARM='ADD COND BCHFIZ19_IN_OK WDATE',        00240007
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
