//ZMHLPE11 PROC                                                         00001200
//**********************************************************************00001300
//*                                                                    *00001400
//*                     C A S A   D E   B O L S A                      *00001500
//*                     =========================                      *00001600
//*                     <<  MERCADO DE VALORES >>                      *00001700
//*                                                                    *00001800
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00001900
//*                                                                    *00002000
//*   PROCEDIMI.:  ZMHLPE11                                            *00002100
//*                                                                    *00002200
//*   OBJETIVO  :  PRELIMINAR DE CORTE DE CUPON DE RENTA FIJA          *00002300
//*                (OPCION 790)                                        *00002400
//*                                                                    *00002500
//*   CORRE ANTES DE  :  NINGUNO                                       *00002600
//*                                                                    *00002700
//*   CORRE DESPUES DE:  NINGUNO                                       *00002800
//*                                                                    *00002900
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *00003000
//*                                                                    *00003100
//*   FECHA     :  NOVIEMBRE  19, 2002                                 *00003200
//*                                                                    *00003300
//*   AUTOR     :  (HPI) GUADALUPE OROZCO OROZCO                       *00003400
//*   AUTOR     :  OSCAR URBANO F. (GETRONICS)                         *00003500
//*                                                                    *00003600
//*                                                                    *00003700
//**********************************************************************00003800
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO    00006600
//**********************************************************************00006700
//PHL11P04 EXEC PGM=ZM3DG001,                                           00006800
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00006900
//PI601765 DD DUMMY                                                     00007000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00007100
//SYSPRINT DD SYSOUT=*                                                  00007200
//SYSOUT   DD SYSOUT=*                                                  00007300
//SYSDBOUT DD SYSOUT=*                                                  00007400
//SYSABOUT DD DUMMY                                                     00007500
//SYSUDUMP DD DUMMY                                                     00007600
//*                                                                     00007700
//ZMG001A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE11,               00007801
//            DISP=(NEW,PASS),                                          00007900
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00008000
//            UNIT=3390,                                                00008100
//            SPACE=(CYL,(2,1),RLSE)                                    00008200
//**********************************************************************00017000
//* PROGRAMA: ZM4EH992                                                 *00017100
//* FUNCION:  PRELIMINAR DE CORTE DE CUPON RENTA FIJA                  *00017200
//**********************************************************************00017300
//PHL11P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                00017400
//ZMH992A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE11,               00017601
//            DISP=(OLD,PASS)                                           00017700
//ZMH992R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00017900
//ZMH992RX DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00018000
//*                                                                     00018500
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00018600
//SYSPRINT DD SYSOUT=*                                                  00018700
//SYSOUT   DD SYSOUT=*                                                  00018800
//SYSDBOUT DD SYSOUT=*                                                  00018900
//SYSABOUT DD SYSOUT=*                                                  00019000
//SYSUDUMP DD DUMMY                                                     00019100
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL11T03),DISP=SHR                   00019200
//*                                                                     00019300
//****************************************************************      00088100
//*        AVISO EN CASO DE ERROR A LA CONSOLA                          00089000
//****************************************************************      00089100
//PHL11P02 EXEC PGM=MAILOPER,COND=(4,GE,PHL11P03),                      00100000
//         PARM=('/ATENCION.AVISAR A SOPROD QUE PROCESO ',              00100100
//             'SIVAXPRF(ZMHLPE11)TERMINO MAL.CONTESTAR SI',            00100200
//             'PARA TERMINAR')                                         00100300
//****************************************************************      00100400
//*                SE ADICIONA CONDICION                         *      00100500
//*                PARA QUE SEA TOMADA POR CTL-D                 *      00100600
//****************************************************************      00100700
//PHL11P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXPRF_IN_SEP_OK WDATE',   00100800
//         COND=(4,LT)                                                  00100900
//STEPLIB  DD   DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                 00101000
//DAPARM   DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                 00101100
//         DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV               00101200
//DALOG    DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                 00101300
//DARESF   DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                 00101400
//PRTDBG   DD   SYSOUT=*                                                00101500
//SYSPRINT DD   DUMMY                                                   00101600
//SYSUDUMP DD   DUMMY                                                   00101700
//DAPRINT  DD   SYSOUT=*                                                00101800
//DACNDIN  DD   DDNAME=SYSIN                                            00101900
//*                                                                     00102000
