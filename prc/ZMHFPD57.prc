//ZMHFPD57 PROC
//**********************************************************************00020002
//*                     C A S A   D E   B O L S A                      *00030002
//*                     =========================                      *00040002
//*                     <<<   V A L O R E S   >>>                      *00040102
//*                                                                    *00040202
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00040302
//*                                                                    *00040402
//*   PROCEDIM. :  ZMHFPD57.                                           *00040502
//*                                                                    *00040602
//*   OBJETIVO  :  COMPROBANTE DE INVERSIóN DE MERCADO DE DINERO       *00040702
//*                (DIRECTO/REPORTO) BATCH                             *00040802
//*                                                                    *00040902
//*   CORRE ANTES DE  :                                                *00041002
//*                                                                    *00041102
//*   CORRE DESPUES DE:                                                *00041202
//*                                                                    *00041302
//*   PERIODICIDAD    :                                                *00041402
//*                                                                    *00041502
//*   ELABORADO POR   :  SWF BBVA BANCOMER ACCENTURE (XM09400)         *00041602
//*                                                                    *00041702
//*   FECHA:  NOVIEMBRE 2010                                           *00041802
//*                                                                    *00041902
//*   MODIFICA       :                                                 *00042002
//*   FECHA          :                                                 *00042102
//**********************************************************************00042202
//*-------------------------------------------------------------------* 00042402
//* PROGRAMA: ZM3DG001                                                * 00042502
//* FUNCION:  RECIBE LOS PARAMETROS ENVIADOS POR EL SUBMITIDOR        * 00043002
//* NO ACTUALIZA TABLAS.                                              * 00044002
//*-------------------------------------------------------------------* 00045002
//ZMPD5710 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//ZMG001A1 DD DSN=MXCP.ZM.FIX.EBMC.ZMLCFI57,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(5,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*                                                                     00190000
//****************************************************************      00200002
//*                SE ADICIONA CONDICION                         *      00210002
//*                PARA QUE SEA TOMADA POR CTL-M                 *      00220002
//****************************************************************      00230002
//ZMPD5705 EXEC PGM=CTMCND,PARM='ADD COND BCHFJZ57_IN_OK WDATE',        00240003
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
