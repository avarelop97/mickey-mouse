//ZMUFPM58 PROC                                                         00010000
//**********************************************************************00020000
//*                                                                    *00030000
//* SISTEMA  : ZM (MODULO DE SIVA MULTI EMPRESA ALTAMIRIZADO).         *00040000
//*                                                                    *00050000
//* PROCESO  : ZMUFPM58.                                               *00060000
//*                                                                    *00070000
//* OBJETIVO : ENVIA ARCHIVO MENSUAL DE PERSONAS A BANDEJA SUPERVAL.   *00080000
//*                                                                    *00090000
//* REALIZO  : CDA INFORMATICA (XMCH061).                              *00100000
//*                                                                    *00110000
//* FECHA    : 07 MAYO 2012                                            *00120000
//*                                                                    *00130000
//*--------------------------------------------------------------------*00140000
//**********************************************************************00150000
//*PASO     : ZMPM5802                                                 *00160000
//*PROGRAMA : ICEGENER                                                 *00170000
//*OBJETIVO : RESPALDO DE ARCHIVO DE PERSONAS                          *00180000
//**********************************************************************00190000
//ZMPM5802 EXEC  PGM=ICEGENER                                           00200000
//*                                                                     00210000
//SYSUT1   DD DSN=MBVP.PE.FIX.REPORTE.MENSUAL.P21.F&FECHA,              00220000
//            DISP=SHR                                                  00230000
//SYSUT2   DD DSN=MXCP.ZM.FIX.REPORTE.MENSUAL.P21.F&FECHA,              00240000
//            DISP=(NEW,CATLG,DELETE),                                  00250000
//            SPACE=(CYL,(700,350),RLSE),UNIT=3390,                     00260000
//            DCB=(RECFM=FB,LRECL=205,BLKSIZE=0,DSORG=PS)               00270000
//SYSPRINT DD SYSOUT=*                                                  00280000
//SYSOUT   DD SYSOUT=*                                                  00290000
//SYSIN    DD DUMMY                                                     00300000
//*                                                                     00310000
//**********************************************************************00320000
//*PASO     : ZMPM5801                                                 *00330000
//*PROGRAMA : ICEGENER                                                 *00340000
//*OBJETIVO : ENVIA ARCHIVOS DE PERSONAS A BANDEJA SUPERVAL            *00350000
//**********************************************************************00360000
//ZMPM5801 EXEC  PGM=ICEGENER,COND=(0,NE)                               00370000
//*                                                                     00380000
//SYSUT1   DD DSN=MXCP.ZM.FIX.REPORTE.MENSUAL.P21.F&FECHA,              00390000
//            DISP=SHR                                                  00400000
//*                                                                     00410000
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00420000
//*                                                                     00430000
//SYSPRINT DD SYSOUT=*                                                  00440000
//SYSOUT   DD SYSOUT=*                                                  00450000
//SYSIN    DD DUMMY                                                     00460000
