//ZMHCPD02 PROC                                                         00010000
//*                                                                     00020000
//**********************************************************************00030000
//*                                                                    *00040000
//*                   <<   V A L O R E S   >>                          *00050000
//*                                                                    *00060000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00070000
//*                                                                    *00080000
//* PROCESO        :  ZMHCPD02   ANTES = CIERRVAL                      *00090000
//*                   CIERRE DE DIA DEL MODULO DE VALORES              *00100000
//*                                                                    *00110000
//* OBJETIVO       :  ADICIONA LA CONDICION PARA INICIAR EL JOB        *00120000
//*                   CBHCCD03 QUE ES EL CIERRE DE VALORES             *00130000
//* CORRE                                                              *00140000
//* ANTES DE       :  FINDIA.                                          *00150000
//*                                                                    *00160000
//* DESPUES DE     :  OPERACION DIARIA EN EL SIVA                      *00170000
//*                                                                    *00180000
//* REALIZO        :  DAVID GUTIERREZ CASILLAS     (ASATECK)           *00190000
//*                                                                    *00200000
//* FECHA          :  MAYO 2003                                        *00210000
//*                                                                    *00220000
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA EN FORMA DIARIA    *00230000
//*                                                                    *00240000
//**********************************************************************00250000
//*                       ¢¢¢  ZM3DG001  !!!                           *00260000
//*                                                                    *00270000
//* PASO  03 : PHC02P03                                                *00280000
//*                                                                    *00290000
//* OBJETIVO : RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS   *00300000
//*            GRABA EN ARCHIVO SECUENCIAL.                            *00310000
//*                                                                    *00320000
//**********************************************************************00330000
//PHC02P03 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','&INT1','&INT2')       00340000
//*                                                                     00350000
//SYSTSPRT DD SYSOUT=*                                                  00380000
//SYSPRINT DD SYSOUT=*                                                  00390000
//SYSOUT   DD SYSOUT=*                                                  00400000
//SYSDBOUT DD SYSOUT=*                                                  00410000
//SYSABOUT DD DUMMY                                                     00420000
//SYSUDUMP DD DUMMY                                                     00430000
//*                                                                     00440000
//ZMG001A1 DD DSN=SIVA.VAL.WKF.ECBP.ZMHCPD03,                           00450000
//            DISP=(NEW,CATLG,DELETE),                                  00460000
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00470000
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)                          00480000
//*                                                                     00490000
//**********************************************************************00500000
//* PASO  02 : PHC02P02                                                *00510000
//*                                                                    *00520000
//* OBJETIVO : AVISO A CONSOLA EN CASO DE ERROR                        *00530000
//*                                                                    *00540000
//**********************************************************************00550000
//PHC02P02 EXEC PGM=MAILOPER,COND=(4,GE),                               00560000
//         PARM=('/ATENCION.AVISAR A PRODUCCION QUE PROCESO ',          00570000
//             'ZMHCPD02(SIVAXCV1)TERMINO MAL.CONTESTAR SI',            00580000
//             'PARA TERMINAR')                                         00590000
//*                                                                     00600000
//**********************************************************************00610000
//* PASO  01 : PHC02P01                                                *00620000
//*                                                                    *00630000
//* OBJETIVO : ADICIONAR CONDICION PARA QUE SEA TOMADA POR CNTL-D      *00640000
//*                                                                    *00650000
//**********************************************************************00660000
//PHC02P01 EXEC PGM=CTMCND,PARM='ADD COND   SIVAXCV1_OK      WDATE',    00670000
//         COND=(4,LT)                                                  00680000
//*                                                                     00690000
//STEPLIB  DD   DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                 00700001
//DAPARM   DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                 00710000
//         DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV               00720000
//DALOG    DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                 00730001
//DARESF   DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                 00740001
//PRTDBG   DD   SYSOUT=Z                                                00750000
//SYSPRINT DD   DUMMY                                                   00760000
//SYSUDUMP DD   DUMMY                                                   00770000
//DAPRINT  DD   SYSOUT=Z                                                00780000
//DACNDIN  DD   DDNAME=SYSIN                                            00790000
//*                                                                     00800000
