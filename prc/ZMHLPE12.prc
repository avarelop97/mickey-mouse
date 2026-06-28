//ZMHLPE12 PROC                                                         00001300
//**********************************************************************00001400
//*                                                                    *00001500
//*                     C A S A   D E   B O L S A                      *00001600
//*                     =========================                      *00001700
//*                     <<  MERCADO DE VALORES >>                      *00001800
//*                                                                    *00001900
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00002000
//*                                                                    *00002100
//*   PROCEDIMI.:  ZMHLPE12                                            *00002200
//*                                                                    *00002300
//*   OBJETIVO  :  DEFINITIVO DE CORTE DE CUPON DE RENTA FIJA          *00002400
//*                (OPCION 791)                                        *00002500
//*                                                                    *00002600
//*   CORRE ANTES DE  :  NINGUNO                                       *00002700
//*                                                                    *00002800
//*   CORRE DESPUES DE:  NINGUNO                                       *00002900
//*                                                                    *00003000
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *00003100
//*                                                                    *00003200
//*   FECHA     :  DICIEMBRE  03, 2002                                 *00003300
//*                                                                    *00003400
//*   AUTOR     :  (HPI) GUADALUPE OROZCO OROZCO                       *00003500
//*   AUTOR     :  OSCAR URBANO FDZ. (GETRONICS)                       *00003600
//*                                                                    *00003700
//*                                                                    *00003801
//**********************************************************************00003901
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO    00006600
//**********************************************************************00006700
//PHL12P08 EXEC PGM=ZM3DG001,                                           00006800
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00006900
//PI601765 DD DUMMY                                                     00007000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00007100
//SYSPRINT DD SYSOUT=*                                                  00007200
//SYSOUT   DD SYSOUT=*                                                  00007300
//SYSDBOUT DD SYSOUT=*                                                  00007400
//SYSABOUT DD DUMMY                                                     00007500
//SYSUDUMP DD DUMMY                                                     00007600
//*                                                                     00007700
//ZMG001A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE12,               00007802
//            DISP=(NEW,PASS),                                          00007900
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00008000
//            UNIT=3390,                                                00008100
//            SPACE=(CYL,(2,1),RLSE)                                    00008200
//***************************************************************       00008300
//*                       - ZM4DLE11 -                                  00008400
//* OBJETIVO : INICIALIZA EVENTO 'JSH' PARA EVITAR PROBLEMAS DE         00008500
//*            CONTENSION CON EL JOB "PAAMDD40".   STK OCT 2001         00008600
//***************************************************************       00008700
//PHL12P07 EXEC PGM=IKJEFT01,COND=(4,LT)                                00008800
//ZMLE11A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE12,               00008902
//            DISP=(OLD,PASS)                                           00009000
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=2420                                00009100
//SYSPRINT DD  SYSOUT=*                                                 00009200
//SYSOUT   DD  SYSOUT=*                                                 00010000
//SYSDBOUT DD  SYSOUT=*                                                 00011000
//SYSABOUT DD  DUMMY                                                    00012000
//SYSUDUMP DD  DUMMY                                                    00013000
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZHL12T07),DISP=SHR                  00014000
//*                                                                     00015000
//**********************************************************************00016000
//* PROGRAMA: ZM4EH992                                                 *00017100
//* FUNCION:  DEFINITIVO DE CORTE DE CUPON RENTA FIJA                  *00017200
//**********************************************************************00017300
//PHL12P06 EXEC PGM=IKJEFT01,COND=(4,LT)                                00017400
//ZMH992A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE12,               00017602
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL12T06),DISP=SHR                   00019200
//*                                                                     00019300
//**********************************************************************00019400
//* PROGRAMA: ZM4EH993                                                 *00019500
//* FUNCION:  REPORTE DEFINITIVO DE CORTE DE CUPON DE RENTA FIJA PARA  *00019600
//*           PROMOCION.                                               *00019700
//**********************************************************************00019800
//PHL12P05 EXEC PGM=IKJEFT01,COND=(4,LT)                                00020300
//ZMH993A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE12,               00021002
//            DISP=(OLD,PASS)                                           00030000
//ZMH993R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00040000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00060000
//SYSPRINT DD SYSOUT=*                                                  00070000
//SYSOUT   DD SYSOUT=*                                                  00080000
//SYSDBOUT DD SYSOUT=*                                                  00081000
//SYSABOUT DD SYSOUT=*                                                  00082000
//SYSUDUMP DD DUMMY                                                     00083000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL12T05),DISP=SHR                   00084000
//*                                                                     00085000
//**********************************************************************00086000
//* PROGRAMA: ZM4EH431                                                 *00087000
//* FUNCION:  REPORTE DE LAS ORDENES CANCELADAS POR CORTE DE CUPON     *00088000
//*           MERCADO DE CAPITALES                                     *00088100
//**********************************************************************00088200
//PHL12P04 EXEC PGM=IKJEFT01,COND=(4,LT)                                00088300
//ZMH431A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE12,               00088402
//            DISP=(OLD,PASS)                                           00088600
//ZMH431R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00088800
//ZMH431R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00088900
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00089100
//SYSPRINT DD SYSOUT=*                                                  00089200
//SYSOUT   DD SYSOUT=*                                                  00089300
//SYSDBOUT DD SYSOUT=*                                                  00089400
//SYSABOUT DD SYSOUT=*                                                  00089500
//SYSUDUMP DD DUMMY                                                     00089600
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL12T04),DISP=SHR                   00089700
//*                                                                     00089800
//***************************************************************       00089900
//*                       - ZM4DLE11 -                                  00090000
//* OBJETIVO : FINALIZA   EVENTO 'JSH' PARA EVITAR PROBLEMAS DE         00090100
//*            CONTENSION CON EL JOB "PAAMDD40".   STK OCT 2001         00090200
//***************************************************************       00090300
//PHL12P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                00090400
//ZMLE11A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE12,               00090502
//            DISP=(OLD,PASS)                                           00090600
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=2420                                00090700
//SYSPRINT DD  SYSOUT=*                                                 00090800
//SYSOUT   DD  SYSOUT=*                                                 00090900
//SYSDBOUT DD  SYSOUT=*                                                 00091000
//SYSABOUT DD  DUMMY                                                    00091100
//SYSUDUMP DD  DUMMY                                                    00091200
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZHL12T03),DISP=SHR                  00091300
//****************************************************************      00091400
//*        AVISO EN CASO DE ERROR A LA CONSOLA                          00091500
//****************************************************************      00092000
//PHL12P02 EXEC PGM=MAILOPER,COND=(4,GE,PHL12P06),                      00100000
//         PARM=('/ATENCION.AVISAR A SOPROD QUE PROCESO ',              00100100
//             'SIVAXDRF(ZMHLPE12)TERMINO MAL.CONTESTAR SI',            00100200
//             'PARA TERMINAR')                                         00100300
//****************************************************************      00100400
//*                SE ADICIONA CONDICION                         *      00100500
//*                PARA QUE SEA TOMADA POR CTL-D                 *      00100600
//****************************************************************      00100700
//PHL12P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXDRF_IN_SEP_OK WDATE',   00100800
//         COND=(4,LT)                                                  00100900
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00101000
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00101100
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00101200
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00101300
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00101400
//PRTDBG   DD SYSOUT=*                                                  00101500
//SYSPRINT DD DUMMY                                                     00101600
//SYSUDUMP DD DUMMY                                                     00101700
//DAPRINT  DD SYSOUT=*                                                  00101800
//DACNDIN  DD DDNAME=SYSIN                                              00101900
//*                                                                     00102000
