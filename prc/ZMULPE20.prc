//ZMULPE20 PROC                                                         00010000
//**********************************************************************00020000
//*                     C A S A   D E   B O L S A                      *00030000
//*                     =========================                      *00040000
//*                <<< ADMINISTRACION DE PROMOCION >>>                 *00050000
//*                                                                    *00060000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00070000
//*                                                                    *00080000
//*   PROCEDIM. :  ZMULPE20                                            *00090000
//*                                                                    *00100000
//*   OBJETIVO  :  REPORTE DE JERARQUIA DE PROMOCION                   *00110000
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
//PJL20P02 EXEC PGM=ZM3DG001,                                           00290000
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00300000
//PI601765 DD DUMMY                                                     00310000
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    00320000
//SYSPRINT DD SYSOUT=X                                                  00330000
//SYSOUT   DD SYSOUT=X                                                  00340000
//SYSDBOUT DD SYSOUT=X                                                  00350000
//SYSABOUT DD DUMMY                                                     00360000
//SYSUDUMP DD DUMMY                                                     00370000
//*                                                                     00380000
//ZMG001A1 DD DSN=MXCP.ZM.WKF.SEG.E&EMP..ZMULPE20,                      00390003
//           DISP=(NEW,CATLG,DELETE),                                   00400000
//           DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),                00410000
//           UNIT=3390,                                                 00420000
//           SPACE=(CYL,(2,1),RLSE)                                     00430000
//*                                                                     00440000
//*******************************************************************   00450000
//*        REPORTE DE LA JERARQUIA DE PROMOCION           ZM4IU513      00460000
//*                                                                     00470000
//*******************************************************************   00480000
//*                                                                     00490000
//PJL20P01  EXEC PGM=IKJEFT01,COND=(4,LT)                               00500000
//*                                                                     00510000
//ZMU513P1 DD DSN=MXCP.ZM.WKF.SEG.E&EMP..ZMULPE20,DISP=SHR              00520003
//ZMI513R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00530003
//*                                                                     00540000
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    00550000
//SYSPRINT DD SYSOUT=X                                                  00560000
//SYSOUT   DD SYSOUT=X                                                  00570000
//SYSDBOUT DD SYSOUT=X                                                  00580000
//SYSABOUT DD SYSOUT=X                                                  00590000
//SYSUDUMP DD DUMMY                                                     00600000
//*                                                                     00610000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJU20T01),DISP=SHR                   00620004
//****************************************************************      00630000
//*                SE ADICIONA CONDICION                         *      00640000
//*                PARA QUE SEA TOMADA POR TRANSFER              *      00650000
//****************************************************************      00660000
//PJL20P00 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXJPR_IN_SEP_OK WDATE',   00670003
//         COND=(4,LT)                                                  00680003
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00690003
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00700003
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00710003
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00720003
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00730003
//PRTDBG   DD SYSOUT=*                                                  00740003
//SYSPRINT DD DUMMY                                                     00750003
//SYSUDUMP DD DUMMY                                                     00760003
//DAPRINT  DD SYSOUT=*                                                  00770003
//DACNDIN  DD DDNAME=SYSIN                                              00780003
//**********************************************************************00790000
//*                 F I N   Z M U L P E 2 0                            *00800000
//**********************************************************************00810000
