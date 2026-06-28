//ZMLCCE02 PROC                                                         00010006
//*                                                                     00020000
//**********************************************************************00030000
//*                     C A S A   D E  B O L S A                       *00040000
//*                     ========================                       *00050000
//*                     <<  MERCADO DE DINERO >>                       *00060000
//*                                                                    *00070000
//*   APLICACION:  S I S T E M A   M U L T I E M P R E S A             *00080000
//*                                                                    *00090000
//*   PROCEDIM. :  CORRE DESPUES DE LA CARGA DE BANQUEROS EN YH@       *00090106
//*                                                                    *00091000
//*   OBJETIVO  :  NIVEL DE CERTIFICACION DE BANQUEROS.                *00100000
//*                                                                    *00101000
//*   ELABORADO POR   :  MI03469                                       *00180006
//**********************************************************************00180007
//* PASO       : PNC02P01                                              *00180008
//* OBJETIVO   : COPIA ARCHIVO CARGA DE TABLA YHDTBAN (PDV) PARA       *00180009
//*              OBTENER NIVEL DE CERTIFICACION DE BANQUEROS.          *00180010
//**********************************************************************00180020
//PNC02P01 EXEC PGM=ICEMAN                                              00180030
//SYSPRINT DD SYSOUT=*                                                  00180040
//SYSOUT   DD SYSOUT=*                                                  00180050
//SORTIN   DD DSN=MXBP.YH.FIX.F&FECHA..MYHP0DBA.BANQUERS,DISP=SHR       00180060
//SORTOUT  DD DSN=MXCP.ZM.FIX.MYHP0DBA.BANQUERS.STATUS,                 00180080
//            DISP=(NEW,CATLG,DELETE),                                  00180090
//            UNIT=3390,                                                00180100
//            DCB=(RECFM=FB,LRECL=011,BLKSIZE=0),                       00180200
//            SPACE=(CYL,(10,5),RLSE)                                   00180300
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLC02CE1),DISP=SHR                   00180400
//*                                                                     00180500
//**********************************************************************00181600
//*  PASO:  1     ACTUALIZA NIVEL DE CERTIFICACION                     *00380100
//*               ZM4DCE02                                             *00380206
//**********************************************************************00380300
//PNC02P02 EXEC PGM=IKJEFT01                                            00380408
//*                                                                     00380500
//ZMDCE2E1 DD DSN=MXCP.ZM.FIX.MYHP0DBA.BANQUERS.STATUS,DISP=SHR         00380520
//*                                                                     00380521
//ZMMWC0A2 DD DSN=MXCP.ZM.FIX.NIVCERT.EXPIRA,                           00380608
//            DISP=(NEW,CATLG,DELETE),                                  00380700
//            DCB=(DSORG=PS,LRECL=076,RECFM=FB,BLKSIZE=0),              00380807
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)                         00380900
//*                                                                     00381500
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00381600
//SYSPRINT DD  SYSOUT=*                                                 00381700
//SYSOUT   DD  SYSOUT=*                                                 00381800
//SYSDBOUT DD  SYSOUT=*                                                 00381900
//SYSABOUT DD  DUMMY                                                    00382000
//SYSUDUMP DD  DUMMY                                                    00382100
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLC02CE0),DISP=SHR                  00382208
//*                                                                     00382300
//**********************************************************************00384100
//*            F I N      Z M L C P A 0 1                              *00384206
//**********************************************************************00385000
