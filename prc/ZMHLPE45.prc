//ZMHLPE45 PROC                                                         00001000
//**********************************************************************00001100
//*                                                                    *00001200
//*                     C A S A   D E   B O L S A                      *00001300
//*                     =========================                      *00001400
//*                     <<  MERCADO DE VALORES >>                      *00001500
//*                                                                    *00001600
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00001700
//*                                                                    *00001800
//*   PROCEDIMI.:  ZMHLPE45                                            *00001900
//*                                                                    *00002000
//*   OBJETIVO  :  PRELIMINAR DE CORTE DE CUPON DE RENTA VARIABLE      *00002100
//*                (OPCION 777)                                        *00002200
//*                                                                    *00002300
//*   CORRE ANTES DE  :  NINGUNO                                       *00002400
//*                                                                    *00002500
//*   CORRE DESPUES DE:  NINGUNO                                       *00002600
//*                                                                    *00002700
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *00002800
//*                                                                    *00002900
//*   FECHA     :  JUNIO 23, 2003                                      *00003000
//*                                                                    *00003100
//*   AUTOR     :  (HPI) GUADALUPE OROZCO OROZCO                       *00003200
//*                                                                    *00003300
//**********************************************************************00003400
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO    00003500
//**********************************************************************00003600
//PHL11P04 EXEC PGM=ZM3DG001,                                           00003700
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00003800
//PI601765 DD DUMMY                                                     00003900
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00004000
//SYSPRINT DD SYSOUT=*                                                  00005000
//SYSOUT   DD SYSOUT=*                                                  00006000
//SYSDBOUT DD SYSOUT=*                                                  00007000
//SYSABOUT DD DUMMY                                                     00007100
//SYSUDUMP DD DUMMY                                                     00007200
//*                                                                     00007300
//ZMG001A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE45,               00007600
//            DISP=(NEW,PASS),                                          00007700
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00007800
//            UNIT=3390,                                                00007900
//            SPACE=(CYL,(2,1),RLSE)                                    00008000
//**********************************************************************00008100
//* PROGRAMA: ZM4EH926                                                 *00008200
//* FUNCION:  PRELIMINAR DE CORTE DE CUPON RENTA VARIABLE              *00008300
//**********************************************************************00008400
//PHL45P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                00008500
//ZMH926A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE45,               00008800
//            DISP=(OLD,PASS)                                           00008900
//ZMH926R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00009000
//ZMH926RX DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00009100
//*                                                                     00013000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00014000
//SYSPRINT DD SYSOUT=*                                                  00015000
//SYSOUT   DD SYSOUT=*                                                  00016000
//SYSDBOUT DD SYSOUT=*                                                  00017000
//SYSABOUT DD SYSOUT=*                                                  00018000
//SYSUDUMP DD DUMMY                                                     00018100
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL45T01),DISP=SHR                   00018300
//*                                                                     00018500
//*-------------------------------------------------------------------- 00018600
//*        AVISO EN CASO DE ERROR A LA CONSOLA                          00018700
//*-------------------------------------------------------------------- 00018800
//PHL45P02 EXEC PGM=MAILOPER,COND=(4,GE,PHL45P03),                      00018900
//         PARM=('/AVISAR A PRODUCCION QUE PROCESO',                    00019000
//             ' SIVAXPRV (ZMHLPE45)TERMINO MAL.CONTESTAR SI',          00020000
//             'PARA TERMINAR')                                         00030000
//****************************************************************      00040000
//*                SE ADICIONA CONDICION                         *      00050000
//*                PARA QUE SEA TOMADA POR CTL-D                 *      00060000
//****************************************************************      00070000
//PHL45P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXPRV_IN_SEP_OK WDATE',   00080000
//         COND=(4,LT)                                                  00090000
//STEPLIB  DD   DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                 00100000
//DAPARM   DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                 00110000
//         DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV               00120000
//DALOG    DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                 00130000
//DARESF   DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                 00140000
//PRTDBG   DD   SYSOUT=*                                                00150000
//SYSPRINT DD   DUMMY                                                   00160000
//SYSUDUMP DD   DUMMY                                                   00170000
//DAPRINT  DD   SYSOUT=*                                                00180000
//DACNDIN  DD   DDNAME=SYSIN                                            00190000
//SYSIN    DD   DUMMY                                                   00200000
//*                                                                     00210000
