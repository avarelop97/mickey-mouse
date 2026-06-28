//ZMHLPE02 PROC                                                         00010000
//**********************************************************************00020000
//*                     C A S A   D E   B O L S A                      *00030000
//*                     =========================                      *00040000
//*                     << MERCADO DE CAPITALES>>                      *00050000
//*                                                                    *00060000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00070000
//*                                                                    *00080000
//*   PROCEDIM. :  ZMHLPE02                                            *00090000
//*                                                                    *00100000
//*   OBJETIVO  :  RELACION DE HECHOS REALIZADOS (OPC 168)             *00110000
//*                                                                    *00120000
//*   CORRE ANTES DE  :  NINGUNO                                       *00130000
//*                                                                    *00140000
//*   CORRE DESPUES DE:  NINGUNO                                       *00150000
//*                                                                    *00160000
//*   CORRE DESPUES DE:  NINGUNO                                       *00170000
//*                                                                    *00180000
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *00190000
//*                                                                    *00200000
//********************************************************************* 00210000
//*    RECIBE LOS PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN ARCHIVO     00220000
//********************************************************************* 00230000
//*                                                                     00240000
//PHL02P04 EXEC PGM=ZM3DG001,REGION=0M,                                 00250000
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00260000
//PI601765 DD DUMMY                                                     00290000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00300000
//SYSPRINT DD SYSOUT=*                                                  00310000
//SYSOUT   DD SYSOUT=*                                                  00320000
//SYSDBOUT DD SYSOUT=*                                                  00330000
//SYSABOUT DD DUMMY                                                     00340000
//SYSUDUMP DD DUMMY                                                     00350000
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHLPE02,               00360000
//           DISP=(NEW,CATLG,DELETE),                                   00370000
//           DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),                00380000
//           UNIT=3390,                                                 00390000
//           SPACE=(CYL,(2,1),RLSE)                                     00400000
//*                                                                     00410000
//********************************************************************* 00420000
//*                                                                     00430000
//PHL02P03 EXEC PGM=IKJEFT01,REGION=0M,COND=(4,LT)                      00440000
//ZMH473R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00460000
//ZMH473T1 DD DSN=&&PASO06,                                             00470000
//            DISP=(NEW,PASS),                                          00480000
//            DCB=(LRECL=70,BLKSIZE=0,RECFM=FB),                        00490000
//            UNIT=3390,                                                00500000
//            SPACE=(CYL,(5,1),RLSE)                                    00510000
//SORTWORK DD UNIT=3390,                                                00520000
//            SPACE=(CYL,(5,1),RLSE)                                    00530000
//ZMH473P1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHLPE02,               00540000
//         DISP=SHR                                                     00550000
//*                                                                     00560000
//SYSTSPRT DD SYSOUT=*                                                  00570000
//SYSPRINT DD SYSOUT=*                                                  00580000
//SYSOUT   DD SYSOUT=*                                                  00590000
//SYSDBOUT DD SYSOUT=*                                                  00600000
//SYSABOUT DD DUMMY                                                     00610000
//SYSUDUMP DD DUMMY                                                     00620000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL02T01),DISP=SHR                   00630000
//*-------------------------------------------------------------------- 00640000
//*        AVISO EN CASO DE ERROR A LA CONSOLA                          00650000
//*-------------------------------------------------------------------- 00660000
//PHL02P02 EXEC PGM=MAILOPER,COND=(4,GE,PHL02P03),                      00670000
//         PARM=('/ATENCION OPERADOR.AVISAR A PRODUCCION QUE',          00680000
//             ' PROCESO SIVAXHEC TERMINO MAL.CONTESTAR SI',            00690000
//             'PARA TERMINAR')                                         00700000
//****************************************************************      00710000
//*                SE ADICIONA CONDICION                         *      00720000
//*                PARA QUE SEA TOMADA POR CTL-D                 *      00730000
//****************************************************************      00740000
//PHL02P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXHEC_IN_SEP_OK WDATE',   00750000
//         COND=(4,LT)                                                  00760000
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00761000
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00762000
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00763000
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00770000
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00780000
//PRTDBG   DD SYSOUT=*                                                  00790000
//SYSPRINT DD DUMMY                                                     00800000
//SYSUDUMP DD DUMMY                                                     00810000
//DAPRINT  DD SYSOUT=*                                                  00820000
//DACNDIN  DD DDNAME=SYSIN                                              00830002
