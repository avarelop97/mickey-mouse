//ZMPLPF30 PROC                                                         00010000
//**********************************************************************00020000
//* OBJETIVO : GENERA EL ARCHIVO CORRESPONDIENTE CRS REPORTABLE        *00060000
//* AUTOR    : ROG                                                     *00080000
//* FECHA    : 23/06/2016                                              *00110000
//*--------------------------------------------------------------------*00130000
//*         L O G     D E     M O D I F I C A C I O N E S              *00140000
//*--------------------------------------------------------------------*00150000
//*   MARCA       AUTOR    FECHA    DESCRIPCION                         00160000
//*--------------------------------------------------------------------*00190000
//*                                                                     00191000
//**********************************************************************00200000
//* PASO     : PHF30P01                                                 00220000
//* PROGRAMA : ZM4DFA21 / IKJEFT01                                      00230000
//* DESCRIPC : GENERA ARCHIVO CRS REPORTABLE                            00240000
//**********************************************************************00270000
//PHF30P01 EXEC PGM=IKJEFT01                                            00490000
//*                                                                     00500000
//FDSALIDA DD  DSN=MXCP.ZM.FIX.CRSFAT.CRSREPOR.D&FECHA,                 00501000
//             DISP=(NEW,CATLG,DELETE),                                 00501100
//             DCB=(LRECL=387,RECFM=FB,BLKSIZE=0,DSORG=PS),             00501200
//             UNIT=3390,SPACE=(CYL,(10,5),RLSE)                        00501300
//*                                                                     00501400
//SYSOUT   DD  SYSOUT=*                                                 00502000
//SYSPRINT DD  SYSOUT=*                                                 00503000
//SYSTSPRT DD  SYSOUT=*                                                 00504000
//SYSDBOUT DD  SYSOUT=*                                                 00505000
//SYSABOUT DD  SYSOUT=*                                                 00506000
//SYSUDUMP DD  SYSOUT=*                                                 00507000
//SYSIN    DD  DUMMY                                                    00508000
//*                                                                     00509000
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZHC30P01),DISP=SHR                  00510000
//*                                                                     00520000
