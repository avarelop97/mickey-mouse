//ZMHLPE21 PROC                                                         00001000
//**********************************************************************00001100
//*                                                                    *00001200
//*                     C A S A   D E   B O L S A                      *00001300
//*                     =========================                      *00001400
//*                     <<  MERCADO DE VALORES >>                      *00001500
//*                                                                    *00001600
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00001700
//*                                                                    *00001800
//*   PROCEDIMI.:  ZMHLPE21                                            *00001900
//*                                                                    *00002000
//*   OBJETIVO  :  PRELIMINAR EJERCICIO DE DERECHOS DE RENTA FIJA      *00003000
//*                (OPCION 807)                                        *00003100
//*                                                                    *00003200
//*   CORRE ANTES DE  :  NINGUNO                                       *00003300
//*                                                                    *00003400
//*   CORRE DESPUES DE:  NINGUNO                                       *00003500
//*                                                                    *00003600
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *00003700
//*                                                                    *00003800
//*   FECHA     :  AGOSTO 2003                                         *00003900
//*                                                                    *00004000
//*   AUTOR     :  OSCAR URBANO F. (GETRONICS).                        *00004200
//*                                                                    *00004300
//*                                                                    *00004400
//**********************************************************************00004500
//*                                                                    *00004600
//**********************************************************************00004700
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO    00004800
//**********************************************************************00004900
//PJH21P03 EXEC PGM=ZM3DG001,                                           00005000
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00005100
//PI601765 DD DUMMY                                                     00005200
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00006000
//SYSPRINT DD SYSOUT=*                                                  00006100
//SYSOUT   DD SYSOUT=*                                                  00006200
//SYSDBOUT DD SYSOUT=*                                                  00006300
//SYSABOUT DD DUMMY                                                     00006400
//SYSUDUMP DD DUMMY                                                     00006500
//*                                                                     00006600
//ZMG001A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE21,               00006701
//            DISP=(NEW,PASS),                                          00006800
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00006900
//            UNIT=3390,                                                00007000
//            SPACE=(CYL,(2,1),RLSE)                                    00007100
//*                                                                     00007200
//**********************************************************************00007300
//* PROGRAMA: ZM4EHA01                                                 *00007400
//* FUNCION:  PRELIMINAR DE EJERCICIO DE DERECHOS RENTA FIJA           *00007500
//**********************************************************************00007600
//PJH21P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00007700
//ZMHA01A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE21,               00007801
//            DISP=(OLD,PASS)                                           00007900
//ZMHA01R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00008000
//ZMHA01RX DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00009000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00030000
//SYSPRINT DD SYSOUT=*                                                  00040000
//SYSOUT   DD SYSOUT=*                                                  00050000
//SYSDBOUT DD SYSOUT=*                                                  00060000
//SYSABOUT DD SYSOUT=*                                                  00070000
//SYSUDUMP DD DUMMY                                                     00080000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL21T01),DISP=SHR                   00081000
//****************************************************************      00082000
//*        AVISO EN CASO DE ERROR A LA CONSOLA                          00083000
//****************************************************************      00084000
//PJH21P01 EXEC PGM=MAILOPER,COND=(4,GE,PJH21P02),                      00085000
//         PARM=('/ATENCION.AVISAR A SOPROD QUE PROCESO ',              00086000
//             'SIVAXE03(ZMHLPE21)TERMINO MAL.CONTESTAR SI',            00087000
//             'PARA TERMINAR')                                         00088000
//****************************************************************      00089000
//*                SE ADICIONA CONDICION                         *      00090000
//*                PARA QUE SEA TOMADA POR CTL-D                 *      00100000
//****************************************************************      00110000
//PJH21P00 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXE03_IN_SEP_OK WDATE',   00120000
//         COND=(4,LT)                                                  00130000
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                  00140000
//DAPARM   DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                  00150000
//         DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                00160000
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                  00170000
//DARESF   DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                  00180000
//PRTDBG   DD  SYSOUT=*                                                 00190000
//SYSPRINT DD  DUMMY                                                    00200000
//SYSUDUMP DD  DUMMY                                                    00210000
//DAPRINT  DD  SYSOUT=*                                                 00220000
//DACNDIN  DD  DDNAME=SYSIN                                             00230000
