//ZMULPE17 PROC                                                         00010000
//**********************************************************************00020000
//*                     C A S A   D E   B O L S A                      *00030000
//*                     =========================                      *00040000
//*                     <<<     SEGURIDAD     >>>                      *00050000
//*                                                                    *00060000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00070000
//*                                                                    *00080000
//*   PROCEDIM. :  ZMULPE17                                            *00090000
//*                                                                    *00100000
//*   OBJETIVO  :  REPORTE USUARIOS DE PRODUCCION                      *00110000
//*                                                                    *00120000
//*   CORRE ANTES DE  :  NINGUNO                                       *00130000
//*                                                                    *00140000
//*   CORRE DESPUES DE:  NINGUNO                                       *00150000
//*                                                                    *00160000
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *00170000
//*                                                                    *00180000
//**********************************************************************00190000
//**                      LOG DE MODIFICACIONES                        *00200000
//**********************************************************************00210000
//**MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                     *00220000
//**-------------------------------------------------------------------*00230000
//**      |          |       |        |                                *00240000
//**********************************************************************00250000
//* RECIBE LOS PARAMETROS ENVIADOS DESDE LINEA Y LOS GRABA EN ARCHIVO   00260000
//**********************************************************************00270000
//*                                                                     00280000
//PJU17P02 EXEC PGM=ZM3DG001,                                           00290003
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00300000
//PI601765 DD DUMMY                                                     00310000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00320000
//SYSPRINT DD SYSOUT=*                                                  00330000
//SYSOUT   DD SYSOUT=*                                                  00340000
//SYSDBOUT DD SYSOUT=*                                                  00350000
//SYSABOUT DD DUMMY                                                     00360000
//SYSUDUMP DD DUMMY                                                     00370000
//*                                                                     00380000
//ZMG001A1 DD DSN=MXCP.ZM.WKF.SEG.E&EMP..ZMULPE17,                      00400002
//           DISP=(NEW,CATLG,DELETE),                                   00410000
//           DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),                00420000
//           UNIT=3390,                                                 00430000
//           SPACE=(CYL,(2,1),RLSE)                                     00440000
//*                                                                     00450000
//*******************************************************************   00460000
//*        REPORTE DE USUARIOS DE PRODUCCION              ZM4IU717      00470000
//*                                                                     00480000
//*******************************************************************   00490000
//*                                                                     00500000
//PJU17P01  EXEC PGM=IKJEFT01,COND=(4,LT)                               00510003
//*                                                                     00520000
//ZMU716P1 DD DSN=MXCP.ZM.WKF.SEG.E&EMP..ZMULPE17,DISP=SHR              00530002
//ZMU716R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00551003
//*                                                                     00560000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00570000
//SYSPRINT DD SYSOUT=*                                                  00580000
//SYSOUT   DD SYSOUT=*                                                  00590000
//SYSDBOUT DD SYSOUT=*                                                  00600000
//SYSABOUT DD SYSOUT=*                                                  00610000
//SYSUDUMP DD DUMMY                                                     00620000
//*                                                                     00630000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJU17T01),DISP=SHR                   00640002
//****************************************************************      00660003
//*                SE ADICIONA CONDICION                         *      00670003
//*                PARA QUE SEA TOMADA POR TRANSFER              *      00680003
//****************************************************************      00690003
//PJU17P00 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXMAC_IN_SEP_OK WDATE',   00700003
//         COND=(4,LT)                                                  00710003
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00720003
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00730003
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00740003
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00750003
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00760003
//PRTDBG   DD SYSOUT=*                                                  00770003
//SYSPRINT DD DUMMY                                                     00780003
//SYSUDUMP DD DUMMY                                                     00790003
//DAPRINT  DD SYSOUT=*                                                  00800003
//DACNDIN  DD DDNAME=SYSIN                                              00810003
//**********************************************************************00820003
//*                 F I N   Z M U L P E 1 7                            *00830003
//**********************************************************************00840003
