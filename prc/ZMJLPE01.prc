//ZMJLPE01 PROC                                                         00010000
//**********************************************************************00020000
//*                     C A S A   D E   B O L S A                      *00030000
//*                     =========================                      *00040000
//*                     <<< T E S O R E R I A >>>                      *00050000
//*                                                                    *00060000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00070000
//*                                                                    *00080000
//*   PROCEDIM. :  ZMJLPE01                                            *00090000
//*                                                                    *00100000
//*   OBJETIVO  :  SITUACION ACTUAL DE TESORERIA.                      *00110000
//*                                                                    *00120000
//*   CORRE ANTES DE  :  NINGUNO                                       *00130000
//*                                                                    *00140000
//*   CORRE DESPUES DE:  NINGUNO                                       *00150000
//*                                                                    *00160000
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *00170000
//*                                                                    *00180000
//**********************************************************************00190000
//*                                                                     00200000
//**********************************************************************00210000
//*    RECIBE LOS PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN ARCHIVO     00220000
//**********************************************************************00230000
//PJL01P03 EXEC PGM=ZM3DG001,                                           00240001
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00250000
//SYSTSPRT DD SYSOUT=*                                                  00290001
//SYSPRINT DD SYSOUT=*                                                  00300001
//SYSOUT   DD SYSOUT=*                                                  00310001
//SYSDBOUT DD SYSOUT=*                                                  00320001
//SYSABOUT DD DUMMY                                                     00330000
//SYSUDUMP DD DUMMY                                                     00340000
//*                                                                     00350000
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJLPE01,               00360000
//            DISP=(NEW,CATLG,DELETE),                                  00370000
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00380000
//            UNIT=3390,                                                00390000
//            SPACE=(CYL,(2,1),RLSE)                                    00400000
//*                                                                     00410000
//**********************************************************************00540000
//* PROGRAMA: ZM4EJ742                                                 *00550000
//* FUNCION:  GENERA REPORTE CON LA SITUACION ACTUAL DE TESORERIA      *00560000
//**********************************************************************00570000
//PJL01P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00580001
//*                                                                     00600000
//ZMG742A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJLPE01,DISP=SHR       00610000
//ZMG798A1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00620003
//*                                                                     00630000
//*                                                                     00950000
//SYSTSPRT DD SYSOUT=*                                                  00960001
//SYSPRINT DD SYSOUT=*                                                  00970001
//SYSOUT   DD SYSOUT=*                                                  00980001
//SYSDBOUT DD SYSOUT=*                                                  00990001
//SYSABOUT DD SYSOUT=*                                                  01000001
//SYSUDUMP DD DUMMY                                                     01010000
//*                                                                     01020000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL01T01),DISP=SHR                   01030000
//****************************************************************      01040001
//*                SE ADICIONA CONDICION                         *      01050001
//*                PARA QUE SEA TOMADA POR CTL-D                 *      01060001
//****************************************************************      01070001
//PJL01P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXSTS_IN_OK WDATE',       01080001
//         COND=(4,LT)                                                  01090001
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   01100003
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   01110001
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 01120001
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   01130003
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   01140003
//PRTDBG   DD SYSOUT=*                                                  01150001
//SYSPRINT DD DUMMY                                                     01160001
//SYSUDUMP DD DUMMY                                                     01170001
//DAPRINT  DD SYSOUT=*                                                  01180001
//DACNDIN  DD DDNAME=SYSIN                                              01190001
//**********************************************************************01200001
//*        TERMINA PROCESO ZMJLPE01 SIVA MULTIEMPRESA                  *01210001
//**********************************************************************01220001
