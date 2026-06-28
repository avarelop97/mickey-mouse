//ZMLPCD04 PROC                                                         00010000
//**********************************************************************00020000
//*                          ==========                                *00030000
//*                           ZMLPCD04                                 *00040000
//*                          ==========                                *00050000
//*-- OBJETIVO  : RECORRER FECHAS DE EMISORAS QUE NO HAN               *00060000
//*               PAGADO AMORTIZACION                                  *00070000
//*                                                                    *00080000
//*-- REALIZO   : CAPGEMINI ARGENTINA                                  *00090000
//*                                                                    *00100000
//*-- FECHA     : MARZO DEL 2011                                       *00110000
//*                                                                    *00120000
//*--------------------------------------------------------------------*00130000
//*         L O G     D E     M O D I F I C A C I O N E S              *00140000
//*--------------------------------------------------------------------*00150000
//*   MARCA       AUTOR    FECHA    DESCRIPCION                         00160000
//*--------------------------------------------------------------------*00170000
//* ************  XXXXXXX  DDMMAA  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *00180000
//*--------------------------------------------------------------------*00190000
//**********************************************************************00200000
//*                                                                     00210000
//*- PASO     : PLC04P50                                                00220000
//*- PROGRAMA : ZM3DG001                                                00230000
//*- DESCRIPC : RECIBE LOS PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN    00240000
//*-            ARCHIVO                                                 00250000
//*                                                                     00260000
//**********************************************************************00270000
//PLC04P50 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','     ','     ',)      00280000
//*                                                                     00290000
//ZMG001A1 DD DSN=MXC&AMB..ZM.TMP.MDD.E&EMP..S&SUC..ZMLPCD04,           00310000
//            DISP=(NEW,CATLG,DELETE),                                  00320000
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00330000
//            UNIT=3390,                                                00340000
//            SPACE=(CYL,(2,1),RLSE)                                    00350000
//*                                                                     00351000
//SYSPRINT DD SYSOUT=*                                                  00360000
//SYSTSPRT DD SYSOUT=*                                                  00370000
//SYSOUT   DD SYSOUT=*                                                  00390000
//*                                                                     00400000
//**********************************************************************00410000
//*                                                                     00420000
//*- PASO     : PLC04P40                                                00430000
//*- PROGRAMA : IKJEFT01                                                00440000
//*- DESCRIPC : RECORRE FECHAS DE EMISORAS QUE NO HAN PAGADO            00450000
//*-            AMORTIZACION                                            00460000
//*                                                                     00470000
//**********************************************************************00480000
//PLC04P40 EXEC PGM=IKJEFT01,COND=(4,LT)                                00490000
//*                                                                     00500000
//SYSOUT   DD  SYSOUT=*                                                 00502000
//SYSPRINT DD  SYSOUT=*                                                 00503000
//SYSTSPRT DD  SYSOUT=*                                                 00504000
//SYSDBOUT DD  SYSOUT=*                                                 00505000
//SYSABOUT DD  SYSOUT=*                                                 00506000
//SYSUDUMP DD  SYSOUT=*                                                 00507000
//SYSIN    DD  DUMMY                                                    00508000
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLP04T40),DISP=SHR                  00510000
