//ZMJLPE30 PROC                                                         00010000
//*                                                                     00020000
//**********************************************************************00030000
//*                     C A S A   D E   B O L S A                      *00040000
//*                     =========================                      *00050000
//*                   <<< CONCILIACION BANCARIA >>>                    *00060000
//*                                                                    *00070000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00080000
//*                                                                    *00090000
//*   DISPARADOR:  SIVAXCBC                                            *00100000
//*   PROCEDIM. :  ZMJLPE30  (OPC. 670)                                *00110000
//*                                                                    *00120000
//*   OBJETIVO  :  CONCILIAR Y REPORTAR LOS CHEQUES PAGADOS Y REPORTAR *00130000
//*                LOS MOVIMIENTOS SIN CONCILIAR A LA FECHA.           *00131000
//*                                                                    *00140000
//*   CORRE ANTES DE  :  NINGUNO                                       *00150000
//*                                                                    *00160000
//*   CORRE DESPUES DE:  NINGUNO                                       *00170000
//*                                                                    *00180000
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *00190000
//*                                                                    *00200000
//**********************************************************************00210000
//*                                                                     00220000
//********************************************************************* 00230000
//*    RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA EN ARCHIVO   00240000
//********************************************************************* 00250000
//PJL30P04  EXEC PGM=ZM3DG001,REGION=0M,                                00260000
//          PARM=('&EMP','&SUC','&INT1','&INT2',)                       00270000
//PI601765 DD DUMMY                                                     00280000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00290000
//SYSPRINT DD SYSOUT=*                                                  00300000
//SYSOUT   DD SYSOUT=*                                                  00310000
//SYSDBOUT DD SYSOUT=*                                                  00320000
//SYSABOUT DD DUMMY                                                     00330000
//SYSUDUMP DD DUMMY                                                     00340000
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJLPE30,               00350000
//            DISP=(NEW,CATLG,DELETE),                                  00360000
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00370000
//            UNIT=3390,                                                00380000
//            SPACE=(CYL,(02,01),RLSE)                                  00390000
//*                                                                     00400000
//*******************************************************************   00410000
//* ZM4OJ588 - REALIZA LA CONCILIACION AUTOMATICA DE LOS            *   00420000
//*            CHEQUES PAGADOS Y GENERA LA CONCILIACION BANCARIA    *   00421000
//*******************************************************************   00430000
//PJL30P03 EXEC PGM=IKJEFT01,REGION=0M,COND=(4,LT)                      00440000
//*                                                                     00450000
//ZMJ588AP DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJLPE30,DISP=SHR       00460000
//*                                                                     00470000
//ZMJ588R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00480000
//ZMJ588R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00481000
//*                                                                     00490000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00500000
//SYSPRINT DD SYSOUT=*                                                  00510000
//SYSOUT   DD SYSOUT=*                                                  00520000
//SYSDBOUT DD SYSOUT=*                                                  00530000
//SYSABOUT DD DUMMY                                                     00540000
//SYSUDUMP DD DUMMY                                                     00550000
//*                                                                     00560000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL30T03),DISP=SHR                   00570000
//*                                                                     00580000
//********************************************************************* 01270000
//*        AVISO EN CASO DE ERROR A LA CONSOLA                          01280000
//********************************************************************* 01290000
//PJL30P02 EXEC PGM=MAILOPER,COND=(4,GE),                               01300000
//         PARM=('/ATENCION.AVISAR A PRODUCCION QUE EL PROCESO ',       01310000
//             'SIVAXCBC (ZMJLPE30) TERMINO MAL Y FINALIZAR ')          01320001
//*                                                                     01340000
//****************************************************************      01350000
//*                SE ADICIONA CONDICION                         *      01360000
//*                PARA QUE SEA TOMADA POR CTL-D                 *      01370000
//****************************************************************      01380000
//PJL30P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXCBC_IN_SEP_OK WDATE',   01390000
//         COND=(4,LT)                                                  01400000
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                  01410000
//DAPARM   DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                  01420000
//         DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                01430000
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                  01440000
//DARESF   DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                  01450000
//PRTDBG   DD  SYSOUT=*                                                 01460000
//SYSPRINT DD  DUMMY                                                    01470000
//SYSUDUMP DD  DUMMY                                                    01480000
//DAPRINT  DD  SYSOUT=*                                                 01490000
//*                                                                     01510000
//**********************************************************************01520000
//*        TERMINA PROCESO ZMJLPE30 SIVA MULTIEMPRESA                  *01530000
//**********************************************************************01540000
