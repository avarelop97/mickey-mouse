//ZMLCPA01 PROC                                                         00010006
//*                                                                     00020000
//**********************************************************************00030000
//*                     C A S A   D E  B O L S A                       *00040000
//*                     ========================                       *00050000
//*                     <<  MERCADO DE DINERO >>                       *00060000
//*                                                                    *00070000
//*   APLICACION:  S I S T E M A   M U L T I E M P R E S A             *00080000
//*                                                                    *00090000
//*   PROCEDIM. :  ZMLCPA01  INICIO DE DIA DEL SIVA.                   *00090106
//*                                                                    *00091000
//*   OBJETIVO  :  INICIO DE DIA DE MERCADO DE DINERO.                 *00100000
//*                                                                    *00101000
//*   PERIODICIDAD    :  DIARIO.                                       *00160000
//*                                                                    *00170000
//*   ELABORADO POR   :  GONET                                         *00180006
//*                                                                    *00181000
//**********************************************************************00181300
//*                      LOG DE MODIFICACIONES                         *00181400
//**********************************************************************00181500
//*                          === ADUUMAIN ===                          *00181600
//*                                                                    *00181700
//* OBJETIVO : DESCARGA DE LAS TABLAS OPERDIN, CONCEPT, ZMDT612 Y      *00181800
//*            ZMDT615.                                                *00181810
//*            PARA GENERAR ARCHIVO DE DEPOSITOS Y RETIROS DE CUSTODIA *00181900
//*            INTERNACIONAL.                                          *00182000
//*                                                                    *00182100
//**********************************************************************00182200
//PLC01P02 EXEC PGM=ADUUMAIN,                                           00182300
//         PARM='MXP1,ZMLCPA01,NEW,,MSGLEVEL(1)'                        00182400
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR                            00182500
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00182600
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00182700
//*                                                                     00182800
//SYSREC   DD DSN=MXCP.ZM.FIX.DESCAR.CUSTODIA.DR,                       00182900
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00183000
//            SPACE=(CYL,(50,25),RLSE),                                 00183100
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)                         00183200
//*                                                                     00183300
//SYSCNTL  DD  DUMMY                                                    00183400
//UTPRINT  DD SYSOUT=*                                                  00183500
//SYSPRINT DD SYSOUT=*                                                  00183600
//SYSUDUMP DD SYSOUT=*                                                  00183700
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLC02T00),DISP=SHR                   00183800
//*                                                                     00183900
//**********************************************************************00370000
//*  PASO:  2     PREPARAR DEPOSITOS Y RETIROS DE CONTRATOS DE         *00380100
//*               CUSTODIA INTERNACIONAL.                   ZM4DLX40   *00380206
//**********************************************************************00380300
//PLC01P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00380408
//*                                                                     00380500
//ZMDLX4E1 DD DSN=MXCP.ZM.FIX.DESCAR.CUSTODIA.DR,DISP=SHR               00380520
//*                                                                     00380600
//ZMMWC0A1 DD DSN=MXCP.ZM.FIX.MDD.DEPRET.BOND.H&HHMM.,                  00380608
//            DISP=(NEW,CATLG,DELETE),                                  00380700
//            DCB=(DSORG=PS,LRECL=468,RECFM=FB,BLKSIZE=0),              00380807
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)                         00380900
//*                                                                     00381005
//ZMMWC0A2 DD DSN=MXCP.ZM.FIX.MDD.DEPRET.REPO.H&HHMM.,                  00381108
//            DISP=(NEW,CATLG,DELETE),                                  00381205
//*ROG-I                                                                00381206
//*           DCB=(DSORG=PS,LRECL=678,RECFM=FB,BLKSIZE=0),              00381308
//            DCB=(DSORG=PS,LRECL=689,RECFM=FB,BLKSIZE=0),              00381309
//*ROG-F                                                                00381310
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)                         00381405
//*                                                                     00381500
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00381600
//SYSPRINT DD  SYSOUT=*                                                 00381700
//SYSOUT   DD  SYSOUT=*                                                 00381800
//SYSDBOUT DD  SYSOUT=*                                                 00381900
//SYSABOUT DD  DUMMY                                                    00382000
//SYSUDUMP DD  DUMMY                                                    00382100
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLC01T00),DISP=SHR                  00382208
//*                                                                     00382300
//*--------------------------------------------------------------------*00382400
//*   PASO    :    PLC01P00                                            *00382500
//*   PROGRAMA:    IOACND                                              *00382600
//*   OBJETIVO:    ADICIONA CONDICION PARA ENVIO A LA PASARELA         *00382700
//*                MEDIANTE TRANSMISION BANCO(AJ)                      *00382800
//*--------------------------------------------------------------------*00382900
//PLC01P00 EXEC PGM=IOACND,                                             00383000
//         PARM='ADD COND BCLCCD01_&HHMM_OK WDATE',                     00383100
//         COND=(4,LT)                                                  00383200
//         INCLUDE MEMBER=IOASET                                        00383300
//         INCLUDE MEMBER=IOAENV                                        00383400
//SYSIN    DD DUMMY                                                     00383500
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG                  00383600
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES                  00383700
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD                  00383800
//PRTDBG   DD  SYSOUT=*                                                 00383900
//SYSPRINT DD  DUMMY                                                    00384000
//DAPRINT  DD  SYSOUT=*                                                 00384010
//DACNDIN  DD  DDNAME=SYSIN                                             00384020
//**********************************************************************00384100
//*            F I N      Z M L C P A 0 1                              *00384206
//**********************************************************************00385000
