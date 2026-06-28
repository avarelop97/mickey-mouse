//ZMLCPA94 PROC                                                         00010000
//*                                                                     00020000
//**********************************************************************00030000
//*                     C A S A   D E  B O L S A                       *00040000
//*                     ========================                       *00050000
//*                     <<  MERCADO DE DINERO >>                       *00060000
//*                                                                    *00070000
//*   APLICACION:  S I S T E M A   M U L T I E M P R E S A             *00080000
//*                                                                    *00090000
//*   PROCEDIM. :  ZMLCPA94  INICIO DE DIA DEL SIVA.                   *00090100
//*                                                                    *00091000
//*   OBJETIVO  :  INICIO DE DIA DE MERCADO DE DINERO.                 *00100000
//*                                                                    *00101000
//*   CORRE DESPUES DE:  SIVAXDRC                                      *00102000
//*                                                                    *00130000
//*   CORRE ANTES DE  :                                                *00140000
//*                                                                    *00150000
//*   PERIODICIDAD    :  DIARIO                                        *00160000
//*                                                                    *00170000
//*   ELABORADO POR   :  J. JAIME FLORES ESTRADA                       *00180000
//*                                                                    *00181000
//*   FECHA:  JULIO      2007.                                         *00181100
//*                                                                    *00181200
//**********************************************************************00181300
//*                      LOG DE MODIFICACIONES                         *00181400
//**********************************************************************00183000
//**********************************************************************00370000
//*                <<<   PASO REINICIABLE POR RESTART  >>>             *00380000
//*  PASO:  2     PREPARAR DEPOSITOS Y RETIROS DE CONTRATOS DE         *00380104
//*               CUSTODIA INTERNACIONAL.                   ZM4DLX20   *00380204
//**********************************************************************00380300
//PLC94P02 EXEC PGM=IKJEFT01                                            00380407
//*                                                                     00380500
//ZMMWC0A1 DD DSN=MXCP.ZM.FIX.MDD.DEPRET.CTD,                           00380604
//            DISP=(NEW,CATLG,DELETE),                                  00380704
//            DCB=(DSORG=PS,LRECL=263,RECFM=FB,BLKSIZE=0),              00380804
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)                         00380904
//*                                                                     00381004
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00381104
//SYSPRINT DD  SYSOUT=*                                                 00381304
//SYSOUT   DD  SYSOUT=*                                                 00381404
//SYSDBOUT DD  SYSOUT=*                                                 00381504
//SYSABOUT DD  DUMMY                                                    00381604
//SYSUDUMP DD  DUMMY                                                    00381704
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLC94T02),DISP=SHR                  00381804
//*                                                                     00381904
//*****************************************************************     00382004
//* PASO: PLC94P01                                                *     00382104
//* OBJETIVO: SE ADICIONA CONDICION PARA QUE SEA TOMADA POR CTL-D *     00382204
//*****************************************************************     00382304
//PLC94P01 EXEC  PGM=IOACND,PARM='ADD COND BUJDCTD1_OK WDATE',          00382405
//         COND=(4,LT)                                                  00382505
//         INCLUDE MEMBER=IOASET                                        00382605
//         INCLUDE MEMBER=IOAENV                                        00382705
//SYSIN    DD DUMMY                                                     00382805
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG                  00382905
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES                  00383005
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD                  00383105
//PRTDBG   DD  SYSOUT=*                                                 00383205
//SYSPRINT DD  DUMMY                                                    00383305
//DAPRINT  DD  SYSOUT=*                                                 00383405
//DACNDIN  DD  DDNAME=SYSIN                                             00383505
//*                                                                     00383604
//**********************************************************************00383704
//*            F I N      Z M L C P A 9 4                              *00383804
//**********************************************************************00384000
