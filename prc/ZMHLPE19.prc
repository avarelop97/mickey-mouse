//ZMHLPE19 PROC                                                         00001300
//**********************************************************************00001400
//*                                                                    *00001500
//*                     C A S A   D E   B O L S A                      *00001600
//*                     =========================                      *00001700
//*                     <<  MERCADO DE VALORES >>                      *00001800
//*                                                                    *00001900
//*   APLICACION       : SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *00002000
//*                                                                    *00002100
//*   PROCEDIMIENTO    : ZMHLPE19                                      *00002200
//*                                                                    *00002300
//*   OBJETIVO         : CREACION DE REGISTRO DE SUSCRIPTORES POR      *00002400
//*                      CONVERSION DE OBLIGACIONES ( OPCION 816 )     *00002500
//*                                                                    *00002600
//*   CORRE ANTES DE   : NINGUNO                                       *00002700
//*                                                                    *00002800
//*   CORRE DESPUES DE : NINGUNO                                       *00002900
//*                                                                    *00003000
//*   PERIODICIDAD     : CORRE A SOLICITUD DEL USUARIO.                *00003100
//*                                                                    *00003200
//*   FECHA            : ENERO  04, 2003                               *00003300
//*                                                                    *00003400
//*   AUTOR     :  MARCOS VARELA PEREZ  (ASATECK)                      *00003500
//*                                                                    *00003600
//*                                                                    *00003700
//**********************************************************************00003800
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO    00006600
//**********************************************************************00006700
//PHL19P05 EXEC PGM=ZM3DG001,DYNAMNBR=20,REGION=0M,                     00006800
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00006900
//PI601765 DD DUMMY                                                     00007000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00007100
//SYSPRINT DD SYSOUT=*                                                  00007200
//SYSOUT   DD SYSOUT=*                                                  00007300
//SYSDBOUT DD SYSOUT=*                                                  00007400
//SYSABOUT DD DUMMY                                                     00007500
//SYSUDUMP DD DUMMY                                                     00007600
//*                                                                     00007700
//ZMG001A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE19,               00007801
//            DISP=(NEW,PASS),                                          00007900
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00008000
//            UNIT=3390,                                                00008100
//            SPACE=(CYL,(2,1),RLSE)                                    00008200
//**********************************************************************00008300
//* PROGRAMA: ZM4EHA12                                                 *00008400
//* FUNCION:  ACTUALIZACION DE TABLAS PARA LA CONVERSION DE            *00008500
//*           OBLIGACIONES EJERCICIO DE DERECHOS, (MODULO DE VALORES)  *00008600
//**********************************************************************00008700
//PHL19P04 EXEC PGM=IKJEFT01,REGION=0M,COND=(4,LT)                      00008800
//ZMHA12A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE19,               00009001
//            DISP=(OLD,PASS)                                           00009100
//*ZMHA12R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    00010000
//*                                                                     00011000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00012000
//SYSPRINT DD SYSOUT=*                                                  00013000
//SYSOUT   DD SYSOUT=*                                                  00014000
//SYSDBOUT DD SYSOUT=*                                                  00015000
//SYSABOUT DD SYSOUT=*                                                  00015100
//SYSUDUMP DD DUMMY                                                     00015200
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL19T01),DISP=SHR                   00015300
//*                                                                     00015400
//**********************************************************************00086000
//* PROGRAMA: ZM4EH431                                                 *00087000
//* FUNCION:  REPORTE DE LAS ORDENES CANCELADAS POR CORTE DE CUPON     *00088000
//*           MERCADO DE CAPITALES                                     *00088100
//**********************************************************************00088200
//PHL19P03 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=0M,COND=(4,LT)          00088300
//ZMH431A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE19,               00088401
//            DISP=(OLD,PASS)                                           00088600
//ZMH431R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00088800
//ZMH431R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00088900
//*                                                                     00089000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00089100
//SYSPRINT DD SYSOUT=*                                                  00089200
//SYSOUT   DD SYSOUT=*                                                  00089300
//SYSDBOUT DD SYSOUT=*                                                  00089400
//SYSABOUT DD SYSOUT=*                                                  00089500
//SYSUDUMP DD DUMMY                                                     00089600
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL19T02),DISP=SHR                   00089700
//*                                                                     00089800
//****************************************************************      00091200
//*        AVISO EN CASO DE ERROR A LA CONSOLA                          00091300
//****************************************************************      00092000
//PHL19P02 EXEC PGM=MAILOPER,COND=(4,GE,PHL19P04),                      00100000
//         PARM=('/ATENCION.AVISAR A SOPROD QUE PROCESO ',              00100100
//             'SIVAXSCC(ZMHLPE19)TERMINO MAL.CONTESTAR SI',            00100200
//             'PARA TERMINAR')                                         00100300
//****************************************************************      00100400
//*                SE ADICIONA CONDICION                         *      00100500
//*                PARA QUE SEA TOMADA POR CTL-D                 *      00100600
//****************************************************************      00100700
//PHL19P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXSCC_IN_SEP_OK WDATE',   00100800
//         COND=(4,LT)                                                  00100900
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                  00101000
//DAPARM   DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                  00101100
//         DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                00101200
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                  00101300
//DARESF   DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                  00101400
//PRTDBG   DD  SYSOUT=*                                                 00101500
//SYSPRINT DD  DUMMY                                                    00101600
//SYSUDUMP DD  DUMMY                                                    00101700
//DAPRINT  DD  SYSOUT=*                                                 00101800
//DACNDIN  DD  DDNAME=SYSIN                                             00101900
//*                                                                     00102000
