//ZMHLPE22 PROC                                                         00001000
//**********************************************************************00001100
//*                                                                    *00001200
//*                     C A S A   D E   B O L S A                      *00001300
//*                     =========================                      *00001400
//*                     <<  MERCADO DE VALORES >>                      *00001500
//*                                                                    *00001600
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00001700
//*                                                                    *00001800
//*   PROCEDIMI.:  ZMHLPE22                                            *00001900
//*                                                                    *00002000
//*   OBJETIVO  :  DEFINITIVO EJERCICIO DE DERECHOS DE RENTA FIJA      *00003000
//*                (OPCION 808)                                        *00003100
//*                                                                    *00003200
//*   CORRE ANTES DE  :  NINGUNO                                       *00003300
//*                                                                    *00003400
//*   CORRE DESPUES DE:  NINGUNO                                       *00003500
//*                                                                    *00003600
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *00003700
//*                                                                    *00003800
//*   FECHA     :  AGOSTO  2003                                        *00003900
//*                                                                    *00004000
//*   AUTOR     :  OSCAR URBANO F. GETRONICS.                          *00004100
//*                                                                    *00004200
//*                                                                    *00004300
//**********************************************************************00004400
//*                                                                    *00004500
//**********************************************************************00004600
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO    00004700
//**********************************************************************00004800
//PJH22P03 EXEC PGM=ZM3DG001,                                           00004900
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00005000
//PI601765 DD DUMMY                                                     00005100
//SYSTSPRT DD SYSOUT=*                                                  00006000
//SYSPRINT DD SYSOUT=*                                                  00006100
//SYSOUT   DD SYSOUT=*                                                  00006200
//SYSDBOUT DD SYSOUT=*                                                  00006300
//SYSABOUT DD DUMMY                                                     00006400
//SYSUDUMP DD DUMMY                                                     00006500
//*                                                                     00006600
//ZMG001A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE22,               00006700
//            DISP=(NEW,CATLG,DELETE),                                  00006800
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00006900
//            UNIT=3390,                                                00007000
//            SPACE=(CYL,(2,1),RLSE)                                    00007100
//*                                                                     00007200
//**********************************************************************00007300
//* PROGRAMA: ZM4EHA01                                                 *00007400
//* FUNCION:  PRELIMINAR DE EJERCICIO DE DERECHOS RENTA FIJA           *00007500
//**********************************************************************00007600
//PJH22P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00007700
//ZMHA01A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE22,DISP=SHR       00007800
//ZMHA01R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00008000
//ZMHA01RX DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00009000
//SYSTSPRT DD SYSOUT=*                                                  00030000
//SYSPRINT DD SYSOUT=*                                                  00040000
//SYSOUT   DD SYSOUT=*                                                  00050000
//SYSDBOUT DD SYSOUT=*                                                  00060000
//SYSABOUT DD SYSOUT=*                                                  00070000
//SYSUDUMP DD DUMMY                                                     00080000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL22T02),DISP=SHR                   00081000
//*                                                                     00082000
//**********************************************************************00083000
//* PROGRAMA: ZM4EJ104                                                 *00084000
//* FUNCION:  EJECUCION DE COMPRAS AUTOMATICAS DE UN FONDO DE          *00085000
//*           SOCIEDADES DE INVERSION                                  *00085100
//**********************************************************************00086000
//PJH22P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00087000
//ZMJ104A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE22,DISP=SHR       00088000
//ZMJ104R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00090000
//ZMJ104RX DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00100000
//SYSTSPRT DD SYSOUT=*                                                  00130000
//SYSPRINT DD SYSOUT=*                                                  00140000
//SYSOUT   DD SYSOUT=*                                                  00150000
//SYSDBOUT DD SYSOUT=*                                                  00160000
//SYSABOUT DD SYSOUT=*                                                  00170000
//SYSUDUMP DD DUMMY                                                     00180000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL22T01),DISP=SHR                   00190000
//****************************************************************      00200000
//*                SE ADICIONA CONDICION                         *      00210000
//*                PARA QUE SEA TOMADA POR CTL-D                 *      00220000
//****************************************************************      00230000
//PJH22P00 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXE04_IN_SEP_OK WDATE',   00240000
//         COND=(4,LT)                                                  00250000
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                  00260000
//DAPARM   DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                  00270000
//         DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                00280000
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                  00290000
//DARESF   DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                  00300000
//PRTDBG   DD  SYSOUT=*                                                 00310000
//SYSPRINT DD  DUMMY                                                    00320000
//SYSUDUMP DD  DUMMY                                                    00330000
//DAPRINT  DD  SYSOUT=*                                                 00340000
//DACNDIN  DD  DDNAME=SYSIN                                             00350000
//****************************************************************      00360000
//*                SE ADICIONA CONDICION                         *      00370000
//*                PARA QUE SEA TOMADA POR CTL-D                 *      00380000
//****************************************************************      00390000
//PJH22P0A EXEC PGM=CTMCND,                                             00400000
//         PARM='ADD COND BCLLND04_BCM_SIVA_OK WDATE',                  00401000
//         COND=(4,LT)                                                  00410000
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                  00420000
//DAPARM   DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                  00430000
//         DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                00440000
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                  00450000
//DARESF   DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                  00460000
//PRTDBG   DD  SYSOUT=*                                                 00470000
//SYSPRINT DD  DUMMY                                                    00480000
//SYSUDUMP DD  DUMMY                                                    00490000
//DAPRINT  DD  SYSOUT=*                                                 00500000
//DACNDIN  DD  DDNAME=SYSIN                                             00510000
