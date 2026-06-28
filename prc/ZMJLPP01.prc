//ZMJLPP01 PROC                                                         00010002
//**********************************************************************00020000
//*                     C A S A   D E   B O L S A                      *00030000
//*                     =========================                      *00040000
//*                     <<< T E S O R E R I A >>>                      *00050000
//*                                                                    *00060000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00070000
//*                                                                    *00080000
//*   PROCEDIM. :  ZMJLPP01                                            *00090002
//*                                                                    *00100000
//*   OBJETIVO  :  SITUACION ACTUAL DE TESORERIA.  (OPC 581)           *00110002
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
//PJL01P03 EXEC PGM=ZM3DG001,                                           00240000
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00250000
//SYSTSPRT DD SYSOUT=*                                                  00290000
//SYSPRINT DD SYSOUT=*                                                  00300000
//SYSOUT   DD SYSOUT=*                                                  00310000
//SYSDBOUT DD SYSOUT=*                                                  00320000
//SYSABOUT DD DUMMY                                                     00330000
//SYSUDUMP DD DUMMY                                                     00340000
//*                                                                     00350000
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.EMP.SUC.ZMJLPE01,                     00360001
//            DISP=(NEW,CATLG,DELETE),                                  00370000
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00380000
//            UNIT=3390,                                                00390000
//            SPACE=(CYL,(2,1),RLSE)                                    00400000
//*                                                                     00410000
//****************************************************************      01040000
//*                SE ADICIONA CONDICION                         *      01050000
//*                PARA QUE SEA TOMADA POR CTL-M                 *      01060001
//****************************************************************      01070000
//PJL01P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXSTS_IN_OK WDATE',       01080001
//         COND=(4,LT)                                                  01090000
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   01100001
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   01110001
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 01120001
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   01130001
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   01140001
//PRTDBG   DD SYSOUT=*                                                  01150000
//SYSPRINT DD DUMMY                                                     01160000
//SYSUDUMP DD DUMMY                                                     01170000
//DAPRINT  DD SYSOUT=*                                                  01180000
//DACNDIN  DD DDNAME=SYSIN                                              01190000
//**********************************************************************01200000
//*        TERMINA PROCESO ZMJLPP01 SIVA MULTIEMPRESA                  *01210002
//**********************************************************************01220000
