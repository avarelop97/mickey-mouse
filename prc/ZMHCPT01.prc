//ZMHCPT01 PROC                                                         00010004
//*--------------------------------------------------------------------*00020004
//*                                                                    *00030004
//*                   C A S A   D E  B O L S A                         *00030004
//*                                                                    *00030004
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00120004
//*                                                                    *00130004
//* PROCESO        :  ZMHCPT01                                         *00140004
//*                                                                    *00160004
//* OBJETIVO       :  GENERA ARCHIVO DE CLIENTES DE CASA DE BOLSA.     *00170004
//*                                                                    *00190004
//* PERIODICIDAD   :  SEMANAL.                                         *00240004
//*                                                                    *00240004
//* ELABORADO POR  :  JCSR (XMF3771).                                  *00240004
//*                                                                    *00240004
//*--------------------------------------------------------------------*00300004
//*                      LOG DE MODIFICACIONES                         *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//* PASO    : PHC31P04                                                 *
//* PROGRAMA: ADUUMAIN                                                 *
//* OBJETIVO: DESCARGA DE LA TABLA CUENTA  CLIENTES                    *
//*--------------------------------------------------------------------*
//ZMHT0115 EXEC PGM=ADUUMAIN,PARM='MXP1,ZMHCPT01,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR                                 00002700
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00002800
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00002900
//*                                                                     00003000
//SYSREC   DD DSN=MXCP.ZM.FIX.CBHCCT01.DESCCUEN.F&FECHA,                00007890
//            SPACE=(CYL,(50,20),RLSE),                                 00007891
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00007892
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)                         00007872
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMHT0101),DISP=SHR
//*                                                                     00004200
//*--------------------------------------------------------------------*00007848
//* PROGRAMA   : ZM3CBCT1                                              *00007849
//* OBJETIVO   : SUSTITUYE LAS VARIABLES DE LAS CTC'S DINAMICAS        *00007850
//*--------------------------------------------------------------------*00007851
//ZMHT0110 EXEC PGM=ZM3CBCT1,COND=(4,LT)                                00007852
//*                                                                     00007853
//E1DQ0001 DD DSN=MXCP.ZM.FIX.CBHCCT01.DESCCUEN.F&FECHA,DISP=SHR        00007856
//*                                                                     00007868
//S1DQ0001 DD DSN=MXCP.ZM.FIX.CBHCCT01.REPCT.F&FECHA,                   00007869
//            SPACE=(CYL,(100,20),RLSE),                                00007870
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00007871
//            DCB=(RECFM=FB,LRECL=90,BLKSIZE=0,DSORG=PS)                00007872
//*                                                                     00007873
//SYSABOUT DD  SYSOUT=*                                                 00007874
//SYSDBOUT DD  SYSOUT=*                                                 00007875
//SYSOUT   DD  SYSOUT=*                                                 00007876
//*                                                                     00007878
//*--------------------------------------------------------------------*00007848
//*                FIN ZMHCPT01                                        *00007849
//*--------------------------------------------------------------------*
