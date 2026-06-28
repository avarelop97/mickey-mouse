//ZMLPCD05 PROC                                                         00010000
//**********************************************************************00020000
//* OBJETIVO : GENERA EL ARCHIVO CORRESPONDIENTE A US PERSON PENDIENTE *00060000
//*            DE DOCUMENTAR                                           *00070000
//* AUTOR    : INTERNACIONAL DE SISTEMAS                               *00080000
//* FECHA    : SEPTIEMBRE, 2013                                      *  00110000
//*--------------------------------------------------------------------*00130000
//*         L O G     D E     M O D I F I C A C I O N E S              *00140000
//*--------------------------------------------------------------------*00150000
//*   MARCA       AUTOR    FECHA    DESCRIPCION                         00160000
//*--------------------------------------------------------------------*00170000
//*                                                                    *00180000
//*--------------------------------------------------------------------*00190000
//*                                                                     00191000
//**********************************************************************00200000
//* PASO     : PHF05P01                                                 00220000
//* PROGRAMA : ZM4DFA01 / IKJEFT01                                      00230000
//* DESCRIPC : GENERA ARCHIVO CON LOS REGISTROS US PERSON PENDIENTE DE  00240000
//*            DOCUMENTAR                                               00250000
//**********************************************************************00270000
//PHF05P01 EXEC PGM=IKJEFT01                                            00490000
//*                                                                     00500000
//ZMOH76A1 DD  DSN=MXCP.ZM.FIX.FAT.USPER.PEND.D&FECHA,                  00501000
//             DISP=(NEW,CATLG,DELETE),                                 00501100
//             DCB=(LRECL=272,RECFM=FB,BLKSIZE=0,DSORG=PS),             00501201
//             UNIT=3390,SPACE=(CYL,(4,2),RLSE)                         00501300
//*                                                                     00501400
//SYSOUT   DD  SYSOUT=*                                                 00502000
//SYSPRINT DD  SYSOUT=*                                                 00503000
//SYSTSPRT DD  SYSOUT=*                                                 00504000
//SYSDBOUT DD  SYSOUT=*                                                 00505000
//SYSABOUT DD  SYSOUT=*                                                 00506000
//SYSUDUMP DD  SYSOUT=*                                                 00507000
//SYSIN    DD  DUMMY                                                    00508000
//*                                                                     00509000
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZHC05P01),DISP=SHR                  00510000
//*                                                                     00520000
