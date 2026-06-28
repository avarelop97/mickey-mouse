//ZMLLPE04 PROC                                                         00002000
//**********************************************************************00003000
//*                     C A S A   D E   B O L S A                      *00003000
//*                     =========================                      *00003000
//*                     <<< MERCADO DE DINERO >>>                      *00003000
//*                                                                    *00003000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00003000
//*                                                                    *00003000
//*   PROCEDIM. :  ZMLLPE04-SIVAXFAX                                   *00003000
//*                                                                    *00003000
//*   OBJETIVO  :  CONFIRMACIONES DE MDO. DINERO MISMO DíA.            *00003000
//*                                                                    *00003000
//*   CORRE ANTES DE  :  NINGUNO                                       *00003000
//*                                                                    *00003000
//*   CORRE DESPUES DE:  NINGUNO                                       *00003000
//*                                                                    *00003000
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *00003000
//*                                                                    *00003000
//**********************************************************************00003000
//*                                                                    *00003000
//**********************************************************************00003000
//* OBJETIVO: RECIBE PARAMETROS DE LA APLICACIóN EN LINEA (OPC 787-R4) *
//**********************************************************************00003000
//PLL04P04 EXEC PGM=ZM3DG001,REGION=0M,                                 00040000
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00040000
//PI601765 DD DUMMY                                                     00100000
//*                                                                     00130000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00130000
//SYSPRINT DD SYSOUT=*                                                  00130000
//SYSOUT   DD SYSOUT=*                                                  00130000
//SYSDBOUT DD SYSOUT=*                                                  00130000
//SYSABOUT DD DUMMY                                                     00130000
//SYSUDUMP DD DUMMY                                                     00130000
//*                                                                     00130000
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE04,               00130000
//            DISP=(NEW,CATLG,DELETE),                                  00130000
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00130000
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE),                       00130000
//            BUFNO=30                                                  00130000
//*                                                                     00130000
//********************************************************************* 00040000
//*  GENERA INFORMACION PARA CONFIRMACION DE OPERACIONES                00050000
//********************************************************************* 00060000
//PLL04P03 EXEC PGM=IKJEFT01,COND=(4,LT),REGION=0M,                     00070000
//         PARM='/DEBUG'                                                00090000
//PI601765 DD DUMMY                                                     00100000
//*                                                                     00130000
//ZMLN60PM DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE04,DISP=SHR       00140027
//*ZMLN60A1 DD DSN=GFPP.CB.FIX.VIBN60AX,                                00140027
//ZMLN60A1 DD DSN=SIVA.MDD.FIX.E&EMP..S&SUC..VIBN60AX,                  00140027
//           DISP=(NEW,CATLG,DELETE),                                   00151028
//           DCB=(DSORG=PS,RECFM=FB,LRECL=1850,BLKSIZE=0),              00130000
//           UNIT=3390,                                                 00170028
//           SPACE=(CYL,(10,5),RLSE)                                    00180028
//*                                                                     00181000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL04T01),DISP=SHR                   00300000
//*                                                                     00310000
//********************************************************************* 00040000
//*  GENERA INFORMACION PARA CONFIRMACION DE OPERACIONES                00050000
//********************************************************************* 00060000
//PLL04P02 EXEC PGM=IKJEFT01,COND=(4,LT),REGION=0M,                     00070000
//         PARM='/DEBUG'                                                00090000
//PI601765 DD DUMMY                                                     00100000
//*                                                                     00130000
//ZMLN76PM DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE04,DISP=SHR       00140027
//*ZMLN76A1 DD DSN=GFPP.CB.WKF.CONFIRMA.REPORTO,                        00140027
//ZMLN76A1 DD DSN=SIVA.MDD.FIX.E&EMP..S&SUC..CONFIRMA.REPORTO,          00140027
//           DISP=(NEW,CATLG,DELETE),                                   00151028
//           DCB=(DSORG=PS,LRECL=285,RECFM=FB,BLKSIZE=0),               00160026
//           UNIT=3390,                                                 00170028
//           SPACE=(CYL,(10,5),RLSE)                                    00180028
//*                                                                     00181000
//*ZMLN76A2 DD DSN=GFPP.CB.WKF.CONFIRMA.INDEVAL,                        00140027
//ZMLN76A2 DD DSN=SIVA.MDD.FIX.E&EMP..S&SUC..CONFIRMA.INDEVAL,          00140027
//           DISP=(NEW,CATLG,DELETE),                                   00151028
//           DCB=(DSORG=PS,LRECL=285,RECFM=FB,BLKSIZE=0),               00160026
//           UNIT=3390,                                                 00170028
//           SPACE=(CYL,(10,5),RLSE)                                    00180028
//*                                                                     00181000
//*ZMLN76A3 DD DSN=GFPP.CB.WKF.CONFIRMA.DIRECTO,                        00140027
//ZMLN76A3 DD DSN=SIVA.MDD.FIX.E&EMP..S&SUC..CONFIRMA.DIRECTO,          00140027
//           DISP=(NEW,CATLG,DELETE),                                   00151028
//           DCB=(DSORG=PS,LRECL=285,RECFM=FB,BLKSIZE=0),               00160026
//           UNIT=3390,                                                 00170028
//           SPACE=(CYL,(10,5),RLSE)                                    00180028
//*                                                                     00181000
//*ZMLN76A4 DD DSN=GFPP.CB.WKF.CONFIRMA.INDEREP,                        00140027
//ZMLN76A4 DD DSN=SIVA.MDD.FIX.E&EMP..S&SUC..CONFIRMA.INDEREP,          00140027
//           DISP=(NEW,CATLG,DELETE),                                   00151028
//           DCB=(DSORG=PS,LRECL=285,RECFM=FB,BLKSIZE=0),               00160026
//           UNIT=3390,                                                 00170028
//           SPACE=(CYL,(10,5),RLSE)                                    00180028
//*                                                                     00181000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL04T02),DISP=SHR                   00300000
//********************************************************************* 00040000
//*       ALTA DE CONDICION CTR-M PARA TRANSFERENCIA ARCHIVOS           00050000
//********************************************************************* 00060000
//PLL04P01 EXEC PGM=CTMCND,PARM='ADD COND PNDIDD35_IN_OK WDATE',        00070000
//         COND=(4,LT)                                                  00090000
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00100000
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00100000
//PRTDBG   DD SYSOUT=*                                                  00100000
//SYSPRINT DD DUMMY                                                     00100000
//SYSUDUMP DD DUMMY                                                     00100000
//DAPRINT  DD SYSOUT=*                                                  00240000
//DACNDIN  DD DDNAME=SYSIN                                              00290000
//SYSIN    DD DUMMY                                                     00250000
//*                                                                     00310000
