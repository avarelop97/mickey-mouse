//ZMULPE16 PROC                                                         00010000
//**********************************************************************00020000
//*                     C A S A   D E   B O L S A                      *00030000
//*                     =========================                      *00040000
//*                     <<<     SEGURIDAD     >>>                      *00050000
//*                                                                    *00060000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00070000
//*                                                                    *00080000
//*   PROCEDIM. :  ZMULPE16                                            *00090000
//*                                                                    *00100000
//*   OBJETIVO  :  REPORTE USUARIOS DE PRODUCCION                      *00110001
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
//**      |          |       |        |                                *00250000
//**********************************************************************00260000
//* RECIBE LOS PARAMETROS ENVIADOS DESDE LINEA Y LOS GRABA EN ARCHIVO   00360000
//**********************************************************************00370000
//*                                                                     00380000
//PJU16P02 EXEC PGM=ZM3DG001,                                           00390005
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00400000
//PI601765 DD DUMMY                                                     00430000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00440000
//SYSPRINT DD SYSOUT=*                                                  00450000
//SYSOUT   DD SYSOUT=*                                                  00460000
//SYSDBOUT DD SYSOUT=*                                                  00470000
//SYSABOUT DD DUMMY                                                     00480000
//SYSUDUMP DD DUMMY                                                     00490000
//*                                                                     00500000
//ZMG001A1 DD DSN=MXCP.ZM.WKF.SEG.E&EMP..ZMULPE16,                      00511003
//           DISP=(NEW,CATLG,DELETE),                                   00520000
//           DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),                00530000
//           UNIT=3390,                                                 00540000
//           SPACE=(CYL,(2,1),RLSE)                                     00550000
//*                                                                     00560000
//*******************************************************************   00690000
//*        REPORTE DE USUARIOS DE PRODUCCION              ZM4IU717      00700001
//*                                                                     00701000
//*******************************************************************   00710000
//*                                                                     00720000
//PJU16P01  EXEC PGM=IKJEFT01,COND=(4,LT)                               00730005
//*                                                                     00750000
//ZMU717P1 DD DSN=MXCP.ZM.WKF.SEG.E&EMP..ZMULPE16,DISP=SHR              00760003
//ZMU717R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00761004
//*                                                                     00780000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00790000
//SYSPRINT DD SYSOUT=*                                                  00800000
//SYSOUT   DD SYSOUT=*                                                  00810000
//SYSDBOUT DD SYSOUT=*                                                  00820000
//SYSABOUT DD SYSOUT=*                                                  00830000
//SYSUDUMP DD DUMMY                                                     00840000
//*                                                                     00850000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJU16T01),DISP=SHR                   00860003
//****************************************************************      00870004
//*                SE ADICIONA CONDICION                         *      00880004
//*                PARA QUE SEA TOMADA POR TRANSFER              *      00890004
//****************************************************************      00900004
//PJU16P00 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXUSP_IN_SEP_OK WDATE',   00910004
//         COND=(4,LT)                                                  00920004
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00930004
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00940004
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00950004
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00960004
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00970004
//PRTDBG   DD SYSOUT=*                                                  00980004
//SYSPRINT DD DUMMY                                                     00990004
//SYSUDUMP DD DUMMY                                                     01000004
//DAPRINT  DD SYSOUT=*                                                  01010004
//DACNDIN  DD DDNAME=SYSIN                                              01020004
//**********************************************************************01030004
//*                 F I N   Z M U L P E 1 6                            *01040004
//**********************************************************************01050004
