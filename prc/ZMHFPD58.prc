//ZMHFPD58 PROC                                                         00010000
//**********************************************************************00020000
//*                     C A S A   D E   B O L S A                      *00030000
//*                     =========================                      *00040000
//*                     <<<   V A L O R E S   >>>                      *00040100
//*                                                                    *00040200
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00040300
//*                                                                    *00040400
//*   PROCEDIM. :  ZMHFPD58.                                           *00040500
//*                                                                    *00040600
//*   OBJETIVO  :  COMPROBANTE DE INVERSION DE SOCIEDADES DE INVERSION *00040700
//*                DEUDA/COMUN (BATCH).                                *00040800
//*                                                                    *00040900
//*   CORRE ANTES DE  :                                                *00041000
//*                                                                    *00041100
//*   CORRE DESPUES DE:                                                *00041200
//*                                                                    *00041300
//*   PERIODICIDAD    :                                                *00041400
//*                                                                    *00041500
//*   ELABORADO POR   :ACCENTURE                                       *00041600
//*                                                                    *00041700
//*   FECHA:  NOVIEMBRE 2010                                           *00041800
//*                                                                    *00041900
//*   MODIFICA       :                                                 *00042000
//*   FECHA          :                                                 *00042100
//**********************************************************************00042200
//*-------------------------------------------------------------------* 00042400
//* PROGRAMA: ZM3DG001                                                * 00042500
//* FUNCION:  RECIBE LOS PARAMETROS ENVIADOS POR EL SUBMITIDOR        * 00043000
//* NO ACTUALIZA TABLAS.                                              * 00044000
//*-------------------------------------------------------------------* 00045000
//ZMPD5810 EXEC PGM=ZM3DG001,                                           00050000
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00060000
//ZMG001A1 DD DSN=MXCP.ZM.FIX.EBMC.ZMLCFI58,                            00080000
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
//****************************************************************      00200000
//*                SE ADICIONA CONDICION                         *      00210000
//*                PARA QUE SEA TOMADA POR CTL-M                 *      00220000
//****************************************************************      00230000
//ZMPD5705 EXEC PGM=CTMCND,PARM='ADD COND BCHFJZ58_IN_OK WDATE',        00240001
//         COND=(4,LT)                                                  00250001
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00260001
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00270001
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00280001
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00290001
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00300001
//PRTDBG   DD SYSOUT=*                                                  00310001
//SYSPRINT DD DUMMY                                                     00320001
//SYSUDUMP DD DUMMY                                                     00330001
//DAPRINT  DD SYSOUT=*                                                  00340001
//DACNDIN  DD DDNAME=SYSIN                                              00350001
//*                                                                     00360000
