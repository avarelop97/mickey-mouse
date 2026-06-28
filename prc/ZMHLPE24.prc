//ZMHLPE24 PROC                                                         00000100
//**********************************************************************00000200
//*                                                                    *00000300
//*                     C A S A   D E   B O L S A                      *00000400
//*                     =========================                      *00000500
//*                     <<  MERCADO DE VALORES >>                      *00000600
//*                                                                    *00000700
//*   APLICACION       : SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *00000800
//*                                                                    *00000900
//*   PROCEDIMIENTO    : ZMHLPE24                                      *00001000
//*                                                                    *00001100
//*   OBJETIVO         : MOSTRAR EL RESULTADO DEFINITIVO DE UN CANJE,  *00001200
//*                      SPLIT O REVERSPLIT                            *00001300
//*                                                                    *00001400
//*   CORRE ANTES DE   : NINGUNO                                       *00001500
//*                                                                    *00001600
//*   CORRE DESPUES DE : NINGUNO                                       *00001700
//*                                                                    *00001800
//*   PERIODICIDAD     : CORRE A SOLICITUD DEL USUARIO.                *00001900
//*                                                                    *00002000
//*   FECHA            : AGOSTO  2003                                  *00002100
//*                                                                    *00002200
//*   AUTOR            : OSCAR URBANO F. (GETRONICS).                  *00002300
//*                                                                    *00002400
//*                                                                    *00002500
//**********************************************************************00002600
//*      SE AGREGA NUEVA SALIDA PARA REPORTE EN CTRL 'D'                00002700
//*      MODIFICO: OUF 210704 GETRONICS                                 00002710
//**********************************************************************00002800
//**********************************************************************00002810
//*                                                                    *00002820
//**********************************************************************00002830
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO    00002900
//**********************************************************************00003000
//PHL24P04 EXEC PGM=ZM3DG001,                                           00003100
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00003200
//PI601765 DD DUMMY                                                     00003300
//SYSTSPRT DD SYSOUT=*                                                  00003400
//SYSPRINT DD SYSOUT=*                                                  00003500
//SYSOUT   DD SYSOUT=*                                                  00003600
//SYSDBOUT DD SYSOUT=*                                                  00003700
//SYSABOUT DD DUMMY                                                     00003800
//SYSUDUMP DD DUMMY                                                     00003900
//*                                                                     00004000
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMHLPE24,               00004100
//            DISP=(NEW,PASS),                                          00004200
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00004300
//            UNIT=3390,                                                00004400
//            SPACE=(CYL,(2,1),RLSE)                                    00004500
//*                                                                     00004600
//**********************************************************************00004700
//* PROGRAMA: ZM4EHA06                                                 *00004800
//* FUNCION:  MOSTRAR EL RESULTADO PRELIMINAR O DEFINITIVO             *00004900
//*           (SEGUN SEA EL CASO)  DE UN  CANJE,  SPLIT  O REVERSPLIT) *00005000
//**********************************************************************00005100
//PHL24P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                00005200
//ZMHA06A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMHLPE24,               00005300
//            DISP=(OLD,PASS)                                           00005400
//ZMHA06R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00005500
//ZMHA06R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00005600
//SYSTSPRT DD SYSOUT=*                                                  00005800
//SYSPRINT DD SYSOUT=*                                                  00005900
//SYSOUT   DD SYSOUT=*                                                  00006000
//SYSDBOUT DD SYSOUT=*                                                  00006100
//SYSABOUT DD SYSOUT=*                                                  00006200
//SYSUDUMP DD DUMMY                                                     00006300
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL24T01),DISP=SHR                   00006400
//*                                                                     00006500
//**********************************************************************00006600
//* PROGRAMA: ZM4EH431                                                 *00006700
//* FUNCION:  REPORTE DE LAS ORDENES CANCELADAS POR CORTE DE CUPON     *00006800
//*           MERCADO DE CAPITALES                                     *00006900
//**********************************************************************00007000
//PHL24P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00007100
//ZMH431A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMHLPE24,               00007200
//            DISP=(OLD,PASS)                                           00007300
//ZMH431R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00007400
//ZMH431R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00007500
//SYSTSPRT DD SYSOUT=*                                                  00007600
//SYSPRINT DD SYSOUT=*                                                  00007700
//SYSOUT   DD SYSOUT=*                                                  00007800
//SYSDBOUT DD SYSOUT=*                                                  00007900
//SYSABOUT DD SYSOUT=*                                                  00008000
//SYSUDUMP DD DUMMY                                                     00008100
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL24T02),DISP=SHR                   00008200
//*                                                                     00008300
//**********************************************************************00008400
//*        AVISO EN CASO DE ERROR A LA CONSOLA                          00008500
//**********************************************************************00008600
//PHL24P01 EXEC PGM=MAILOPER,COND=(4,GE,PHL24P03),                      00008700
//         PARM=('/ATENCION.AVISAR A DESARROLLO QUE PROCESO ',          00008800
//             'SIVAXCJ2(ZMHLPE24)TERMINO MAL.CONTESTAR SI',            00008900
//             'PARA TERMINAR')                                         00009000
//****************************************************************      00009100
//*                SE ADICIONA CONDICION                         *      00009200
//*                PARA QUE SEA TOMADA POR CTL-D                 *      00009300
//****************************************************************      00009400
//PHL24P00 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXCJ2_IN_SEP_OK WDATE',   00009500
//         COND=(4,LT)                                                  00009600
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                  00009700
//DAPARM   DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                  00009800
//         DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                00009900
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                  00010000
//DARESF   DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                  00010100
//PRTDBG   DD  SYSOUT=*                                                 00010200
//SYSPRINT DD  DUMMY                                                    00010300
//SYSUDUMP DD  DUMMY                                                    00010400
//DAPRINT  DD  SYSOUT=*                                                 00010500
//DACNDIN  DD  DDNAME=SYSIN                                             00010600
//*                                                                     00010700
