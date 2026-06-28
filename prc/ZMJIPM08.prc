//ZMJIPM08 PROC                                                         00000104
//*--------------------------------------------------------------------*00000200
//*               C A S A     D E     B O L S A                        *00000300
//*               -----------------------------                        *00000400
//*               SELECCION DE EMPLEADOS EN BANCA PATRIMONIAL          *00000501
//*                                                                    *00000600
//*                                                                    *00000900
//*--------------------------------------------------------------------*00001300
//*  MODIFICACIONES                                                    *00001400
//*--------------------------------------------------------------------*00005000
//**********************************************************************00005100
//* PROGRAMA: ZM4MJ204                                                 *00005201
//* FUNCION:  GENERAR ARCHIVOS CON LAS CUENTAS QUE SE TIENEN           *00005301
//*           CON TARIFA DE EMPLEADOS PARA BANCA PATRIMONIAL           *00005401
//**********************************************************************00005600
//ZMJI0801 EXEC PGM=IKJEFT01                                            00005706
//ZMM204S1 DD DSN=MXC&AMB..ZM.FIX.SDI.ZMJIPM08.F&FECHA,                 00005807
//            DISP=(NEW,CATLG,DELETE),                                  00005900
//            DCB=(LRECL=152,RECFM=FB,BLKSIZE=0,DSORG=PS),              00006001
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)                        00006100
//*                                                                     00006200
//SYSTSPRT DD SYSOUT=*                                                  00006300
//SYSPRINT DD SYSOUT=*                                                  00006400
//SYSOUT   DD SYSOUT=*                                                  00006500
//SYSDBOUT DD SYSOUT=*                                                  00006600
//SYSABOUT DD SYSOUT=*                                                  00006700
//SYSUDUMP DD DUMMY                                                     00006800
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJI08T01),DISP=SHR                   00006906
//*---------------------------------------------------------------------00007800
//* PROGRAMA: CTMCND                                                    00007900
//* OBJETIVO: ADICIONA CONDICION PARA QUE SEA TOMADA POR MUV            00008000
//*                   Y SE EJECUTE EL PROCESO AJJCCB30                  00008100
//*---------------------------------------------------------------------00008200
//ZMJI0800 EXEC PGM=CTMCND,PARM='ADD COND BCJINM08_IN_SEP_OK WDATE',    00008300
//         COND=(4,LT)                                                  00008400
//         INCLUDE MEMBER=IOASET                                        00008500
//         INCLUDE MEMBER=IOAENV                                        00008600
//SYSIN    DD DUMMY                                                     00008610
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG                   00008800
//DARESF   DD DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES                   00008900
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD                   00008910
//PRTDBG   DD SYSOUT=*                                                  00009000
//SYSPRINT DD DUMMY                                                     00009100
//DAPRINT  DD SYSOUT=*                                                  00009300
//DACNDIN  DD DDNAME=SYSIN                                              00009400
//*                                                                     00009500
//**********************************************************************00045600
//*        TERMINA PROCESO ZMJIPM08 BANCA PATRIMONIAL                  *00045701
//**********************************************************************00045800
