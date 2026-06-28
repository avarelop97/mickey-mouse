//ZMULPE15 PROC                                                         00010003
//**********************************************************************00020000
//*                     C A S A   D E   B O L S A                      *00030000
//*                     =========================                      *00040000
//*                     <<<     SEGURIDAD     >>>                      *00050000
//*                                                                    *00060000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00070000
//*                                                                    *00080000
//*   PROCEDIM. :  ZMULPE15                                            *00090003
//*                                                                    *00100000
//*   OBJETIVO  :  REPORTE DE AUTORIDAD A PERFILES                     *00110000
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
//PJU15P02 EXEC PGM=ZM3DG001,                                           00390007
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00400000
//PI601765 DD DUMMY                                                     00430000
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    00440000
//SYSPRINT DD SYSOUT=X                                                  00450000
//SYSOUT   DD SYSOUT=X                                                  00460000
//SYSDBOUT DD SYSOUT=X                                                  00470000
//SYSABOUT DD DUMMY                                                     00480000
//SYSUDUMP DD DUMMY                                                     00490000
//*                                                                     00500000
//ZMG001A1 DD DSN=MXCP.ZM.WKF.SEG.E&EMP..ZMULPE15,                      00511005
//           DISP=(NEW,CATLG,DELETE),                                   00520000
//           DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),                00530000
//           UNIT=3390,                                                 00540000
//           SPACE=(CYL,(2,1),RLSE)                                     00550000
//*                                                                     00560000
//*******************************************************************   00690000
//*        REPORTE DE AUTORIDAD A PERFILES                ZM4IU718      00700000
//*                                                                     00701000
//*******************************************************************   00710000
//*                                                                     00720000
//PJU15P01  EXEC PGM=IKJEFT01,COND=(4,LT)                               00730006
//*                                                                     00750000
//ZMU718P1 DD DSN=MXCP.ZM.WKF.SEG.E&EMP..ZMULPE15,DISP=SHR              00760005
//ZMU718R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00771006
//*                                                                     00780000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00790000
//SYSPRINT DD SYSOUT=*                                                  00800000
//SYSOUT   DD SYSOUT=*                                                  00810000
//SYSDBOUT DD SYSOUT=*                                                  00820000
//SYSABOUT DD SYSOUT=*                                                  00830000
//SYSUDUMP DD DUMMY                                                     00840000
//*                                                                     00850000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJU15T01),DISP=SHR                   00860005
//****************************************************************      00870006
//*                SE ADICIONA CONDICION                         *      00880006
//*                PARA QUE SEA TOMADA POR TRANSFER              *      00890006
//****************************************************************      00900006
//PJU15P00 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXAUP_IN_SEP_OK WDATE',   00910006
//         COND=(4,LT)                                                  00920006
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00930006
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00940006
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00950006
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00960006
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00970006
//PRTDBG   DD SYSOUT=*                                                  00980006
//SYSPRINT DD DUMMY                                                     00990006
//SYSUDUMP DD DUMMY                                                     01000006
//DAPRINT  DD SYSOUT=*                                                  01010006
//DACNDIN  DD DDNAME=SYSIN                                              01020006
//**********************************************************************01030006
//*                 F I N   Z M U L P E 1 5                            *01040006
//**********************************************************************01050006
