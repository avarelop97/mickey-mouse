//ZMHLPE10 PROC                                                         00001100
//**********************************************************************00001200
//*                                                                    *00002000
//*                     C A S A   D E   B O L S A                      *00002100
//*                     =========================                      *00002200
//*                     <<  MERCADO DE VALORES >>                      *00002300
//*                                                                    *00002400
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00002500
//*                                                                    *00003100
//*   PROCEDIMI.:  ZMHLPE10                                            *00003200
//*                                                                    *00003600
//*   OBJETIVO  :  REPORTE DE EMISORAS CON CORTE DE CUPON ENTRE LAS    *00003700
//*                FECHAS PROPORCIONADAS POR USUARIO (OPCION 794).     *00003800
//*                                                                    *00003900
//*   CORRE ANTES DE  :  NINGUNO                                       *00004000
//*                                                                    *00004100
//*   CORRE DESPUES DE:  NINGUNO                                       *00004200
//*                                                                    *00004300
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *00004400
//*                                                                    *00004500
//*   FECHA     :  NOVIEMBRE  11, 2002                                 *00004600
//*                                                                    *00004700
//*   AUTOR     :  (HPI) GUADALUPE OROZCO OROZCO                       *00004800
//*                                                                    *00004900
//**********************************************************************00005000
//*                                                                    *00005100
//**********************************************************************00005200
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO    00005300
//**********************************************************************00005400
//PHL10P04 EXEC PGM=ZM3DG001,REGION=0M,                                 00005500
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00005600
//PI601765 DD DUMMY                                                     00005800
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00005900
//SYSPRINT DD SYSOUT=*                                                  00006000
//SYSOUT   DD SYSOUT=*                                                  00006100
//SYSDBOUT DD SYSOUT=*                                                  00006200
//SYSABOUT DD DUMMY                                                     00006300
//SYSUDUMP DD DUMMY                                                     00006400
//*                                                                     00006500
//ZMG001A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE10,               00006600
//            DISP=(NEW,CATLG,DELETE),                                  00006800
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00006900
//            UNIT=3390,                                                00007000
//            SPACE=(CYL,(2,1),RLSE)                                    00007100
//*                                                                     00008000
//**********************************************************************00017000
//* PROGRAMA: ZM4EH985                                                 *00018000
//* FUNCION:  REPORTE DE PROXIMOS CORTES DE CUPON                      *00019000
//**********************************************************************00020000
//PHL10P03 EXEC PGM=IKJEFT01,COND=(4,LT),REGION=0M                      00030000
//*                                                                     00050000
//PI601765 DD DUMMY                                                     00051000
//ZMH985A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE10,DISP=SHR       00060000
//ZMH985T1 DD DSN=&&ARCH,                                               00061000
//            DISP=(NEW,PASS),                                          00062000
//            DCB=(RECFM=FB,LRECL=93,BLKSIZE=0),                        00063000
//            UNIT=3390,                                                00064000
//            SPACE=(CYL,(10,10),RLSE)                                  00065000
//ZMH985R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00065100
//ZMH985RX DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00065200
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(5,1),RLSE)                          00065300
//SORTWK02 DD UNIT=3390,SPACE=(CYL,(5,1),RLSE)                          00065400
//SORTWK03 DD UNIT=3390,SPACE=(CYL,(5,1),RLSE)                          00065500
//*                                                                     00080000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00081000
//SYSPRINT DD SYSOUT=*                                                  00082000
//SYSOUT   DD SYSOUT=*                                                  00083000
//SYSDBOUT DD SYSOUT=*                                                  00084000
//SYSABOUT DD SYSOUT=*                                                  00085000
//SYSUDUMP DD DUMMY                                                     00086000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL10T01),DISP=SHR                   00088000
//****************************************************************      00088100
//*        AVISO EN CASO DE ERROR A LA CONSOLA                          00089000
//****************************************************************      00089100
//PHL10P02 EXEC PGM=MAILOPER,COND=(4,GE,PHL10P03),                      00100000
//         PARM=('/ATENCION.AVISAR A SOPROD QUE PROCESO ',              00100100
//             'SIVAXPXO(ZMHLPE10)TERMINO MAL.CONTESTAR SI',            00100200
//             'PARA TERMINAR')                                         00100300
//****************************************************************      00100400
//*                SE ADICIONA CONDICION                         *      00100500
//*                PARA QUE SEA TOMADA POR CTL-D                 *      00100600
//****************************************************************      00100700
//PHL10P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXPXO_IN_SEP_OK WDATE',   00100800
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
//DACNDIN  DD   DDNAME=SYSIN                                            00101902
//*                                                                     00102000
