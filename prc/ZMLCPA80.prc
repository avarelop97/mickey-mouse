//ZMLCPA80 PROC                                                         00010006
//*                                                                     00020000
//**********************************************************************00030000
//*                     C A S A   D E  B O L S A                       *00040000
//*                     ========================                       *00050000
//*                     <<  MERCADO DE DINERO >>                       *00060000
//*                                                                    *00070000
//*   APLICACION:  S I S T E M A   M U L T I E M P R E S A             *00080000
//*                                                                    *00090000
//*   PROCEDIM. :  ZMLCPA80  DESPUES DEL EDC MENSUAL.                  *00090106
//*                                                                    *00091000
//*   OBJETIVO  :  CORRE DESPUES DEL EDC.                              *00100000
//*                                                                    *00101000
//*   PERIODICIDAD    :  MENSUAL.                                      *00160000
//*                                                                    *00170000
//*   ELABORADO POR   :  GONET.                                        *00180006
//*                                                                    *00181000
//**********************************************************************00181300
//*                      LOG DE MODIFICACIONES                         *00181400
//*--------------------------------------------------------------------*00181401
//* PROGRAMA: IEFBR14                                                  *00181402
//* OBJETIVO: CATALOGA ARCHIVO  VACIO  SI NO EXISTE                    *00181403
//*--------------------------------------------------------------------*00181404
//PLC01P03 EXEC PGM=IEFBR14                                             00181405
//PASAL01  DD DSN=MXCP.ZM.FIX.PPG.CTESCRED.TRAN,                        00181406
//            DISP=(MOD,CATLG,DELETE),                                  00181407
//            SPACE=(CYL,(100,050),RLSE),UNIT=3390,                     00181408
//            DCB=(DSORG=PS,LRECL=0008,RECFM=FB,BLKSIZE=0)              00181409
//*                                                                     00181410
//**********************************************************************00181422
//*                          === ADUUMAIN ===                          *00181423
//*                                                                    *00181430
//* OBJETIVO : DESCARGA DE LAS TABLA  ZMDT800                          *00181440
//*                                                                    *00181480
//**********************************************************************00181490
//PLC01P02 EXEC PGM=ADUUMAIN,COND=(4,LT),                               00181491
//         PARM='MXP1,ZMLCPA80,NEW,,MSGLEVEL(1)'                        00181492
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR                            00181493
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00181494
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00181495
//*                                                                     00181496
//SYSREC   DD DSN=MXCP.ZM.FIX.PPG.DESCAR.ZMDT800,                       00181497
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00181498
//            SPACE=(CYL,(50,25),RLSE),                                 00181499
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)                         00181500
//*                                                                     00181510
//SYSCNTL  DD  DUMMY                                                    00181520
//UTPRINT  DD SYSOUT=*                                                  00181530
//SYSPRINT DD SYSOUT=*                                                  00181540
//SYSUDUMP DD SYSOUT=*                                                  00181550
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLC80T01),DISP=SHR                   00181560
//*                                                                     00181570
//**********************************************************************00181600
//*  PASO:  1     GENERA REPORTE DE TOTAL DE INVERSION DE CLIENTES PPG *00380100
//*               ZM4DLX80                                             *00380206
//**********************************************************************00380300
//PLC80P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00380408
//*                                                                     00380500
//ZMDLX8E1 DD DSN=MXCP.ZM.FIX.PPG.CTESCRED.TRAN,DISP=SHR                00380520
//*                                                                     00380521
//ZMDLX8E2 DD DSN=MXCP.ZM.FIX.PPG.DESCAR.ZMDT800,DISP=SHR               00380530
//*                                                                     00380600
//ZMMWC0A1 DD DSN=MXCP.ZM.FIX.TOTAL.INVCTES.PPG,                        00380608
//            DISP=(NEW,CATLG,DELETE),                                  00380700
//            DCB=(DSORG=PS,LRECL=468,RECFM=FB,BLKSIZE=0),              00380807
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)                         00380900
//*                                                                     00381500
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00381600
//SYSPRINT DD  SYSOUT=*                                                 00381700
//SYSOUT   DD  SYSOUT=*                                                 00381800
//SYSDBOUT DD  SYSOUT=*                                                 00381900
//SYSABOUT DD  DUMMY                                                    00382000
//SYSUDUMP DD  DUMMY                                                    00382100
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLC80T00),DISP=SHR                  00382208
//*                                                                     00382300
//**********************************************************************00384100
//*            F I N      Z M L C P A 0 1                              *00384206
//**********************************************************************00385000
