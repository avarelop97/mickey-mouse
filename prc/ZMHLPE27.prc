//ZMHLPE27 PROC                                                         00001400
//**********************************************************************00001700
//*                                                                    *00002000
//*                     C A S A   D E   B O L S A                      *00002100
//*                     =========================                      *00002200
//*                     <<  MERCADO DE VALORES >>                      *00002300
//*                                                                    *00002400
//*   APLICACION       : SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *00002500
//*                                                                    *00003100
//*   PROCEDIMIENTO    : ZMHLPE27                                      *00003200
//*                                                                    *00003600
//*   OBJETIVO         : MOSTRAR EL RESULTADO DEFINITIVO DE            *00003700
//*                      AMORTIZACION DE ACCIONES                      *00003800
//*                                                                    *00003900
//*   CORRE ANTES DE   : NINGUNO                                       *00004000
//*                                                                    *00004100
//*   CORRE DESPUES DE : NINGUNO                                       *00004200
//*                                                                    *00004300
//*   PERIODICIDAD     : CORRE A SOLICITUD DEL USUARIO.                *00004400
//*                                                                    *00004500
//*   FECHA            : AGOSTO 2003                                   *00004600
//*                                                                    *00004700
//*   AUTOR            : OSCAR URBANO F. (GETRONICS).                  *00004800
//*                                                                    *00004900
//*                                                                    *00005000
//**********************************************************************00005100
//*                                                                    *00005200
//**********************************************************************00005300
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO    00005400
//**********************************************************************00005500
//PHL27P03 EXEC PGM=ZM3DG001,                                           00005600
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00005700
//PI601765 DD DUMMY                                                     00005900
//SYSTSPRT DD SYSOUT=*                                                  00006000
//SYSPRINT DD SYSOUT=*                                                  00006100
//SYSOUT   DD SYSOUT=*                                                  00006200
//SYSDBOUT DD SYSOUT=*                                                  00006300
//SYSABOUT DD DUMMY                                                     00006400
//SYSUDUMP DD DUMMY                                                     00006500
//*                                                                     00006600
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMHLPE27,               00006800
//            DISP=(NEW,CATLG,DELETE),                                  00006900
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00007000
//            UNIT=3390,                                                00007100
//            SPACE=(CYL,(2,1),RLSE)                                    00007200
//*                                                                     00008000
//**********************************************************************00088300
//* PROGRAMA: ZM4EHA15                                                 *00088400
//* FUNCION:  MOSTRAR EL RESULTADO PRELIMINAR O DEFINITIVO             *00088500
//*           (SEGUN SEA EL CASO)  DE UNA CONVERSION DE OBLIGACIONES   *00088600
//**********************************************************************00088800
//PHL27P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00088900
//ZMHA15A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMHLPE27,DISP=SHR       00089000
//ZMHA15R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00089200
//SYSTSPRT DD SYSOUT=*                                                  00089600
//SYSPRINT DD SYSOUT=*                                                  00089700
//SYSOUT   DD SYSOUT=*                                                  00089800
//SYSDBOUT DD SYSOUT=*                                                  00089900
//SYSABOUT DD SYSOUT=*                                                  00090000
//SYSUDUMP DD DUMMY                                                     00090100
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL27T01),DISP=SHR                   00090200
//*                                                                     00090300
//**********************************************************************00094600
//*        AVISO EN CASO DE ERROR A LA CONSOLA                          00094800
//**********************************************************************00094900
//PHL27P01 EXEC PGM=MAILOPER,COND=(4,GE,PHL27P02),                      00095100
//         PARM=('/ATENCION.AVISAR A DESARROLLO QUE PROCESO ',          00095200
//             'SIVAXCVD(ZMHLPE27)TERMINO MAL.CONTESTAR SI',            00095300
//             'PARA TERMINAR')                                         00095400
//****************************************************************      00095500
//*                SE ADICIONA CONDICION                         *      00095600
//*                PARA QUE SEA TOMADA POR CTL-D                 *      00095700
//****************************************************************      00095800
//PHL27P00 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXCVD_IN_SEP_OK WDATE',   00095900
//         COND=(4,LT)                                                  00096000
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                  00097000
//DAPARM   DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                  00098000
//         DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                00099000
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                  00100000
//DARESF   DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                  00110000
//PRTDBG   DD  SYSOUT=*                                                 00120000
//SYSPRINT DD  DUMMY                                                    00130000
//SYSUDUMP DD  DUMMY                                                    00140000
//DAPRINT  DD  SYSOUT=*                                                 00150000
//DACNDIN  DD  DDNAME=SYSIN                                             00160000
//****************************************************************      00211000
//*                SE ADICIONA CONDICION                         *      00212000
//*                PARA QUE SEA TOMADA POR CTL-D                 *      00213000
//****************************************************************      00214000
//PHL27P0A EXEC PGM=CTMCND,                                             00215000
//         PARM='ADD COND BCLLND04_BCM_SIVA_OK WDATE',                  00220000
//         COND=(4,LT)                                                  00230000
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                  00240000
//DAPARM   DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                  00250000
//         DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                00260000
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                  00270000
//DARESF   DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                  00280000
//PRTDBG   DD  SYSOUT=*                                                 00290000
//SYSPRINT DD  DUMMY                                                    00300000
//SYSUDUMP DD  DUMMY                                                    00310000
//DAPRINT  DD  SYSOUT=*                                                 00320000
//DACNDIN  DD  DDNAME=SYSIN                                             00330000
//*                                                                     00340000
